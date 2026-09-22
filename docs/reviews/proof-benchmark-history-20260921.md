# Proof benchmark history — 2026-09-21

Status: historical measurements of the identified variants. The current nine-family
implementation has different relations; these timings are not its performance claim.
See [measurement recipes and coverage](../benchmarks.md) and
[optimization implementation](circuit-state-optimization-implementation.md).
Raw `target/` paths below are local artifacts, not files supplied by a checkout.
Preserved evidence is linked by the corresponding review reports; absent local
artifacts must be regenerated and cannot establish reproduction of the old binary.

## Constant outlining measurement (2026-09-21)

The [isolated compiler patch and validation](constant-outline-validation.md)
retain native proving, verification, FFT, MSM and key decoding. All eight measured
verifying keys are 539 bytes with two touched public-column rows and one
application public scalar. The complete registry is
`target/shared-payload-outlined-pari-keys-20260921`; exact identities and proving
key sizes are recorded in the validation report. Setup including build and two
registry loads took 409.23 s with 3.96 GiB maximum resident set size.

Twelve fresh-corpus runs measured **1.722 ms for one batch of eight proofs**
(range 1.660–1.774 ms), versus 7.439 ms for eight individual batches. The same
workload without outlining measured 442.116 ms for the batch. All three uncached
application passes averaged 475.652 ms (prepare 153.007, validate 155.705,
execute/commit 166.940), compared with 1,802.317 ms without outlining. Fresh
corpus generation took 105.45 s and is excluded. Whole-process peak RSS was
3.56 GiB including corpus generation. These are local elapsed times, not
network throughput. Raw data: `target/bench/shared-payload-outlined-transfer.json`;
exact corpus/executable/registry identities are in that report.

## Shared-key artifacts without constant outlining (2026-09-21)

The 2026-09-21 implementation registry has the following sizes. Setup, including
the example build and staging/destination validation, took 410.21 s with a
3.82 GiB whole-process peak RSS on the same M4 Pro. The exact relation and VK
identities are recorded in [implementation validation](key-native-implementation-validation.md).

| Family | Domain | Proving key bytes | Verifying key bytes |
| --- | ---: | ---: | ---: |
| transfer | 262,144 | 65,752,899 | 4,390,381 |
| reshape_one_to_eight | 262,144 | 61,695,799 | 3,200,509 |
| reshape_eight_to_one | 262,144 | 64,385,775 | 4,365,793 |
| withdrawal | 131,072 | 33,983,171 | 2,621,593 |
| seizure | 32,768 | 7,589,614 | 430,272 |
| disclosure | 262,144 | 62,923,479 | 4,370,833 |
| history_generation | 16,384 | 4,327,509 | 392,832 |
| history_chunk | 262,144 | 61,516,103 | 3,709,657 |

Native public columns enlarge VKs to 0.37–4.19 MiB. The registry admits at most
8 MiB per VK; generation and loading enforce the same bound. Envelopes remain
244 bytes and domain sizes are unchanged. The following baseline measurements
use different relations and must not be treated as a paired prover comparison.

## Native strategy comparison without constant outlining (2026-09-21)

Same M4 Pro, `ci` profile and the shared-key registry without outlining. Each strategy ran in a separate
process using the gated-test binaries, with one cold and three warm proofs and
verification of every result. Warm values are means, not service throughput.

| Relation | Sequential warm | Two workers warm | Improvement | Sequential cold | Two workers cold |
| --- | ---: | ---: | ---: | ---: | ---: |
| transfer | 8.503 s | 6.253 s | 26.5% | 51.653 s | 49.306 s |
| history_generation | 0.719 s | 0.538 s | 25.1% | 3.590 s | 3.371 s |

Registry loading took 12.442–12.562 s separately. Whole-process peak RSS was
3.58–3.60 GiB, dominated by registry loading, not isolated proof memory. The
two-worker native strategy was selected. In this historical variant, warm Transfer proving
was 6.253 s versus the historical removed prepared path's 2.592 s. Relations and
keys changed, so these are observed operating costs, not a paired attribution
of the regression to individual removed optimizations.

## Eight-transfer workload without constant outlining (2026-09-21)

Eight real regulated transfers, three uncached runs, same fixture shape as the
historical workload below. Fresh corpus generation took 106.65 s and produced
31,720 transaction bytes; this is excluded from scenario timings. All runs
completed and every proof was verified.

| Measurement | Mean elapsed time |
| --- | ---: |
| Eight individual proof-verification batches | 449.552 ms |
| One same-family batch of eight proofs | 442.116 ms |
| Prepare eight candidates | 592.854 ms |
| Validate eight transactions | 597.775 ms |
| Execute and commit eight transactions | 611.689 ms |
| All three uncached passes combined | 1802.317 ms |

Batching provides only a 1.017× improvement in this sample. The historical
prepared/compiler-patched workload recorded 1.700 ms for the eight-proof batch
and 472.198 ms for all three application passes; values without outlining are 442.116 ms
and 1,802.317 ms. This is a material observed verification regression after
restoring native public columns and changing relations. It is not a paired
benchmark attributing cost to one patch. The [constant-outlining restoration](constant-outline-validation.md)
measures the isolated compiler fix with the native prover and verifier.

Whole-process peak RSS was 3.67 GiB, including corpus generation and the build
wrapper. Raw results, exact executable/registry identity and corpus hashes are
in `target/bench/shared-payload-native-transfer.json`; corpus data is in
`target/bench/shared-payload-native-corpus`. These timings are not a network or
block-capacity estimate.

