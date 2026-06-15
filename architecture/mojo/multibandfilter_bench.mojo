# ==============================================================================
# Faust to Mojo architecture file for the benchmark framework integration.
# Provides the definitions and the main entry point to run the DSP code in
# several batches and write the report to `.tab` and `.csv` files.
# ==============================================================================
# First section of architecture provided code start.
# Imports the modules and the definitions of the architecture code.
# ==============================================================================

from std.pathlib import Path
from std.time import perf_counter
from std.benchmark import keep, clobber_memory

from conf import *
from help import *
from mem import *
from dsp import *
from gui import *
from meta import *

# ==============================================================
# Faust benchmark architecture implementation.
# ==============================================================

# Compiler options.

comptime BENCH_LANG = get_defined_string["BENCH_LANG", "mojo"]()
comptime BENCH_DSP = get_defined_string["BENCH_DSP", "unknown"]()
comptime BENCH_CASE = get_defined_string["BENCH_CASE", "default"]()
comptime BENCH_MODE = get_defined_string["BENCH_MODE", "scalar"]()
comptime BENCH_OPTIM = get_defined_string["BENCH_OPTIM", "O3"]()
comptime BENCH_BARRIERS = get_defined_int["BENCH_BARRIERS", 1]()
comptime WARMUP_ITERS = get_defined_int["WARMUP_ITERS", 50]()
comptime COMPUTE_ITERS = get_defined_int["COMPUTE_ITERS", 1_000_000]()
comptime MIN_RUNTIME_SECS = F64(get_defined_int["MIN_RUNTIME_SECS", 1]())
comptime MAX_RUNTIME_SECS = F64(get_defined_int["MAX_RUNTIME_SECS", 60]())
comptime TARGET_BATCH_SECS = 0.005
comptime MAX_BATCH_SIZE = get_defined_int["MAX_BATCH_SIZE", 10_000]()
comptime MAX_BATCHES = get_defined_int["MAX_BATCHES", 1_000]()
comptime FILL_INPUTS = get_defined_bool["FILL_INPUTS", False]()
comptime SAMP_RATE = S32(get_defined_int["SAMP_RATE", 96_000]())
comptime BUFF_SIZE = S32(get_defined_int["BUFF_SIZE", 128]())
comptime PRECISION = get_defined_string["PRECISION", "single"]()
comptime CSV_PATH = get_defined_string["CSV_PATH", "report/mojo/report.csv"]()
comptime WRITE_CSV = get_defined_bool["WRITE_CSV", False]()

# Faust benchmark API.

struct BenchBatch(ImplicitlyCopyable):
    var iterations: S32
    var elapsed_s: F64
    var ns_per_compute: F64
    def __init__(out batch):
        batch.iterations = 0
        batch.elapsed_s = 0.0
        batch.ns_per_compute = 0.0

struct BenchRun(ImplicitlyCopyable):
    var batches: S32
    var iterations: S32
    var elapsed_s: F64
    var ns_per_compute: F64
    var fast_ns_per_compute: F64
    var slow_ns_per_compute: F64
    def __init__(out run):
        run.batches = 0
        run.iterations = 0
        run.elapsed_s = 0.0
        run.ns_per_compute = 0.0
        run.fast_ns_per_compute = 0.0
        run.slow_ns_per_compute = 0.0

struct FaustReport(ImplicitlyCopyable):
    var language: String
    var dsp: String
    var bench_case: String
    var mode: String
    var precision: String
    var opt: String
    var samp_rate: S32
    var buff_size: S32
    var inputs: S32
    var outputs: S32
    var warmup_iters: S32
    var run_iters: S32
    var batches: S32
    var elapsed_s: F64
    var ns_per_compute: F64
    var fast_ns_per_compute: F64
    var slow_ns_per_compute: F64
    var spread_ns_per_compute: F64
    var spread_percent: F64
    var ns_per_frame: F64
    var ns_per_out_samp: F64
    var frames_per_s: F64
    var fast_frames_per_s: F64
    var slow_frames_per_s: F64
    var out_samp_per_s: F64
    var fast_out_samp_per_s: F64
    var slow_out_samp_per_s: F64
    var checksum: F64
    def __init__(out report):
        report.language = BENCH_LANG
        report.dsp = BENCH_DSP
        report.bench_case = BENCH_CASE
        report.precision = PRECISION
        report.mode = BENCH_MODE
        report.opt = BENCH_OPTIM
        report.samp_rate = SAMP_RATE
        report.buff_size = BUFF_SIZE
        report.inputs = 0
        report.outputs = 0
        report.warmup_iters = S32(WARMUP_ITERS)
        report.run_iters = S32(COMPUTE_ITERS)
        report.batches = 0
        report.elapsed_s = 0.0
        report.ns_per_compute = 0.0
        report.fast_ns_per_compute = 0.0
        report.slow_ns_per_compute = 0.0
        report.spread_ns_per_compute = 0.0
        report.spread_percent = 0.0
        report.ns_per_frame = 0.0
        report.ns_per_out_samp = 0.0
        report.frames_per_s = 0.0
        report.fast_frames_per_s = 0.0
        report.slow_frames_per_s = 0.0
        report.out_samp_per_s = 0.0
        report.fast_out_samp_per_s = 0.0
        report.slow_out_samp_per_s = 0.0
        report.checksum = 0.0

def fill_inputs(
    inputs: Span[Ptr[FaustFloat, MUTA_EXT], MUTA_EXT], n_ins: S32
) -> None:
    for chan in range(n_ins):
        var input = inputs.unsafe_get(Int(chan))
        for frame in range(BUFF_SIZE):
            var value = 0.001 * F64(frame + 1) + F64(chan)
            input[frame] = FaustFloat(value)

def warmup(
    mut dsp: Some[FaustDsp],
    inputs: Span[Ptr[FaustFloat, READ_EXT], READ_EXT],
    outputs: Span[Ptr[FaustFloat, MUTA_EXT], MUTA_EXT]
) -> None:
    for _ in range(S32(WARMUP_ITERS)):
        dsp.compute(SInt(BUFF_SIZE), inputs, outputs)

