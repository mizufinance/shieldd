# S3-18 Report

STATUS: DONE

## Files touched

- `Ipp/Bls12377Fq6.lean` (new): Fq2 noncube proof, cubic irreducibility, canonical `AdjoinRoot` field, coefficient interpretation, operation laws, and bijectivity.
- `Ipp/Bls12377Certificates.lean`: checked cubic-residue certificate for `-5` in Fq.
- `REPORT-CODEX.md`: this report.

## Proved statements

- `baseModulus_minus_five_cubeResidue`: kernel computation of `(-5)^((q-1)/3)` as the pinned nontrivial residue literal.
- `baseModulus_minus_five_cubeResidue_ne_one`: the certified base-field cubic residue is not one.
- `fq2U_not_cube`: `∀ b : Fq2, b ^ 3 ≠ fq2U`.
- `fq6Polynomial_irreducible`: `Irreducible (X ^ 3 - C fq2U : Polynomial Fq2)`.
- `fq6Canonical_field_available`: `Nonempty (Field Fq6Canonical)`; the instance is Mathlib's `AdjoinRoot.instField`, selected from `fq6Polynomial_irreducibleFact`, not postulated.
- `fq6Coefficients_zero`: the coefficient interpretation maps `fq6Zero` to zero.
- `fq6Coefficients_one`: the coefficient interpretation maps `fq6One` to one.
- `fq6Coefficients_add`: the coefficient interpretation preserves `fq6Add`.
- `fq6Coefficients_mul`: the coefficient interpretation preserves `fq6Mul`, using `root ^ 3 = algebraMap _ _ fq2U`.
- `fq6Coefficients_mulByV`: `fq6MulByV` corresponds to multiplication by the canonical root.
- `fq6Coefficients_bijective`: the coefficient interpretation is bijective, via the degree-three `AdjoinRoot.powerBasis` reindexed by `Fin 3`.

## Verification gates

- Focused pinned build, `LEAN_NUM_THREADS=1 lake build Ipp.Bls12377Fq6`: PASS, 2,012 jobs.
- Full pinned build, `LEAN_NUM_THREADS=1 lake build Ipp`: PASS, 3,421 jobs (pre-existing warnings only).
- Changed-file scan for `sorry`, `admit`, and axiom declarations: clean.
- Prover/release-gated tests: not run; this session changed only the pure Lean field foundation.

## Axiom audit

Transient `#print axioms` audit (audit source deleted afterward):

```text
'Ipp.Bls12377.fq2U_not_cube' depends on axioms: [propext, Classical.choice, Quot.sound]
'Ipp.Bls12377.fq6Polynomial_irreducible' depends on axioms: [propext, Classical.choice, Quot.sound]
'Ipp.Bls12377.fq6Canonical_field_available' depends on axioms: [propext, Classical.choice, Quot.sound]
'Ipp.Bls12377.fq6Coefficients_mul' depends on axioms: [propext, Classical.choice, Quot.sound]
'Ipp.Bls12377.fq6Coefficients_bijective' depends on axioms: [propext, Classical.choice, Quot.sound]
```

## Strategy deviation

The final proof follows the suggested small-certificate route. A direct certificate at exponent `(q^2-1)/6` was tried first as the documented fallback, but did not finish within a controlled 180-second focused run. It was removed. The landed proof instead certifies the 377-bit exponent `(q-1)/3`, proves

`(q^2-1)/6 = (q-1)/3 + (q-1) * ((q-1)/6)`,

and eliminates the second term with Fermat's theorem in Fq. Fq2 cardinality is obtained from `QuadraticAlgebra.equivProd`, and the cube hypothesis is contradicted with `FiniteField.pow_card_sub_one_eq_one`.
