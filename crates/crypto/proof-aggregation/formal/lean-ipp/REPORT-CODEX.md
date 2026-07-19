# S3-28 part 2c — canonicity and branch-complete executed steps

## STATUS

**PASS — items (1) and (2) complete at a green boundary.**

No fueled-loop induction, scalar-array/bit bridge, scalar corollary, or GLV/LLL
work was started. No generated Lean, Rust spike, or
`ArkworksScalarMulInvariant.lean` file was edited. No commit was created.

## Canonicity laws

The four interrupted G1 additions were verified unchanged by a guarded
full-file check:

- `canonical_g1_add_left_identity`
- `canonical_g1_add_right_identity`
- `canonical_g1_add_mixed_identity`
- `canonical_g1_double_identity`

The completed G1/G2 surface also includes:

- canonical fixed zero results: `canonical_g1_zero`, `canonical_g2_zero`;
- the zero-accumulator mixed branch, which had no prior public decode law:
  `decode_g{1,2}_add_mixed_left_identity` and
  `canonical_g{1,2}_add_mixed_left_identity`;
- all four G2 identity companions;
- projective and mixed opposite-result companions on both curves:
  `canonical_g{1,2}_add_opposite` and
  `canonical_g{1,2}_add_mixed_opposite`.

The existing generic add/double, order-2 double, and equal-delegate theorems
already returned output canonicity, so they were reused rather than duplicated
or weakened.

## Valid state and wrapper statements

The new `ArkworksScalarMulStep` module family exports:

- `ValidG1LoopState limbs point` and `ValidG2LoopState limbs point`: the limb
  triple is canonical and `RepresentsDecodedG{1,2}` the indexed Mathlib point;
- `ValidG1AffineLoopBase` and `ValidG2AffineLoopBase`: canonical affine
  coordinates plus the represented finite/infinity class;
- `valid_g{1,2}_double`, `valid_g{1,2}_add`, and
  `valid_g{1,2}_add_mixed`;
- `valid_g1_mul_projective_step`, `valid_g1_mul_affine_step`,
  `valid_g2_mul_projective_step`, and `valid_g2_mul_affine_step`.

Each requested wrapper concludes:

```text
ValidG{1,2}LoopState output
  (accumulatorPoint + accumulatorPoint + if bit then basePoint else 0)
```

Callers carry no unequal-X or nonzero-Y premise. Dispatch covers decoded
identity, order-2 double, equal -> delegated double, opposite -> identity, and
generic branches. Mixed addition additionally covers affine infinity and a
zero accumulator. Same-X finite classification is derived from both curve
equations (`Y1^2 = Y2^2`), not assumed.

The step wrapper peels only the executed double bind and keeps the doubled
value opaque. The heavy opposite mixed branch constructs an explicit affine
point equality rather than simplifying through discarded Fq/Fq2 chains.

The implementation is split into small G1/G2 base/add/step modules and
re-exported by `ArkworksScalarMulStep.lean`. This is load-bearing: monolithic
development attempts reached 6.2–7.5 GiB and were killed; every final exact
file is green below the guardian.

## Verification and peak memory

Only guarded, sequential, single-threaded exact-file checks were used. The
installed v4.30.0 toolchain binary was invoked directly because the normal
elan shim attempted a blocked network update.

Final successful `LEAN_NUM_THREADS=1 lake env lean <FILE>` checks covered:

```text
Ipp/Extracted/ArkworksG1.lean
Ipp/Extracted/ArkworksG2.lean
Ipp/Extracted/ArkworksScalarMul.lean
Ipp/Extracted/ArkworksScalarMulG1Base.lean
Ipp/Extracted/ArkworksScalarMulG2Base.lean
Ipp/Extracted/ArkworksScalarMulG2Add.lean
Ipp/Extracted/ArkworksScalarMulG1Step.lean
Ipp/Extracted/ArkworksScalarMulG2Step.lean
Ipp/Extracted/ArkworksScalarMulStep.lean
Ipp/Extracted/ArkworksScalarMulStepAxioms.lean
```

`-o` was used only to refresh an exact dependency olean. `git diff --check`
passes. Maximum observed peak working set among successful full-file runs was
**1,817.2 MiB**; the final G2 step file was observed at **1,447.9 MiB**. All
final runs stayed below the 6,000 MiB ceiling. No isolation copies or temporary
`.lean` files remain.

Prover/release-gated tests and `lake build Ipp` were not run; the requested
single-file safety gate was used instead.

## Axiom audit

There are zero `sorry`, `admit`, new `axiom`, or new `opaque` declarations in
the changed/new Lean files.

`#print axioms` ran for every new public canonicity, decode-helper,
arithmetic-boundary, and step-wrapper theorem. The full output is emitted by
the G1/G2 files and `ArkworksScalarMulStepAxioms.lean`; every new theorem
reports exactly:

```text
[propext, Classical.choice, Quot.sound]
```

No `sorryAx` or other axiom appears.
