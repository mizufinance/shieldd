# S3-28 part 2d report

## STATUS

COMPLETE for requested items (3) and (4). Items (5) and (6), including GLV,
LLL/rounded division, and the final executed G1 projective wrapper, were not
touched.

New modules:

- `Ipp/Extracted/ArkworksScalarMulScalar.lean`
- `Ipp/Extracted/ArkworksScalarMulSchedule.lean`
- `Ipp/Extracted/ArkworksScalarMulLoop.lean`
- `Ipp/Extracted/ArkworksScalarMulG1Loop.lean`
- `Ipp/Extracted/ArkworksScalarMulG2Loop.lean`

No generated file, invariant file, part-2c step wrapper, or Rust source was
edited. There are no `sorry`, `admit`, or new axioms in the new modules.

## Executed-loop induction and measures

These generated files use the repository's custom `Aeneas.loop`, not the
separate vendored WP loop consumed by `Aeneas.Std.loop.spec_decr_nat`.
Accordingly, the equivalent finite-execution API used here is:

- `Aeneas.loopResult_of_eq` to recover the finite execution witness;
- structural induction on `Aeneas.LoopResult`;
- `scalarInnerBody_decreases`, with symbolic measure `state.2.2.val`
  (`bitIndex.val`);
- `scalarOuterBody_decreases`, with symbolic measure `state.2.2.val`
  (`limb.val`);
- `scalarInnerLoopResult_to_model` / `scalarInnerLoopResult_valid` and
  `scalarOuterLoopResult_to_model` / `scalarOuterLoopResult_valid` to compose
  the extracted witness with the symbolic schedule invariant.

No 64-bit loop or 4-by-64 nested loop was unrolled. `partialValue_pred` proves
one arbitrary inner countdown step, and `highPrefix_pred` proves one arbitrary
outer countdown step. The concrete four-word bridge only discharges the four
bounded word-layout cases; loop execution remains symbolic.

Each successful bit step is discharged by the landed branch-complete wrappers
`valid_g1_mul_affine_step`, `valid_g2_mul_projective_step`, or
`valid_g2_mul_affine_step`, followed by `nsmul_bit_step`.

## Scalar-array bridge

The scalar type is the concrete four-word array:

```lean
abbrev ScalarArray := MacCampaign.Array MacCampaign.U64 4#usize
```

Its little-endian natural value is `scalarToNat`; `scalarBits` presents its low
`width` bits in the executed MSB-first order. The requested bridge is:

```lean
theorem msbValue_scalarBits (width : Nat) (scalar : ScalarArray) :
    msbValue width (scalarBits width scalar) =
      scalarToNat scalar % 2 ^ width
```

The executed four-word schedule and leading-zero suppression are connected by:

```lean
theorem highPrefix_eq_msbValue_256 (scalar : ScalarArray) :
    highPrefix scalar 0 = msbValue 256 (scalarBits 256 scalar)

theorem runBits_256_eq_253 {G : Type} [AddCommMonoid G]
    (scalar : ScalarArray) (base : G)
    (hscalar : scalarToNat scalar < 2 ^ 253) :
    runBits 256 (scalarBits 256 scalar) base 0 =
      runBits 253 (scalarBits 253 scalar) base 0
```

The 253-bit specialization is:

```lean
theorem msbValue_scalarBits_253 (scalar : ScalarArray)
    (hscalar : scalarToNat scalar < 2 ^ 253) :
    msbValue 253 (scalarBits 253 scalar) = scalarToNat scalar
```

These statements include scalar zero, all leading-zero patterns, and the full
253-bit Fr range.

## Generic executed corollaries

The final public corollaries are stronger than a canonical-Fr-only statement:
they hold for every four-word scalar array, and hence include zero, leading
zeros, and all canonical 253-bit Fr values.

```lean
theorem valid_g1_mul_affine
    (base : G1AffineLimbPair) (basePoint : G1AffinePoint)
    (scalar : ScalarArray) (output : G1ProjLimbTriple)
    (hbase : ValidG1AffineLoopBase base basePoint)
    (hexec : s3_07_arkworks_fq_spike.g1_mul_affine base scalar = .ok output) :
    ValidG1LoopState output (scalarToNat scalar • basePoint)

theorem valid_g2_mul_projective
    (base : G2ProjLimbTriple) (basePoint : G2AffinePoint)
    (scalar : ScalarArray) (output : G2ProjLimbTriple)
    (hbase : ValidG2LoopState base basePoint)
    (hexec : s3_07_arkworks_fq_spike.g2_mul_projective base scalar = .ok output) :
    ValidG2LoopState output (scalarToNat scalar • basePoint)

theorem valid_g2_mul_affine
    (base : G2AffineLimbPair) (basePoint : G2AffinePoint)
    (scalar : ScalarArray) (output : G2ProjLimbTriple)
    (hbase : ValidG2AffineLoopBase base basePoint)
    (hexec : s3_07_arkworks_fq_spike.g2_mul_affine base scalar = .ok output) :
    ValidG2LoopState output (scalarToNat scalar • basePoint)
```

Identity bases require no special premise: `n • 0 = 0` is covered by the same
corollaries.

## Verification and peak memory

All commands were run from `crates/crypto/proof-aggregation/formal/lean-ipp`
with `LEAN_NUM_THREADS=1`, using the pinned Lean 4.30 toolchain's
`lake env lean <FILE>`. Exact-source peak working set:

| File | Result | Peak RSS |
| --- | --- | ---: |
| `ArkworksScalarMulScalar.lean` | green | 1820.1 MiB |
| `ArkworksScalarMulSchedule.lean` | green | 1856.0 MiB |
| `ArkworksScalarMulLoop.lean` | green | 1884.9 MiB |
| `ArkworksScalarMulG1Loop.lean` | green | 1841.0 MiB |
| `ArkworksScalarMulG2Loop.lean` | green | 1835.9 MiB |

No prover/release-gated tests were run; this task's verification was the five
guarded per-file Lean checks above.

## Axiom audit

Every new public theorem has an in-file `#print axioms`. The final corollary
output was:

```text
'Ipp.Extracted.ArkworksScalarMul.valid_g1_mul_affine' depends on axioms: [propext, Classical.choice, Quot.sound]
'Ipp.Extracted.ArkworksScalarMul.valid_g2_mul_projective' depends on axioms: [propext, Classical.choice, Quot.sound]
'Ipp.Extracted.ArkworksScalarMul.valid_g2_mul_affine' depends on axioms: [propext, Classical.choice, Quot.sound]
```

The bridge and induction theorems likewise reported only subsets of
`[propext, Classical.choice, Quot.sound]`; no `sorryAx`, native-decision axiom,
or new named axiom remains.
