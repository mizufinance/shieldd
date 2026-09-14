# gnark-crypto MSM probe

## Measured arithmetic result

The two-worker M4 Pro probe completed successfully. All 50 calls (20 warmups,
30 measured) exactly match the group outputs captured from one verified real
Transfer proof. Each table entry is a median of three measured calls, in seconds.

| Actual proving operation | Points | Arkworks | gnark crypto only | gnark including boundary |
|---|---:|---:|---:|---:|
| Witness | 229,132 | 0.421847 | 0.320891 | 0.326436 |
| Masks | 2 | 0.000165 | 0.000111 | 0.000263 |
| Quotient | 262,147 | 0.658343 | 0.462697 | 0.468862 |
| Opening A | 262,145 | 0.669268 | 0.461834 | 0.468360 |
| Opening R | 524,290 | 1.268750 | 0.843493 | 0.856305 |
| Sum of operation medians | | **3.018372** | **2.089027** | **2.120227** |

The measured boundary retains a 0.8981 s saving, or 29.8% less MSM time. Large
operations improve 1.29–1.48×. Sending the two-point mask operation through the
worker costs more than its native execution, although its absolute cost is tiny.
These three-pair diagnostics do not establish reliable tail latency or confidence
intervals across machines/sessions.

The verified export's ordinary phase profile spends 3.0405 s on MSMs and 0.3408 s
on other proving phases: about 90% of the profiled kernel is MSM work. Substituting
0.8981 s into the frozen 3.5661 s complete B API median projects **2.668 s**, about
25% less full latency. This cross-run phase substitution is a projection, not a
complete-proving measurement. It still exceeds A's measured 1.8502 s by about 44%.
A full Go rewrite is not justified by these results alone.

Checked operand initialization took Arkworks 47.611 s and Go 18.066 s, sequentially;
these are loader diagnostics with different implementations, not first-proof
latencies. Go retains 122,660,736 bytes of affine bases. Its maximum process RSS
was 359,366,656 bytes; the complete diagnostic process tree peaked at 1,042,612,224
bytes in one-second samples. The largest MSM allocated about 160.7 MB during the
call (allocation traffic, not temporary live peak). The Go boundary adds scalar
buffers, allocation/GC and transport costs. Integrated prover memory is unmeasured.
No swap, resource interruption or competing heavy process was detected.

Decision: proceed with a bounded persistent-worker complete-proof experiment,
preserving the exact key, relation, masks, transcript and proof encoding. Require
paired-mask complete proof equality plus ordinary verification, then fresh-random
full API samples before accepting the optimization. The desktop-final comparison
remains immutable, and phone acceptability remains unmeasured.

Raw samples and derived JSON are `cache/gnark-msm-samples.jsonl` and
`cache/gnark-msm-analysis.json`. The source archive, original probe binaries and
artifact hashes are in `cache/gnark-msm-probe-frozen/checkpoint.json`. Five focused
Rust tests and two Go bridge/MSM/frame tests passed before export and measurement.

## Complete-proof integration checkpoint

The persistent arithmetic worker now runs inside the real logical-witness API.
Both backends use the same checked relation/key, witness decoder/solver, prepared
mapping and output encoding. Four large MSMs use Go; the tiny mask MSM stays native.
Every resident base slice is hash-bound to the actual loaded key; callback slice
identity/counts are checked, shorter scalar prefixes are zero-padded, and any
foreign error rejects the provisional proof.

All six scenarios passed complete paired-mask proof-byte equality and ordinary
verification. Truncated proofs and changed statements reject, and the invalid
accumulator witness rejects before measurement. Seven focused Rust tests pass.
The initial example build exposed duplicate Rust module types; shared module
imports fixed that compile error before any proving run. Existing Go tests were
reused because its implementation is unchanged.

Two warmup pairs and five fresh measured pairs followed, alternating backend order.
Each proof verified; all 14 warmup/measured packages are distinct. The paired gate
intentionally uses the same masks for each reference/candidate diagnostic pair;
those 12 gate outputs are six distinct proofs, not independently issued transfers.

