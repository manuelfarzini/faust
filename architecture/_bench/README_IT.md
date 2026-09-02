## Faust benchmark framework

Il contenuto di questa cartella implementa il framework utilizzato per misurare e confrontare le prestazioni
del codice DSP generato dai backend FAUST, con particolare riferimento alle implementazioni `C++` e `Mojo`.

Il framework orchestra le fasi necessarie per trasformare uno stesso programma FAUST in programmi eseguibili
confrontabili, eseguirli in condizioni omogenee e raccogliere i risultati in una rappresentazione comune.

Il flusso generale può essere riassunto come segue:

```
programma FAUST
      |
FAUST compiler + bench architecture
      |
      +---------------------+
      |                     |
 sorgente C++          sorgente Mojo
      |                     |
   clang++              mojo build
      |                     |
      +----------+----------+
                 |
          benchmark runtime
                 |
        report testuale / CSV
                 |
          plot e snapshot
```

Lo stesso framework comprende un percorso di ispezione separato dal benchmark, utilizzato per produrre `LLVM
IR` e assembly del kernel generato senza introdurre nel codice osservato la logica di misurazione e reporting.

## Avvio rapido

Il workspace contiene già `pixi.toml` e `pixi.lock`, quindi per utilizzare il framework non è necessario
inizializzare un nuovo progetto Pixi né aggiungere manualmente le dipendenze.

Per prima cosa occorre installare Pixi.

Su macOS con Homebrew:

```
brew install pixi
```

Su Linux, incluse distribuzioni come Ubuntu, Debian e Fedora:

```
curl -fsSL https://pixi.sh/install.sh | sh
```

Su Windows da PowerShell:

```powershell
iwr -useb https://pixi.sh/install.ps1 | iex
```

Dalla directory `architecture/_bench` è quindi possibile installare l'ambiente dichiarato dal progetto:

```
pixi install
```

e attivarlo:

```
pixi shell
```

Su `bash` o `zsh` gli alias del framework possono essere caricati con:

```
source script/source.sh
```

Il comando seguente esegue l'intera matrice disponibile, usando entrambe le modalità, entrambi i linguaggi e
tutti i DSP presenti in `src`:

```
bench_run all all all
```

Gli alias principali sono:

```
bench_run <modes> <langs> <sources...>
bench_run_transpiled <mode> <lang> <path>

inspect_llvm <modes> <langs> <sources...>
inspect_asm <modes> <langs> <sources...>

bench_plot <name>
bench_snapshot <name>
bench_clean
```

L'help completo viene stampato eseguendo:

```
bench_help
```

`source.sh` fornisce solamente gli alias `bash/zsh`. La CLI Python rimane disponibile direttamente
attraverso `bench` o `python3 script/bench.py`.

## Organizzazione della directory

Le componenti principali sono organizzate secondo la seguente struttura:

```
architecture/_bench/
├── arch/
│   └── cpp/
│       ├── common.h
│       ├── bench.h
│       ├── bench.cpp
│       └── inspect.cpp
├── script/
│   └── implementazione Python del framework
├── src/
│   └── *.dsp
├── report/
│   ├── report.csv
│   ├── bin/
│   ├── tab/
│   ├── tmp/
│   ├── plot/
│   ├── snap/
│   ├── llvm/
│   └── asm/
├── pixi.toml
└── pixi.lock
```

La directory `src` contiene i sorgenti FAUST utilizzati come casi di benchmark. Inoltre, è possibile
fornire al framework un path esplicito verso un altro sorgente DSP.

La directory `arch/cpp` contiene le architetture dedicate al backend C++. Le corrispondenti architetture Mojo
non sono duplicate all'interno di `_bench`: vengono utilizzate direttamente da
`architecture/mojo`.

La directory `script` contiene il codice Python che coordina generazione, compilazione, esecuzione, report,
grafici e ispezione del codice prodotto.

I file transpilati in linguaggio target generati dal framework sono mantenuti sotto `report/tmp/<run-id>`.
Le architetture C++ e Mojo dipendono da header o package locali esterni a questa directory. I rispettivi
path vengono quindi forniti ai compilatori tramite l'opzione `-I`. In questo modo la posizione fisica del
sorgente generato non deve coincidere con quella dell'architettura.

Gli artifact persistenti prodotti dal framework vengono invece organizzati nelle sottodirectory di `report`,
separando binari, output testuali, plot, snapshot e risultati di ispezione.

## Ambiente Pixi

