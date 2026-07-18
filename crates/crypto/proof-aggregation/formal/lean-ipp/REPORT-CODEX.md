# S3-20 report

STATUS: DONE

## Theorems landed

- `minus_five_pow_half`: the existing checked Euler residue gives `(-5)^((q-1)/2) = -1` in Fq.
- `fq2_card`: `Fintype.card Fq2 = baseModulus ^ 2` (widened from private).
- `fq6_card`: the power basis gives `Fintype.card Fq6Canonical = baseModulus ^ 6`.
- `fq6V_not_square`: no `b : Fq6Canonical` satisfies `b ^ 2 = fq6V`.
- `fq12Polynomial_irreducible`: `X ^ 2 - C fq6V` is irreducible over `Fq6Canonical`.
- `fq12Canonical_field_available`: the Fq12 `Field` instance is derived from the global irreducibility `Fact`.
- `fq12_card`: the degree-2 power basis gives `Fintype.card Fq12Canonical = baseModulus ^ 12`.
- `fq12Coefficients_one`: the pair-model one maps to canonical one.
- `fq12Coefficients_mul`: pair-model multiplication maps to canonical field multiplication.
- `fq12Coefficients_bijective`: the pair coefficient interpretation is a bijection onto `Fq12Canonical`.
- `fq12Coefficients_pow`: executable `fq12Pow` maps to canonical exponentiation.

## Nonsquare route

The no-new-certificate route held. The proof uses `Fintype.card Fq6Canonical = q^6`, collapses `fq6V^((q^6-1)/2)` through `fq6V^3 = fq2U` and `fq2U^2 = -5`, reduces the base exponent modulo `q-1`, and reuses `baseModulus_minus_five_powResidue`. No new kernel residue certificate was added; `minus_five_pow_half` is only a field-valued corollary of the existing certificate.

## Gates

- Focused `LEAN_NUM_THREADS=1 lake build Ipp.Bls12377Fq12`: PASS, 2,013 jobs.
- Full `LEAN_NUM_THREADS=1 lake build Ipp`: PASS, 3,424 jobs.
- Modified-file `sorry`/`admit`/new-axiom scan: PASS; no matches.
- `git diff --check`: PASS.
- Axiom audit: PASS. Every printed main theorem (`fq6V_not_square`, `fq12Polynomial_irreducible`, `fq6_card`, `fq12_card`, `fq12Coefficients_mul`, `fq12Coefficients_pow`, `fq12Coefficients_bijective`, and `minus_five_pow_half`) depends only on `propext`, `Classical.choice`, and `Quot.sound` (some use a subset).
- Prover/release-gated tests: NOT RUN; this session changes only hand-authored canonical Lean field proofs and no prover/release path.

No executed/extracted or generated file was edited. No commit was made.