| Full API backend | Five measured wall times (s) | Median |
|---|---|---:|
| Arkworks reference | 3.461694, 3.466281, 3.473436, 3.469478, 3.475662 | 3.469478 s |
| Persistent gnark MSMs | 2.562042, 2.574841, 2.578682, 2.557398, 2.565229 | **2.565229 s** |

The full API improvement is **26.1% less time (1.35× speedup)**, including witness
solving/mapping, foreign calls and encoding. The foreign path uses the profiled
MSM callback; these are bounded integration diagnostics. Any final selected-worker
run should use the equivalent ordinary callback without phase instrumentation.
The earlier Groth16 1.8502 s result is from another session. It remains a useful
reference, but this run is not a fresh three-way or phone comparison.

Joint initialization was 85.100 s, including Rust reference prover preparation,
key/base binding and Go checked-base loading. It is not an isolated deployable
candidate first-proof result. All workers remained resident; one-second process
tree samples peaked at 3,005,267,968 bytes. This is not isolated per-backend memory.
The guard exited zero, with no swapping or competing heavy job.

Preserve `cache/gnark-full/{samples.jsonl,complete.json,analysis.json}`, resource
records `cache/gnark-full-run.*`, and `cache/gnark-full-source/manifest.json` with
source archive and all three binaries. The original desktop result is unchanged.
The arithmetic gain survives full integration; broad Go rewriting is still not
justified. The next bounded assessment is combining commitment/opening MSMs while
keeping immutable bases resident and avoiding per-proof base-vector copies.

## Combined resident-base operations

The next bounded arithmetic comparison initializes the commitment bases directly
into one allocation and the opening bases into another. Separate operation slices
are views into those same allocations. Combined calls share bucket reduction and
use two IPC requests per proof; no per-proof base-vector copy or extra resident
base table is introduced. Witness/quotient contributions still sum to the same T;
A/R openings still sum to the same U. The transcript and masking are unchanged.

On actual captured scalars, three matched medians including the full boundary:
commitment 0.767926→0.715925 s; opening 1.306533→1.222206 s. All 20 warmup/measured
arithmetic calls match the original group sums. The 0.136329 s projected saving
justified a short complete-proof check, not a parameter sweep.

The full API uses an ordinary unprofiled callback in both paths. All six scenarios
again passed paired-mask complete proof-byte equality, ordinary verification and
negative statement/truncation checks. Invalid witness rejection preceded timing.
Three Go tests pass, including checked shared-base view identity and actual combined
MSM correctness; seven focused Rust tests pass. An initial compile had three
unwired initializer/call arguments; these were fixed before the successful tests.

| Full API backend | Five measured values (s) | Median |
|---|---|---:|
| Separate gnark operations | 2.583657, 2.572108, 2.580125, 2.577256, 2.574706 | 2.577256 s |
| Combined gnark operations | 2.418791, 2.432667, 2.423954, 2.421981, 2.429245 | **2.423954 s** |

This establishes a further **5.95% reduction in full API latency**, after two
warmups per backend. All 26 proving calls verified; six parity pairs intentionally
share diagnostic randomness, while all 14 warmup/measured proofs are distinct.
Joint initialization took 85.909 s and process-tree RSS peaked at 2,808,496,128 bytes;
these include the resident Rust prover, Go witness solver and Go arithmetic worker.
They are not an isolated first-proof or per-backend memory comparison. The run
exited zero with no swap, resource pressure or competing heavy process.

Preserve `cache/gnark-combined-samples.jsonl`, `cache/gnark-combined-analysis.json`,
`cache/gnark-combined-full/{samples.jsonl,complete.json,analysis.json}`, associated
resource logs, and source/binaries under `cache/gnark-combined-source/manifest.json`.
The selected arithmetic route is the combined resident-base implementation. It
remains a development experiment, with no production backend or artifact change.
The prior 1.8502 s Groth16 value is cross-session and still below this result;
phone performance and a new matched shipping-control comparison remain separate.

