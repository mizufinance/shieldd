# S3-27 part 3 — G2 Mathlib affine lift

## STATUS

COMPLETE.

Added `Ipp/Extracted/ArkworksG2Mathlib.lean`. The file identifies the executed
G2 chord, tangent, negation, exceptional, and identity branches with
`g2Curve.toAffine.Point` group operations. No generated file, Rust spike,
`ArkworksG1*.lean`, or `ArkworksG2.lean` was edited. No commit was created.

## Public definitions and theorems

Boundaries and representation:

- `G2AffinePoint`
- `DecodedG2OnCurve`
- `liftDecodedG2`
- `liftDecodedG2_none`
- `liftDecodedG2_some`
- `RepresentsDecodedG2`
- `DecodedG2InPrimeSubgroup`
- `representsDecodedG2_lift`

Coordinate/group-law bridges:

- `chordAddG2_eq_mathlib`
- `tangentDoubleG2_eq_mathlib`
- `lift_chordAddG2`
- `lift_tangentDoubleG2`
- `lift_negG2`
- `lift_oppositeG2`
- `lift_order2G2`

Executed refinement corollaries:

- `executed_g2_add_generic_refines_mathlib`
- `executed_g2_add_mixed_generic_refines_mathlib`
- `executed_g2_double_generic_refines_mathlib`
- `executed_g2_double_order2_refines_mathlib`
- `executed_g2_neg_finite_refines_mathlib`
- `executed_g2_neg_identity_refines_mathlib`
- `executed_g2_add_left_identity_refines_mathlib`
- `executed_g2_add_right_identity_refines_mathlib`
- `executed_g2_add_mixed_identity_refines_mathlib`
- `executed_g2_double_identity_refines_mathlib`
- `executed_g2_add_opposite_refines_mathlib`
- `executed_g2_add_mixed_opposite_refines_mathlib`
- `executed_g2_add_equal_refines_mathlib`
- `executed_g2_add_mixed_equal_refines_mathlib`

The two coordinate identities are proved first over a generic field for the
short Weierstrass curve `⟨0, 0, 0, 0, b⟩`, then instantiated with
`b = g2TwistB`. Thus `ring` does not expand the concrete Fq2 quadratic-algebra
representation. The arbitrary `b` also makes explicit that the affine
addition-coordinate specialization depends on `a₁ = a₂ = a₃ = a₄ = 0`,
not on `g2TwistB = 1`.

## Assumed validation boundary

`DecodedG2OnCurve` requires `g2Curve.toAffine.Equation x y` for every finite
decoded class used to construct a Mathlib affine point. Generic chord/tangent
corollaries take the output on-curve fact explicitly; exceptional branches take
the finite input/opposite facts needed by that branch.

`DecodedG2InPrimeSubgroup d h := inPrimeSubgroup (liftDecodedG2 d h)` records
the separate prime-subgroup validation boundary. It is intentionally not a
premise of the group-operation identification: addition, doubling, and
negation agree with Mathlib for all on-curve points. S3-32/GAP-08/09 must
discharge on-curve and prime-subgroup validation for externally accepted
inputs.

## Verification and peak memory

Final guarded command:

```text
LEAN_NUM_THREADS=1 "C:\Users\acyrn\.elan\toolchains\leanprover--lean4---v4.30.0\bin\lake.exe" env lean Ipp/Extracted/ArkworksG2Mathlib.lean
```

Result: exit 0. A process-sampled execution of the same command on the final
file took 40.371 seconds and had peak Lean RSS **1,891.0 MiB**.

Additional checks:

- `git diff --check -- Ipp/Extracted/ArkworksG2Mathlib.lean`: passed.
- Source scan found no `sorry`, `admit`, or axiom declaration.
- No temporary isolation `.lean` files were created.
- Prover/release-gated tests were not run; the requested guarded full-file Lean
  check was run and passed.

## Axiom audit output

Every public proof declaration printed the same permitted dependency set:

```text
depends on axioms: [propext, Classical.choice, Quot.sound]
```

This output was emitted for:

```text
chordAddG2_eq_mathlib
tangentDoubleG2_eq_mathlib
liftDecodedG2_none
liftDecodedG2_some
lift_chordAddG2
lift_tangentDoubleG2
lift_negG2
lift_oppositeG2
lift_order2G2
representsDecodedG2_lift
executed_g2_add_generic_refines_mathlib
executed_g2_add_mixed_generic_refines_mathlib
executed_g2_double_generic_refines_mathlib
executed_g2_double_order2_refines_mathlib
executed_g2_neg_finite_refines_mathlib
executed_g2_neg_identity_refines_mathlib
executed_g2_add_left_identity_refines_mathlib
executed_g2_add_right_identity_refines_mathlib
executed_g2_add_mixed_identity_refines_mathlib
executed_g2_double_identity_refines_mathlib
executed_g2_add_opposite_refines_mathlib
executed_g2_add_mixed_opposite_refines_mathlib
executed_g2_add_equal_refines_mathlib
executed_g2_add_mixed_equal_refines_mathlib
```
