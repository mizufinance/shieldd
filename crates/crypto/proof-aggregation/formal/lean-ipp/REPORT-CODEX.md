# S3-19 part 4 report

STATUS: DONE

## Theorems landed

- `decode_fq6_frobenius_one`: `Canonical6 a` and executed `fq6_frobenius a 1#usize = .ok output` imply `Canonical6 output` and `decodeFq6 output = ⟨star (decodeFq2 a.c0), fq2U ^ ((baseModulus - 1) / 3) * star (decodeFq2 a.c1), fq2U ^ (2 * ((baseModulus - 1) / 3)) * star (decodeFq2 a.c2)⟩`.
- `decode_fq6_frobenius_two`: `Canonical6 a` and executed `fq6_frobenius a 2#usize = .ok output` imply `Canonical6 output` and `decodeFq6 output = ⟨decodeFq2 a.c0, fq2U ^ ((baseModulus ^ 2 - 1) / 3) * decodeFq2 a.c1, fq2U ^ (2 * ((baseModulus ^ 2 - 1) / 3)) * decodeFq2 a.c2⟩`.

## Canonicity

Both theorems land the stronger combined-spec form with `Canonical6 output`. The pinned scalar table rows and zero imaginary limb are proved canonical by kernel reduction and `norm_num`; the executed Fq2 Frobenius and multiplication specs propagate canonicity to all three output lanes.

## Gates

- Focused `LEAN_NUM_THREADS=1 lake build Ipp.Extracted.ArkworksFq6`: PASS, 2,999 jobs.
- Full `LEAN_NUM_THREADS=1 lake build Ipp`: PASS, 3,423 jobs.
- Modified-file `sorry`/`admit`/`native_decide`/new-axiom scan: PASS; no matches.
- Axiom audit from the two required `#print axioms` commands: PASS.
  - `decode_fq6_frobenius_one`: `[propext, Classical.choice, Quot.sound]`.
  - `decode_fq6_frobenius_two`: `[propext, Classical.choice, Quot.sound]`.
- Prover/release-gated tests: NOT RUN; no prover or release-gated path changed.

No generated Lean file, Rust spike, Fq12 file, or certificate file was edited. No commit was made.
