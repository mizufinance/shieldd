# Transfer proving results — desktop, 2026-09-13

**Shipping Groth16 remains fastest for warm proving.** Optimized ZK-Pari B takes 1.93× its warm latency; native Commonware C takes 1.98×. C is 2.7% slower than B in this run. That small B/C difference is descriptive, not a robust ranking across sessions or devices. Neither candidate reaches A here.

Apple M4 Pro, 48 GiB RAM, macOS 15.7.7, AC power. Go and Rayon used two workers; Cargo builds were bounded to two jobs. A/B used Rust 1.89 where applicable; native C requires Rust 1.95. One controlled session, standard regulated Transfer, two untimed warmups and five measured warm proofs per candidate. Each candidate also produced one measured first proof in a fresh process. All **18 measured proofs and six warmups verified**, with fresh randomness and unique proof bytes.

| Candidate | All five warm values (s) | Median (s) | Range (s) | First proof (s) |
|---|---|---:|---|---:|
| A — shipping Groth16 | 1.8466, 1.8502, 1.8544, 1.8575, 1.8396 | 1.8502 | 1.8396–1.8575 | 22.9050 |
| B — optimized ZK-Pari377 | 3.5679, 3.5661, 3.5613, 3.5687, 3.5659 | 3.5661 | 3.5613–3.5687 | 71.9913 |
| C — native Commonware381 | 3.6567, 3.6691, 3.6630, 3.6637, 3.6591 | 3.6630 | 3.6567–3.6691 | 26.6155 |

First-proof time includes process creation, circuit/prepared-state construction, checked key loading, witness handling, solving, proving and output encoding. Setup is offline and excluded. The OS page cache was not flushed. One first-proof observation does not support cold-tail percentiles. Warm timers cover the complete encoded-witness request; verification runs afterward. B includes the actual Go solver transport; C includes synthesis, prepared mapping, commitments and openings.

## Startup, memory and encoding

| Candidate | First-proof peak RSS (GiB) | Warm peak RSS (GiB) | Proving key (MiB) | Encoded witness bytes | Encoded proof package bytes |
|---|---:|---:|---:|---:|---:|
| A | 0.490 | 0.665 | 39.88 | 16204 | 436 |
| B | 1.943 | 1.996 | 58.49 | 16204 | 168 |
| C | 3.383 | 3.589 | 63.60 | 16297 | 218 |

RSS is sampled every 100 ms per worker process tree, including B’s Go helper; it is an observed maximum, not an allocator high-water guarantee. Shared pages can be counted more than once. All workers stay resident while only one proves at a time. Combined campaign peak RSS was 6.22 GiB, with at least 17.47 GiB reclaimable memory, zero swap and no detected competing heavy workload. Spotlight interrupted an earlier correctness invocation; that invocation was resumed and completed before this successful final campaign.

A’s first initialization spent 2.008 s compiling and 19.093 s loading keys. B spent 63.388 s in checked key decoding, within 68.435 s preparation. C spent 20.519 s in checked decoding/canonical roundtrip, within 22.960 s preparation. Parallel checked decoding improved B’s targeted diagnostic 75.736→63.249 s and C’s 38.116→20.190 s, with identical canonical keys and all required validation.

C’s memory is materially higher: about 3.59 GiB warm versus B’s 2.00 GiB and A’s 0.66 GiB. Its lower first-use cost relative to B does not remove this tradeoff. A’s package uses its shipping uncompressed proof wrapper; B/C packages contain their complete checked proof/statement representations, and C also carries the required committed-input commitment. These are measured API bytes, not normalized theoretical proof sizes.

## What the optimizations established

- B preserves the exact gnark relation/field/statement. Prepared square/affine/linear lowering reduces it to 241,626 rows and a 262,144-point domain. Its bounded MSM investigation retained Arkworks because alternatives offered small gains or memory regressions.
- C preserves all Transfer obligations with native Jubjub and field-specific hashes. The component-guided hash/fixed-base/selected-key bundle reduces 360,396→232,683 rows and halves the domain to 262,144. Prepared mapping and masked-quotient squaring also produced exact-proof-parity gains before the final circuit change. C’s initial approximately 7.75-second kernel is not the final complete API baseline.
- The old spike’s 13.26-second result used one worker and a different bridge. It cannot be divided by this two-worker result to claim a matched speedup. The final result establishes the remaining gap to shipping A, rather than an unsupported percentage of the old regression recovered.
- The selected-key DH idea also helps gnark/Groth16. Actual isolated gadget compilation saves 2,758 R1CS rows per non-detection tier, suggesting 8,274 across three tiers. That estimate stays within the existing FFT domain. No changed gnark circuit is adopted or timed here; a matched Groth16/PARI control is required if that source change is pursued. C’s result measures the whole native redesign, not an isolated curve or backend effect.

Descriptive median ratios (above one means the denominator is faster): A/B=0.5188, A/C=0.5051, B/C=0.9735. Five samples do not justify p95, bootstrap confidence claims or a precise cross-device B/C ranking.

## Correctness and remaining scope

All six scenarios pass real-proof and negative gates for each candidate. B validates original/lowered assignments and mapping. C’s regenerated relation passes original/converted checks, wrong statements/commitments/keys, malformed encodings and invalid witnesses. Forty relevant native release checks, eight B release checks, the native transport test, focused Go helper tests, six runner/resource tests and four parameter-screening tests passed across recorded invocations. Production release-gated prover suites and formal certification were not run; formal work remains in shieldd-security.

**Physical-phone results remain pending.** No Android device is attached, and this host has Apple Command Line Tools rather than full Xcode. Desktop ARM timings are not phone measurements. Preserve all three finalized candidates for a physical iPhone/Android comparison; native memory and first-use loading especially need on-device validation.

This is a proving-performance result. It supports keeping Groth16 as the current proving baseline; it does not independently decide the validator verification/aggregation tradeoff. The stopped SnarkPack/ZK-Pari verification campaign and its 4,096-proof corpora remain intact and were not resumed. No payment-TPS or production-readiness claim follows.

## Evidence and reproduction

- [Raw samples and phases](../../tools/proving-experiment/cache/desktop-final/samples.jsonl), [results JSON](../../tools/proving-experiment/cache/desktop-final/results.json), [memory/phase analysis](../../tools/proving-experiment/cache/desktop-final/analysis.json), [memory samples](../../tools/proving-experiment/cache/desktop-final/memory-0.jsonl).
- [Source/artifact identity](../../tools/proving-experiment/cache/desktop-final/identity.json), [completion hashes](../../tools/proving-experiment/cache/desktop-final/complete.json), [frozen source archive](../../tools/proving-experiment/cache/desktop-final-source.tar.gz).
- [Commands and boundaries](../../tools/proving-experiment/README.md), [optimization ledger](../../tools/proving-experiment/optimization-ledger.md), [native semantic obligations](../../tools/proving-experiment/native-obligations.md).

Cache evidence is local and ignored by Git. Reproduce from the recorded pins/locks and development artifact setup; reuse a completed cache only when its identity and proof hashes validate. The reporting command performs read-only validation of the completed measurements and does not rerun proofs.