La directory costituisce un workspace Pixi autonomo. `pixi.toml` descrive la toolchain e le dipendenze
utilizzate dal framework, mentre `pixi.lock` memorizza la risoluzione concreta dell'ambiente.

Le dipendenze principali comprendono Mojo e gli strumenti Python utilizzati per l'orchestrazione e la
produzione dei report. Una volta installato l'ambiente con:

```
pixi install
```

è possibile entrarvi con:

```
    pixi shell
```

oppure eseguire un comando senza aprire una shell interattiva tramite `pixi run`.

Pixi rende riproducibile la toolchain del benchmark, la logica è implementata in Python e `source.sh`
costituisce un livello opzionale di alias per `bash/zsh`.

## Configurazione numerica

Il framework assume una configurazione numerica fissa, scelta per confrontare i backend nelle stesse
condizioni utilizzate durante lo sviluppo del backend Mojo.

La precisione interna del DSP viene selezionata durante la transpilazione FAUST tramite:

```
    -double
```

Il calcolo interno prodotto dal generatore utilizza quindi precisione `f64`, mentre l'interfaccia esterna
delle architetture utilizza invece campioni `f32`.

Per C++ il tipo viene risolto con la macro `FAUSTFLOAT` nel codice sorgente e passando la rispettiva opzione
dal compilatore:

```
    -DFAUSTFLOAT=float
```

Per Mojo viene utilizzato un sistema equivalente, tramite la chiamata a funzione `get_defined_dtype` nel
codice sorgente:

```
    dfaust = get_defined_dtype("DFAUST", DType.float32)
```

e passando l'opzione:

```
    -D DFAUST=DType.float32
```

La configurazione numerica utilizza quindi:

```
    calcolo interno DSP    f64
    buffer esterni C++     f32
    buffer esterni Mojo    f32
```

La configurazione di esecuzione utilizza:

```
    sample rate    48000 Hz
    buffer size    128 frame
```

## Modalità scalare e vettoriale

Il framework espone due modalità di generazione:

- `scalar`, corrispondente alla generazione FAUST ordinaria;
- `vec`, corrispondente alla generazione attraverso il vector code container di FAUST.

La modalità vettoriale aggiunge alle opzioni di FAUST:

```
    -vec -vs 4 -dfs
```

La `-vec` mode riorganizza il kernel in sottocicli secondo le dipendenze del DSP. Nel backend C++ questi
cicli possono successivamente essere autovettorizzati dal compilatore, mentre il backend Mojo utilizza
questa struttura come base per l'emissione SIMD esplicita descritta nella documentazione del generator.

Il valore `-vs 4` corrisponde alla configurazione SIMD utilizzata nello sviluppo su Apple silicon M1 ed M4 e
deve rimanere coerente con la larghezza vettoriale assunta dal codice Mojo generato.

## Esecuzione dei benchmark

Il comando principale genera, compila ed esegue una matrice di benchmark:

```
    bench_run <modes> <langs> <sources...>
```

Ad esempio:

```
    bench_run all all all
    bench_run scalar cpp,mojo carre_volterra
    bench_run vec mojo multibandfilter
```

Le selezioni disponibili sono:

- modalità: `scalar`, `vec` oppure `all`;
- linguaggio: `cpp`, `mojo` oppure `all`;
- sorgente: nome del DSP, path esplicito, glob oppure `all`.

Il framework risolve le combinazioni richieste e applica a ciascun DSP lo stesso percorso di generazione,
compilazione e misurazione.

## Generazione e compilazione

La generazione combina il sorgente DSP con l'architettura di benchmark del linguaggio selezionato.

Per C++:

```
src/<dsp>.dsp + arch/cpp/bench.cpp
        |
sorgente benchmark C++
        |
      clang++
        |
     binario
```

Per Mojo:

```
src/<dsp>.dsp + architecture/mojo/bench.mojo
        |
sorgente benchmark Mojo
        |
    mojo build
        |
    binario
```

La stessa pipeline viene utilizzata per le modalità scalar e vec; ciò che cambia è la forma del
codice prodotta da FAUST e, successivamente, il codice generato dal compilatore target.

## Architettura di benchmark

Le architetture `bench` trasformano il DSP generato in un programma autonomo misurabile. Si occupano di
inizializzare il DSP, preparare i buffer e richiamare `compute` in un ambiente controllato.

Il comportamento generale è equivalente per C++ e Mojo:

```
inizializzazione DSP
        |
allocazione buffer
        |
inizializzazione ingressi
        |
      warmup
        |
misurazione compute
        |
checksum output
        |
        +--> report testuale
        |
        +--> CSV
```

