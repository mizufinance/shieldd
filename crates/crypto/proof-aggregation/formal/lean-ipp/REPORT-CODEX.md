# S3-27 part 1 report

STATUS DONE

## Scope pin

Pinned against arkworks 0.5.0 in
`C:\Users\acyrn\.cargo\registry\src\index.crates.io-1949cf8c6b5b557f\`.

### Curve and representation

- `ark-bls12-377-0.5.0/src/curves/g2.rs:48-59` pins the D-type twist to
  `COEFF_A = (0,0)` and
  `COEFF_B = (0,
  155198655607781456406391640216936120121836107652948796323930557600032281009004493664981332883744016074664192874906)`.
  The source explains this as `b' = b/u` for the `x^6-u` extension.
- The exact affine generator is selected at `g2.rs:62-63`; its four Fq
  coordinates are pinned at `g2.rs:131-148`.
- Projective identity is `(1,1,0)` and `is_zero` is exactly `Z == 0`
  (`ark-ec-0.5.0/src/models/short_weierstrass/group.rs:141-157`). Thus any
  zero-Z triple represents infinity; the opposite-point branches construct
  the chosen `(1,1,0)` literal.
- `COEFF_A = 0` selects the `double_in_place` a=0 branch
  (`group.rs:171-236`). Because `Fq2::extension_degree() = 2`, it also selects
  the fast `D = 4*X*Y^2` sub-branch at `group.rs:190-201`. The generic A != 0
  doubling branch is unreached.

### Reached group routines

- Projective `AddAssign<&Projective>`: zero-Z checks, add-2007-bl, equal-point
  delegation to doubling, and opposite-point zero (`group.rs:450-530`).
- Mixed `AddAssign<Affine>`: affine-infinity no-op, zero projective to
  `(x,y,1)`, madd-2007-bl, equal delegation, and opposite zero
  (`group.rs:336-412`).
- `double_in_place`, only the a=0/extension-degree-2 branch above.
- Projective negation (`group.rs:326-334`) and affine negation
  (`affine.rs:256-266`). Projective subtraction delegates through negation and
  addition (`group.rs:424-438`, `532-543`).
- G2 MSM dispatches through `SWCurveConfig::msm` to variable-base MSM
  (`short_weierstrass/mod.rs:101-109`, `group.rs:638-653`).
  `NEGATION_IS_CHEAP = true` selects WNAF (`variable_base/mod.rs:52-67`);
  negative buckets use affine subtraction/negation and bucket accumulation
  uses mixed/projective addition and doubling (`variable_base/mod.rs:110-166`).
- Aggregate folding reaches projective scalar multiplication followed by
  projective addition at
  `ip_proofs/src/applications/groth16_aggregation.rs:974-984,1051-1064`.
  G2 does not override `SWCurveConfig::mul_projective` or `mul_affine`, so
  ordinary G2 scalar multiplication uses the generic projective and affine
  double-and-add loops (`short_weierstrass/mod.rs:89-99` and
  `scalar_mul/mod.rs:25-54`).
- Affine validity/subgroup checking calls
  `is_in_correct_subgroup_assuming_on_curve` (`affine.rs:167-169,373-379`),
  whose default multiplies by the scalar-field characteristic using the same
  generic affine loop (`short_weierstrass/mod.rs:74-79`).
- Pairing preparation from projective G2 first calls `into_affine`
  (`models/bls12/g2.rs:76-90`); projective-to-affine is the Z inverse,
  `X/Z^2`, `Y/Z^3` boundary (`short_weierstrass/affine.rs:331-354`).

### Exclusions and later boundaries

- Single/batch normalization, inversion, and affine conversion are reached
  boundaries but are excluded to S3-29. MSM batch conversion calls
  `normalize_batch` (`group.rs:638-646`); pairing preparation can call
  `into_affine` as cited above.
- Scalar loop invariants, including MSM windows and subgroup-check
  characteristic multiplication, are excluded to S3-28.
