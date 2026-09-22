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


The current nine-family artifact sizes and verification are recorded in
[optimization implementation](reviews/circuit-state-optimization-implementation.md).
No full application throughput benchmark was rerun after that implementation.
Use [the experiment report](reviews/circuit-state-optimization-experiments.md) for
the measured circuit candidates and [historical proof benchmarks](reviews/proof-benchmark-history-20260921.md)
for earlier variants, including the 1.722 ms eight-proof verification sample.
Those timings use their recorded relations and do not measure the current registry.
