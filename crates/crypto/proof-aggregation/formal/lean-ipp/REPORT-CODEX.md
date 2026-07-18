# S3-21 part 4 report

STATUS: PARTIAL

Tier A is complete and green. Tier B was attempted only after Tier A passed,
then stopped at the requested tier boundary. No Tier B declarations were
landed.

## Tier A landed

Added exact executable models in `Ipp.Bls12377Pairing`:

- `fq12Conjugate`: Fq12 quadratic conjugation by c1 negation.
- `fq12CyclotomicSquare`: the arkworks Granger–Scott q ≡ 1 (mod 6)
  six-lane Fq2 formula, preserving the source g0…g5 dataflow.
- `blsXnafBE`: the pinned 64 signed digits for
  `X = 0x8508c00000000001` in big-endian order.
- `fq12CyclotomicExpStep` and `fq12CyclotomicExp`: the exact square, then
  multiply-by-a / multiply-by-conjugate NAF fold.
- `fq12CyclotomicExp_zero`: exponentiation maps the zero model to zero.

Public executed-refinement theorems:

- `canonical12_cyclotomic_square`: successful extracted cyclotomic square
  preserves `Canonical12`.
- `decode_fq12_cyclotomic_square`: successful extracted cyclotomic square
  decodes to `fq12CyclotomicSquare`.
- `x_naf_be_matches_model`: the generated extracted `X_NAF_BE` value is
  kernel-equal to `blsXnafBE`.
- `canonical12_cyclotomic_exp`: successful extracted cyclotomic exponentiation
  preserves `Canonical12`.
- `decode_fq12_cyclotomic_exp`: successful extracted cyclotomic exponentiation
  decodes to `fq12CyclotomicExp`.

The square proof uses scoped per-operation Fq2 helpers and bind-peels each GS
lane without changing the generated graph. The exponentiation proof does not
unroll 64 iterations: `cyclotomic_exp_loop0_fuel_spec` inducts on the Aeneas
loop fuel with an invariant equating the decoded accumulator to the model fold
over `blsXnafBE.drop index`; the second generated loop wrapper reuses the same
body specification. The public graph proof handles the extracted zero return
and both generated loop branches.

## Tier B attempt

A scratch-only `AdjoinRoot.liftAlgHom` probe mapped the quadratic root to its
negative and reduced well-definedness to the expected root-square fact. The
probe was removed to keep the landed tree green at the Tier A boundary.

The exact residual goal after `Polynomial.eval₂` expansion was:

```text
⊢ (-AdjoinRoot.root (Polynomial.X ^ 2 - Polynomial.C fq6V)) ^ 2 -
    (algebraMap Fq6Canonical Fq12Canonical) fq6V = 0
```

The existing `fq12_root_square` theorem is stated through the private
`fq12Polynomial` / `Fq12Canonical` abbreviations; unfolding `eval₂` exposed
the polynomial and prevented the root term from elaborating back at the
canonical abbreviation in the attempted rewrite/calc. Consequently
`fq12ConjAut`, conjugation transport, and the two unitarity semantic laws were
not landed. They can move together to the dedicated unitarity session without
blocking part 5.

## Gates

- `lake build Ipp.Bls12377Pairing` with pinned lake and
  `LEAN_NUM_THREADS=1` — PASS.
- `lake build Ipp.Extracted.ArkworksFq12` — PASS, 3,002 jobs.
- Full `lake build Ipp` — PASS, 3,426 jobs.
- `git diff --check` — PASS.
- Added-line scan for `sorry`, `admit`, or `axiom` — PASS, no matches.
- No generated Lean file or Rust spike was modified.
- Prover/release-gated tests — NOT RUN; this part changes Lean model and
  refinement proofs, and all requested Lean gates passed.

## Axiom audit

All new public theorems use only the permitted axioms:

```text
fq12CyclotomicExp_zero:
  [propext, Classical.choice, Quot.sound]
canonical12_cyclotomic_square:
  [propext, Classical.choice, Quot.sound]
decode_fq12_cyclotomic_square:
  [propext, Classical.choice, Quot.sound]
x_naf_be_matches_model:
  [propext]
canonical12_cyclotomic_exp:
  [propext, Classical.choice, Quot.sound]
decode_fq12_cyclotomic_exp:
  [propext, Classical.choice, Quot.sound]
```

No commit was made. Pre-existing untracked `.claude/` and `hooks/` paths were
not touched.
