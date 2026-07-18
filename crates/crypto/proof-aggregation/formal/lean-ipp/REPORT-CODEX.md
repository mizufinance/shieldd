# S3-21 part 3 report

STATUS: DONE

## Public conformance theorems

- `decode_fq12_inv_some`: a successful inverse is canonical and its decoded
  product with the input is `fq12One`.
- `decode_fq12_inv_none`: inverse returning `none` implies the decoded input
  is `fq12Zero`.
- `decode_fq12_cyclotomic_inverse_some`: a successful cyclotomic inverse is
  canonical and decodes to quadratic conjugation.
- `decode_fq12_cyclotomic_inverse_none`: cyclotomic inverse returning `none`
  implies the decoded input is `fq12Zero`.
- `decode_fq12_frobenius_one`: power-1 execution is canonical and has the
  proven Fq6 Frobenius lane formulas, with every c1 lane additionally scaled
  by canonical `fq2U ^ ((q - 1) / 6)`.
- `decode_fq12_frobenius_two`: power-2 execution is canonical and has the
  proven Fq6 Frobenius lane formulas, with every c1 lane additionally scaled
  by canonical `fq2U ^ ((q^2 - 1) / 6)`.

The inverse none direction is supported by `fq12QuadraticNorm_eq_zero_iff`:
the executed norm vanishes exactly at `fq12Zero`. Its nonzero direction is
proved in `Fq6Canonical` using `fq6V_not_square`; no synthetic identifier,
axiom, or migration path was introduced.

## Certificates and C1 identification

Added one new 377-bit kernel certificate:

- `baseModulus_minus_five_twelfthResidue` certifies
  `(-5)^((q-1)/12) = 92949345220277864758624960506473182677953048909283248980960104381795901929519566951595905490535835115111760994353`.
- `minus_five_pow_twelfth` lifts the residue into `Fq`.

`fq12FrobeniusC1_one` uses evenness of `(q-1)/6` and `fq2U_pow_twice` to
reduce the canonical constant to that twelfth residue. For power 2,
`(q^2-1)/12` is Fermat-reduced to `(q-1)/6` plus a multiple of `q-1`, so
`fq12FrobeniusC1_two` reuses the existing sixth-residue certificate. No
greater-than-400-bit kernel exponent was evaluated.

Private row-selection and Montgomery decode lemmas prove that pinned
`FROBENIUS_COEFF_FP12_C1` rows 1 and 2 equal these canonical constants. The
resulting public Frobenius statements contain only canonical powers, never
table limbs. The decoded values match ark-bls12-377 0.5.0's published rows:
`929493...994353` and `809496...410946`.

## Gates

- `lake build Ipp.Bls12377Certificates` with the pinned lake and
  `LEAN_NUM_THREADS=1` — PASS, 1,973 jobs.
- `lake build Ipp.Bls12377Fq6` — PASS, 2,012 jobs.
- `lake build Ipp.Extracted.ArkworksFq12` — PASS, 3,002 jobs.
- Full `lake build Ipp` — PASS, 3,426 jobs.
- `git diff --check` — PASS.
- Changed-file scan for `sorry`, `admit`, and new `axiom` declarations —
  PASS, no matches.
- No generated Lean file or Rust spike was modified.
- Prover/release-gated tests — NOT RUN; this part changes Lean refinement and
  certificate proofs only, and all requested Lean gates passed.

## Axiom audit

All new public theorem families report only the permitted axioms
`propext`, `Classical.choice`, and `Quot.sound`. In particular:

```text
decode_fq12_inv_some: [propext, Classical.choice, Quot.sound]
decode_fq12_inv_none: [propext, Classical.choice, Quot.sound]
decode_fq12_cyclotomic_inverse_some: [propext, Classical.choice, Quot.sound]
decode_fq12_cyclotomic_inverse_none: [propext, Quot.sound]
decode_fq12_frobenius_one: [propext, Classical.choice, Quot.sound]
decode_fq12_frobenius_two: [propext, Classical.choice, Quot.sound]
baseModulus_minus_five_twelfthResidue: [propext, Quot.sound]
minus_five_pow_twelfth: [propext, Classical.choice, Quot.sound]
fq12FrobeniusC1_one/two: [propext, Classical.choice, Quot.sound]
fq12QuadraticNorm_eq_zero_iff: [propext, Classical.choice, Quot.sound]
```

No commit was made. Pre-existing untracked `.claude/` and `hooks/` paths were
not touched.
