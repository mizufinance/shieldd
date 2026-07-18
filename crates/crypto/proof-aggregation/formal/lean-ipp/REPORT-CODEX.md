# S3-26 part 2c report

STATUS DONE

## Consumer fixes

- `decode_g1_add_generic` now applies `chord_decode_core` directly. It builds
  the decoded scale and add-step equations over local affine values, clears
  their definitions, and passes only opaque parameters to the core theorem.
  The obsolete expanded `eh'`/`ex'`/`ey'` identity-route facts were deleted.
- `decode_g1_add_mixed_generic` now applies `chord_decode_core` directly with
  opaque aliases for every decoded intermediate and affine component. It
  captures `hc : c ≠ 0` before `clear_value`, so the final application is
  syntactic and never unfolds `c = decode a.z`. Its obsolete expanded
  identity-route facts were also deleted.
- The mixed same-x helper's concrete-field `field_simp`/`linear_combination`
  scaling steps were replaced by abstract `div_eq_iff` lemmas. The full-file
  check exposed this as an additional pre-consumer memory spike. The two
  opposite-point proofs also received their necessary local proof repairs.

## Verification

- Required command: PASS.
  `LEAN_NUM_THREADS=1 C:\Users\acyrn\.elan\toolchains\leanprover--lean4---v4.30.0\bin\lake.exe env lean Ipp/Extracted/ArkworksG1.lean`
- Full-file peak Lean working set: **2,011.5 MiB (1.964 GiB)**, sampled every
  200 ms.
- Isolated `decode_g1_add_generic` checkpoint: PASS at **1,989.5 MiB**.
- Zero `sorry`, `admit`, or new `axiom` declarations in `ArkworksG1.lean`.
- No temporary truncated file or diagnostic wrapper remains.
- Prover/release-gated tests were not run; verification was the requested
  single-file Lean elaboration and axiom audit.

## Axiom audit

- `decode_g1_add_generic`:
  `[propext, Classical.choice, Quot.sound]`.
- `decode_g1_add_mixed_generic`:
  `[propext, Classical.choice, Quot.sound]`.

No commit was created.
