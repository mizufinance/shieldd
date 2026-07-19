# S3-28 part 2e report

## STATUS

GREEN PARTIAL at the explicitly permitted boundary: faithful Rust GLV spike,
parity, scoped extraction, and executed joint-loop refinement are complete.
The scalar-decomposition proof and final `k • P` corollary remain; no theorem
claims either result yet.

No existing generated file, `ArkworksScalarMulInvariant.lean`, or part-2c/2d
proof was edited. There are no `sorry`, `admit`, or new axioms in the new
modules. No commit was made.

## Non-executed generic G1 stand-in

The incorrect `g1_mul_projective` generic double-and-add loop was deleted from
the Rust spike, its parity call was replaced by the actual GLV path, and
`extract_s3_28` no longer includes it. No `valid_g1_mul_projective` corollary
was added.

`g1_mul_projective_step` remains only because the already-landed generated
graph and part-2c step proofs reference that elementary operation. Its Rust
documentation now labels it explicitly as a non-executed generic reference
step and points to the GLV loop as the ordinary BLS12-377 G1 path.

The reached generic operations retained by `extract_s3_28` are G1 affine
multiplication (subgroup checking) and G2 projective/affine multiplication.

## Faithful GLV spike and parity

New Rust code rooted at `extract_s3_28_glv` contains:

- the pinned Fr modulus, LLL basis `[[a + 1, 1], [-1, a]]`, and configured G1
  endomorphism coefficient;
- fixed-width multiplication, long division, strict half-up rounding, and
  sign/magnitude decomposition matching arkworks' `scalar_decomposition`;
- `b1 = P`, `b2 = phi(P)`, sign-conditional projective negations, and
  `b1b2 = b1 + b2`;
- a 256-pair MSB-first loop using a separately extracted scalar-bit helper;
- the arkworks skip behavior exactly: the first pair is the magnitude-forced
  `(false, false)`, it is skipped, and the remaining 255 pairs execute double
  plus `10 -> b1`, `01 -> b2`, `11 -> b1b2`, `00 -> no add`.

The parity test compares both decomposition signs/magnitudes directly with
`GLVConfig::scalar_decomposition` and multiplication after `into_affine` with
`G1Projective::mul_bigint`, which dispatches to the BLS12-377 GLV override.
Coverage includes scalar zero, one, two, a leading-zero case, `Fr - 1`, the G1
generator, the identity base, and 512 deterministic random `(scalar, G1)`
pairs. The existing G1 affine and G2 loop parity remains in the same test.

`cargo test -p ark-ip-proofs --features mac-campaign` is green:

```text
library:     37 passed; 2 ignored
spike suite: 10 passed
Fr suite:     2 passed
doc tests:    0 failed
```

## Extraction

The final graph was extracted under WSL from a temporary dependency-free copy
of the spike because a full-workspace retry stopped in the unrelated
`metrics-0.24.1` crate on Rust error E0521. The successful scoped command was:

```text
cargo hax into -v --output-dir /root/shieldd-s3-28-glv aeneas-lean \
  --charon-args=--start-from=crate::extract_s3_28_glv --lakefile
```

Charon and Aeneas completed; Aeneas generated `Types.lean` and `Funs.lean` in
3.08 seconds. Hax printed the existing warning that it expected Aeneas
revision `e0a1596` but found an unknown revision. Both temporary copies were
deleted after vending.

The adapted output is
`Ipp/Extracted/ArkworksScalarMulGlvGenerated.lean`. It imports the existing G1
graph, contains the complete closed decomposition/endomorphism/joint-loop/root
graph, supplies only the bounded runtime operations needed by that output, and
sets finite `maxHeartbeats 2000000` and `maxRecDepth 2048`.

## Executed joint-loop refinement

New proof modules:

- `ArkworksScalarMulGlvStep.lean`: branch-complete refinement of the executed
  joint step through the landed G1 wrappers.
- `ArkworksScalarMulGlvSchedule.lean`: the exact paired 256-bit schedule,
  magnitude-forced leading `00`, and connection to `runJoint_256_skip`.