The [follow-up profile](native-verifier-regression-investigation.md)
locates ~99% of sampled verification-worker stacks in public-column evaluation.
The verifier itself is unchanged from baseline; removing constant outlining
expanded the touched public rows from 2 to 121,908. This separates the layout
regression from the removal of the prepared prover and was addressed by the subsequent constant-outlining restoration.

## Historical artifact sizes (`1dc62a7`)

The baseline `1dc62a7` setup had these artifact sizes (before shared payload keys
and native compiler restoration). Domain size is the padded
power-of-two proving domain, not the exact constraint count. Setup randomness
changes key bytes and identity, but not these fixed relation shapes.

| Family | Domain | Proving key bytes | Verifying key bytes |
| --- | ---: | ---: | ---: |
| transfer | 262,144 | 61,451,405 | 539 |
| reshape_one_to_eight | 262,144 | 58,558,073 | 539 |
| reshape_eight_to_one | 262,144 | 60,082,765 | 539 |
| withdrawal | 131,072 | 31,424,361 | 539 |
| seizure | 32,768 | 7,159,933 | 539 |
| disclosure | 262,144 | 58,553,237 | 539 |
| history_generation | 16,384 | 3,935,268 | 539 |
| history_chunk | 262,144 | 57,807,037 | 539 |

All envelopes are 244 bytes. Same-family native Pari batches reuse the upstream
pairing/MSM implementation. The application keeps one proving key cached to
bound memory. Raw-ten history chunks avoid recursive pairing gadgets. Further
optimization should compare measured time and memory against these same fixed
relations; changing domains or gadgets requires new registry keys and fixtures.

## Historical native strategy comparison (`1dc62a7`)

Apple M4 Pro, 48 GiB RAM, optimized `ci` profile with debug assertions enabled;
one isolated process per strategy, identical keys and witnesses, one cold plus
three warm proofs, every proof verified. Warm values are the arithmetic means
of those three calls, not service latency or throughput capacity.

| Relation | Sequential warm | Two workers warm | Improvement | Sequential cold | Two workers cold |
| --- | ---: | ---: | ---: | ---: | ---: |
| Transfer | 8.468 s | 6.193 s | 26.9% | 51.456 s | 49.037 s |
| History generation | 0.715 s | 0.517 s | 27.6% | 3.555 s | 3.363 s |

Cold proving includes loading/decoding the key and compiling the relation.
Registry loading is separate: 11.96–12.61 s across these processes. Whole-process
peak RSS was 3.56–3.63 GiB, dominated by registry loading; this is **not** isolated
per-proof memory. Total user CPU stayed near 85 s for transfer and 16 s for
history. The bounded two-worker strategy is the native runtime default; the
one-key cache and per-registry proving mutex remain.

## Historical prepared prover measurements (`1dc62a7`)

Same M4 Pro, optimized `ci` profile, existing keys, seed-42 transfer witness and
bounded two-worker strategy. Every proof was verified; warm values average three
calls. Registry loading is separate from the first proving call.

| Measurement | Prepared prover baseline | Parallel decoding | Latest measured |
| --- | ---: | ---: | ---: |
| Warm transfer proving | 2.621 s | 2.609 s | 2.592 s |
| First transfer proving call | 46.034 s | 25.867 s | 25.706 s |
| Registry loading | 13.050 s | 12.845 s | 12.344 s |

Warm latency is effectively unchanged across these prepared-prover runs at this
sample size. Parallel decoding reduced first proving latency by 43.8%. An isolated
preparation profile measured checked key decoding at 40.637 s sequentially and
20.539 s with two workers; compilation was 2.121 s, artifact read/hash 0.117 s and
preparation 0.466 s in the parallel-decoding run. Decoding retains canonical
encoding, subgroup, nonidentity and sparse-index checks.

These are historical measurements of the removed prepared path; its preparation
benchmark is no longer available. These figures do not measure a change in batch verification,
catch-up throughput or isolated peak memory. Consuming key bases and FFT vectors
removes redundant retained/copy allocations, but no new peak-RSS comparison was
made. The earlier 6.193 s native warm baseline includes neither prepared-prover
optimization stage; that measured prepared run was 58.1% faster than that baseline.

The removed prepared path reused polynomial buffers for masking and opening division. A paired
process measurement with the same keys and witness gave warm means of 2.597 s
and 2.599 s, and process peak RSS of 3.47 GiB and 3.48 GiB. This establishes no
measurable latency or process-peak reduction; registry loading dominates the
latter. The prepared-only buffer tests were removed with that implementation.

## Historical eight-transfer workload (`1dc62a7`)

On the same machine and `ci` profile, eight real regulated `test_usd` transfers
(one spend, two outputs, blank memo, issuer disclosure with padding volume)
completed three uncached runs. The corpus contained 31,720 encoded transaction
bytes and took 105.75 s to initialize and prove. That time is excluded below.

| Measurement | Mean elapsed time |
| --- | ---: |
| Eight individual proof-verification batches | 7.517 ms |
| One same-family batch of eight proofs | 1.700 ms |
| Prepare eight candidates | 153.865 ms |
| Validate eight transactions | 153.136 ms |
| Execute and commit eight transactions | 165.197 ms |
| All three uncached passes combined | 472.198 ms |

Same-family batching was 4.42× faster in this proof-only comparison. The full
workflow is dominated by application work outside that batch equation. This
small fixture is not a capacity estimate, a mixed-family workload, or an
undisclosed-volume benchmark. Process-wide peak RSS was 3.68 GiB, including
registry loading and corpus generation. Use the [current measurement recipe](../benchmarks.md) to produce
JSON with per-run timings, registry identity, executable digest and corpus hashes.
