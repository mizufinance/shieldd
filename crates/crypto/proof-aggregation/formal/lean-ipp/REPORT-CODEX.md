# S3-26 part 1 report

STATUS DONE

## Scope pin

Pinned version: arkworks 0.5.0 from
`C:\Users\acyrn\.cargo\registry\src\index.crates.io-1949cf8c6b5b557f`.

Reached monomorphic BLS12-377 G1 routines:

- Projective `AddAssign<&Projective>`: `ark-ec-0.5.0/src/models/short_weierstrass/group.rs:450-537`. It checks left and right zero-Z identities, cross-multiplies Jacobian coordinates, delegates equal points to doubling, returns zero for opposite points, and otherwise executes `add-2007-bl`.
- Mixed `AddAssign<Affine>`: `group.rs:336-412`. Affine infinity is a no-op; projective zero becomes `(x,y,1)`; equal/opposite branches match projective addition; the generic branch is `madd-2007-bl`.
- Projective `double_in_place`: `group.rs:166-270`, including the zero-Z early return. BLS12-377 fixes `COEFF_A = 0`, `COEFF_B = 1`, and `mul_by_a(_) = 0` in `ark-bls12-377-0.5.0/src/curves/g1.rs:38-51`. Therefore only `group.rs:176-225` executes. Because Fq has extension degree one, the reached inner shortcut is `D = 4*X*Y²` at `group.rs:192-196`; the generic `A != 0` branch at `226-269` is excluded.
- Projective negation: `group.rs:326-333`, changing only Y.
- Affine negation: `affine.rs:254-263`, changing only Y and preserving the infinity flag. This is reached by WNAF negative buckets: short-Weierstrass projective declares `NEGATION_IS_CHEAP = true` at `group.rs:640-646`; `VariableBaseMSM::msm_bigint` selects WNAF at `scalar_mul/variable_base/mod.rs:58-67`; negative buckets use projective `-= affine` (WNAF body at `variable_base/mod.rs:107-170`), whose wrapper negates the affine operand before mixed addition at `group.rs:424-427`.

Reachability from aggregate verification is pinned by the in-repo MSM calls at `applications/poly_commit/mod.rs:86,106,240` and the generic KZG opening MSM at `tipa/mod.rs:1125-1129`; ordered group accumulation is also explicit at `gipa.rs:344-356`. Folded public inputs execute scalar multiplication and projective addition at `applications/groth16_aggregation.rs:2487-2492`. KZG/PPE paths execute G1 scalar multiplication, subtraction, and negation at `tipa/mod.rs:1188-1224` and normalize the resulting pairing operands at `applications/groth16_aggregation.rs:2517-2524`.

Scalar multiplication reaches these formulas but its loop proof is S3-28: BLS12-377 overrides projective multiplication with GLV at `g1.rs:53-57`; the GLV body negates bases, forms projective sums, doubles, and projective-adds at `ark-ec-0.5.0/src/scalar_mul/glv.rs:90-123`. The default affine subgroup check calls `mul_affine(..., ScalarField::characteristic())` at `short_weierstrass/mod.rs:74-78`; its double-and-mixed-add loop is `scalar_mul/mod.rs:29-44`.

Identity verdict: arkworks treats every `Z = 0` projective triple as zero (`group.rs:142-157`). Its chosen `ZERO` value is `(1,1,0)` (`group.rs:160-164`). The spike preserves both facts: branch tests compare only Z with zero, while the opposite-point branch returns `(FQ_ONE,FQ_ONE,FQ_ZERO)`.

Pairing preparation converts projective G1 to affine at `ark-ec-0.5.0/src/models/bls12/g1.rs:23-37`. Single/batch normalization and `into_affine` are deliberately excluded: the Jacobian relation and batch inversion live at `short_weierstrass/group.rs:293-323` and `affine.rs:329-351`, and the campaign assigns them to S3-29 (`formal/snarkpack/s2-s3-sessions.md:998-1002`). The non-WNAF MSM implementation, the generic `A != 0` doubling branch, twisted-Edwards/Montgomery formulas, G2 formulas, scalar loops, normalization, and MSM window proofs are not S3-26 part 1 obligations.

## Spike and parity

`src/s3_07_arkworks_fq_spike.rs` now contains:

- `G1ProjMont`, `G1AffineMont`, and canonical `g1_zero`;
- `g1_add`, `g1_add_mixed`, `g1_double`, `g1_neg`, and reached `g1_affine_neg`;
- `extract_s3_26`, whose closed result contains all five routines;
- composition only through the existing extracted/parity-gated Fq closures.

