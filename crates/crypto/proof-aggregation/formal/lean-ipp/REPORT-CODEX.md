# S3-21 part 2 report

STATUS: DONE

## Landed laws

`Ipp/Extracted/ArkworksFq12.lean` now proves combined canonicity/decode specs
for the three requested executed operations and exposes these public
projections:

- `canonical12_mul`
- `decode_fq12_mul`
- `canonical12_square`
- `decode_fq12_square`
- `canonical12_mul_by_034`
- `decode_fq12_mul_by_034`

`decode_fq12_mul` refines the executed quadratic Karatsuba chain to
`Ipp.Bls12377.fq12Mul`. `decode_fq12_square` is stated against
`Ipp.Bls12377.fq12Square`, which is definitionally `fq12Mul a a` and matches
the pairing model consumer. `decode_fq12_mul_by_034` refines the executed
sparse chain to multiplication by `Ipp.Bls12377.sparse034` in coefficient
positions 0, 3, and 4. Its coefficient proof uses the explicit local
`fq2Zero = 0` bridge.

The private `fq12_nonresidue_spec` proves the extracted Fq6 rotation has
`Ipp.Bls12377.fq6MulByV` semantics. Final coefficient identities are closed
componentwise in Fq2 after rewriting the combined specs.

No generated Lean file or Rust spike was modified. Inverse, Frobenius,
cyclotomic operations, and bytes remain untouched for later parts.

## Fq6 companion lemmas

The Fq6 layer already had decode laws but lacked canonicity projections needed
to carry intermediate values through the Fq12 bind chains. The smallest
companions added to `Ipp/Extracted/ArkworksFq6.lean` are:

- `canonical6_add`
- `canonical6_sub`
- `canonical6_double`
- `canonical6_mul_base_field_by_nonresidue`

No Fq6 semantic statement was weakened or duplicated.

## Gates

- Pinned, single-threaded focused build:
  `lake build Ipp.Extracted.ArkworksFq12` — PASS, 3,002 jobs.
- Pinned, single-threaded full build:
  `lake build Ipp` — PASS, 3,426 jobs.
- Changed Lean-file scan for `sorry`, `admit`, and new `axiom` declarations —
  PASS, no matches.
- Diff scope audit — PASS: only the hand-authored Fq6/Fq12 law files and this
  report changed; no `*Generated.lean` or Rust spike changes.
- Prover/release-gated tests — NOT RUN; this part is confined to Lean
  refinement laws and the required Lean build gates passed.

## Axiom audit

All ten new public theorems report exactly the permitted axioms:

```text
'Ipp.Extracted.ArkworksFq6.canonical6_add' depends on axioms: [propext, Classical.choice, Quot.sound]
'Ipp.Extracted.ArkworksFq6.canonical6_sub' depends on axioms: [propext, Classical.choice, Quot.sound]
'Ipp.Extracted.ArkworksFq6.canonical6_double' depends on axioms: [propext, Classical.choice, Quot.sound]
'Ipp.Extracted.ArkworksFq6.canonical6_mul_base_field_by_nonresidue' depends on axioms: [propext, Classical.choice, Quot.sound]
'Ipp.Extracted.ArkworksFq12.canonical12_mul' depends on axioms: [propext, Classical.choice, Quot.sound]
'Ipp.Extracted.ArkworksFq12.decode_fq12_mul' depends on axioms: [propext, Classical.choice, Quot.sound]
'Ipp.Extracted.ArkworksFq12.canonical12_square' depends on axioms: [propext, Classical.choice, Quot.sound]
'Ipp.Extracted.ArkworksFq12.decode_fq12_square' depends on axioms: [propext, Classical.choice, Quot.sound]
'Ipp.Extracted.ArkworksFq12.canonical12_mul_by_034' depends on axioms: [propext, Classical.choice, Quot.sound]
'Ipp.Extracted.ArkworksFq12.decode_fq12_mul_by_034' depends on axioms: [propext, Classical.choice, Quot.sound]
```

No commit was made. Pre-existing untracked `.claude/` and `hooks/` paths were
not touched.
