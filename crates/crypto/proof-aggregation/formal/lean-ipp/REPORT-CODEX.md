# S3-26 part 3 report

STATUS DONE

## Deliverable

Added `Ipp/Extracted/ArkworksG1Mathlib.lean`. The existing
`ArkworksG1.lean` parts 1–2c proofs were not edited.

### Coordinate identification

- `chordAdd_eq_mathlib`: for `x₁ ≠ x₂`, `chordAdd (x₁,y₁) (x₂,y₂)`
  equals the pair of `g1Curve.toAffine.addX` and `addY` coordinates at
  `g1Curve.toAffine.slope x₁ x₂ y₁ y₂`.
- `tangentDouble_eq_mathlib`: for `y ≠ 0`, `tangentDouble (x,y)` equals
  the pair of Mathlib `addX` and `addY` coordinates at
  `g1Curve.toAffine.slope x x y y`.

For `g1Curve = ⟨0,0,0,0,1⟩`, Mathlib's `negY x y` is `-y`.
`negAddY` is the third-intersection coordinate and `addY = negY negAddY`;
therefore the executed chord/tangent Y coordinate is exactly Mathlib `addY`.

### Lift model and algebraic lifts

- `DecodedG1OnCurve d`: explicit boundary; `True` for `none`, and the
  concrete G1 affine equation for `some (x,y)`.
- `liftDecodedG1 d h`: maps `none` to affine infinity and `some (x,y)` to
  `WeierstrassCurve.Affine.Point.mk h`.
- `RepresentsDecodedG1 d P`: equality of the represented point class:
  `P = 0` for `none`, or `P = Point.mk h` for finite coordinates.
- `lift_chordAdd`, `lift_tangentDouble`, `lift_neg`, `lift_opposite`, and
  `lift_order2`: literal `g1Curve.toAffine.Point` equalities for generic
  addition, doubling, negation, inverse addition, and order-two doubling.

### Executed-formula corollaries

Each theorem concludes `RepresentsDecodedG1 (decodeG1 output) ...`, whose
finite/infinity cases contain literal equality to the corresponding Mathlib
`Affine.Point` class.

- `executed_g1_add_generic_refines_mathlib`: generic projective addition.
- `executed_g1_add_mixed_generic_refines_mathlib`: generic mixed addition.
- `executed_g1_add_equal_refines_mathlib`: equal projective inputs delegate
  to Mathlib doubling, split over `Y = 0` / `Y ≠ 0`.
- `executed_g1_add_mixed_equal_refines_mathlib`: equal mixed-input analogue.
- `executed_g1_add_opposite_refines_mathlib`: opposite projective inputs add
  to Mathlib infinity.
- `executed_g1_add_mixed_opposite_refines_mathlib`: opposite mixed analogue.
- `executed_g1_add_left_identity_refines_mathlib` and
  `executed_g1_add_right_identity_refines_mathlib`: projective zero-Z laws.
- `executed_g1_add_mixed_identity_refines_mathlib`: affine-infinity mixed law.
- `executed_g1_double_generic_refines_mathlib`: generic doubling.
- `executed_g1_double_order2_refines_mathlib`: `Y = 0` doubles to infinity.
- `executed_g1_double_identity_refines_mathlib`: zero-Z doubles as identity.
- `executed_g1_neg_finite_refines_mathlib`: finite negation.
- `executed_g1_neg_identity_refines_mathlib`: infinity negation.

## Assumed boundary

The decoded finite representatives' `g1Curve.toAffine.Equation` hypotheses
are assumed explicitly through `DecodedG1OnCurve`; they are not re-proved.
For generic/equal non-order-two results, the resulting chord/tangent equation
is also passed explicitly. S3-32/GAP-08 is responsible for discharging input
validity and prime-subgroup validity. No subgroup premise is used to identify
the affine group operation itself.

## Verification

- PASS: `LEAN_NUM_THREADS=1 lake env lean Ipp/Extracted/ArkworksG1Mathlib.lean`.
- Final monitored full-file check: 40.1 s, peak Lean working set **1,877.2
  MiB** (sampled every 100 ms); guardian ceiling was 6,000 MiB.
- PASS: `LEAN_NUM_THREADS=1 lake build Ipp.Extracted.ArkworksG1Mathlib`
  (2,996 jobs, narrow module target).
- Zero `sorry`, `admit`, or new `axiom` declarations in the new file.
- No generated Lean file, Rust spike, or parts 1–2c theorem was edited.
- Prover/release-gated tests were not run; verification was the requested
  single-file elaboration, narrow module build, and axiom audit.

## Axiom audit

`#print axioms` was included for every public coordinate/lift theorem and all
executed-formula corollaries listed above. Every result was exactly:

`[propext, Classical.choice, Quot.sound]`

No commit was created.