def _measure_adaptive(
    mut dsp: Some[FaustDsp],
    inputs: Span[Ptr[FaustFloat, READ_EXT], READ_EXT], 
    outputs: Span[Ptr[FaustFloat, MUTA_EXT], MUTA_EXT]
) -> BenchRun:
    var batches = Arr[BenchBatch, MAX_BATCHES](fill=BenchBatch())

    var batch_count = S32(0)
    var total_iters = S32(0)
    var total_elapsed_s = 0.0

    var batch_iters = S32(1)

    while True:
        if batch_count >= S32(MAX_BATCHES):
            break
        if total_iters >= S32(COMPUTE_ITERS) and total_elapsed_s >= MIN_RUNTIME_SECS:
            break
        if total_elapsed_s >= MAX_RUNTIME_SECS:
            break
        if batch_iters < 1:
            batch_iters = 1
        if batch_iters > S32(MAX_BATCH_SIZE):
            batch_iters = S32(MAX_BATCH_SIZE)
        var remaining_iters = S32(COMPUTE_ITERS) - total_iters
        if remaining_iters > 0 and batch_iters > remaining_iters:
            batch_iters = remaining_iters

        var beg = perf_counter()

        for _ in range(batch_iters):
            comptime if BENCH_BARRIERS:
                keep(inputs)
                keep(outputs)
            dsp.compute(SInt(BUFF_SIZE), inputs, outputs)
            comptime if BENCH_BARRIERS:
                clobber_memory()

        var end = perf_counter()

        var elapsed_s = end - beg
        var ns_per_compute = elapsed_s * 1.0e9 / F64(batch_iters)

        batches[Int(batch_count)].iterations = batch_iters
        batches[Int(batch_count)].elapsed_s = elapsed_s
        batches[Int(batch_count)].ns_per_compute = ns_per_compute

        batch_count += 1
        total_iters += batch_iters
        total_elapsed_s += elapsed_s

        if elapsed_s > 0.0:
            var scale = TARGET_BATCH_SECS / elapsed_s
            var next_batch_iters = S32(F64(batch_iters) * scale)

            if next_batch_iters <= batch_iters:
                next_batch_iters = batch_iters + 1
            if next_batch_iters > batch_iters * 10:
                next_batch_iters = batch_iters * 10
            if next_batch_iters > S32(MAX_BATCH_SIZE):
                next_batch_iters = S32(MAX_BATCH_SIZE)

            batch_iters = next_batch_iters
        else:
            batch_iters *= 10

            if batch_iters > S32(MAX_BATCH_SIZE):
                batch_iters = S32(MAX_BATCH_SIZE)

    if batch_count == 0 or total_iters == 0:
        return BenchRun()

    var significant_count = batch_count // 10
    if significant_count < 1:
        significant_count = 1
    var significant_start = batch_count - significant_count
    var significant_iters = S32(0)
    var significant_elapsed_s = 0.0
    var weighted_ns_sum = 0.0
    var fastest_ns = batches[Int(significant_start)].ns_per_compute
    var slowest_ns = batches[Int(significant_start)].ns_per_compute

    for i in range(significant_start, batch_count):
        var batch = batches[Int(i)]

        significant_iters += batch.iterations
        significant_elapsed_s += batch.elapsed_s
        weighted_ns_sum += batch.ns_per_compute * F64(batch.iterations)

        if batch.ns_per_compute < fastest_ns:
            fastest_ns = batch.ns_per_compute
        if batch.ns_per_compute > slowest_ns:
            slowest_ns = batch.ns_per_compute

    if significant_iters == 0:
        return BenchRun()

    var run = BenchRun()
    run.batches = batch_count
    run.iterations = significant_iters
    run.elapsed_s = significant_elapsed_s
    run.ns_per_compute = weighted_ns_sum / F64(significant_iters)
    run.fast_ns_per_compute = fastest_ns
    run.slow_ns_per_compute = slowest_ns
    return run

def measure(
    mut dsp: Some[FaustDsp],
    inputs: Span[Ptr[FaustFloat, READ_EXT], READ_EXT],
    outputs: Span[Ptr[FaustFloat, MUTA_EXT], MUTA_EXT]
) raises -> FaustReport:
    var raw_report = _measure_adaptive(dsp, inputs, outputs)
    var dsp_inputs = dsp.get_num_inputs()
    var dsp_outputs = dsp.get_num_outputs()
    var run_iters = raw_report.iterations
    var total_frames = F64(run_iters) * F64(BUFF_SIZE)
    var total_output_samples = total_frames * F64(dsp_outputs)
    var report = FaustReport()
    report.inputs = dsp_inputs
    report.outputs = dsp_outputs
    report.run_iters = S32(run_iters)
    report.batches = raw_report.batches
    report.elapsed_s = raw_report.elapsed_s
    report.ns_per_compute = raw_report.ns_per_compute
    report.fast_ns_per_compute = raw_report.fast_ns_per_compute
    report.slow_ns_per_compute = raw_report.slow_ns_per_compute
    report.spread_ns_per_compute = report.slow_ns_per_compute - report.fast_ns_per_compute
    if report.ns_per_compute > 0.0:
        report.spread_percent = report.spread_ns_per_compute / report.ns_per_compute * 100.0
    else:
        report.spread_percent = 0.0
    report.ns_per_frame = report.ns_per_compute / F64(BUFF_SIZE)
    if dsp_outputs > 0 and report.elapsed_s > 0.0:
        report.ns_per_out_samp = report.ns_per_frame / F64(dsp_outputs)
        report.out_samp_per_s = total_output_samples / report.elapsed_s
    else:
        report.ns_per_out_samp = 0.0
        report.out_samp_per_s = 0.0
    if report.elapsed_s > 0.0:
        report.frames_per_s = total_frames / report.elapsed_s
    if report.fast_ns_per_compute > 0.0:
        report.fast_frames_per_s = 1.0e9 / report.fast_ns_per_compute * F64(BUFF_SIZE)
        report.fast_out_samp_per_s = report.fast_frames_per_s * F64(dsp_outputs)
    if report.slow_ns_per_compute > 0.0:
        report.slow_frames_per_s = 1.0e9 / report.slow_ns_per_compute * F64(BUFF_SIZE)
        report.slow_out_samp_per_s = report.slow_frames_per_s * F64(dsp_outputs)
    report.checksum = checksum_outputs(outputs, dsp_outputs)
    return report

def checksum_outputs(
    outputs: Span[Ptr[FaustFloat, MUTA_EXT], MUTA_EXT], n_outs: S32
) -> F64:
    var sum = 0.0
    for chan in range(n_outs):
        var output = outputs.unsafe_get(Int(chan))
        for frame in range(BUFF_SIZE):
            sum += F64(output[frame])
    return sum

def print_report(report: FaustReport) -> None:
    print("Faust compute benchmark")
    print("------------------------------------")
    print("Identity")
    print("  language:       ", report.language)
    print("  dsp:            ", report.dsp)
    print("  bench case:     ", report.bench_case)
    print("  mode:           ", report.mode)
    print("  precision:      ", report.precision)
    print("  optimization:   ", report.opt)
    print("------------------------------------")
    print("Configuration")
    print("  sample rate:    ", report.samp_rate)
    print("  buffer size:    ", report.buff_size)
    print("  inputs:         ", report.inputs)
    print("  outputs:        ", report.outputs)
    print("  warm-up iters:  ", report.warmup_iters)
    print("  run iters:      ", report.run_iters)
    print("  batches:        ", report.batches)
    print("------------------------------------")
    print("Timing")
    print("  elapsed:        ", report.elapsed_s, "s")
    print("  ns/compute:     ", report.ns_per_compute)
    print("  fast ns/cmp:    ", report.fast_ns_per_compute)
    print("  slow ns/cmp:    ", report.slow_ns_per_compute)
    print("  spread ns/cmp:  ", report.spread_ns_per_compute)
    print("  spread %:       ", report.spread_percent)
    print("  ns/frame:       ", report.ns_per_frame)
    print("  ns/out_samp:    ", report.ns_per_out_samp)
    print("------------------------------------")
    print("Throughput")
    print("  frames/s:       ", report.frames_per_s)
    print("  fast frames/s:  ", report.fast_frames_per_s)
    print("  slow frames/s:  ", report.slow_frames_per_s)
    print("  out_samp/s:     ", report.out_samp_per_s)
    print("  fast out_samp/s:", report.fast_out_samp_per_s)
    print("  slow out_samp/s:", report.slow_out_samp_per_s)
    print("------------------------------------")
    print("Validation")
    print("  checksum:       ", report.checksum)

def write_csv(report: FaustReport) raises -> None:
    # Appends one headerless benchmark row to CSV_PATH.
    # Assumes CSV_PATH and its parent directory are provided by the build system.
    # Does not write headers or manage existing CSV data.
    # Called only for structured runs when WRITE_CSV is enabled.
    var csv = String(
        report.language + "," + report.bench_case + "," + report.mode + ","
        + report.precision + "," + report.opt + ","
        + String(report.samp_rate) + "," + String(report.buff_size) + ","
        + String(report.inputs) + "," + String(report.outputs) + ","
        + String(report.warmup_iters) + "," + String(report.run_iters) + ","
        + String(report.batches) + ","
        + String(report.elapsed_s) + ","
        + String(report.ns_per_compute) + ","
        + String(report.fast_ns_per_compute) + ","
        + String(report.slow_ns_per_compute) + ","
        + String(report.spread_ns_per_compute) + ","
        + String(report.spread_percent) + ","
        + String(report.ns_per_frame) + ","
        + String(report.ns_per_out_samp) + ","
        + String(report.frames_per_s) + ","
        + String(report.fast_frames_per_s) + ","
        + String(report.slow_frames_per_s) + ","
        + String(report.out_samp_per_s) + ","
        + String(report.fast_out_samp_per_s) + ","
        + String(report.slow_out_samp_per_s) + ","
        + String(report.checksum) + "\n"
    )
    var path = Path(CSV_PATH)
    if path.exists():
        var content = path.read_text()
        path.write_text(content + csv)
    else:
        path.write_text(csv)

