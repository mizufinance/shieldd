# S3-19 part 2 report

STATUS: DONE

## Executed Fq6 laws

`Ipp/Extracted/ArkworksFq6.lean` now proves the requested executed-graph laws:

- `decode_fq6_mul`: full three-product Karatsuba multiplication refines `Ipp.Bls12377.fq6Mul`.
- `decode_fq6_square`: executed CH-SQR2 refines `fq6Mul x x`.
- `decode_fq6_mul_by_01`: the sparse chain refines multiplication by `⟨decodeFq2 c0, decodeFq2 c1, 0⟩`; the zero lane reduces to the model's Fq2 zero.

Each graph is peeled one bind at a time with `bind_eq_ok`. Every intermediate Fq2 result is supplied with output canonicity before it is consumed by a later operation. After decode rewrites, all three coefficient formulas close by ring normalization in `Fq2 = QuadraticAlgebra Fq (-5) 0`.

Inverse, Frobenius, and canonical-field composition were not started.

## Fq2 companion lemmas

`Ipp/Extracted/ArkworksFq2.lean` adds:

- `canonical_fq2_add`
- `canonical_fq2_sub`

The existing componentwise add/sub decode laws did not expose output canonicity, while the executed Fq6 chains feed those results into later Fq2 operations. These are the smallest companion additions and derive directly from the already-proven limb-level `extracted_add_spec` and `extracted_sub_spec`. Existing `extracted_fq2_mul_spec` and `extracted_fq2_square_spec` already provide output canonicity. Fq2 double and the Fq6 nonresidue helper are threaded locally from their existing component specs.

## Canonicity for part 3

The following natural output lemmas were added in `Ipp/Extracted/ArkworksFq6.lean`:

- `canonical6_mul`
- `canonical6_square`
- `canonical6_mul_by_01`

All three follow from the same internal combined specs as their decode laws, so part 3 can compose their outputs without reconstructing bounds.

## Files changed

- `Ipp/Extracted/ArkworksFq2.lean`
- `Ipp/Extracted/ArkworksFq6.lean`
- `REPORT-CODEX.md`

No generated Lean file or Rust spike was edited.

## Gates

- `git diff --check`: PASS.
- Modified-file `sorry`/`admit`/new-axiom search: PASS; no matches.
- Focused `lake build Ipp.Extracted.ArkworksFq6`: PASS, 2,995 jobs.
- Full `lake build Ipp`: PASS, 3,423 jobs.
- Axiom audit via `#print axioms` on `canonical6_mul`, `decode_fq6_mul`, `canonical6_square`, `decode_fq6_square`, `canonical6_mul_by_01`, and `decode_fq6_mul_by_01`: PASS. Every theorem reports exactly `[propext, Classical.choice, Quot.sound]`.
- Prover/release-gated tests: not run; no prover or release-gated path changed, and the requested gates were Lean builds and the axiom audit.
