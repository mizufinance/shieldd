# S3-26 part 2b report

STATUS PARTIAL

## Green boundary landed

- `canonical_fq_val_eq_iff_decode_eq`: two reduced Montgomery limb arrays
  have equal executed representatives iff their decoded `Fq` values are equal.
- `decode_g1_x_cross_eq_iff`: under canonical inputs and nonzero decoded Z
  coordinates, Jacobian `X1*Z2^2 = X2*Z1^2` iff decoded affine x coordinates
  are equal.
- `decode_g1_y_cross_eq_iff`: under the same hypotheses, Jacobian
  `(Y1*Z2)*Z2^2 = (Y2*Z1)*Z1^2` iff decoded affine y coordinates are equal.
- `decode_g1_double_order2`: a canonical input decoding to affine y zero has
  a canonical successful executed-double output which decodes to `none`.

The canonical representative theorem is the executed-comparison bridge used
after each certified Fq square/multiply chain. The x/y theorems isolate the
cross-product-to-affine division algebra, avoiding quadratic elaboration from
placing the complete extracted chains in one declaration.

## Remaining part-2b work

- `decode_g1_add_generic`.
- `decode_g1_add_equal_delegates`.
- `decode_g1_add_opposite`.
- The generic, equal-delegation, and opposite mixed-add counterparts.

No Mathlib `Affine.Point` lifting or part-3 work was started.

## Gates

- Pinned narrow `lake build Ipp.Extracted.ArkworksG1`: PASS (2995 jobs).
- Pinned full `lake build Ipp`: PASS (3430 jobs).
- Both builds used `LEAN_NUM_THREADS=1`, after confirming no machine-wide
  `lean` or `lake` process was active.
- Zero `sorry`, `admit`, or new axioms in the edited module.
- Prover/release/release-gated tests were not run; this change is confined to
  the Lean coordinate proof layer.

## Axiom audit

`#print axioms` output for every new public theorem:

- `canonical_fq_val_eq_iff_decode_eq`:
  `[propext, Classical.choice, Quot.sound]`.
- `decode_g1_x_cross_eq_iff`:
  `[propext, Classical.choice, Quot.sound]`.
- `decode_g1_y_cross_eq_iff`:
  `[propext, Classical.choice, Quot.sound]`.
- `decode_g1_double_order2`:
  `[propext, Classical.choice, Quot.sound]`.

No commit was created.