# Comptime dtype check.

def assert_dfaust() -> None: comptime assert dfaust == f32
comptime _ = assert_dfaust()
# ==============================================================================
# First section of architecture provided code end.
# ==============================================================================

# ==============================================================================
# Code generated with Faust 2.85.5 (https://faust.grame.fr)
# author: "Grame"
# copyright: "(c)GRAME 2006"
# license: "BSD"
# name: "multibandfilter"
# version: "1.0"
# Compilation options: 
#   -a bench_hack.mojo -lang mojo -fpga-mem-th 4 -ct 1 -es 1 -mcd 16 -mdd 1024 
#   -mdy 33 -double -ftz 0
# ==============================================================================

@fieldwise_init
struct mydsp(FaustDsp):
    var null_val: FaustFloat
    var sample_rate: S32
    var const0: F64
    var entry0: FaustFloat
    var vslider0: FaustFloat
    var entry1: FaustFloat
    var entry2: FaustFloat
    var vslider1: FaustFloat
    var entry3: FaustFloat
    var entry4: FaustFloat
    var vslider2: FaustFloat
    var entry5: FaustFloat
    var entry6: FaustFloat
    var vslider3: FaustFloat
    var entry7: FaustFloat
    var entry8: FaustFloat
    var vslider4: FaustFloat
    var entry9: FaustFloat
    var entry10: FaustFloat
    var vslider5: FaustFloat
    var entry11: FaustFloat
    var entry12: FaustFloat
    var vslider6: FaustFloat
    var entry13: FaustFloat
    var entry14: FaustFloat
    var vslider7: FaustFloat
    var entry15: FaustFloat
    var entry16: FaustFloat
    var vslider8: FaustFloat
    var entry17: FaustFloat
    var entry18: FaustFloat
    var vslider9: FaustFloat
    var entry19: FaustFloat
    var rec9: Arr[F64, 3]
    var rec8: Arr[F64, 3]
    var rec7: Arr[F64, 3]
    var rec6: Arr[F64, 3]
    var rec5: Arr[F64, 3]
    var rec4: Arr[F64, 3]
    var rec3: Arr[F64, 3]
    var rec2: Arr[F64, 3]
    var rec1: Arr[F64, 3]
    var rec0: Arr[F64, 3]

    @always_inline
    def __init__(out dsp):
        dsp.null_val = FaustFloat(0.0)
        dsp.sample_rate = 0
        dsp.const0 = 0.0
        dsp.entry0 = 0.0
        dsp.vslider0 = 0.0
        dsp.entry1 = 0.0
        dsp.entry2 = 0.0
        dsp.vslider1 = 0.0
        dsp.entry3 = 0.0
        dsp.entry4 = 0.0
        dsp.vslider2 = 0.0
        dsp.entry5 = 0.0
        dsp.entry6 = 0.0
        dsp.vslider3 = 0.0
        dsp.entry7 = 0.0
        dsp.entry8 = 0.0
        dsp.vslider4 = 0.0
        dsp.entry9 = 0.0
        dsp.entry10 = 0.0
        dsp.vslider5 = 0.0
        dsp.entry11 = 0.0
        dsp.entry12 = 0.0
        dsp.vslider6 = 0.0
        dsp.entry13 = 0.0
        dsp.entry14 = 0.0
        dsp.vslider7 = 0.0
        dsp.entry15 = 0.0
        dsp.entry16 = 0.0
        dsp.vslider8 = 0.0
        dsp.entry17 = 0.0
        dsp.entry18 = 0.0
        dsp.vslider9 = 0.0
        dsp.entry19 = 0.0
        dsp.rec9 = Arr[F64, 3](fill=0.0)
        dsp.rec8 = Arr[F64, 3](fill=0.0)
        dsp.rec7 = Arr[F64, 3](fill=0.0)
        dsp.rec6 = Arr[F64, 3](fill=0.0)
        dsp.rec5 = Arr[F64, 3](fill=0.0)
        dsp.rec4 = Arr[F64, 3](fill=0.0)
        dsp.rec3 = Arr[F64, 3](fill=0.0)
        dsp.rec2 = Arr[F64, 3](fill=0.0)
        dsp.rec1 = Arr[F64, 3](fill=0.0)
        dsp.rec0 = Arr[F64, 3](fill=0.0)

    @always_inline
    def get_sample_rate(read dsp) -> S32:
        return dsp.sample_rate

    @always_inline
    def get_num_outputs(read dsp) -> S32:
        return 1

    @always_inline
    def get_num_inputs(read dsp) -> S32:
        return 1

    @always_inline
    def class_init(mut dsp, read sample_rate: S32) -> None:
        pass

    @always_inline
    def instance_constants(mut dsp, read sample_rate: S32) -> None:
        dsp.sample_rate = sample_rate
        dsp.const0 = (3.141592653589793) / (min(1.92e+05, max(1.0, F64(dsp.sample_rate))))

    @always_inline
    def instance_reset_user_interface(mut dsp) -> None:
        dsp.entry0 = 10000.0
        dsp.vslider0 = 0.0
        dsp.entry1 = 50.0
        dsp.entry2 = 9000.0
        dsp.vslider1 = 0.0
        dsp.entry3 = 50.0
        dsp.entry4 = 8000.0
        dsp.vslider2 = 0.0
        dsp.entry5 = 50.0
        dsp.entry6 = 7000.0
        dsp.vslider3 = 0.0
        dsp.entry7 = 50.0
        dsp.entry8 = 6000.0
        dsp.vslider4 = 0.0
        dsp.entry9 = 50.0
        dsp.entry10 = 5000.0
        dsp.vslider5 = 0.0
        dsp.entry11 = 50.0
        dsp.entry12 = 4000.0
        dsp.vslider6 = 0.0
        dsp.entry13 = 50.0
        dsp.entry14 = 3000.0
        dsp.vslider7 = 0.0
        dsp.entry15 = 50.0
        dsp.entry16 = 2000.0
        dsp.vslider8 = 0.0
        dsp.entry17 = 50.0
        dsp.entry18 = 1000.0
        dsp.vslider9 = 0.0
        dsp.entry19 = 50.0

    @always_inline
    def instance_clear(mut dsp) -> None:
        var l0 = S32(0)
        while ((l0) < (S32(3))): 
            dsp.rec9[l0] = 0.0
            l0 = (l0) + (S32(1))
        var l1 = S32(0)
        while ((l1) < (S32(3))): 
            dsp.rec8[l1] = 0.0
            l1 = (l1) + (S32(1))
        var l2 = S32(0)
        while ((l2) < (S32(3))): 
            dsp.rec7[l2] = 0.0
            l2 = (l2) + (S32(1))
        var l3 = S32(0)
        while ((l3) < (S32(3))): 
            dsp.rec6[l3] = 0.0
            l3 = (l3) + (S32(1))
        var l4 = S32(0)
        while ((l4) < (S32(3))): 
            dsp.rec5[l4] = 0.0
            l4 = (l4) + (S32(1))
        var l5 = S32(0)
        while ((l5) < (S32(3))): 
            dsp.rec4[l5] = 0.0
            l5 = (l5) + (S32(1))
        var l6 = S32(0)
        while ((l6) < (S32(3))): 
            dsp.rec3[l6] = 0.0
            l6 = (l6) + (S32(1))
        var l7 = S32(0)
        while ((l7) < (S32(3))): 
            dsp.rec2[l7] = 0.0
            l7 = (l7) + (S32(1))
        var l8 = S32(0)
        while ((l8) < (S32(3))): 
            dsp.rec1[l8] = 0.0
            l8 = (l8) + (S32(1))
        var l9 = S32(0)
        while ((l9) < (S32(3))): 
            dsp.rec0[l9] = 0.0
            l9 = (l9) + (S32(1))

    @always_inline
    def instance_init(mut dsp, read sample_rate: S32) -> None:
        dsp.instance_constants(sample_rate)
        dsp.instance_reset_user_interface()
        dsp.instance_clear()

    @always_inline
    def init(mut dsp, read sample_rate: S32) -> None:
        dsp.class_init(sample_rate)
        dsp.instance_init(sample_rate)

    @always_inline
    def get_json(read dsp) -> String:
        return "{\"name\": \"multibandfilter\",\"filename\": \"multibandfilter.dsp\",\"version\": \"2.85.5\",\"compile_options\": \"-a bench_hack.mojo -lang mojo -fpga-mem-th 4 -ct 1 -es 1 -mcd 16 -mdd 1024 -mdy 33 -double -ftz 0\",\"library_list\": [\"/Users/manuelfarzini/Personal/dev/repo/faust/tests/impulse-tests/dsp/bandfilter.dsp\",\"/usr/local/share/faust/music.lib\",\"/usr/local/share/faust/math.lib\"],\"include_pathnames\": [\"/Users/manuelfarzini/Personal/dev/repo/faust/build/share/faust\",\"/usr/local/share/faust\",\"/usr/share/faust\",\"../../tests/impulse-tests/dsp\",\"/Users/manuelfarzini/Personal/dev/repo/faust/architecture/mojo/../../tests/impulse-tests/dsp\"],\"size\": 492,\"inputs\": 1,\"outputs\": 1,\"meta\": [ { \"author\": \"Grame\" },{ \"bandfilter.dsp/author\": \"Grame\" },{ \"bandfilter.dsp/copyright\": \"(c)GRAME 2006\" },{ \"bandfilter.dsp/license\": \"BSD\" },{ \"bandfilter.dsp/name\": \"bandfilter\" },{ \"bandfilter.dsp/version\": \"1.0\" },{ \"compile_options\": \"-a bench_hack.mojo -lang mojo -fpga-mem-th 4 -ct 1 -es 1 -mcd 16 -mdd 1024 -mdy 33 -double -ftz 0\" },{ \"copyright\": \"(c)GRAME 2006\" },{ \"filename\": \"multibandfilter.dsp\" },{ \"license\": \"BSD\" },{ \"math.lib/author\": \"GRAME\" },{ \"math.lib/copyright\": \"GRAME\" },{ \"math.lib/deprecated\": \"This library is deprecated and is not maintained anymore. It will be removed in August 2017.\" },{ \"math.lib/license\": \"LGPL with exception\" },{ \"math.lib/name\": \"Math Library\" },{ \"math.lib/version\": \"1.0\" },{ \"music.lib/author\": \"GRAME\" },{ \"music.lib/copyright\": \"GRAME\" },{ \"music.lib/deprecated\": \"This library is deprecated and is not maintained anymore. It will be removed in August 2017.\" },{ \"music.lib/license\": \"LGPL with exception\" },{ \"music.lib/name\": \"Music Library\" },{ \"music.lib/version\": \"1.0\" },{ \"name\": \"multibandfilter\" },{ \"version\": \"1.0\" }],\"ui\": [ {\"type\": \"hgroup\",\"label\": \"Multi Band Filter\",\"items\": [ {\"type\": \"vgroup\",\"label\": \"peak 0\",\"items\": [ {\"type\": \"nentry\",\"label\": \"Q factor\",\"varname\": \"fEntry19\",\"shortname\": \"peak_0_Q_factor\",\"address\": \"/Multi_Band_Filter/peak_0/Q_factor\",\"meta\": [{ \"style\": \"knob\" }],\"init\": 50,\"min\": 0.1,\"max\": 100,\"step\": 0.1},{\"type\": \"nentry\",\"label\": \"freq\",\"varname\": \"fEntry18\",\"shortname\": \"peak_0_freq\",\"address\": \"/Multi_Band_Filter/peak_0/freq\",\"meta\": [{ \"style\": \"knob\" },{ \"unit\": \"Hz\" }],\"init\": 1000,\"min\": 20,\"max\": 20000,\"step\": 1},{\"type\": \"vslider\",\"label\": \"gain\",\"varname\": \"fVslider9\",\"shortname\": \"peak_0_gain\",\"address\": \"/Multi_Band_Filter/peak_0/gain\",\"meta\": [{ \"unit\": \"dB\" }],\"init\": 0,\"min\": -50,\"max\": 50,\"step\": 0.1}]},{\"type\": \"vgroup\",\"label\": \"peak 1\",\"items\": [ {\"type\": \"nentry\",\"label\": \"Q factor\",\"varname\": \"fEntry17\",\"shortname\": \"peak_1_Q_factor\",\"address\": \"/Multi_Band_Filter/peak_1/Q_factor\",\"meta\": [{ \"style\": \"knob\" }],\"init\": 50,\"min\": 0.1,\"max\": 100,\"step\": 0.1},{\"type\": \"nentry\",\"label\": \"freq\",\"varname\": \"fEntry16\",\"shortname\": \"peak_1_freq\",\"address\": \"/Multi_Band_Filter/peak_1/freq\",\"meta\": [{ \"style\": \"knob\" },{ \"unit\": \"Hz\" }],\"init\": 2000,\"min\": 20,\"max\": 20000,\"step\": 1},{\"type\": \"vslider\",\"label\": \"gain\",\"varname\": \"fVslider8\",\"shortname\": \"peak_1_gain\",\"address\": \"/Multi_Band_Filter/peak_1/gain\",\"meta\": [{ \"unit\": \"dB\" }],\"init\": 0,\"min\": -50,\"max\": 50,\"step\": 0.1}]},{\"type\": \"vgroup\",\"label\": \"peak 2\",\"items\": [ {\"type\": \"nentry\",\"label\": \"Q factor\",\"varname\": \"fEntry15\",\"shortname\": \"peak_2_Q_factor\",\"address\": \"/Multi_Band_Filter/peak_2/Q_factor\",\"meta\": [{ \"style\": \"knob\" }],\"init\": 50,\"min\": 0.1,\"max\": 100,\"step\": 0.1},{\"type\": \"nentry\",\"label\": \"freq\",\"varname\": \"fEntry14\",\"shortname\": \"peak_2_freq\",\"address\": \"/Multi_Band_Filter/peak_2/freq\",\"meta\": [{ \"style\": \"knob\" },{ \"unit\": \"Hz\" }],\"init\": 3000,\"min\": 20,\"max\": 20000,\"step\": 1},{\"type\": \"vslider\",\"label\": \"gain\",\"varname\": \"fVslider7\",\"shortname\": \"peak_2_gain\",\"address\": \"/Multi_Band_Filter/peak_2/gain\",\"meta\": [{ \"unit\": \"dB\" }],\"init\": 0,\"min\": -50,\"max\": 50,\"step\": 0.1}]},{\"type\": \"vgroup\",\"label\": \"peak 3\",\"items\": [ {\"type\": \"nentry\",\"label\": \"Q factor\",\"varname\": \"fEntry13\",\"shortname\": \"peak_3_Q_factor\",\"address\": \"/Multi_Band_Filter/peak_3/Q_factor\",\"meta\": [{ \"style\": \"knob\" }],\"init\": 50,\"min\": 0.1,\"max\": 100,\"step\": 0.1},{\"type\": \"nentry\",\"label\": \"freq\",\"varname\": \"fEntry12\",\"shortname\": \"peak_3_freq\",\"address\": \"/Multi_Band_Filter/peak_3/freq\",\"meta\": [{ \"style\": \"knob\" },{ \"unit\": \"Hz\" }],\"init\": 4000,\"min\": 20,\"max\": 20000,\"step\": 1},{\"type\": \"vslider\",\"label\": \"gain\",\"varname\": \"fVslider6\",\"shortname\": \"peak_3_gain\",\"address\": \"/Multi_Band_Filter/peak_3/gain\",\"meta\": [{ \"unit\": \"dB\" }],\"init\": 0,\"min\": -50,\"max\": 50,\"step\": 0.1}]},{\"type\": \"vgroup\",\"label\": \"peak 4\",\"items\": [ {\"type\": \"nentry\",\"label\": \"Q factor\",\"varname\": \"fEntry11\",\"shortname\": \"peak_4_Q_factor\",\"address\": \"/Multi_Band_Filter/peak_4/Q_factor\",\"meta\": [{ \"style\": \"knob\" }],\"init\": 50,\"min\": 0.1,\"max\": 100,\"step\": 0.1},{\"type\": \"nentry\",\"label\": \"freq\",\"varname\": \"fEntry10\",\"shortname\": \"peak_4_freq\",\"address\": \"/Multi_Band_Filter/peak_4/freq\",\"meta\": [{ \"style\": \"knob\" },{ \"unit\": \"Hz\" }],\"init\": 5000,\"min\": 20,\"max\": 20000,\"step\": 1},{\"type\": \"vslider\",\"label\": \"gain\",\"varname\": \"fVslider5\",\"shortname\": \"peak_4_gain\",\"address\": \"/Multi_Band_Filter/peak_4/gain\",\"meta\": [{ \"unit\": \"dB\" }],\"init\": 0,\"min\": -50,\"max\": 50,\"step\": 0.1}]},{\"type\": \"vgroup\",\"label\": \"peak 5\",\"items\": [ {\"type\": \"nentry\",\"label\": \"Q factor\",\"varname\": \"fEntry9\",\"shortname\": \"peak_5_Q_factor\",\"address\": \"/Multi_Band_Filter/peak_5/Q_factor\",\"meta\": [{ \"style\": \"knob\" }],\"init\": 50,\"min\": 0.1,\"max\": 100,\"step\": 0.1},{\"type\": \"nentry\",\"label\": \"freq\",\"varname\": \"fEntry8\",\"shortname\": \"peak_5_freq\",\"address\": \"/Multi_Band_Filter/peak_5/freq\",\"meta\": [{ \"style\": \"knob\" },{ \"unit\": \"Hz\" }],\"init\": 6000,\"min\": 20,\"max\": 20000,\"step\": 1},{\"type\": \"vslider\",\"label\": \"gain\",\"varname\": \"fVslider4\",\"shortname\": \"peak_5_gain\",\"address\": \"/Multi_Band_Filter/peak_5/gain\",\"meta\": [{ \"unit\": \"dB\" }],\"init\": 0,\"min\": -50,\"max\": 50,\"step\": 0.1}]},{\"type\": \"vgroup\",\"label\": \"peak 6\",\"items\": [ {\"type\": \"nentry\",\"label\": \"Q factor\",\"varname\": \"fEntry7\",\"shortname\": \"peak_6_Q_factor\",\"address\": \"/Multi_Band_Filter/peak_6/Q_factor\",\"meta\": [{ \"style\": \"knob\" }],\"init\": 50,\"min\": 0.1,\"max\": 100,\"step\": 0.1},{\"type\": \"nentry\",\"label\": \"freq\",\"varname\": \"fEntry6\",\"shortname\": \"peak_6_freq\",\"address\": \"/Multi_Band_Filter/peak_6/freq\",\"meta\": [{ \"style\": \"knob\" },{ \"unit\": \"Hz\" }],\"init\": 7000,\"min\": 20,\"max\": 20000,\"step\": 1},{\"type\": \"vslider\",\"label\": \"gain\",\"varname\": \"fVslider3\",\"shortname\": \"peak_6_gain\",\"address\": \"/Multi_Band_Filter/peak_6/gain\",\"meta\": [{ \"unit\": \"dB\" }],\"init\": 0,\"min\": -50,\"max\": 50,\"step\": 0.1}]},{\"type\": \"vgroup\",\"label\": \"peak 7\",\"items\": [ {\"type\": \"nentry\",\"label\": \"Q factor\",\"varname\": \"fEntry5\",\"shortname\": \"peak_7_Q_factor\",\"address\": \"/Multi_Band_Filter/peak_7/Q_factor\",\"meta\": [{ \"style\": \"knob\" }],\"init\": 50,\"min\": 0.1,\"max\": 100,\"step\": 0.1},{\"type\": \"nentry\",\"label\": \"freq\",\"varname\": \"fEntry4\",\"shortname\": \"peak_7_freq\",\"address\": \"/Multi_Band_Filter/peak_7/freq\",\"meta\": [{ \"style\": \"knob\" },{ \"unit\": \"Hz\" }],\"init\": 8000,\"min\": 20,\"max\": 20000,\"step\": 1},{\"type\": \"vslider\",\"label\": \"gain\",\"varname\": \"fVslider2\",\"shortname\": \"peak_7_gain\",\"address\": \"/Multi_Band_Filter/peak_7/gain\",\"meta\": [{ \"unit\": \"dB\" }],\"init\": 0,\"min\": -50,\"max\": 50,\"step\": 0.1}]},{\"type\": \"vgroup\",\"label\": \"peak 8\",\"items\": [ {\"type\": \"nentry\",\"label\": \"Q factor\",\"varname\": \"fEntry3\",\"shortname\": \"peak_8_Q_factor\",\"address\": \"/Multi_Band_Filter/peak_8/Q_factor\",\"meta\": [{ \"style\": \"knob\" }],\"init\": 50,\"min\": 0.1,\"max\": 100,\"step\": 0.1},{\"type\": \"nentry\",\"label\": \"freq\",\"varname\": \"fEntry2\",\"shortname\": \"peak_8_freq\",\"address\": \"/Multi_Band_Filter/peak_8/freq\",\"meta\": [{ \"style\": \"knob\" },{ \"unit\": \"Hz\" }],\"init\": 9000,\"min\": 20,\"max\": 20000,\"step\": 1},{\"type\": \"vslider\",\"label\": \"gain\",\"varname\": \"fVslider1\",\"shortname\": \"peak_8_gain\",\"address\": \"/Multi_Band_Filter/peak_8/gain\",\"meta\": [{ \"unit\": \"dB\" }],\"init\": 0,\"min\": -50,\"max\": 50,\"step\": 0.1}]},{\"type\": \"vgroup\",\"label\": \"peak 9\",\"items\": [ {\"type\": \"nentry\",\"label\": \"Q factor\",\"varname\": \"fEntry1\",\"shortname\": \"peak_9_Q_factor\",\"address\": \"/Multi_Band_Filter/peak_9/Q_factor\",\"meta\": [{ \"style\": \"knob\" }],\"init\": 50,\"min\": 0.1,\"max\": 100,\"step\": 0.1},{\"type\": \"nentry\",\"label\": \"freq\",\"varname\": \"fEntry0\",\"shortname\": \"peak_9_freq\",\"address\": \"/Multi_Band_Filter/peak_9/freq\",\"meta\": [{ \"style\": \"knob\" },{ \"unit\": \"Hz\" }],\"init\": 10000,\"min\": 20,\"max\": 20000,\"step\": 1},{\"type\": \"vslider\",\"label\": \"gain\",\"varname\": \"fVslider0\",\"shortname\": \"peak_9_gain\",\"address\": \"/Multi_Band_Filter/peak_9/gain\",\"meta\": [{ \"unit\": \"dB\" }],\"init\": 0,\"min\": -50,\"max\": 50,\"step\": 0.1}]}]}]}"

    @always_inline
    def metadata(read dsp, mut meta: Some[FaustMeta]) -> None:
        meta.declare("author", "Grame")
        meta.declare("bandfilter.dsp/author", "Grame")
        meta.declare("bandfilter.dsp/copyright", "(c)GRAME 2006")
        meta.declare("bandfilter.dsp/license", "BSD")
        meta.declare("bandfilter.dsp/name", "bandfilter")
        meta.declare("bandfilter.dsp/version", "1.0")
        meta.declare("compile_options", "-a bench_hack.mojo -lang mojo -fpga-mem-th 4 -ct 1 -es 1 -mcd 16 -mdd 1024 -mdy 33 -double -ftz 0")
        meta.declare("copyright", "(c)GRAME 2006")
        meta.declare("filename", "multibandfilter.dsp")
        meta.declare("license", "BSD")
        meta.declare("math.lib/author", "GRAME")
        meta.declare("math.lib/copyright", "GRAME")
        meta.declare("math.lib/deprecated", "This library is deprecated and is not maintained anymore. It will be removed in August 2017.")
        meta.declare("math.lib/license", "LGPL with exception")
        meta.declare("math.lib/name", "Math Library")
        meta.declare("math.lib/version", "1.0")
        meta.declare("music.lib/author", "GRAME")
        meta.declare("music.lib/copyright", "GRAME")
        meta.declare("music.lib/deprecated", "This library is deprecated and is not maintained anymore. It will be removed in August 2017.")
        meta.declare("music.lib/license", "LGPL with exception")
        meta.declare("music.lib/name", "Music Library")
        meta.declare("music.lib/version", "1.0")
        meta.declare("name", "multibandfilter")
        meta.declare("version", "1.0")

    @always_inline
    def build_user_interface(mut dsp, mut ui: Some[FaustGui]) -> None:
        ui.open_horizontal_box("Multi Band Filter")
        ui.open_vertical_box("peak 0")
        ui.declare(dsp.entry19, "style", "knob")
        ui.add_num_entry("Q factor", dsp.entry19, FaustFloat(50.0), FaustFloat(0.1), FaustFloat(100.0), FaustFloat(0.1))
        ui.declare(dsp.entry18, "style", "knob")
        ui.declare(dsp.entry18, "unit", "Hz")
        ui.add_num_entry("freq", dsp.entry18, FaustFloat(1000.0), FaustFloat(20.0), FaustFloat(20000.0), FaustFloat(1.0))
        ui.declare(dsp.vslider9, "unit", "dB")
        ui.add_vertical_slider("gain", dsp.vslider9, FaustFloat(0.0), FaustFloat(-50.0), FaustFloat(50.0), FaustFloat(0.1))
        ui.close_box()
        ui.open_vertical_box("peak 1")
        ui.declare(dsp.entry17, "style", "knob")
        ui.add_num_entry("Q factor", dsp.entry17, FaustFloat(50.0), FaustFloat(0.1), FaustFloat(100.0), FaustFloat(0.1))
        ui.declare(dsp.entry16, "style", "knob")
        ui.declare(dsp.entry16, "unit", "Hz")
        ui.add_num_entry("freq", dsp.entry16, FaustFloat(2000.0), FaustFloat(20.0), FaustFloat(20000.0), FaustFloat(1.0))
        ui.declare(dsp.vslider8, "unit", "dB")
        ui.add_vertical_slider("gain", dsp.vslider8, FaustFloat(0.0), FaustFloat(-50.0), FaustFloat(50.0), FaustFloat(0.1))
        ui.close_box()
        ui.open_vertical_box("peak 2")
        ui.declare(dsp.entry15, "style", "knob")
        ui.add_num_entry("Q factor", dsp.entry15, FaustFloat(50.0), FaustFloat(0.1), FaustFloat(100.0), FaustFloat(0.1))
        ui.declare(dsp.entry14, "style", "knob")
        ui.declare(dsp.entry14, "unit", "Hz")
        ui.add_num_entry("freq", dsp.entry14, FaustFloat(3000.0), FaustFloat(20.0), FaustFloat(20000.0), FaustFloat(1.0))
        ui.declare(dsp.vslider7, "unit", "dB")
        ui.add_vertical_slider("gain", dsp.vslider7, FaustFloat(0.0), FaustFloat(-50.0), FaustFloat(50.0), FaustFloat(0.1))
        ui.close_box()
        ui.open_vertical_box("peak 3")
        ui.declare(dsp.entry13, "style", "knob")
        ui.add_num_entry("Q factor", dsp.entry13, FaustFloat(50.0), FaustFloat(0.1), FaustFloat(100.0), FaustFloat(0.1))
        ui.declare(dsp.entry12, "style", "knob")
        ui.declare(dsp.entry12, "unit", "Hz")
        ui.add_num_entry("freq", dsp.entry12, FaustFloat(4000.0), FaustFloat(20.0), FaustFloat(20000.0), FaustFloat(1.0))
        ui.declare(dsp.vslider6, "unit", "dB")
        ui.add_vertical_slider("gain", dsp.vslider6, FaustFloat(0.0), FaustFloat(-50.0), FaustFloat(50.0), FaustFloat(0.1))
        ui.close_box()
        ui.open_vertical_box("peak 4")
        ui.declare(dsp.entry11, "style", "knob")
        ui.add_num_entry("Q factor", dsp.entry11, FaustFloat(50.0), FaustFloat(0.1), FaustFloat(100.0), FaustFloat(0.1))
        ui.declare(dsp.entry10, "style", "knob")
        ui.declare(dsp.entry10, "unit", "Hz")
        ui.add_num_entry("freq", dsp.entry10, FaustFloat(5000.0), FaustFloat(20.0), FaustFloat(20000.0), FaustFloat(1.0))
        ui.declare(dsp.vslider5, "unit", "dB")
        ui.add_vertical_slider("gain", dsp.vslider5, FaustFloat(0.0), FaustFloat(-50.0), FaustFloat(50.0), FaustFloat(0.1))
        ui.close_box()
        ui.open_vertical_box("peak 5")
        ui.declare(dsp.entry9, "style", "knob")
        ui.add_num_entry("Q factor", dsp.entry9, FaustFloat(50.0), FaustFloat(0.1), FaustFloat(100.0), FaustFloat(0.1))
        ui.declare(dsp.entry8, "style", "knob")
        ui.declare(dsp.entry8, "unit", "Hz")
        ui.add_num_entry("freq", dsp.entry8, FaustFloat(6000.0), FaustFloat(20.0), FaustFloat(20000.0), FaustFloat(1.0))
        ui.declare(dsp.vslider4, "unit", "dB")
        ui.add_vertical_slider("gain", dsp.vslider4, FaustFloat(0.0), FaustFloat(-50.0), FaustFloat(50.0), FaustFloat(0.1))
        ui.close_box()
        ui.open_vertical_box("peak 6")
        ui.declare(dsp.entry7, "style", "knob")
        ui.add_num_entry("Q factor", dsp.entry7, FaustFloat(50.0), FaustFloat(0.1), FaustFloat(100.0), FaustFloat(0.1))
        ui.declare(dsp.entry6, "style", "knob")
        ui.declare(dsp.entry6, "unit", "Hz")
        ui.add_num_entry("freq", dsp.entry6, FaustFloat(7000.0), FaustFloat(20.0), FaustFloat(20000.0), FaustFloat(1.0))
        ui.declare(dsp.vslider3, "unit", "dB")
        ui.add_vertical_slider("gain", dsp.vslider3, FaustFloat(0.0), FaustFloat(-50.0), FaustFloat(50.0), FaustFloat(0.1))
        ui.close_box()
        ui.open_vertical_box("peak 7")
        ui.declare(dsp.entry5, "style", "knob")
        ui.add_num_entry("Q factor", dsp.entry5, FaustFloat(50.0), FaustFloat(0.1), FaustFloat(100.0), FaustFloat(0.1))
        ui.declare(dsp.entry4, "style", "knob")
        ui.declare(dsp.entry4, "unit", "Hz")
        ui.add_num_entry("freq", dsp.entry4, FaustFloat(8000.0), FaustFloat(20.0), FaustFloat(20000.0), FaustFloat(1.0))
        ui.declare(dsp.vslider2, "unit", "dB")
        ui.add_vertical_slider("gain", dsp.vslider2, FaustFloat(0.0), FaustFloat(-50.0), FaustFloat(50.0), FaustFloat(0.1))
        ui.close_box()
        ui.open_vertical_box("peak 8")
        ui.declare(dsp.entry3, "style", "knob")
        ui.add_num_entry("Q factor", dsp.entry3, FaustFloat(50.0), FaustFloat(0.1), FaustFloat(100.0), FaustFloat(0.1))
        ui.declare(dsp.entry2, "style", "knob")
        ui.declare(dsp.entry2, "unit", "Hz")
        ui.add_num_entry("freq", dsp.entry2, FaustFloat(9000.0), FaustFloat(20.0), FaustFloat(20000.0), FaustFloat(1.0))
        ui.declare(dsp.vslider1, "unit", "dB")
        ui.add_vertical_slider("gain", dsp.vslider1, FaustFloat(0.0), FaustFloat(-50.0), FaustFloat(50.0), FaustFloat(0.1))
        ui.close_box()
        ui.open_vertical_box("peak 9")
        ui.declare(dsp.entry1, "style", "knob")
        ui.add_num_entry("Q factor", dsp.entry1, FaustFloat(50.0), FaustFloat(0.1), FaustFloat(100.0), FaustFloat(0.1))
        ui.declare(dsp.entry0, "style", "knob")
        ui.declare(dsp.entry0, "unit", "Hz")
        ui.add_num_entry("freq", dsp.entry0, FaustFloat(10000.0), FaustFloat(20.0), FaustFloat(20000.0), FaustFloat(1.0))
        ui.declare(dsp.vslider0, "unit", "dB")
        ui.add_vertical_slider("gain", dsp.vslider0, FaustFloat(0.0), FaustFloat(-50.0), FaustFloat(50.0), FaustFloat(0.1))
        ui.close_box()
        ui.close_box()

    @always_inline
    def compute[dreal: DType](
        mut dsp,
        var count:      S32,
        var inputs:     ReadStreams[dreal],
        var outputs:    MutaStreams[dreal]
    ) -> None:
        comptime assert dreal == dfaust
        var input0 = inputs[S32(0)]
        var output0 = outputs[S32(0)]
        var slow0 = tan((dsp.const0) * (F64(dsp.entry0)))
        var slow1 = F64(dsp.entry1)
        var slow2 = (pow(1e+01, -((0.05) * (F64(dsp.vslider0))))) / (slow1)
        var slow3 = (1.0) / (((slow0) * ((slow0) + (slow2))) + (1.0))
        var slow4 = (2.0) * ((pow_unrolled[2](slow0)) + (-1.0))
        var slow5 = tan((dsp.const0) * (F64(dsp.entry2)))
        var slow6 = F64(dsp.entry3)
        var slow7 = (pow(1e+01, -((0.05) * (F64(dsp.vslider1))))) / (slow6)
        var slow8 = (1.0) / (((slow5) * ((slow5) + (slow7))) + (1.0))
        var slow9 = (2.0) * ((pow_unrolled[2](slow5)) + (-1.0))
        var slow10 = tan((dsp.const0) * (F64(dsp.entry4)))
        var slow11 = F64(dsp.entry5)
        var slow12 = (pow(1e+01, -((0.05) * (F64(dsp.vslider2))))) / (slow11)
        var slow13 = (1.0) / (((slow10) * ((slow10) + (slow12))) + (1.0))
        var slow14 = (2.0) * ((pow_unrolled[2](slow10)) + (-1.0))
        var slow15 = tan((dsp.const0) * (F64(dsp.entry6)))
        var slow16 = F64(dsp.entry7)
        var slow17 = (pow(1e+01, -((0.05) * (F64(dsp.vslider3))))) / (slow16)
        var slow18 = (1.0) / (((slow15) * ((slow15) + (slow17))) + (1.0))
        var slow19 = (2.0) * ((pow_unrolled[2](slow15)) + (-1.0))
        var slow20 = tan((dsp.const0) * (F64(dsp.entry8)))
        var slow21 = F64(dsp.entry9)
        var slow22 = (pow(1e+01, -((0.05) * (F64(dsp.vslider4))))) / (slow21)
        var slow23 = (1.0) / (((slow20) * ((slow20) + (slow22))) + (1.0))
        var slow24 = (2.0) * ((pow_unrolled[2](slow20)) + (-1.0))
        var slow25 = tan((dsp.const0) * (F64(dsp.entry10)))
        var slow26 = F64(dsp.entry11)
        var slow27 = (pow(1e+01, -((0.05) * (F64(dsp.vslider5))))) / (slow26)
        var slow28 = (1.0) / (((slow25) * ((slow25) + (slow27))) + (1.0))
        var slow29 = (2.0) * ((pow_unrolled[2](slow25)) + (-1.0))
        var slow30 = tan((dsp.const0) * (F64(dsp.entry12)))
        var slow31 = F64(dsp.entry13)
        var slow32 = (pow(1e+01, -((0.05) * (F64(dsp.vslider6))))) / (slow31)
        var slow33 = (1.0) / (((slow30) * ((slow30) + (slow32))) + (1.0))
        var slow34 = (2.0) * ((pow_unrolled[2](slow30)) + (-1.0))
        var slow35 = tan((dsp.const0) * (F64(dsp.entry14)))
        var slow36 = F64(dsp.entry15)
        var slow37 = (pow(1e+01, -((0.05) * (F64(dsp.vslider7))))) / (slow36)
        var slow38 = (1.0) / (((slow35) * ((slow35) + (slow37))) + (1.0))
        var slow39 = (2.0) * ((pow_unrolled[2](slow35)) + (-1.0))
        var slow40 = tan((dsp.const0) * (F64(dsp.entry16)))
        var slow41 = F64(dsp.entry17)
        var slow42 = (pow(1e+01, -((0.05) * (F64(dsp.vslider8))))) / (slow41)
        var slow43 = (1.0) / (((slow40) * ((slow40) + (slow42))) + (1.0))
        var slow44 = (2.0) * ((pow_unrolled[2](slow40)) + (-1.0))
        var slow45 = tan((dsp.const0) * (F64(dsp.entry18)))
        var slow46 = F64(dsp.entry19)
        var slow47 = (pow(1e+01, -((0.05) * (F64(dsp.vslider9))))) / (slow46)
        var slow48 = (1.0) / (((slow45) * ((slow45) + (slow47))) + (1.0))
        var slow49 = (2.0) * ((pow_unrolled[2](slow45)) + (-1.0))
        var slow50 = ((slow45) * ((slow45) - (slow47))) + (1.0)
        var slow51 = (1.0) / (slow46)
        var slow52 = ((slow45) * ((slow45) + (slow51))) + (1.0)
        var slow53 = (1.0) - ((slow45) * ((slow51) - (slow45)))
        var slow54 = ((slow40) * ((slow40) - (slow42))) + (1.0)
        var slow55 = (1.0) / (slow41)
        var slow56 = ((slow40) * ((slow40) + (slow55))) + (1.0)
        var slow57 = (1.0) - ((slow40) * ((slow55) - (slow40)))
        var slow58 = ((slow35) * ((slow35) - (slow37))) + (1.0)
        var slow59 = (1.0) / (slow36)
        var slow60 = ((slow35) * ((slow35) + (slow59))) + (1.0)
        var slow61 = (1.0) - ((slow35) * ((slow59) - (slow35)))
        var slow62 = ((slow30) * ((slow30) - (slow32))) + (1.0)
        var slow63 = (1.0) / (slow31)
        var slow64 = ((slow30) * ((slow30) + (slow63))) + (1.0)
        var slow65 = (1.0) - ((slow30) * ((slow63) - (slow30)))
        var slow66 = ((slow25) * ((slow25) - (slow27))) + (1.0)
        var slow67 = (1.0) / (slow26)
        var slow68 = ((slow25) * ((slow25) + (slow67))) + (1.0)
        var slow69 = (1.0) - ((slow25) * ((slow67) - (slow25)))
        var slow70 = ((slow20) * ((slow20) - (slow22))) + (1.0)
        var slow71 = (1.0) / (slow21)
        var slow72 = ((slow20) * ((slow20) + (slow71))) + (1.0)
        var slow73 = (1.0) - ((slow20) * ((slow71) - (slow20)))
        var slow74 = ((slow15) * ((slow15) - (slow17))) + (1.0)
        var slow75 = (1.0) / (slow16)
        var slow76 = ((slow15) * ((slow15) + (slow75))) + (1.0)
        var slow77 = (1.0) - ((slow15) * ((slow75) - (slow15)))
        var slow78 = ((slow10) * ((slow10) - (slow12))) + (1.0)
        var slow79 = (1.0) / (slow11)
        var slow80 = ((slow10) * ((slow10) + (slow79))) + (1.0)
        var slow81 = (1.0) - ((slow10) * ((slow79) - (slow10)))
        var slow82 = ((slow5) * ((slow5) - (slow7))) + (1.0)
        var slow83 = (1.0) / (slow6)
        var slow84 = ((slow5) * ((slow5) + (slow83))) + (1.0)
        var slow85 = (1.0) - ((slow5) * ((slow83) - (slow5)))
        var slow86 = ((slow0) * ((slow0) - (slow2))) + (1.0)
        var slow87 = (1.0) / (slow1)
        var slow88 = ((slow0) * ((slow0) + (slow87))) + (1.0)
        var slow89 = (1.0) - ((slow0) * ((slow87) - (slow0)))
        for var i0 in range(S32(0), count):
            var temp0 = (slow49) * (dsp.rec9[S32(1)])
            dsp.rec9[S32(0)] = (F64(input0[i0])) - ((slow48) * (((slow50) * (dsp.rec9[S32(2)])) + (temp0)))
            var temp1 = (slow44) * (dsp.rec8[S32(1)])
            dsp.rec8[S32(0)] = ((slow48) * (((temp0) + ((slow52) * (dsp.rec9[S32(0)]))) + ((slow53) * (dsp.rec9[S32(2)])))) - ((slow43) * (((slow54) * (dsp.rec8[S32(2)])) + (temp1)))
            var temp2 = (slow39) * (dsp.rec7[S32(1)])
            dsp.rec7[S32(0)] = ((slow43) * (((temp1) + ((slow56) * (dsp.rec8[S32(0)]))) + ((slow57) * (dsp.rec8[S32(2)])))) - ((slow38) * (((slow58) * (dsp.rec7[S32(2)])) + (temp2)))
            var temp3 = (slow34) * (dsp.rec6[S32(1)])
            dsp.rec6[S32(0)] = ((slow38) * (((temp2) + ((slow60) * (dsp.rec7[S32(0)]))) + ((slow61) * (dsp.rec7[S32(2)])))) - ((slow33) * (((slow62) * (dsp.rec6[S32(2)])) + (temp3)))
            var temp4 = (slow29) * (dsp.rec5[S32(1)])
            dsp.rec5[S32(0)] = ((slow33) * (((temp3) + ((slow64) * (dsp.rec6[S32(0)]))) + ((slow65) * (dsp.rec6[S32(2)])))) - ((slow28) * (((slow66) * (dsp.rec5[S32(2)])) + (temp4)))
            var temp5 = (slow24) * (dsp.rec4[S32(1)])
            dsp.rec4[S32(0)] = ((slow28) * (((temp4) + ((slow68) * (dsp.rec5[S32(0)]))) + ((slow69) * (dsp.rec5[S32(2)])))) - ((slow23) * (((slow70) * (dsp.rec4[S32(2)])) + (temp5)))
            var temp6 = (slow19) * (dsp.rec3[S32(1)])
            dsp.rec3[S32(0)] = ((slow23) * (((temp5) + ((slow72) * (dsp.rec4[S32(0)]))) + ((slow73) * (dsp.rec4[S32(2)])))) - ((slow18) * (((slow74) * (dsp.rec3[S32(2)])) + (temp6)))
            var temp7 = (slow14) * (dsp.rec2[S32(1)])
            dsp.rec2[S32(0)] = ((slow18) * (((temp6) + ((slow76) * (dsp.rec3[S32(0)]))) + ((slow77) * (dsp.rec3[S32(2)])))) - ((slow13) * (((slow78) * (dsp.rec2[S32(2)])) + (temp7)))
            var temp8 = (slow9) * (dsp.rec1[S32(1)])
            dsp.rec1[S32(0)] = ((slow13) * (((temp7) + ((slow80) * (dsp.rec2[S32(0)]))) + ((slow81) * (dsp.rec2[S32(2)])))) - ((slow8) * (((slow82) * (dsp.rec1[S32(2)])) + (temp8)))
            var temp9 = (slow4) * (dsp.rec0[S32(1)])
            dsp.rec0[S32(0)] = ((slow8) * (((temp8) + ((slow84) * (dsp.rec1[S32(0)]))) + ((slow85) * (dsp.rec1[S32(2)])))) - ((slow3) * (((slow86) * (dsp.rec0[S32(2)])) + (temp9)))
            output0[i0] = SIMD[dreal, 1]((slow3) * (((temp9) + ((slow88) * (dsp.rec0[S32(0)]))) + ((slow89) * (dsp.rec0[S32(2)]))))
            dsp.rec9[S32(2)] = dsp.rec9[S32(1)]
            dsp.rec9[S32(1)] = dsp.rec9[S32(0)]
            dsp.rec8[S32(2)] = dsp.rec8[S32(1)]
            dsp.rec8[S32(1)] = dsp.rec8[S32(0)]
            dsp.rec7[S32(2)] = dsp.rec7[S32(1)]
            dsp.rec7[S32(1)] = dsp.rec7[S32(0)]
            dsp.rec6[S32(2)] = dsp.rec6[S32(1)]
            dsp.rec6[S32(1)] = dsp.rec6[S32(0)]
            dsp.rec5[S32(2)] = dsp.rec5[S32(1)]
            dsp.rec5[S32(1)] = dsp.rec5[S32(0)]
            dsp.rec4[S32(2)] = dsp.rec4[S32(1)]
            dsp.rec4[S32(1)] = dsp.rec4[S32(0)]
            dsp.rec3[S32(2)] = dsp.rec3[S32(1)]
            dsp.rec3[S32(1)] = dsp.rec3[S32(0)]
            dsp.rec2[S32(2)] = dsp.rec2[S32(1)]
            dsp.rec2[S32(1)] = dsp.rec2[S32(0)]
            dsp.rec1[S32(2)] = dsp.rec1[S32(1)]
            dsp.rec1[S32(1)] = dsp.rec1[S32(0)]
            dsp.rec0[S32(2)] = dsp.rec0[S32(1)]
            dsp.rec0[S32(1)] = dsp.rec0[S32(0)]


