# SnarkPack Lean Architecture

This package contains the handwritten Lean model, extracted Rust semantics,
cryptographic reductions, and shipping composition for SnarkPack. It describes
the current architecture; claim status belongs to
[`verification-manifest.json`](../snarkpack/verification-manifest.json) and its
generated [`formal-handoff.md`](../snarkpack/formal-handoff.md).

## Result

The publication root is
`Ipp.ShippingFullAdaptiveEndToEnd.shipping_full_adaptive_end_to_end_fv`. It
proves shipping-prover completeness and adaptive invalid-acceptance soundness
for ordered bundles through `Ipp.Goal`, conditional on the manifest's named
assumptions. `DEPLOYED-SRS-SOUNDNESS` is the only open claim and prevents an
instantiated deployment-security level.

## Normative model

- `Ipp/Algebra.lean` defines the abstract field, groups, pairing, MSM, and
  explicit cryptographic predicates.
- `Ipp/Model.lean` defines statements, proofs, transcripts, fold equations,
  KZG checks, and the final PPE.
- `Ipp/SnarkPackV1.lean` is the local v1 acceptance specification.
- `Ipp/Goal.lean` is the independent ordered per-proof Groth16 goal.
- `Ipp/SnarkPackV1Refinement.lean` relates v1 acceptance to that goal shape.

The Filecoin and Arkworks lineages are provenance only. They do not define the
local theorem target.

## Algebraic soundness

`RandomizerLift`, `Gipa`, `Kzg`, and `Composition` establish the algebraic
reductions. The `Fs*` modules define the Fiat-Shamir game, bad events, replay
tree, query bounds, and multi-statement fork loss. `S1.lean` and the concrete
BLS12-377 reduction modules package the quantitative implication.

All cryptographic security properties are explicit propositions or theorem
parameters. The package declares no project axioms to stand in for KZG, GIPA,
hash, or setup security.

## Bytes and concrete arithmetic

The canonical wire, serializer, decoder, and BLS12-377 modules connect concrete
representations to the abstract model. Handwritten refinement modules may
import checked-in generated Aeneas output under `Ipp/Extracted/`; generated
files themselves are immutable.

F* owns extraction-friendly statement, framing, wrapper, validation, and
preflight byte contracts. Lean owns their composition with the v1 and shipping
models. Translator and selected Arkworks effect semantics remain exactly the
assumptions listed in the manifest.

## Shipping composition

The shipping proof proceeds in this order:

1. `ShippingStatementProjection` and `ShippingPreflightProjection` construct
   the exact family, VK, SRS, rows, statement, wrapper, and decoded proof facts.
2. `ShippingV1`, `ShippingRealVerifier`, and extracted adapter modules refine an
   accepted production call to `SnarkPackV1.Accepts`.
3. `ShippingToGoal` and `ShippingConcreteToGoal` derive the ordered independent
   goal and fixed-call quantitative bound.
4. `ShippingHash*`, `ShippingAdaptive*`, and `ShippingMultiStatement*` connect
   production SHA-256 and Blake2b calls to the shared adaptive oracle games.
5. The bundle modules compose the extracted planner, fail-closed reducer,
   concurrent transport boundary, and per-call results.
6. `ShippingFullAdaptiveEndToEnd` combines prover completeness, verifier
   soundness, and bundle composition without publishing a numerical level.

The final inequality keeps SHA-256, Blake2b-ROM, modular-reduction, KZG, GIPA,
query-budget, and multi-statement fork losses separate.

## Trust and deployment boundary

The generated handoff is the complete trust ledger. In broad categories it
retains:

- hash and reduction security;
- KZG/GIPA security and adversary query bounds;
- Aeneas and hax/F* translation preservation;
- selected Arkworks serialization, decoding, pairing, KZG, and prover effects;
- narrow Rust Tokio and immutable-result transport semantics; and
- well-formed proving material.

The development SRS exposes its trapdoors and cannot support a negligible
production KZG claim. A production ceremony and authenticated artifact must
close `DEPLOYED-SRS-SOUNDNESS` before any deployment-security number is stated.

## Change discipline

- Change the normative model only for an intentional protocol change.
- Change handwritten refinement modules when production semantics change.
- Regenerate extracted files; never patch them by hand.
- Register every publication root and dependency in the manifest.
- Run the narrowest affected single-threaded Lean build, then the manifest and
  axiom audits.
- Regenerate the handoff and theorem graph only from the validated manifest.

Historical S1/S2/S3 work orders and session reports were removed after their
results were absorbed into the theorem modules and manifest. Git history
retains the development log.