- G2 implements `GLVConfig` (`ark-bls12-377 g2.rs:101-129`) but does not wire
  `glv_mul_projective` or `glv_mul_affine` into its `SWCurveConfig` methods.
  Verdict for S3-28: no GLV/endomorphism scalar-mul path is selected for G2;
  cover the two generic double-and-add loop shapes. The endomorphisms used by
  the separately unreached optimized `clear_cofactor` routine are not part of
  this slice.
- Unreached generic A != 0 doubling, hash-to-curve/isogeny, cofactor clearing,
  serialization, random-point generation, and test-only variants are excluded.

## Spike and parity

- Added `G2ProjMont = {x,y,z : Fq2Mont}`, `G2AffineMont`, `g2_zero`,
  `g2_add`, `g2_add_mixed`, `g2_double`, `g2_neg`, `g2_affine_neg`, and the
  `extract_s3_27` root. Every field operation composes the existing `fq2_*`
  closures. Control flow mirrors the cited arkworks routines, including all
  identity/equal/opposite branches.
- Added projective-class parity edges: canonical identity, noncanonical
  zero-Z, generator, equal, opposite, doubled, and non-normalized scaled
  representatives. Added 512 deterministic random vectors for every routine.
  Comparisons normalize both results to affine classes.
- PASS: focused
  `g2_edges_and_512_random_vectors_match_arkworks_projective_classes`.
- PASS: `cargo test -p ark-ip-proofs --features mac-campaign`.
- PASS: direct `rustfmt --edition 2021 --check` on both edited Rust files.
  Repository-wide `cargo fmt --all -- --check` still reports pre-existing
  unrelated drift in the Fr spike files.

## Extraction

- WSL extraction succeeded from root
  `crate::s3_07_arkworks_fq_spike::extract_s3_27` into
  `/root/shieldd-s3-27-g2-v2` using `cargo hax into ... aeneas-lean`.
- Hax warned that it expected Aeneas revision `e0a1596` but reported the
  installed revision as `unknown`; generation nevertheless completed with
  exit 0 in 14.6 seconds and produced Types/Funs/lake files.
- Vendored `Ipp/Extracted/ArkworksG2Generated.lean`. It imports the existing
  Fq2/Fq6 graph instead of duplicating the arithmetic closure, retains finite
  `maxHeartbeats = 1000000`, and contains the extracted G2 structures,
  component equality, constants, routines, and root.
- No Rust restructuring was needed after extraction; the already-green parity
  test remained green.
- PASS: guarded `LEAN_NUM_THREADS=1 lake env lean
  Ipp/Extracted/ArkworksG2Generated.lean`.
- PASS: guarded narrow `LEAN_NUM_THREADS=1 lake build
  Ipp.Extracted.ArkworksG2Generated` (9 jobs; peak 427.7 MiB).

## Easy laws

Added `Ipp/Extracted/ArkworksG2.lean` with:

- `CanonicalG2`: componentwise reduced Montgomery canonicity for all three
  Fq2 coordinates.
- `isZeroFq2Mont`: the exact componentwise executed zero test.
- `decodeG2 : G2ProjLimbTriple -> Option (Fq2 x Fq2)`: `none` exactly when
  the executed Z-zero test succeeds; otherwise
  `some (X/Z^2, Y/Z^3)` in the proved concrete Fq2 model.
- `decode_g2_neg`.
- `decode_g2_add_left_identity`.
- `decode_g2_add_right_identity`.
- `decode_g2_add_mixed_identity`.
- `decode_g2_double_identity`.

The generic add/double refinements and Mathlib lift were not started.

## Lean verification and axioms

- PASS: guarded, single-threaded full-file
  `LEAN_NUM_THREADS=1 lake env lean Ipp/Extracted/ArkworksG2.lean`.
- Final monitored full-file check: 39.8 seconds, peak Lean working set
  **426.1 MiB**, guardian ceiling approximately 6 GiB.
- Zero `sorry`, `admit`, or new `axiom` declarations in either new Lean file.
- `#print axioms` is present for every new public theorem. Output for all five
  is exactly `[propext, Classical.choice, Quot.sound]`.
- Prover/release-gated tests were not run. The requested Rust MAC campaign,
  WSL extraction, generated-file check, narrow generated-module build, and
  full easy-law file check were run.

No commit was created.
