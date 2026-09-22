# Constant outlining with native Commonware proving

Constant outlining is retained as isolated patch
`third_party/commonware-patches/series/0005-pari-constant-outline.patch`.
It moves constant coefficients into one private witness after input linking,
then constrains that witness by `(1 - witness)^2 = 0`. Over the scalar field,
this forces the witness to one. Folding, fusion and committed-input linking
complete before this transformation. The public application statement remains
one digest; its fields are hashed and checked inside the circuit.

This is an explicit dependency on Commonware compiler internals, reviewed on
upgrades. It does not replace native witness consistency checking, proving,
verification, key decoding, FFT or MSM. Retire it when upstream provides
equivalent sparse constant handling. Relation identities and generated keys
must always match the patched compiler.

## Verification

- Before restoration, the regression failed because no private constant witness
  existed. After restoration it passes and rejects values zero and two, while
  checking private-column placement, one use of public one, and committed rank.
- All 30 Commonware Pari tests and six generic circuit tests passed in release.
- Pinned upstream plus the four-patch queue reproduces the vendored tree exactly.
- All 55 Shieldd circuit tests passed, including real native proofs for all eight
  families, plus the proof-envelope/batch integration test. The optimized suite
  ran serially in 530.51 seconds; no tests were ignored.
- All nine registry tests passed, including the ignored warm-load artifact and
  relation-shape regression, against the regenerated registry.

Logs are preserved in `/tmp/shieldd-constant-outline/` during this task.

## Regenerated artifacts

Fresh development registry: `target/shared-payload-outlined-pari-keys-20260921`.
Setup and staging/destination loads passed in 409.23 seconds including the
example build, with 3.96 GiB maximum resident set size and no swaps.
All eight verifying keys are 539 bytes, each with one application public scalar,
one committed witness value, and two touched public-column rows. Domain sizes
are unchanged. This registry requires matching fresh local state; existing
registry-bound stores reject it.

Registry identity: `942573eaa845d8d80bca0b985f802be48151943b8e0e71961cf31c8ea9c351d9`.
Transfer relation: `282c7d4f4f60a53fecebf1c5fe72b8aaad55f505acb2449e2a84173f3853713f`.

| Family | Domain | PK bytes | VK bytes |
| --- | ---: | ---: | ---: |
| transfer | 262,144 | 61,363,109 | 539 |
| reshape_one_to_eight | 262,144 | 58,495,881 | 539 |
| reshape_eight_to_one | 262,144 | 60,020,573 | 539 |
| withdrawal | 131,072 | 31,362,169 | 539 |
| seizure | 32,768 | 7,159,933 | 539 |
| disclosure | 262,144 | 58,553,237 | 539 |
| history_generation | 16,384 | 3,935,268 | 539 |
| history_chunk | 262,144 | 57,807,037 | 539 |

## Eight-transfer benchmark

Native prover and verifier; optimized `ci` profile on the same M4 Pro; 12
uncached runs, one heavy job, `CARGO_BUILD_JOBS=2`, `RAYON_NUM_THREADS=2`, and
`GOMAXPROCS=2`. The fresh corpus contains eight regulated transfers and 31,720
transaction bytes. Corpus generation took 105.45 seconds, excluded from the
verification and application timings. Every run completed successfully.

| Measurement | Mean milliseconds |
| --- | ---: |
| Eight individual proof-verification batches | 7.439 |
| One same-family batch of eight proofs | 1.722 |
| Prepare eight candidates | 153.007 |
| Validate eight transactions | 155.705 |
| Execute and commit eight transactions | 166.940 |
| All three uncached application passes | 475.652 |

The eight-proof batch ranged from 1.660 to 1.774 ms. The earlier compiler without
outlining measured 442.116 ms over three runs; this same workload shape is now
about 257 times faster for batch verification. Keys and proofs were regenerated
for the changed relation. This is a local benchmark, not a network capacity or
TPS claim. Whole-process peak RSS was 3.56 GiB including corpus generation;
there were no swaps. No profiler overlapped these timings.

Raw results: `target/bench/shared-payload-outlined-transfer.json`.
Corpus: `target/bench/shared-payload-outlined-corpus`.
Executable SHA-256: `f4702a13396c010bc302cfe379bd3b1d3e2c5ef1274fc48f869df1bda3c6e62c`.
The runtime-reported registry and relation identities match the registry above.

Reproduce after building `transfer-benchmark` with `--locked --profile ci`:

```sh
SHIELDD_PARI_KEYS="$PWD/target/shared-payload-outlined-pari-keys-20260921" \
CARGO_BUILD_JOBS=2 RAYON_NUM_THREADS=2 GOMAXPROCS=2 \
target/ci/transfer-benchmark --tx-count 8 --runs 12 \
  --out target/bench/shared-payload-outlined-transfer.json \
  --corpus-dir target/bench/shared-payload-outlined-corpus
```

## Check scope

101 tests passed in this restoration: 36 Commonware, 55 Shieldd circuit,
one proof-envelope integration, and nine registry tests. Real native proofs
for all eight circuit families and the gated registry test were actually run,
plus the real eight-transfer application benchmark. The broader application
release-gated suite, full workspace suite and Wasm checks were not rerun for
this isolated compiler restoration. Source reproduction, inventory, local
documentation links and diff whitespace checks passed. External Orbis/PET
integration remains outside this local verification.
