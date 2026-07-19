# S3-28 part 2 — scalar-loop algebraic invariant boundary

## STATUS

**PARTIAL — coherent GREEN algebraic boundary.**

Landed the field-independent fueled MSB-first double-and-add invariant, its
253-bit specialization, the paired-bit GLV invariant, the exact 256-pair
schedule with the one leading `(false,false)` skip, conditional eigenvalue
substitution, and G1/G2 Mathlib-point adapter statements. Also recorded the
G1 GLV eigenspace fact as a cited prime-subgroup-only assumption in
`formal/snarkpack/formal-handoff.md`.

Did not claim the extracted closures refine these algebraic loops. The
branch-complete executed-step wrappers, scalar-array/bit-value bridge,
executable scalar decomposition, and final executed G1/G2 scalar-action
corollaries remain.

No generated Lean or Rust file was edited. No commit was created.

## Design call

The reusable invariant belongs above the coordinate fields. New file
`Ipp/Extracted/ArkworksScalarMulInvariant.lean` defines two fuel-recursive
models over an arbitrary `AddCommMonoid`:

- `runBits fuel bits base accumulator` processes the MSB-first list until fuel
  or input is exhausted. Its value model is `msbValue fuel bits`.
- `runJoint fuel pairs b1 b2 accumulator` performs one double and the exact
  GLV choice-add per pair. Its value model is `jointValue fuel pairs`.

Both invariants account for a nonidentity initial accumulator:

```text
runBits = 2^processed • accumulator + prefix • base

runJoint = 2^processed • accumulator
           + prefix1 • b1 + prefix2 • b2

processed = min fuel schedule.length
```

The proofs induct only on symbolic fuel and peel one symbolic head. They do
not unroll 253 or 255 steps and do not expand Fq2 coordinates. Identity start
then removes the scaled-accumulator term. Leading-zero suppression and the
GLV skip are stated specifically at identity start: processing such a bit with
a nonidentity accumulator would double it, whereas the executed control flow
skips the step entirely.

I stopped before the executed-loop induction because the S3-26/27 exceptional
identity refinement lemmas preserve decoded represented classes but do not all
export output canonicity. Canonicity is required by the next generic formula
step. The correct next unit is therefore to add public canonical-preservation
laws for zero-Z double and identity additions, then build one typed valid-state
step wrapper covering identity/order-2/equal/opposite/generic branches. It
would be unsound to carry canonicity implicitly or to use only the existing
generic unequal-X laws.

## Landed theorem interface

Generic bit loop:

- `runBits_invariant`
- `runBits_zero`
- `runBits_no_fuel`
- `runBits_empty`
- `runBits_suppress_leading_false`
- `runBits_253`

GLV joint loop:

- `runJoint_invariant`
- `runJoint_skip_leading_false_false`
- `runJoint_256_skip`
- `GlvEigenPrecondition`
- `runJoint_eigenvalue`

S2-facing algebraic adapters:

- `g2_scalar_action_adapter`
- `g1_glv_joint_action_adapter`

These adapters are intentionally algebraic, not executed-closure adapters.
They supply the target theorem shape for the remaining S2 connection without
mislabeling the missing branch/canonicity and extracted-loop work as proved.

## Coverage within this partial

- Scalar zero: empty/suppressed schedule and identity start are explicit.
- Identity base and accumulator: covered by the arbitrary-additive-monoid
  invariant and its identity-start corollary.
- Leading zeros: explicit single-head suppression lemma, reusable repeatedly.
- Full Fr width: `runBits_253` specializes the generic theorem to 253 bits.
- Exact G1 GLV control shape: `runJoint_256_skip` proves that the leading
  `(false,false)` pair is skipped and the remaining 255 pairs implement
  double/choice-add with `10 -> b1`, `01 -> b2`, `11 -> b1+b2`, `00 -> 0`.

The identity `msbValue 253 bits = scalar mod 2^253` for the concrete four-limb
array is not yet proved; neither is the analogous pair of concrete GLV
magnitudes. Those belong in the extracted schedule bridge.

## GLV cited boundary

`GlvEigenPrecondition inPrimeSubgroup phi lambda` requires
`phi(P) = lambda • P` only when `P` satisfies the supplied prime-subgroup
predicate. It does not assert this for arbitrary on-curve points.

For BLS12-377 G1, the recorded arkworks 0.5.0 value is:

```text
lambda = 8444461749428370424248824938781546531284005582649182570233710176290576793600
```

The cited parameter/implementation locations are
`ark-bls12-377-0.5.0/src/curves/g1.rs:69-94` and the GLV relation contract in
`ark-ec-0.5.0/src/scalar_mul/glv.rs:10-22`. The handoff ledger now has the
named assumption row `assume.bls12377-g1-glv-eigenspace`.

`runJoint_eigenvalue` proves only the conditional substitution into the joint
loop. It introduces no axiom and cannot be applied without an explicit
eigenvalue equality.

## Verification and peak memory

Only guarded, single-threaded, single-file checks were used. No `lake build`
was run.

Final full-file command:

```text
LEAN_NUM_THREADS=1 C:\Users\acyrn\.elan\toolchains\leanprover--lean4---v4.30.0\bin\lake.exe env lean Ipp/Extracted/ArkworksScalarMulInvariant.lean
```

Result: **PASS**. The captured audit run took 41.6 seconds; an immediately
preceding full-file run with 200 ms RSS sampling took 42.6 seconds and reached
an individual `lean`/`lake` working-set peak of **1,860.1 MiB**. The guardian
did not kill any worker.

No isolation `.lean` copies were created, so none remain under
`Ipp/Extracted/`.

## Axiom audit

The new Lean source contains zero `sorry`, `admit`, or axiom declarations.
The complete public audit output was:

```text
'Ipp.Extracted.ArkworksScalarMul.runBits_invariant' depends on axioms: [propext, Classical.choice, Quot.sound]
'Ipp.Extracted.ArkworksScalarMul.runBits_zero' depends on axioms: [propext, Classical.choice, Quot.sound]
'Ipp.Extracted.ArkworksScalarMul.runBits_no_fuel' does not depend on any axioms
'Ipp.Extracted.ArkworksScalarMul.runBits_empty' does not depend on any axioms
'Ipp.Extracted.ArkworksScalarMul.runBits_suppress_leading_false' depends on axioms: [propext]
'Ipp.Extracted.ArkworksScalarMul.runBits_253' depends on axioms: [propext, Classical.choice, Quot.sound]
'Ipp.Extracted.ArkworksScalarMul.runJoint_invariant' depends on axioms: [propext, Classical.choice, Quot.sound]
'Ipp.Extracted.ArkworksScalarMul.runJoint_skip_leading_false_false' depends on axioms: [propext]
'Ipp.Extracted.ArkworksScalarMul.runJoint_256_skip' depends on axioms: [propext, Classical.choice, Quot.sound]
'Ipp.Extracted.ArkworksScalarMul.GlvEigenPrecondition' does not depend on any axioms
'Ipp.Extracted.ArkworksScalarMul.runJoint_eigenvalue' depends on axioms: [propext, Classical.choice, Quot.sound]
'Ipp.Extracted.ArkworksScalarMul.g2_scalar_action_adapter' depends on axioms: [propext, Classical.choice, Quot.sound]
'Ipp.Extracted.ArkworksScalarMul.g1_glv_joint_action_adapter' depends on axioms: [propext, Classical.choice, Quot.sound]
```

Every new public theorem and both adapter corollaries are audited above. Only
`propext`, `Classical.choice`, and `Quot.sound` occur.

## Remaining S3-28 part 2 work

1. Export canonical-preservation laws for the exceptional identity paths in
   the hand-authored G1/G2 layers.
2. Define one typed valid executed-loop state and prove branch-complete
   projective-add and affine-mixed-add step wrappers using all S3-26/27 laws.
3. Use `Aeneas.Std.loop.spec_decr_nat` for the extracted nested limb/bit loops,
   with symbolic limb/bit measures, and connect the four-limb bit schedule to
   `msbValue = scalar mod 2^width` (including zero and full 253-bit cases).
4. Land the executed G2 projective and affine corollaries and the ordinary G1
   affine/subgroup-check corollary.
5. Extract/model the executed G1 GLV wrapper if needed, connect its exact
   256-pair skip schedule to `runJoint`, and prove the LLL/rounded-division
   decomposition after sign interpretation:
   `k1 + k2*lambda ≡ k (mod r)`.
6. Combine decomposition with the explicit prime-subgroup eigencondition to
   obtain the final executed G1 `k • P` corollary.

Prover/release-gated tests were not run. No Rust changed, so the Part 1 Rust
parity gate was not rerun in this partial.
