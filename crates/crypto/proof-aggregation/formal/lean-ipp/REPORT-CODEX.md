# S3-27 part 2 report

STATUS PARTIAL — GREEN BOUNDARY

## Design

Chosen option: **Fq2-parallel generic field**.

The chord/tangent models, factor lemmas, scale lemmas, affine identities, and
`chord_decode_core` are polymorphic over `{F : Type} [Field F]` inside
`Ipp/Extracted/ArkworksG2.lean`. They are instantiated at
`F = Ipp.Bls12377.Fq2` only after the executed Fq2 operation chain has been
reduced to opaque decoded aliases and defining equations. The final generic-add
application uses `clear_value` before applying `chord_decode_core`, matching the
memory-safe G1 pattern without changing `ArkworksG1.lean`.

This landing deliberately stops at the user-approved green boundary: bridges,
generic add, generic double, and order-2 double. The equal/opposite projective
branches and all three mixed branches remain for the next landing.

## Added public definitions and theorems

Affine models:

- `chordAddG2` (field-generic)
- `tangentDoubleG2` (field-generic)

Canonical comparison and Jacobian bridges:

- `canonical_fq2_val_eq_iff_decode_eq`
- `decode_g2_x_cross_eq_iff`
- `decode_g2_y_cross_eq_iff`

Executed formulas:

- `decode_g2_double_generic`
- `decode_g2_double_order2`
- `decode_g2_add_generic`

The existing part-1 identity/negation theorems remain green.

## Remaining part-2 scope

- `decode_g2_add_equal_delegates`
- `decode_g2_add_opposite`
- `decode_g2_add_mixed_equal_delegates`
- `decode_g2_add_mixed_opposite`
- `decode_g2_add_mixed_generic`

The Mathlib `Affine.Point` lift was not started.

## Verification and peak memory

- PASS: guarded single-threaded full-file check:
  `LEAN_NUM_THREADS=1 C:\Users\acyrn\.elan\toolchains\leanprover--lean4---v4.30.0\bin\lake.exe env lean Ipp/Extracted/ArkworksG2.lean`
- File: `Ipp/Extracted/ArkworksG2.lean`
- Exit code: 0
- Final foreground duration: 43.3 seconds
- Final monitored Lean-worker peak working set: **1986.7 MiB**
- Guardian ceiling: approximately 6 GiB
- `ArkworksG1.lean` was not modified, so no G1 verification run was required.
- No unguarded `lake build` was run.
- Prover/release-gated tests were not run.

`git diff --check` passes. No temporary `.lean` isolation files were created,
and neither `ArkworksG2Generated.lean` nor the Rust spike was edited.

## Axiom audit

`#print axioms` is present for every new public theorem. The full-file output
for each theorem below is exactly:

`[propext, Classical.choice, Quot.sound]`

- `canonical_fq2_val_eq_iff_decode_eq`
- `decode_g2_x_cross_eq_iff`
- `decode_g2_y_cross_eq_iff`
- `decode_g2_double_generic`
- `decode_g2_double_order2`
- `decode_g2_add_generic`

The existing five public part-1 theorems print the same axiom set. There are
zero `sorry`, `admit`, or new `axiom` declarations in `ArkworksG2.lean`.

No commit was created.
