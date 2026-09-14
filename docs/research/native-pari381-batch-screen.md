# Native Pari381 checked batch verifier screen

The [completed constant-outlining correction](native-pari381-constant-outlining.md) supersedes this diagnostic for the corrected candidate. This document preserves the investigated artifact and rationale.

**This diagnoses our current C integration, not native Pari or BLS12-381 in
general.** The earlier Pari377 estimate cannot be reused for this artifact. One accepted 4,096-entry batch took **302.935 seconds** on one desktop
worker, or **13.52 proofs/second**. This is a preliminary repeated-proof screen,
not an independent corpus or a payment-TPS measurement. No optimization was made.

| Measurement | Native C, BLS12-381 |
| --- | ---: |
| Checked input preparation | 0.385840 s |
| Actual batch verifier | 302.549491 s |
| Complete checked batch | **302.935331 s** |
| Amortized checked time per entry | 73.959 ms |
| Key file read, checked decode, canonical validation and identity check, separately | 0.032545 s |
| Sampled peak owned run-tree RSS, including supervisors | 295.1 MiB |

This is **one observation**, with no completed full-size warmup, median, p95 or
confidence interval. The planned one-warmup/five-repeat screen was curtailed when
the first full-size rejection check ran for minutes. That initial check was
stopped and remains incomplete. A bounded rerun completed the valid batch within
its 540-second process limit. There was no swap or competing heavy workload;
minimum host available memory was 17.07 GiB.

## What was measured

The final optimized native C relation and existing key were used, with the same
checked package codec and transcript namespace as the phone prover. Fourteen
cached real proofs cover six scenarios and six statement hashes. The pool is
cycled to 4,096 entries; every entry is independently decoded and included in the
batch without a duplicate shortcut. Repeated points, transcripts, data locality
and warm input memory can bias the result relative to 4,096 unique proofs.
Statements repeat, so this is proof-layer data rather than an executable block.

The release runner uses Commonware's `Sequential` strategy with
`RAYON_NUM_THREADS=1` and `GOMAXPROCS=1`; Cargo builds were limited to two jobs.
The device was not involved. Desktop hardware is the local Apple M4 Pro with
48 GiB RAM. Source, dependency-lock, binary, fixture and key hashes are retained.

The request timer includes hex decoding, checked claim/proof decoding with curve
and subgroup validation, expected-statement matching, canonical re-encoding,
transcript construction, verifier preflight, public evaluation, fresh upstream
128-bit verifier-owned random coefficients and the actual batch cryptography.
It excludes disk fixture loading, transport JSON parsing and key initialization.
The batch contains 892,928 native package bytes plus 131,072 external statement
bytes; these development packages are not a production network wire format.

All 14 unique proofs passed individual verification. Truncated, trailing-byte
and altered external-statement inputs were rejected inside 4,096-entry batches.
A canonically encoded mismatched proof was rejected in an otherwise valid
two-entry batch. The original 4,096-entry cryptographic negative check did not
complete; it is not advertised as passing. These are real-proof runner checks,
not the production release-gated prover suite or formal certification.

## Why the historical figure differs

The historical pinned Pari377 implementation outlines public instances: the
constant and single statement hash contribute through **two trailing rows**.
Its verifier reconstructs the public contribution from those rows.

The native C key retains **110,079 distinct public-column rows**. Its constant
column has 110,078 A entries and 30 B entries; the statement column has one A
entry. The key is 3,964,393 bytes. Native batch verification calls
`evaluate_public_columns` separately for every proof. It collects and sorts the
touched rows, evaluates their Lagrange basis, and combines the public-column
coefficients. The subset-domain implementation reconstructs roots and performs
field arithmetic for those rows each time. There is no cross-entry cache here.

This is a concrete algorithm/layout difference visible in
[the native verifier](../../tools/proving-experiment/cache/commonware-prepared-key381/cryptography/src/zk/pari/verifier.rs)
and [subset-domain evaluation](../../tools/proving-experiment/cache/commonware-prepared-key381/cryptography/src/zk/pari/domain.rs).
The historical source is pinned to `a8266aac58314214552a214fead1c0258f8de418` in
[the original spike](../../tools/zkpari-spike/Cargo.toml); its `circuit.rs` and
`batch_verify.rs` specify instance outlining and trailing-row reconstruction.
The retained key-inspection script reproduces the native column counts.

The timing split localizes the regression to the verifier, while the row layout
explains a large additional workload. This screen did not profile each inner
operation, so it does not assign an exact fraction to public evaluation. It
also does **not** establish that BLS12-381 itself is slow. Native C changes the
relation layout, hash field, commitment packaging and verifier implementation.

## Historical comparison and committee arithmetic

The retained one-worker Pari377 median was **0.8427765 s** checked: preparation
0.773451479 s and cryptography 0.0695015835 s (component medians). Native C's single
observation is **359.45 times** that checked median. Both boundaries include
checked input preparation and actual verification, but the old run used 4,096
fresh proofs and 30 samples; this run repeats 14 proofs and has one sample.
There was no contemporaneous baseline rerun.

Using historical checked SnarkPack aggregation `G = 24.2721638125 s`, historical
checked SnarkPack verification `Vs = 0.076749521 s`, and the observed native C
checked verification `Vc = 302.935331334 s`:

| Modeled sum of worker wall time | Groth16/SnarkPack | Native C | C / baseline |
| --- | ---: | ---: | ---: |
| Aggregator plus three verifiers: `G + 3Vs` versus `3Vc` | 24.502412 s | 908.805994 s | **37.09×** |
| Including proposer verification: `G + 4Vs` versus `4Vc` | 24.579162 s | 1,211.741325 s | **49.30×** |

These are arithmetic sums of separate measurements, not measured committee
latency, CPU-seconds, end-to-end throughput or payment TPS. Parallel verifiers,
network traffic, scheduling, execution and consensus are not modeled. The values describe this integration only and do not decide between proof
families. The [integration audit](native-pari381-integration-audit.md) identifies
the mismatch with the pinned Commonware payment benchmark and the smallest
proposed relation correction.

[Raw results, checks and identities](../../tools/proving-experiment/checkpoints/2026-09-14-native-batch381/results.json)
and [comparison arithmetic](../../tools/proving-experiment/checkpoints/2026-09-14-native-batch381/comparison.json)
are preserved. The executable runner is
[batch_screen.rs](../../tools/proving-experiment/candidates/native-prepared-key381/examples/batch_screen.rs).
Build with Cargo 1.95.0, `--release --locked --example batch_screen -j 2`, the
candidate manifest and shared `tools/proving-experiment/native/target` directory.
The saved guarded-run receipt records the exact input paths and timeout command;
fixture bytes remain in ignored cache storage. All experiment jobs are stopped.
