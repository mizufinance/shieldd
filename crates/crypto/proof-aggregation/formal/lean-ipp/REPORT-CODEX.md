# S3-19 part 3 report

STATUS: PARTIAL

Green boundary: executed inverse (some and none), cubic-norm nonvanishing, certified canonical Frobenius constants, and canonical-field composition landed. The executed `fq6_frobenius` graph laws for powers 1 and 2 remain; therefore S3-19 is not complete.

## Theorems landed

- `decode_fq6_inv_some`: `Canonical6 a` and executed `fq6_inv a = ok (some output)` imply `Canonical6 output` and `fq6Mul (decodeFq6 output) (decodeFq6 a) = fq6One`.
- `decode_fq6_inv_none`: `Canonical6 a` and executed `fq6_inv a = ok none` imply `decodeFq6 a = fq6Zero`.
- `fq6CubicNorm_eq_zero_iff`: the Algorithm-17 cubic norm vanishes iff its `Fq6Model` coefficient vector is zero.
- `fq6Mul_scaledAdjugate`: a scalar inverse of the cubic norm makes the Algorithm-17 adjugate a multiplicative inverse.
- `canonical_field_fq6_mul`: executed multiplication transported by `fq6Coefficients` equals multiplication in `Fq6Canonical`.
- `canonical_field_fq6_square`: executed squaring transported by `fq6Coefficients` equals canonical-field squaring.
- `canonical_field_fq6_inv`: a successful executed inverse transported by `fq6Coefficients` multiplies its input to canonical-field one.
- `fq2U_pow_twice`: `u^(2n)` is the base-field embedding of `(-5)^n`.
- `fq6FrobeniusC1_one`, `fq6FrobeniusC2_one`: canonical power-1 C1/C2 constants are the certified base-field residues.
- `fq6FrobeniusC1_two`, `fq6FrobeniusC2_two`: canonical power-2 C1/C2 constants reduce modulo `q-1` and equal the certified base-field residues.

## Frobenius tier

Required tier: PARTIAL. The exponent-reduction/certificate side is complete and one pinned Montgomery C1 table row has a kernel-reduced decode lemma. The public executed graph theorems `decode_fq6_frobenius_one` and `decode_fq6_frobenius_two` were not landed. Stretch q-power characterization was not attempted.

## Certificates added

- `baseModulus_minus_five_sixthResidue`: one scoped 377-bit `rfl` certificate for `(-5)^((q-1)/6)`.
- `baseModulus_minus_five_twoThirdsResidue`: one scoped 377-bit `rfl` certificate for `(-5)^(2(q-1)/3)`.
- `minus_five_pow_sixth`, `minus_five_pow_third`, `minus_five_pow_twoThirds`: `ZMod` bridges from `powResidue`; the existing third-residue certificate is reused.

The `k=2` canonical constants use Fermat reduction before the certified 377-bit residues; no direct 753-bit kernel computation was attempted.

## Gates

- `git diff --check`: PASS.
- Modified-file `sorry`/`admit` search: PASS; no matches.
- Focused `lake build Ipp.Bls12377Certificates`: PASS, 1,973 jobs.
- Focused `lake build Ipp.Bls12377Fq6`: PASS, 2,012 jobs.
- Focused `lake build Ipp.Extracted.ArkworksFq6`: PASS, 2,999 jobs after inverse/composition; the later additions are dependencies already checked by the two focused builds above, but the extracted target was not rerun after adding only `#print axioms` lines.
- Full `lake build Ipp`: NOT RUN because the required Frobenius graph tier is incomplete.
- Axiom audit: PASS for every new public theorem. Certificate residue theorems use `[propext, Quot.sound]`; all other new public theorems use exactly `[propext, Classical.choice, Quot.sound]`.
- Prover/release-gated tests: NOT RUN; no prover path changed.

No generated Lean file, Rust spike, or Fq12 file was edited.

## Precise remaining work

Peel `fq6_frobenius` at literal powers 1 and 2, prove the selected C1 table entries decode to `fq6FrobeniusC1_one/two`, prove the C2-derived table entries decode to `fq6FrobeniusC2_one/two`, compose with `decode_fq2_frobenius` (power 1) or the identity branch (power 2), and expose the two requested lane-formula theorems plus their axiom prints. Then run focused `Ipp.Extracted.ArkworksFq6` and one full `lake build Ipp`.
