# Transfer proof comparison

Development-only comparison of Shieldd's real BLS12-377 Transfer circuit: current
Groth16/SnarkPack v1 against ZK-Pari pinned in `Cargo.toml`. Arkworks 0.6 is confined
to this independent Cargo workspace; the baseline example builds in the root
workspace with its existing Arkworks version. Root dependency additions are dev-only.

## Run

From the repository root on macOS (the resource monitor uses `vm_stat` and `sysctl`):

```sh
python3.13 -m venv tools/zkpari-spike/cache/venv
tools/zkpari-spike/cache/venv/bin/python -m pip install --only-binary=:all: -r tools/zkpari-spike/requirements.txt
tools/zkpari-spike/cache/venv/bin/python tools/zkpari-spike/run.py all
```

The stages can also be invoked separately: `prepare`, `correctness`, `corpus`,
`measure`, `report`. All expensive stages require their predecessors. Reports
default to the experiment in `cache/latest.json`; `--cache PATH` selects one.
For computation, a selected cache must match the current source identity.

Allow many hours. The corpus stage creates 4,096 real, freshly randomized proofs
per backend using two threads. Measurement then uses one and two threads, three
warmups and 30 samples per warm proving/verification cell, plus five fresh-process
first proofs per scenario/profile/backend. No reduced-count run is a completed spike.

Ctrl-C or a resource stop preserves completed proof files and sample records.
Rerun the interrupted stage with unchanged sources. Reuse checks source, dependency
locks, binary hashes, circuit/key/assignment hashes, corpus ordering and proof hashes;
resumed proofs are individually verified again. A partial final sample append is
retained separately and discarded; corruption of completed records is an error.

## Components

- `tools/gnark/cmd/proofspike`: persistent JSONL gnark compiler/solver/prover using
  the canonical circuit exporter, witness decoder and pinned proving artifacts.
- `src/bridge.rs`: checked canonical R1CS parser and full-assignment importer.
  Wire 0 is one, wire 1 is the public statement hash, followed by secret and
  intermediate wires. Scalars use fixed-width canonical little-endian encoding.
- `src/main.rs`: real-circuit feasibility/correctness gate and persistent ZK-Pari
  worker. Upstream keygen/prove use its R1CS-to-Square-R1CS adapter unchanged.
- `crates/crypto/proof-aggregation/examples/proof_spike.rs`: current prepared
  Groth16 verification, gnark proof translation, SnarkPack v1 aggregation and
  verification including preflight. No ordinary Groth16 batching.
- `run.py` and `report.py`: resource control, staged execution, resumable corpus,
  balanced measurement blocks, statistics and standalone SVG plots.

The existing over-limit accumulator fixture deliberately fails the circuit. The
spike keeps it as a negative test and uses an ignored, explicitly targeted Rust
test to export a **valid disclosure** with an independent seed into the cache.
This uses the existing flagged witness builder (100 outbound, daily limit 1), so
it shares the disclosure branch with the existing flagged scenario. The six
positive scenarios cycle in the same order for both backends. No bundled fixture
or production circuit/artifact is regenerated or replaced.

## Measurement semantics

Warm request wall time includes Go witness construction/decoding, solving,
cross-process JSON/hex transport, proving and output encoding. Gnark's Prove API
includes its solver; the baseline does not solve twice. ZK-Pari's bridge validates
every original and converted constraint, and its prover subsequently performs
its own synthesis/conversion. That diagnostic validation overhead is included
and separately identified as bridge time. Gate proof-from-assignment diagnostics
are never reported as complete proving latency.

Both individual verifier timings are retained: prepared-key cryptography and
checked decode/re-encode plus verification. Batch timings exclude JSON transport
and disk I/O, starting with encoded proof/statement bytes already in memory.
They include canonical field/group decoding and all actual verifier preflight.
SnarkPack verification consumes real public statements and the wrapped aggregate;
individual Groth16 proof decoding is charged to aggregation. SRS preparation is
separate and is not charged to a fresh-process first individual proof.

Primary batch results are checked preparation plus verification. SnarkPack
aggregate construction, its preparation, and aggregation-plus-verification are
reported separately. Counts are 1, 2, 8, 16, 32, 48, 64, 128, 256, 257, 512, 1024,
1025, 2048 and 4096. SnarkPack repeats the final proof/statement to the next power
of two; ZK-Pari uses exactly the real count and fresh upstream verifier randomness.

RSS is the native process lifetime high-water mark, including initialization.
Verification runs in fresh workers without Go solvers, circuits or proving keys,
so proving memory does not contaminate the verifier memory comparison.
One-second simultaneous process RSS samples supplement it; they can miss short
peaks. Go/Rayon environment limits match the requested profile. The current
SnarkPack aggregation implementation explicitly creates a single-thread pool;
that production behavior is preserved in both profiles. There is only one active
heavy job; idle workers can coexist. The monitor stops its own jobs on growing
swap, low reclaimable memory, disk pressure or competing heavy work. Known
build/proof jobs stop the run immediately; unknown high-CPU, high-memory processes
must remain busy for 30 seconds, preventing short UI bursts from aborting it.
The monitor never terminates other tasks.

## Outputs and limits

Each experiment lives under ignored `cache/<source identity>/`. It retains the
canonical relation, full assignments, development keys, corpus records, raw
samples, initialization/keygen records, resource logs and exact test commands.
`report/report.md`, `report/results.json` and SVG plots summarize completed cells.

Warm p95 uses linear interpolation. Speedup uncertainty is a paired-block
bootstrap of the ratio of medians (4,000 resamples). First-proof reports show
five individual values and their median, with no cold-tail estimate or claim
that the operating-system page cache was cold.

Repeated statements make the corpus proof-layer data, not an executable block.
Proof throughput is not payment/network TPS. Desktop proving is not evidence of
phone acceptability. This experiment neither replaces the production backend nor
adds formal tools or evidence, which remain in `shieldd-security`.