Il warmup evita che le prime esecuzioni influenzino direttamente la misura. Il benchmark richiama quindi
`compute` ripetutamente e raccoglie i tempi necessari al confronto fra le diverse implementazioni.

Il checksum degli output non costituisce una misura prestazionale; mantiene osservabile il risultato
del calcolo e permette di confrontare l'esecuzione dei backend.

## Report

Ogni benchmark produce un output testuale e aggiorna il report strutturato globale:

```
    report/report.csv
```

Gli output leggibili delle singole esecuzioni vengono salvati sotto:

```
    report/tab/
```

Il CSV mantiene separati i diversi DSP, linguaggi, modalità e casi di benchmark, permettendo di
accumulare e confrontare più esecuzioni nello stesso report.

Fra le metriche raccolte sono presenti:

- tempo medio per invocazione di `compute`;
- tempo per frame;
- throughput in frame al secondo;
- throughput in campioni di uscita al secondo;
- valori fast e slow della misura;
- checksum del risultato.

## Plot

Il comando:

```
    bench_plot <name>
```

produce un grafico SVG a partire dal contenuto di `report/report.csv`.

Il plot confronta i risultati in termini relativi percentuali sul valore medio di throughput. Le colonne
vengono raggruppate per DSP, per ciascun DSP il valore medio più alto viene posto al 100% e l'altezza delle
altre colonne rappresenta il rispettivo valore medio in percentuale rispetto a quel massimo.

Sopra ogni colonna viene invece riportato il valore medio di throughput espresso in campioni in `frame/s`.

Gli error bar associati a ciascuna colonna mostrano gli estremi fast e slow.

## Snapshot

Il comando:

```
    bench_snapshot <name>
```

salva lo stato corrente dei report sotto:

```
    report/snap/
```

Uno snapshot conserva un insieme di risultati come persistenti per consentire modifiche a generator ed
architetture e confrontare poi i rislati nuovi con i precedenti. A tal fine, il normale `cleanup` non
pulisce la cartella `report/snap`.

## Ispezione LLVM e assembly

Il benchmark e l'ispezione del codice sono mantenuti separati. Le architetture di benchmark contengono la
logica necessaria alla misurazione, mentre le architetture `inspect` mantengono il percorso di calcolo
minimale per osservare il codice prodotto dal compilatore target.

Il framework espone:

```
    inspect_llvm <modes> <langs> <sources...>
    inspect_asm <modes> <langs> <sources...>
```

La generazione utilizza `inspect.cpp` per C++ e `inspect.mojo` per Mojo.

Gli artifact risultanti vengono salvati rispettivamente sotto:

```
report/llvm/<lang>/
report/asm/<lang>/
```

Questa modalità permette di analizzare il codice prodotto, verificare la presenza di istruzioni
SIMD e confrontare le trasformazioni operate dai compilatori senza utilizzare tali output come
misure di performance.

## Sorgenti già transpilati

Il framework può compilare ed eseguire direttamente un sorgente C++ o Mojo già transpilato, saltando la fase
di generazione FAUST:

```
bench_run_transpiled <mode> <lang> <path>
```

La modalità indicata deve corrispondere a quella utilizzata durante la transpilazione del sorgente. Per un
file già transpilato, `scalar` o `vec` non modificano infatti il codice compilato, ma identificano il caso
nel report. Passando la modalità scorretta si genera un certo risultato nella colonna errata.

Questo comando è utile in fase di ottimizzazione, quando, ad esempio, si vuole modificare manualmente il
codice prodotto dal backend e misurarne la performance.

Lo stesso principio è disponibile per l'ispezione:

```
    inspect_llvm_transpiled <mode> <lang> <path>
    inspect_asm_transpiled <mode> <lang> <path>
```

Il sorgente viene compilato direttamente dal proprio path utilizzando la configurazione del framework e il
compilatore del linguaggio target.

## Cleanup

I sorgenti generati durante benchmark e ispezione sono artifact temporanei e vengono mantenuti nell'area
`report/tmp`. I sorgenti già transpilati forniti dall'utente vengono invece utilizzati direttamente e non
vengono copiati o modificati dal framework.

Il comando:

```
bench_clean
```

rimuove gli artifact rigenerabili del framework. Gli snapshot rimangono disponibili, a meno che non venga
richiesta esplicitamente anche la loro eliminazione con l'opzione `--snapshots`.

Durante lo sviluppo è inoltre possibile mantenere i sorgenti intermedi con l'opzione `--keep-tmp`, utile
quando si vuole osservare direttamente il codice prodotto da FAUST prima della compilazione target.