The large combined operations still account for about 1.94 s in the arithmetic
probe. Removing all previously profiled non-MSM work (~0.34 s) would project only
about 2.08 s from the latest API result, before real implementation constraints.
This bound does not justify a broad Go FFT/field rewrite as a route to comfortably
beating Groth16. Further circuit/domain reduction needs its own credible cost
inventory; C still requires about 44% fewer rows and columns to halve its domain.

To reproduce a fresh full integration run from the current source, build
`gnark_msm_full` and the Go `msmworker`, then run under the resource guard:

```sh
tools/proving-experiment/target/release/examples/gnark_msm_full tools/zkpari-spike/cache/99228210a891ffa23aeb tools/proving-experiment/cache/b-lowered/lowered.pk tools/proving-experiment/cache/provingexperiment-go tools/gnark/artifacts/transfer tools/proving-experiment/cache/gnark-msm-operands tools/proving-experiment/cache/msmworker-combined tools/proving-experiment/cache/NEW_OUTPUT separate-v-combined
```

Use `arkworks-v-gnark` for the independent native-versus-foreign arithmetic control.
Historical exact binaries/sources are preserved with their corresponding results.

## Reproduction and scope

A bounded follow-up to the frozen desktop comparison. `examples/gnark_msm.rs`
captures all five actual B MSM operand classes from one fresh, verified standard
Transfer proof. The binary and source identities are separate from the final
A/B/C workers; `cache/desktop-final-binaries` preserves extra binary copies.
No existing desktop result or proof corpus is replaced.

The bridge encodes an explicit infinity tag and canonical big-endian affine
coordinates/scalars. Both runtimes validate canonical fields, curve and subgroup
membership, including the identity encoding. Bases are checked once and resident.
Go uses the pinned gnark-crypto v0.20.1 MultiExp with NbTasks=2 and GOMAXPROCS=2.
Arkworks uses the same two-worker pool and its ordinary MSM implementation.

Each of witness, masks, quotient, opening-A and opening-R gets two warmup pairs
and three measured pairs in alternating backend order. Exact group equality to
the original real-prover result is required for every call. Crypto-only timings
are separate from Go's complete scalar-encoding/pipe/decode/MSM/result boundary.
Go heap allocation traffic and process RSS are diagnostics, not allocator peak
memory guarantees. Amdahl projections must use the complete B profile and the
actual measured bridge cost before deciding whether integration is worthwhile.

The operand capture uses a pre-solved development witness and fresh proof masks.
Repeated arithmetic calls on those captured operands are not independently issued
proofs. They measure neither complete proving latency nor phone performance.

Run under `guard.py` with unique logs and one heavy job at a time:

```sh
export CARGO_BUILD_JOBS=2 RAYON_NUM_THREADS=2 GOMAXPROCS=2
python3 tools/proving-experiment/guard.py tools/proving-experiment/cache/msm-go-build-new -- go -C tools/gnark build -p 2 -o /Users/antoinecyr/Documents/Source/shieldd/tools/proving-experiment/cache/msmworker ./cmd/msmworker
python3 tools/proving-experiment/guard.py tools/proving-experiment/cache/msm-rust-build-new -- cargo build --release --locked --offline --manifest-path tools/proving-experiment/Cargo.toml --example gnark_msm
python3 tools/proving-experiment/guard.py tools/proving-experiment/cache/msm-export-new -- tools/proving-experiment/target/release/examples/gnark_msm export tools/zkpari-spike/cache/99228210a891ffa23aeb tools/proving-experiment/cache/b-lowered/lowered.pk tools/proving-experiment/cache/gnark-msm-operands
python3 tools/proving-experiment/guard.py tools/proving-experiment/cache/msm-measure-new -- tools/proving-experiment/target/release/examples/gnark_msm measure tools/proving-experiment/cache/gnark-msm-operands tools/proving-experiment/cache/msmworker tools/proving-experiment/cache/gnark-msm-samples.jsonl
```

Correctness tests precede export and measurement. A failed or incomplete job is
not a datapoint. Preserve source snapshots, manifest hashes and raw results when
accepting or rejecting this route. No protocol/privacy change follows from an
arithmetic-library win.
