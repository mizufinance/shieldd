# Native Pari381 allocation lifetime result

**Keep the lifetime changes.** In a matched ordinary-build comparison, warm peak RSS falls from 3.425 to 1.278 GiB (62.7%), while median complete proving time remains about 2.75 seconds.

| Variant | Five warm values (s) | Median (s) | Warm peak RSS (GiB) |
|---|---|---:|---:|
| Frozen optimized C control | 2.752145, 2.750461, 2.748000, 2.767580, 2.760169 | 2.752145 | 3.425 |
| C with earlier release of allocations | 2.745935, 2.759740, 2.760534, 2.748394, 2.741331 | 2.748394 | 1.278 |

Apple M4 Pro, 48 GiB, two workers; same affine Transfer relation, development key, polynomial path and prepared blst arithmetic. Three warmups and five measured samples per variant, alternating backend order, only one active proof. All 16 proofs have unique bytes and verify. The 0.14% median timing difference is not evidence of a proving speedup. Five samples do not support reliable p95/confidence or long-duration memory claims.

The normal builds have no allocation counter enabled. Each warm sample includes witness decoding, circuit construction, checked assignment mapping, destructors, proving and encoding. Initialization is separate: candidate22.121 s, control22.677 s, one observation each; these are readiness times, not fresh-process first-proof measurements. No phone, validator-throughput or payment-TPS result is implied.

## Allocation diagnosis

Separate instrumented full-API runs count requested live Rust heap bytes, excluding native allocator overhead and process RSS. Two fresh proofs per variant verify. Timing from these runs is excluded from the comparison.

| Change accumulated | Relation conversion peak (decimal MB) | Proving interval peak (decimal MB) |
|---|---:|---:|
| Retained control | 3020.067 | 905.294 |
| Release source circuit after mapping | 3020.067 | 761.115 |
| Also consume compiler maps during finalization | 2863.224 | 761.115 |
| Also release node expressions after final use | 691.218 | 761.115 |

The converter retained expression maps after their last use, then overlapped those maps with canonical sparse rows. The request path retained its full valued circuit throughout polynomial and MSM work. Releasing these allocations reduces overlap; initialized and cleaned-up requested live heap sizes are unchanged. Public/coset polynomial preparation adds40 MiB, far less than the former compiler peak. Allocator retention helps explain why process RSS exceeds live Rust allocations, but the instrumented runs do not isolate every source of the earlier cross-session RSS increase.

## Correctness and evidence

Final-consumer indices follow the validated topological circuit. Assertion and public/committed-input expressions remain live through later phases; repeated operands are read before release. Deferred-square bases remain owned by the square cache. Consuming temporary maps preserves row order, coefficients, value sources and the exact relation digest. The existing development key remains valid; no protocol, transcript, masking or proof-format change is made.

All six complete Transfer scenarios passed the normal-worker proof gate with changed statement, altered/truncated/trailing proof and invalid-witness rejection. Forty-two native release unit tests passed, including focused fanout/repeated-operand/unused-expression/selected-node/deferred-square coverage, checked/prepared mapper proof-byte parity, invalid assignments and the prior cryptographic/semantic checks. Production release-gated suites and formal certification were not run.

The guard recorded zero swap and no competing heavy jobs. The [prior A/B/C matrix](transfer-proving-optimized.md) stays immutable. This targeted C diagnostic is a separate session and does not replace its A/B observations. Structured-domain work remains pending.

- [Raw samples](../../tools/proving-experiment/cache/c-lifetime-measure/samples.jsonl) and [completion hashes](../../tools/proving-experiment/cache/c-lifetime-measure/complete.json).
- [Exact source and binary identity](../../tools/proving-experiment/cache/c-lifetime-source/final-identity.json).
- [Compact Git evidence](../../tools/proving-experiment/checkpoints/2026-09-14-lifetimes/README.md).
