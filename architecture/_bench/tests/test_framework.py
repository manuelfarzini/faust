"""Integration tests using subprocess fixtures, not real DSP measurements."""

import contextlib
import io
import json
import os
import signal
import subprocess
import sys
import tempfile
import time
import unittest
from unittest.mock import patch
from dataclasses import replace
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parents[1] / "script"))

import backends
import bench
import report
from backends import Case, Source
from config import BUFF_SIZE, SAMP_RATE, Config


FAKE_TOOL = r'''import json, os, sys, time
from pathlib import Path

role, events = sys.argv[1:3]
args = sys.argv[3:]
output = Path(args[args.index("-o") + 1])

def event(stage, dsp):
    fd = os.open(events, os.O_CREAT | os.O_WRONLY | os.O_APPEND, 0o600)
    os.write(fd, (json.dumps({"stage": stage, "dsp": dsp, "args": args,
                             "cwd": str(Path.cwd())}) + "\n").encode())
    os.close(fd)

if role == "faust":
    source = next(Path(arg) for arg in args if arg.endswith(".dsp"))
    dsp = source.stem
    event("generate-start", dsp)
    if dsp == "badgen":
        sys.exit(11)
    time.sleep(0.04)
    output.write_text(json.dumps({"dsp": dsp, "behavior": source.read_text()}))
    event("generate-end", dsp)
    sys.exit(0)

source = next(Path(arg) for arg in args if arg.endswith((".cpp", ".mojo")))
info = json.loads(source.read_text())
dsp = info["dsp"]
event("build-start", dsp)
if dsp == "badbuild":
    output.write_text("partial failed output")
    sys.exit(12)
if dsp == "hangbuild":
    time.sleep(30)
time.sleep(0.07)
if "--emit" in args or "-S" in args:
    output.write_text("; inspect compute\n")
else:
    definitions = {}
    for index, arg in enumerate(args):
        if arg == "-D":
            key, value = args[index + 1].split("=", 1)
        elif arg.startswith("-D"):
            key, value = arg[2:].split("=", 1)
        else:
            continue
        definitions[key] = json.loads(value) if value.startswith('"') else value
    program = r"""import csv, json, os, sys, time
from pathlib import Path

def event(stage):
    fd = os.open(events, os.O_WRONLY | os.O_APPEND)
    os.write(fd, (json.dumps({"stage": stage, "dsp": info["dsp"]}) + "\n").encode())
    os.close(fd)

event("run-start")
behavior = info.get("behavior", "ok")
if info["dsp"] == "hangrun":
    time.sleep(30)
ns = 50 if behavior == "faster" else 100
values = [d["BENCH_LANG"], d["BENCH_CASE"], d["BENCH_MODE"], d["PRECISION"],
          d["BENCH_OPTIM"], d["SAMP_RATE"], d["BUFF_SIZE"], 1, 2,
          d["WARMUP_ITERS"], 100, 10, 1, ns, ns * 0.9, ns * 1.1,
          ns * 0.2, 20, 10, 5, 100000, 110000, 90000, 200000, 220000, 180000, 1.234]
if info["dsp"] == "badcsv":
    values.pop()
with open(d["CSV_PATH"], "a", newline="") as stream:
    csv.writer(stream).writerow(values)
print("compute benchmark complete")
event("run-end")
if info["dsp"] == "badrun" or behavior == "badrun":
    sys.exit(13)
"""
    prefix = f"#!{sys.executable}\nd = {definitions!r}\ninfo = {info!r}\nevents = {events!r}\n"
    output.write_text(prefix + program)
    output.chmod(0o755)
event("build-end", dsp)
'''


