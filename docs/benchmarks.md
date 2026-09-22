# Native proof benchmarks

Use one heavy job at a time and the resource bounds in
[development](development.md). Configure `SHIELDD_PARI_KEYS` first.

```sh
cargo bench --profile ci -p shieldd-sdk-bench --bench jubjub
cargo run --profile ci -p shieldd-sdk-bench --bin transfer-benchmark -- \
  --tx-count 8 --runs 3 --out /tmp/shieldd-native-transfer.json
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

Measure the checkout and registry being evaluated; do not reuse timings from a
different relation or executable. Keep run outputs in local scratch space or CI
artifacts outside the repository. Record hardware, profile, worker count, source
revision and registry identity alongside results. [Circuits](circuits.md) owns
family coverage; [Proof system](proof-system.md) owns registry configuration.