The control flow mirrors arkworks' zero, affine-infinity, equal, opposite, and generic branches. No compatibility route or alternate formula was added.

Parity test `g1_edges_and_512_random_vectors_match_arkworks_projective_classes` covers canonical and noncanonical zero-Z identities, generator, scaled/non-normalized generator, equal points, opposite points, doubling, projective negation, affine negation, and mixed affine infinity, followed by 512 deterministic `test_rng()` samples. Projective results compare after `into_affine`, so acceptance is equality of represented point classes rather than raw Jacobian coordinates. Every routine is exercised in every random iteration.

Results:

```text
cargo test -p ark-ip-proofs --features mac-campaign --test bls12_377_arkworks_fq_spike \
  g1_edges_and_512_random_vectors_match_arkworks_projective_classes -- --exact
1 passed; 0 failed

cargo test -p ark-ip-proofs --features mac-campaign
PASS (all executed tests green; existing two ignored tests remained ignored)
```

## Extraction

Final scoped WSL command:

```text
cargo hax into -v --output-dir /root/shieldd-s3-26-g1-v2 aeneas-lean \
  --charon-args=--start-from=crate::s3_07_arkworks_fq_spike::extract_s3_26 \
  --lakefile
```

Charon and Aeneas succeeded without a spike restructure. The final raw graph contains `g1_add`, `g1_add_mixed`, `g1_double`, `g1_neg`, `g1_affine_neg`, and the five-result `extract_s3_26`. The only tool warning is the established frontend warning that hax expected Aeneas revision `e0a1596` but could not identify the installed revision (`found unknown`). No missing builtin, panic, unsafe code, or shim was introduced.

The graph is vendored as `Ipp/Extracted/ArkworksG1Generated.lean`. Following the Fq6/Fq12 precedent, it imports the existing Fq graph instead of duplicating roughly 800 lines of the closed field closure. It has finite `maxHeartbeats 1000000` and `maxRecDepth 2048`.

## Decoder and easy laws

`Ipp/Extracted/ArkworksG1.lean` defines:

- `CanonicalG1`: all three Montgomery limb arrays decode from reduced representatives;
- `decodeG1 : G1ProjLimbTriple -> Option (Fq × Fq)`: `none` exactly when the extracted six-limb Z equality sees zero, otherwise `some (X/Z², Y/Z³)` after Montgomery decode.

This shape directly represents arkworks' Jacobian point class and makes every zero-Z encoding the same infinity value. It intentionally returns an affine coordinate pair rather than a Mathlib `G1` term: constructing the latter needs the curve-equation proof. Parts 2-3 can thread the represented-point invariant to lift the pair into Mathlib's `Affine.Point` group without changing the decoder or prematurely assuming on-curve inputs. This follows `CanonicalG1Decode.lean`'s separation between pure coordinate decoding and later validity/group obligations.

Proved public theorems:

- `decode_g1_neg`
- `decode_g1_add_left_identity`
- `decode_g1_add_right_identity`
- `decode_g1_add_mixed_identity`
- `decode_g1_double_identity`

The first transports executed Fq negation to affine Y-negation and fixes infinity at the represented-class level. The other four prove the reached identity/zero early branches. General addition, equal/opposite refinement, generic doubling, and Mathlib group-law equality were not started.

## Verification

Every lake invocation was preceded by a machine-wide `lean|lake` process check, used `LEAN_NUM_THREADS=1`, ran from `formal/lean-ipp`, and used:

```text
C:\Users\acyrn\.elan\toolchains\leanprover--lean4---v4.30.0\bin\lake.exe
```

Final gates:

```text
lake build Ipp.Extracted.ArkworksG1Generated Ipp.Extracted.ArkworksG1
PASS (2985 jobs; generated leaf built separately inside the invocation)

lake build Ipp
PASS (3430 jobs)
```

Exact new-theorem axiom output:

```text
decode_g1_neg: [propext, Classical.choice, Quot.sound]
decode_g1_add_left_identity: [propext, Classical.choice, Quot.sound]
decode_g1_add_right_identity: [propext, Classical.choice, Quot.sound]
decode_g1_add_mixed_identity: [propext, Classical.choice, Quot.sound]
decode_g1_double_identity: [propext, Classical.choice, Quot.sound]
```

The new files contain zero `sorry`, `admit`, or new axioms; `git diff --check` is clean. Prover/release-gated tests were not run because this part adds the Rust parity gate and Lean library proofs only. No commit was created. The pre-existing untracked `hooks/` directory was not touched.