class FrameworkTests(unittest.TestCase):
    def setUp(self):
        self.temporary = tempfile.TemporaryDirectory()
        self.addCleanup(self.temporary.cleanup)
        base = Path(self.temporary.name)
        # Exercise literal spaces, quotes, and shell metacharacters in every compiler stage.
        self.root = base / 'faust "quoted" $(touch UNEXPECTED)' / "architecture" / "_bench"
        (self.root / "src").mkdir(parents=True)
        (self.root / "arch" / "cpp").mkdir(parents=True)
        (self.root.parent / "mojo").mkdir()
        for lang in ("cpp", "mojo"):
            for name in ("bench", "inspect"):
                directory = self.root.parent / "mojo" if lang == "mojo" else self.root / "arch" / lang
                (directory / f"{name}.{lang}").write_text("architecture fixture")
        self.tool = base / "fake_tool.py"
        self.tool.write_text(FAKE_TOOL)
        self.events = base / "events.jsonl"
        command = (sys.executable, str(self.tool))
        self.config = Config(root=self.root, faust=(*command, "faust", str(self.events)),
                             cpp=(*command, "compiler", str(self.events)),
                             mojo=(*command, "compiler", str(self.events)), jobs=4,
                             generate_timeout=5, build_timeout=5, run_timeout=5)

    def cases(self, names=("good",), langs=("cpp",), modes=("scalar",)):
        result = []
        for name in names:
            source = self.root / "src" / f"{name}.dsp"
            if not source.exists():
                source.write_text("ok")
            for lang in langs:
                for mode in modes:
                    result.append(Case(Source(source, name, lang, mode)))
        return result

    def run_cases(self, cases, config=None, emit=None):
        runner = bench.Runner(config or self.config, False)
        with contextlib.redirect_stdout(io.StringIO()), contextlib.redirect_stderr(io.StringIO()):
            status = runner.run(cases, emit)
        return status, runner

    def read_events(self):
        return [json.loads(line) for line in self.events.read_text().splitlines()]

    def test_matrix_has_barriers_before_serial_measurements(self):
        cases = self.cases(langs=("cpp", "mojo"), modes=("scalar", "vec"))
        status, runner = self.run_cases(cases)
        self.assertEqual(status, 0)
        rows = report.read_csv(self.config.report / "report.csv")
        self.assertEqual(len(rows), 4)
        self.assertEqual({(row["samp_rate"], row["buff_size"]) for row in rows}, {("48000", "128")})
        events = self.read_events()
        stages = [event["stage"] for event in events]
        self.assertEqual(stages.count("generate-start"), 4)
        self.assertEqual(stages.count("build-start"), 4)
        self.assertLess(max(i for i, s in enumerate(stages) if s == "generate-end"),
                        min(i for i, s in enumerate(stages) if s == "build-start"))
        self.assertLess(max(i for i, s in enumerate(stages) if s == "build-end"),
                        min(i for i, s in enumerate(stages) if s == "run-start"))
        self.assertEqual([s for s in stages if s.startswith("run-")],
                         ["run-start", "run-end"] * 4)
        self.assertTrue(all(not path.exists() for path in runner.owned))
        self.assertTrue((runner.work / "context.json").exists())
        self.assertFalse((self.root / "UNEXPECTED").exists())
        for event in events:
            args = event.get("args", [])
            if event["stage"] == "generate-start":
                self.assertEqual(args.count("-double"), 1)
            if event["stage"] == "build-start":
                self.assertTrue("-DFAUSTFLOAT=float" in args or "DFAUST=DType.float32" in args)
                self.assertNotIn("FAUST_DTYPE=DType.float32", args)

    def test_failures_continue_and_failed_rows_do_not_merge(self):
        cases = self.cases(("badgen", "badbuild", "badrun", "badcsv", "good"))
        status, runner = self.run_cases(cases)
        self.assertEqual(status, 1)
        self.assertEqual(len(runner.failures), 4)
        rows = report.read_csv(self.config.report / "report.csv")
        self.assertEqual([row["dsp"] for row in rows], ["good"])
        self.assertTrue(all(not path.exists() for path in runner.owned))
        self.assertGreater(len(list(runner.work.glob("*.log"))), 0)

    def test_rerun_replaces_only_matching_identity(self):
        cases = self.cases(("good", "other"))
        self.assertEqual(self.run_cases(cases)[0], 0)
        cases[0].source.path.write_text("faster")
        self.assertEqual(self.run_cases(cases[:1])[0], 0)
        rows = report.read_csv(self.config.report / "report.csv")
        self.assertEqual(len(rows), 2)
        self.assertEqual({row["dsp"]: row["ns_per_compute"] for row in rows},
                         {"good": "50", "other": "100"})
        before = (self.config.report / "report.csv").read_bytes()
        cases[0].source.path.write_text("badrun")
        self.assertEqual(self.run_cases(cases[:1])[0], 1)
        self.assertEqual((self.config.report / "report.csv").read_bytes(), before)

    def test_keep_and_clean_preserve_original_transpiled_mojo(self):
        original = self.config.arch("mojo") / "experiment.mojo"
        original.write_text(json.dumps({"dsp": "experiment", "behavior": "ok"}))
        initial = original.read_bytes()
        case = Case(Source(original, "experiment", "mojo", "vec", transpiled=True), "experiment")
        status, runner = self.run_cases([case], replace(self.config, keep_tmp=True))
        self.assertEqual(status, 0)
        self.assertTrue(all(path.exists() for path in runner.owned))
        with contextlib.redirect_stdout(io.StringIO()):
            bench.snapshot(self.config, "test")
            bench.clean(self.config, artifacts_only=True, snapshots=False)
        self.assertEqual(original.read_bytes(), initial)
        self.assertTrue((self.config.report / "report.csv").exists())
        self.assertTrue(all(not path.exists() for path in runner.owned))
        with contextlib.redirect_stdout(io.StringIO()):
            bench.clean(self.config, artifacts_only=False, snapshots=False)
        self.assertFalse((self.config.report / "report.csv").exists())
        self.assertEqual(len(list((self.config.report / "snap").iterdir())), 1)

    def test_inspect_uses_inspection_architecture_and_emits_no_csv(self):
        cases = [replace(case, source=replace(case.source, purpose="inspect"))
                 for case in self.cases(langs=("cpp", "mojo"))]
        for emit, extension in (("llvm", "ll"), ("asm", "s")):
            status, runner = self.run_cases(cases, emit=emit)
            self.assertEqual(status, 0)
            self.assertEqual(len(list((self.config.report / emit).glob(f"*/*.{extension}"))), 2)
            for command in runner.commands:
                args = command["argv"]
                if command["stage"] == "generate":
                    self.assertIn("inspect.", args[args.index("-a") + 1])
                else:
                    self.assertFalse(any("CSV_PATH=" in arg or "PRECISION=" in arg for arg in args))
                    self.assertTrue("-DSAMP_RATE=48000" in args or "SAMP_RATE=48000" in args)
                    self.assertTrue("-DBUFF_SIZE=128" in args or "BUFF_SIZE=128" in args)
        self.assertFalse((self.config.report / "report.csv").exists())

    def test_build_and_run_timeouts_allow_other_cases(self):
        cases = self.cases(("hangbuild", "hangrun", "good"))
        config = replace(self.config, build_timeout=0.5, run_timeout=0.5)
        status, runner = self.run_cases(cases, config)
        self.assertEqual(status, 1)
        self.assertEqual(len(runner.failures), 2)
        self.assertTrue(all("timed out" in failure for failure in runner.failures))
        self.assertEqual(len(report.read_csv(self.config.report / "report.csv")), 1)

    def test_timeout_kills_child_process_group(self):
        pid_file = Path(self.temporary.name) / "child.pid"
        code = ("import subprocess,sys,time; from pathlib import Path; "
                "p=subprocess.Popen([sys.executable,'-c','import time; time.sleep(30)']); "
                "Path(sys.argv[1]).write_text(str(p.pid)); time.sleep(30)")
        runner = bench.Runner(self.config, False)
        with self.assertRaisesRegex(RuntimeError, "timed out"):
            runner.command([sys.executable, "-c", code, str(pid_file)], runner.work / "child.log", 0.4)
        pid = int(pid_file.read_text())
        # Linux may keep an orphan zombie until PID 1 reaps it; it is no longer executing.
        for _ in range(20):
            try:
                os.kill(pid, 0)
            except ProcessLookupError:
                break
            proc = Path(f"/proc/{pid}/stat")
            if proc.exists() and proc.read_text().split()[2] == "Z":
                break
            time.sleep(0.01)
        else:
            os.kill(pid, signal.SIGKILL)
            self.fail("timeout left the compiler's child running")

    def test_ctrl_c_during_build_or_execution_returns_130_and_cleans(self):
        script_dir = Path(bench.__file__).parent
        for name, wait_for in (("hangbuild", "build-start"), ("hangrun", "run-start")):
            with self.subTest(stage=wait_for):
                self.cases((name,))
                offset = len(self.read_events()) if self.events.exists() else 0
                code = (f"import sys; from pathlib import PosixPath; "
                        f"sys.path.insert(0, {str(script_dir)!r}); "
                        f"import bench; from config import Config; cfg={self.config!r}; "
                        f"bench.Config=lambda: cfg; "
                        f"raise SystemExit(bench.main(['run','scalar','cpp',{name!r}]))")
                process = subprocess.Popen([sys.executable, "-c", code],
                                           stdout=subprocess.PIPE, stderr=subprocess.PIPE)
                try:
                    deadline = time.monotonic() + 4
                    while time.monotonic() < deadline:
                        events = self.read_events()[offset:] if self.events.exists() else []
                        if any(event["stage"] == wait_for for event in events):
                            break
                        if process.poll() is not None:
                            self.fail(process.communicate())
                        time.sleep(0.01)
                    else:
                        self.fail(f"fixture never reached {wait_for}")
                    process.send_signal(signal.SIGINT)
                    output = process.communicate(timeout=3)
                    self.assertEqual(process.returncode, 130, output)
                    context = json.loads((self.config.report / "context.json").read_text())
                    self.assertEqual(context["status"], "interrupted")
                    self.assertTrue(all(not Path(path).exists() for path in context["owned"]))
                finally:
                    if process.poll() is None:
                        process.kill()
                    process.communicate()

    def test_dry_run_writes_nothing(self):
        cases = self.cases(langs=("cpp", "mojo"))
        before = set(self.root.rglob("*"))
        with contextlib.redirect_stdout(io.StringIO()):
            status = bench.Runner(self.config, True).run(cases, None)
        self.assertEqual(status, 0)
        self.assertEqual(set(self.root.rglob("*")), before)

    def test_default_pixi_launcher_works_without_mojo_on_path(self):
        self.assertEqual(Config().mojo, ("pixi", "run", "mojo"))
        directory = Path(self.temporary.name) / "bin"
        directory.mkdir()
        launcher = directory / "pixi"
        launcher.write_text(
            f"#!{sys.executable}\nimport os, sys\n"
            "assert sys.argv[1:3] == ['run', 'mojo']\n"
            f"assert os.getcwd() == {str(self.root.parent / 'mojo')!r}\n"
            f"os.execv({sys.executable!r}, [{sys.executable!r}, {str(self.tool)!r}, "
            f"'compiler', {str(self.events)!r}, *sys.argv[3:]])\n"
        )
        launcher.chmod(0o755)
        config = replace(self.config, mojo=Config().mojo)
        with patch.dict(os.environ, {"PATH": str(directory)}):
            status, runner = self.run_cases(self.cases(langs=("mojo",)), config)
        self.assertEqual(status, 0)
        self.assertFalse((self.root / "arch" / "mojo").exists())
        generation = next(task for task in runner.commands if task["stage"] == "generate")
        self.assertEqual(generation["argv"][generation["argv"].index("-a") + 1],
                         str(self.root.parent / "mojo" / "bench.mojo"))

    def test_fixed_profile_cli_for_dsp_and_transpiled_commands(self):
        self.cases()
        for command in (["run", "all", "all", "good"],
                        ["inspect", "asm", "all", "all", "good"]):
            cases = bench.resolve_cases(self.config, bench.parser().parse_args(command))
            self.assertEqual(len(cases), 4)
            self.assertTrue(all(case.stem.endswith("_48000_128") for case in cases))
        for lang in ("cpp", "mojo"):
            source = self.config.arch(lang) / f"experiment.{lang}"
            source.write_text(json.dumps({"dsp": "experiment", "behavior": "ok"}))
            for command in (["run-transpiled", "vec", lang, str(source)],
                            ["inspect-transpiled", "llvm", "vec", lang, str(source)]):
                cases = bench.resolve_cases(self.config, bench.parser().parse_args(command))
                self.assertEqual(len(cases), 1)
                case = cases[0]
                args = backends.compile_source(self.config, case, source, self.root / "out")
                self.assertTrue("-DSAMP_RATE=48000" in args or "SAMP_RATE=48000" in args)
                self.assertTrue("-DBUFF_SIZE=128" in args or "BUFF_SIZE=128" in args)
        self.assertEqual((SAMP_RATE, BUFF_SIZE), (48000, 128))

    def test_malformed_csv_preserves_previous_report(self):
        self.assertEqual(self.run_cases(self.cases())[0], 0)
        path = self.config.report / "report.csv"
        path.write_text("wrong,header\nold,value\n")
        before = path.read_bytes()
        with self.assertRaisesRegex(ValueError, "header"):
            self.run_cases(self.cases())
        self.assertEqual(path.read_bytes(), before)


if __name__ == "__main__":
    unittest.main()