- `ArkworksScalarMulGlvLoopModel.lean`: extracted scalar-bit refinement,
  extracted-body/model equality, symbolic decreasing measure, and structural
  `LoopResult` conversion.
- `ArkworksScalarMulGlvLoop.lean`: no-skip tail induction and concrete
  256-pair G1 execution corollaries.

The loop proof uses `Aeneas.loopResult_of_eq`, structural induction on the
finite `Aeneas.LoopResult`, and `bitIndex.val` as the symbolic decreasing
measure. It does not unroll 256 iterations.

Public theorem surface:

```text
valid_g1_glv_joint_step
glvPairs_length
glvPairs_succ
glvPairs_256_head_false
runJoint_glvPairs_256_skip
extracted_glv_bit
extracted_g1_glv_scalar_bit
glvJointBody_decreases
glvJointExtractedBody_eq_model
glvJointLoopResult_to_model
glvJointLoopResult_valid_false
valid_g1_glv_joint_loop_256
valid_g1_glv_joint_loop_value
```

`valid_g1_glv_joint_loop_256` concludes that the extracted loop represents
`runJoint 256 (glvPairs k1 k2 256) b1Point b2Point 0` under valid base states
and the two `< 2^255` magnitude bounds. `valid_g1_glv_joint_loop_value` then
uses `runJoint_256_skip` to conclude the two decoded magnitude actions.

## Guarded Lean verification and peak memory

Every command was run from
`crates/crypto/proof-aggregation/formal/lean-ipp`, one at a time with
`LEAN_NUM_THREADS=1`, as an exact-file `lake env lean <FILE>` compilation
(some dependency-installing repetitions additionally supplied `-o`). No run
approached the guardian threshold and no process was killed.

| File | Result | Peak RSS |
| --- | --- | ---: |
| `ArkworksScalarMulGlvGenerated.lean` | green | 1854.0 MiB |
| `ArkworksScalarMulGlvStep.lean` | green | 1850.2 MiB |
| `ArkworksScalarMulGlvSchedule.lean` | green | 1850.1 MiB |
| `ArkworksScalarMulGlvLoopModel.lean` | green | 1854.8 MiB |
| `ArkworksScalarMulGlvLoop.lean` | green | 1856.8 MiB |

No prover/release-gated tests were run. Verification comprised the guarded
per-file Lean checks and the full requested Rust test command above.

## Axiom audit

Every new public theorem has an in-file `#print axioms`. The final loop output
was:

```text
'Ipp.Extracted.ArkworksScalarMul.glvJointLoopResult_valid_false' depends on axioms: [propext, Classical.choice, Quot.sound]
'Ipp.Extracted.ArkworksScalarMul.valid_g1_glv_joint_loop_256' depends on axioms: [propext, Classical.choice, Quot.sound]
'Ipp.Extracted.ArkworksScalarMul.valid_g1_glv_joint_loop_value' depends on axioms: [propext, Classical.choice, Quot.sound]
```

The step, schedule, bit-helper, body-equality, and `LoopResult` conversion
theorems reported only subsets of `[propext, Classical.choice, Quot.sound]`.
No `sorryAx`, native-decision axiom, or new named axiom remains.

## Exactly what remains

1. Prove the extracted fixed-width decomposition, including reduction,
   384-bit rounded division, products, subtraction, and sign interpretation,
   satisfies `signed(k1) + signed(k2) * lambda = k (mod r)`. The proof must
   also derive the two `< 2^255` magnitude bounds consumed by the loop theorem.
2. Refine the extracted endomorphism and sign-conditional base negations to
   decoded Mathlib points, construct the validity proof for `b1b2`, and compose
   them with `valid_g1_glv_joint_loop_value`.
3. Under an explicit prime-subgroup premise and the existing
   `GlvEigenPrecondition` cited boundary, combine the signed decomposition with
   `runJoint_eigenvalue` to prove the final executed
   `g1_glv_mul_projective`/`extract_s3_28_glv` output represents `k • P`.

There is deliberately no partial final corollary and no unconditional use of
the eigenspace fact.
