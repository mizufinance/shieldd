# S3-26 part 2 report

STATUS PARTIAL

## Green boundary landed

- `chordAdd`: standalone coordinate chord formula with slope
  `(y₂-y₁)/(x₂-x₁)`, `x₃ = slope²-x₁-x₂`, and
  `y₃ = slope*(x₁-x₃)-y₁`.
- `tangentDouble`: standalone `a = 0` tangent formula with slope
  `3*x²/(2*y)`, `x₃ = slope²-2*x`, and
  `y₃ = slope*(x-x₃)-y`.
- `decode_g1_double_generic`: for canonical input decoding to `some p` with
  `p.2 != 0`, any successful executed `g1_double` output is canonical and
  decodes to `some (tangentDouble p)`.

The generic doubling theorem peels the complete reached `a = 0` chain and
composes the certified square, multiplication, limb-double, addition, and
subtraction laws. Its final rational identity is isolated in the private
`tangent_decode_identity` helper so elaboration remains bounded.

## Statement-shape decision

Standalone `chordAdd` and `tangentDouble` definitions were selected. They keep
this extracted-coordinate layer free of on-curve hypotheses and Mathlib point
constructors. Part 3 can prove one model lemma identifying these formulas with
Mathlib's affine `slope`/`addX`/`addY` API.

## Doubling at y = 0

The executed `a = 0` chain computes `Z3 = 2*Z*Y`. Therefore an affine input
with decoded `y = 0` produces a canonical zero-Z output and represents
infinity (`decodeG1 output = none`). This outcome was checked algebraically
while proving the generic branch, but the public
`decode_g1_double_order2` theorem is not landed at this boundary because its
decoded-zero-to-canonical-zero representative bridge remains to be proved.

## Remaining part-2 work

- Jacobian cross-product comparison bridges (`U1 = U2`, `S1 = S2`) from
  decoded affine equality.
- `decode_g1_add_generic`, `decode_g1_add_equal_delegates`, and
  `decode_g1_add_opposite`.
- `decode_g1_double_order2`.
- The three corresponding mixed-add theorems.

No Mathlib `Affine.Point` lifting or on-curve reasoning was started.

## Gates

- Pinned narrow build `lake build Ipp.Extracted.ArkworksG1`: PASS.
- Full `lake build Ipp`: PASS (3430 jobs).
- Zero `sorry`, `admit`, or new axioms in the edited module.
- Prover/release-gated tests were not run; this part changes only the Lean
  coordinate proof layer.

## Axiom audit

`decode_g1_double_generic` is printed by the module. Output:
`[propext, Classical.choice, Quot.sound]`.

No commit was created.