# ==============================================================================
# Faust generated DSP code end.
# ==============================================================================
# Second section of architecture provided code start.
# Defines the main entry point of the application, initializes the dsp object
# and the user interface, allocates the buffers and runs the benchmark.
# ==============================================================================

def main() raises -> None:
    var dsp = alloc[mydsp](1)
    dsp[] = mydsp()
    dsp[].init(SAMP_RATE)

    var n_ins = dsp[].get_num_inputs()
    var n_outs = dsp[].get_num_outputs()

    var base, err = make_streams[dfaust](BUFF_SIZE, n_ins, n_outs)
    if err:
        print("Panic in main - Critical allocation error: ", err)
        dsp.free()
        return

    var ptr = base.unsafe_value()

    var mut_inputs = Span(
        ptr=ptr.bitcast[Ptr[FaustFloat]](),
        length=Int(n_ins)
    )
    var inputs = Span(
        ptr=ptr.bitcast[Ptr[FaustFloat, READ_EXT]]().as_immutable(),
        length=Int(n_ins)
    )
    var outputs = Span(
        ptr=(ptr + n_ins).bitcast[Ptr[FaustFloat]](),
        length=Int(n_outs)
    )

    comptime if FILL_INPUTS:
        fill_inputs(mut_inputs, n_ins)

    warmup(dsp[], inputs, outputs)
    var report = measure(dsp[], inputs, outputs)
    report.checksum = checksum_outputs(outputs, n_outs)
    print_report(report) # the output will be redirected via script

    comptime if WRITE_CSV:
        write_csv(report)

    free_streams[dfaust](base)
    dsp.free()

# ==============================================================================
# Second section of architecture provided code end.
# ==============================================================================
