# S3-21 part 6 report

STATUS: PARTIAL

## Landed public declarations

- `fq12ConjAut : Fq12Canonical ≃ₐ[Fq6Canonical] Fq12Canonical` fixes Fq6 and
  sends `AdjoinRoot.root fq12Polynomial` to its negation.
- `fq12Coefficients_conjugate (a : Fq12Model)` proves
  `fq12Coefficients (fq12Conjugate a) =
  fq12ConjAut (fq12Coefficients a)`.

The automorphism uses the work-order hint directly: a standalone
`fq12_neg_root_square` first proves `(-root)^2 = algebraMap fq6V` at the
abbreviated types. `AdjoinRoot.liftAlgHom` then produces `fq12ConjHom`.
`AdjoinRoot.algHom_ext` proves the hom composed with itself is the identity on
the root generator, and `AlgEquiv.ofAlgHom` packages that involution as the
equivalence. Conjugation transport uses a private componentwise Fq6-negation
coefficient lemma.

## Invalid deferred premise

The two requested unitarity-only semantic statements were not landed because
they are false on BLS12-377:

```text
fq12Mul x (fq12Conjugate x) = fq12One

does not imply

fq12CyclotomicSquare x = fq12Mul x x
fq12CyclotomicExp x = fq12Pow x 9586122913090633729
```

Arkworks' `CyclotomicMultSubgroup` contract warns that `cyclotomic_square` and
`cyclotomic_exp` may be invoked only for elements in the cyclotomic subgroup.
Quadratic norm one places an element in the larger order-`q^6 + 1` unitary
subgroup; the cyclotomic subgroup has order `q^4 - q^2 + 1`.

A temporary deterministic exact-field diagnostic constructed
`x = y / y^(q^6)` in Arkworks BLS12-377. It checked
`x * x^(q^6) = 1`, then checked both strict inequalities:

```text
x.cyclotomic_square() != x.square()
x.cyclotomic_exp([9586122913090633729]) !=
  x.pow([9586122913090633729])
```

The diagnostic passed and was removed; no Rust or extracted-layer change is
landed.

## Exact coordinate obstruction

Writing

```text
x.c0 = (r0, r4, r3),  x.c1 = (r2, r1, r5),  u = fq2U,
```

unitarity gives exactly these three nontrivial Fq2 equations after
normalization (`fq2One = 1`, `fq2Zero = 0`):

```text
h0 : r0^2 + 2*u*r4*r3 - 2*u*r2*r5 - u*r1^2 = 1
h1 : 2*r0*r4 + u*r3^2 - 2*u*r5*r1 - r2^2 = 0
h2 : 2*r0*r3 - u*r5^2 + r4^2 - 2*r2*r1 = 0
```

The first GS lane still requires the independent goal:

```text
⊢ 3*r0^2 + 3*u*r1^2 - 2*r0 =
    r0^2 + 2*u*r4*r3 + 2*u*r2*r5 + u*r1^2
```

The exact-field witness above satisfies `h0`/`h1`/`h2` and falsifies this
lane equality. Since the NAF fold calls the same invalid optimized square, its
unitarity-only exponent statement is false as well (and was independently
falsified by the diagnostic).

The correct closer needs an actual cyclotomic-subgroup hypothesis, for example
the order-`q^4 - q^2 + 1` membership property and its required Frobenius
relations. Adding that new predicate and proof surface would exceed this
closer's stated scope.

## Gates

- Pinned lake with `LEAN_NUM_THREADS=1`; a process check preceded every lake
  invocation.
- `lake build Ipp.Bls12377Fq12` -- PASS, 2,013 jobs.
- One final full `lake build Ipp` -- PASS, 3,426 jobs.
- Temporary exact BLS12-377 Rust diagnostic -- PASS, 1 test; removed after use.
- Changed Lean scan for `sorry`, `admit`, or `axiom` -- PASS, no matches.
- `git diff --check` -- PASS.
- Prover/release-gated tests -- NOT RUN; no circuit, generated, or extracted
  layer changed.

## Axiom audit

```text
fq12ConjAut:
  [propext, Classical.choice, Quot.sound]
fq12Coefficients_conjugate:
  [propext, Classical.choice, Quot.sound]
```

No new axiom was added. No commit was made. Pre-existing untracked `.claude/`
and `hooks/` paths were not touched.
