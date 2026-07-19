# S3-28 part 1 — scalar-multiplication opener

## STATUS

COMPLETE at the requested Part 1 boundary.

Pinned every scalar-multiplication loop shape reached by aggregate verification, added and parity-tested the monomorphic generic loops, extracted them through WSL Aeneas, and proved the four generic single-bit decode laws. No loop-invariant induction, generic loop theorem, concrete scalar-multiplication corollary, or GLV implementation was attempted. No commit was created.

## Scope pin: exact executed loops

Arkworks routing common to both curves:

- Projective `mul_bigint` delegates to `P::mul_projective` (`ark-ec-0.5.0/src/models/short_weierstrass/group.rs:282-284`). Affine `mul_bigint` delegates to `P::mul_affine` (`affine.rs:235-236`).
- The default short-Weierstrass projective and affine routes are respectively `sw_double_and_add_projective` and `sw_double_and_add_affine` (`models/short_weierstrass/mod.rs:89-99`).
- The default subgroup check computes `mul_affine(item, ScalarField::characteristic()).is_zero()` (`models/short_weierstrass/mod.rs:74-79`), so it always reaches the affine/mixed-add loop unless a curve overrides that check. BLS12-377 G1 and G2 do not.

### G1 ordinary projective multiplication: GLV joint loop

BLS12-377 G1 overrides only `mul_projective`, converts the input limbs to Fr, and calls `GLVConfig::glv_mul_projective` (`ark-bls12-377-0.5.0/src/curves/g1.rs:54-57`). The exact GLV control flow is `ark-ec-0.5.0/src/scalar_mul/glv.rs:27-82,90-123`:

1. Decompose `k` into signed magnitudes `(sgn_k1,k1)`, `(sgn_k2,k2)` intended to satisfy `k = k1 + λ·k2 (mod r)`. The LLL/rounded-division implementation is lines 27-82.
2. Set `b1 = P`, `b2 = φ(P)`; negate each base iff its sign Boolean is false; precompute `b1b2 = b1 + b2` (lines 93-103).
3. Construct two `BitIteratorBE::new` iterators over the full four-limb Fr `BigInt` values and zip them (lines 105-110). The magnitudes are half-width by construction, but the executed iterator schedule is still fixed **256 paired bits, MSB first**.
4. Initialize `res = 0` and `skip_zeros = true` (lines 108-109). The code skips exactly the first pair when it is `(false,false)`, sets `skip_zeros = false`, and then processes every remaining pair; it does **not** keep skipping all leading zero pairs (lines 110-114). For BLS12-377 half-width magnitudes, bit 255 is zero, so the executed body schedule is 255 double/choice steps for bits 254 down to 0.
5. Each processed pair first doubles `res`, then adds `b1` for `10`, `b2` for `01`, `b1b2` for `11`, and nothing for `00` (lines 115-121).

The G1 endomorphism changes only projective X by the configured coefficient (`ark-bls12-377-0.5.0/src/curves/g1.rs:69-89`).

### Generic affine loop: G1 and G2 subgroup checks

The subgroup check for each curve passes the four-limb Fr characteristic to `mul_affine`. Neither curve overrides `mul_affine`, so both use `sw_double_and_add_affine` (`ark-ec-0.5.0/src/scalar_mul/mod.rs:31-44`):

- `BitIteratorBE::without_leading_zeros` scans the little-endian limb slice from its most-significant bit and suppresses every zero before the first one (`ark-ff-0.5.0/src/bits.rs:8-18,21-31`).
- Accumulator starts at projective zero.
- For every remaining bit, double first; add the affine base with mixed addition iff the bit is true.
- The characteristic has 253 significant bits, so the reached subgroup-check schedule is 253 iterations, bit 252 through bit 0. Zero is not the subgroup-check scalar.

### G2 ordinary projective multiplication: generic projective loop

BLS12-377 G2 defines `GLVConfig` but its `SWCurveConfig` block (`ark-bls12-377-0.5.0/src/curves/g2.rs:47-99`) does not override `mul_projective`. It therefore uses the default `sw_double_and_add_projective` (`ark-ec-0.5.0/src/scalar_mul/mod.rs:48-61`):

- Four Fr limbs, big-endian bit order, with all leading zero bits suppressed.
- Accumulator starts at projective zero.
- Every retained bit doubles first; a true bit then adds the projective base.
- Zero scalar executes no iterations. A nonzero Fr scalar executes exactly from its highest set bit through bit 0, up to the full 253-bit Fr width.

G2 subgroup checking is the affine loop described above. Thus G2 has two concrete input/addition shapes but one common bit schedule/invariant form.

## Part 2 scope and GLV boundary

Part 2 must prove:

- One fueled invariant for the generic MSB-first loop, instantiated for projective add and affine mixed add, including zero scalar, identity base/accumulator, leading zeros, and all 253 Fr bits.
- The G1 GLV joint-loop invariant for paired bits and the exact one-leading-pair skip behavior.
- Executable scalar-decomposition correctness: after sign interpretation, `k1 + k2·λ ≡ k (mod r)`. This is **in scope for S3-28 Part 2**.
- The mathematical eigenspace fact `φ(P) = λ • P` for prime-subgroup G1 points. This is pinned as a **cited curve-parameter boundary**, not an executable-loop fact: Part 2 should state it explicitly as the GLV precondition/citation boundary and prove the extracted loop conditional on it. It must not silently assume the relation for arbitrary on-curve points.
- A branch-complete wrapper around the generic single-step lemmas before induction, discharging identity, order-two, equal, and opposite branches from the existing S3-26/S3-27 laws. The Part 1 theorems deliberately expose the generic finite/chord premises and do not begin that invariant work.

## Spike and parity

Added to `s3_07_arkworks_fq_spike.rs:1800-1934`:

- `g1_mul_projective_step`, `g1_mul_affine_step`
- `g1_mul_projective`, `g1_mul_affine`
- `g2_mul_projective_step`, `g2_mul_affine_step`
- `g2_mul_projective`, `g2_mul_affine`
- `extract_s3_28`

The loop closures use four little-endian u64 limbs, scan limb 3 to 0 and bit 63 to 0, suppress work until the first set bit, then call the explicit double/conditional-add step on every bit. The projective and affine variants compose the already-proven `g1_*`/`g2_*` closures.

Parity test `scalar_mul_edges_and_512_deterministic_random_vectors_match_arkworks` is at `tests/bls12_377_arkworks_fq_spike.rs:119`. It covers scalar zero, 1, 2, a leading-zero/high-position case, `Fr - 1` at full Fr width, identity bases, and 512 deterministic random `(scalar,G1 point,G2 point)` inputs. All four closures are compared after `into_affine` against arkworks `mul_bigint` represented classes.

Required gate:

```text
cargo test -p ark-ip-proofs --features mac-campaign
37 library tests passed, 2 unrelated ignored
10 Fq/curve spike tests passed (including scalar parity)
2 Fr spike tests passed
0 failed
```

## Extraction

- The installed hax/Aeneas combination warns that Aeneas revision `unknown` differs from expected `e0a1596`.
- This hax version also reports that `-i` is unsupported by the Aeneas backend and ignores it; attempting the full crate therefore reached unrelated application-code translation failures.
- Per the machine-safety instruction, extraction was rerun from a truncated isolation crate containing only the monomorphic spike source. WSL hax/Aeneas succeeded in 12.1 seconds from root `extract_s3_28`; Aeneas accepted the nested outer-limb/inner-bit `while` loops without Rust restructuring.
- Vendored `Ipp/Extracted/ArkworksScalarMulGenerated.lean`, importing the existing G1/G2/Fq/Fq2 graphs and retaining finite `maxHeartbeats = 1000000`. Mechanical repository-runtime normalization removed informational `rust_loop*` attributes, selected bounded-array indexing, mapped scalar limbs to `MacCampaign.U64`, converted shift counts to bounded I32, and rendered low-bit extraction as `% 2`.
- Both the workspace isolation copy and `/tmp/shieldd-s3-28-extract` were removed after vending. The workspace copy was sent to the Windows Recycle Bin and is recoverable.

## Single-step laws

New `Ipp/Extracted/ArkworksScalarMul.lean` defines:

- `DecodedLoopState`
- `decodeG1ProjectiveLoopState`, `decodeG1AffineLoopState`
- `decodeG2ProjectiveLoopState`, `decodeG2AffineLoopState`

Public theorems:

- `decode_g1_mul_projective_step_generic`
- `decode_g1_mul_affine_step_generic`
- `decode_g2_mul_projective_step_generic`
- `decode_g2_mul_affine_step_generic`

Each theorem peels exactly one extracted step, composes `decode_g*_double_generic`, and on a true bit composes the corresponding projective or mixed generic-add theorem. The conclusion is decoded tangent doubling followed by the optional decoded chord addition. Their explicit nonzero-Y and unequal-X premises identify the generic branch; exceptional routing remains Part 2 as recorded above.

## Lean verification, axioms, and memory

All commands used `LEAN_NUM_THREADS=1` and the narrow requested `lake env lean <FILE>` shape. No unguarded `lake build` was run.

- `lake env lean Ipp/Extracted/ArkworksScalarMulGenerated.lean`: PASS; final sampled peak **1,837.2 MiB**.
- Generated olean installation used the same command with explicit `-o`, solely so the hand-authored importer could resolve it.
- `lake env lean Ipp/Extracted/ArkworksScalarMul.lean`: PASS; final sampled peak **1,842.7 MiB**.
- Zero source `sorry`, `admit`, or new axiom declarations.
- Prover/release-gated tests were not run. The requested Rust mac-campaign parity gate, WSL extraction, and guarded focused Lean checks were run.

Axiom audit output for every new public theorem:

```text
depends on axioms: [propext, Classical.choice, Quot.sound]
```
