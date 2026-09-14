# Deterministic BLS12-377 subgroup-check startup probe

**The deterministic short check is a promising startup optimization.** It preserves canonical field decoding and curve/subgroup membership checks in this bounded public-base experiment. No full-key loader or selected prover was changed.

| 4,096 actual public bases, two workers | Arkworks full-order median | Deterministic seed median | Speedup |
|---|---:|---:|---:|
| membership | 149.626 ms | 60.077 ms | 2.49× |
| checked_decode | 148.373 ms | 60.726 ms | 2.44× |

Each cell uses two warmups and three balanced measured pairs. The same 4,096 finite points are sampled evenly from the actual witness, quotient, opening-A and opening-R key slices, 1,024 per slice. Source hashes and every sampled index are retained. The checked-decode row includes canonical 97-byte point decoding plus curve/membership validation; the membership row starts from previously checked points. This exporter format is not the complete compressed proving-key format.

## Why it differs

[Arkworks BLS12-3770.6](https://github.com/arkworks-rs/algebra/blob/bffa52711f225e888c1a91e1ec9fc59f2d9d5c94/curves/bls12_377/src/curves/g1.rs) has no short subgroup-check override. Its generic short-Weierstrass check uses unreduced double-and-add by the full scalar order. In contrast, [gnark-crypto0.20.1](https://github.com/Consensys/gnark-crypto/blob/v0.20.1/ecc/bls12-377/g1.go#L635) checks `P = -[x²]phi(P)` using two short seed chains, with `x = 9586122913090633729` and its exact cube-root constant.

The experiment ports that deterministic criterion using explicit group doublings and additions. It does not call Arkworks projective multiplication for the membership scalar: the curve overrides that operation with a scalar-field-reducing GLV implementation, which can return zero for multiplication by r even for a non-subgroup point. The tests reproduce this trap on an order-three point and require the new check to reject it. Arkworks’ existing GLV cube-root constant is the conjugate of the gnark constant; that substitution is also an explicit negative test.

All 198 point cases agree with the safe full-order reference: identity, generator/sign, raw on-curve points, cofactor components, mixed subgroup/torsion points, off-curve points, order-two/order-three points. Separate malformed/noncanonical encoding cases reject. Seed-chain output separately matches unreduced multiplication by x on those source points. All 81,920 measured/warmup validations accept the actual public-base sample; canonical decoded vectors match exactly. No randomized subgroup batch test or reduced soundness bound is used.

## Disposition and limits

This justifies a narrowly scoped full checked-key-loader experiment as a next step. It does not establish a factor-of-two reduction of complete key loading or first proof: other point types, parsing, relation association, memory and the separate Go base preparation remain outside this subset. It provides no warm-proving, phone or network-TPS result. Original canonical encoding, complete vector validation and key/statement association must remain in any integration; no unchecked self-hash cache is introduced.

The guarded test/build and sample run complete successfully. The example’s six focused tests pass; the added finite noncanonical-field case then passes its targeted rerun. Initial compilation required adding the PrimeGroup trait import only for the negative GLV demonstration. The sample run peaks at 213.95 MiB process-tree RSS with zero swap and no competing heavy job. No keys or proofs were generated.

Raw records, the 4,096-point encoded sample, completion hashes and analysis are in `cache/subgroup-comparison`. Exact source, relevant pinned upstream code and binary are frozen in `cache/subgroup-source`. The selected desktop baseline remains unchanged.
