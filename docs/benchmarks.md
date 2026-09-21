# Native proof benchmarks

Use one heavy job at a time and the resource bounds in
[development](development.md). Configure `SHIELDD_PARI_KEYS` first.

```sh
cargo bench --profile ci -p shieldd-sdk-bench --bench jubjub
cargo run --profile ci -p shieldd-sdk-bench --bin transfer-benchmark -- \
  --tx-count 8 --runs 3 --out target/bench/native-transfer.json
```

The transfer benchmark generates and stores a real transaction corpus, then
measures proposal preparation, verification, execution and commit. The regulated
fixture selects issuer disclosure and padding volume payloads; it does not
measure undisclosed volume accumulation. Corpus
metadata binds the exact executable, registry, relation and transaction count.
Rebuilding the binary invalidates its corpus even when the fixture code is
unchanged. Setup and proof generation
are outside the reported scenario timings and reported separately. Increase
transaction count only after checking memory and disk. Extrapolated throughput
is not a measured capacity limit. Preparation, validation and execution each run
uncached, so totals include three verification/execution passes. The benchmark
allows oversized proposals. Percentiles describe run-average time per
transaction, not individual transaction latency.

The proof-only comparison uses the same extracted corpus for one-transaction
batches and full same-family batches, alternates their order, and excludes
extraction and warmup. Timings include task scheduling and verified receipts.
The ignored `prover_strategy_sequential` and `prover_strategy_rayon_two` tests in
shielded-pool and view compare identical transfer and history-generation witnesses
with one cold and three warm proving calls, verifying every proof. Run each test
in a separate process for CPU and peak-RSS comparisons. `just pari-proof-tests`
excludes these benchmarks.

The current local setup has these artifact sizes. Domain size is the padded
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

## Measured native strategy comparison

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

## Prepared prover measurements

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

Run the ignored `prover_strategy_preparation` test in `shieldd-sdk-proof-params`
for that breakdown. These figures do not measure a change in batch verification,
catch-up throughput or isolated peak memory. Consuming key bases and FFT vectors
removes redundant retained/copy allocations, but no new peak-RSS comparison was
made. The earlier 6.193 s native warm baseline includes neither prepared-prover
optimization stage; current warm proving is 58.1% faster than that baseline.

Prepared polynomial buffers are reused for masking and opening division. A paired
process measurement with the same keys and witness gave warm means of 2.597 s
and 2.599 s, and process peak RSS of 3.47 GiB and 3.48 GiB. This establishes no
measurable latency or process-peak reduction; registry loading dominates the
latter. Coefficient-buffer reuse is checked directly by the math parity tests.

## Measured eight-transfer workload

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
registry loading and corpus generation. Re-run the command above to produce
JSON with per-run timings, registry identity, executable digest and corpus hashes.
