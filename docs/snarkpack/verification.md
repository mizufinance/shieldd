# SnarkPack Verification

This document explains the verification stack for the design in
[design.md](design.md). Claim status comes only from
[`verification-manifest.json`](https://github.com/mizufinance/shieldd-formal/blob/main/crates/crypto/proof-aggregation/formal/snarkpack/verification-manifest.json);
the generated [formal handoff](https://github.com/mizufinance/shieldd-formal/blob/main/crates/crypto/proof-aggregation/formal/snarkpack/formal-handoff.md)
contains the complete claim and assumption tables.

## Current result

The conditional end-to-end theorem is proved:
`Ipp.ShippingFullAdaptiveEndToEnd.shipping_full_adaptive_end_to_end_fv`
connects the shipping Rust prover and bundle verifier to the independent
`Ipp.Goal` specification for completeness and adaptive soundness.

The manifest contains 40 claims:

- 37 proved;
- 2 tested (`BOUNDED-CHALLENGE-SAMPLER` and `V1-BYTE-LOCK`); and
- 1 open (`DEPLOYED-SRS-SOUNDNESS`).

The theorem is conditional on 27 narrowly stated cryptographic,
implementation, translator, and query-bound assumptions. The sole open claim
records that no production SRS ceremony is registered. This does not weaken or
silently promote the conditional theorem, but it prevents an instantiated
deployment-security claim.

No numerical security level is published. Any future instantiation must retain
separate SHA-256, Blake2b-ROM, modular-reduction, KZG-V, KZG-W, GIPA-root,
GIPA-product, adaptive-query, and iterated multi-statement fork-loss terms.

## Evidence layers

The stack uses three kinds of evidence:

- **Proofs** establish the specification, Rust refinement, byte framing,
  arithmetic reductions, and final composition under named assumptions.
- **Tests and independent implementations** falsify implementation bugs and pin
  stable bytes, failure behavior, and interoperability.
- **Gates** ensure that evidence is fresh for the exact source, toolchain, and
  dependency graph being shipped.

An assumption is not a failed proof: it is an explicit external postcondition
with an owner and closure route. An `open` claim is a real unfinished claim. The
only permitted open row in the conditional publication gate is the exact
unregistered deployment-SRS row above.

## Algebra

### What must hold

`Ipp.SnarkPackV1` specifies the RIPP/GIPA/TIPA/KZG acceptance equations and fold
order. `Ipp.Goal` separately states the ordered per-proof Groth16 goal.
`Ipp.S1.invalid_goal_fork_bound_le_extraction_advantage` gives the quantitative
fork implication, and the shipping composition proves that accepted production
calls reach that model.

### ALG-I1 — Differential oracle agreement

Production aggregate acceptance must agree with individual and legacy-batch
Groth16 verification across every supported family and count. This catches
integration mistakes, but the paths share Arkworks lineage and therefore are
not an independent specification.

### ALG-I2 — Independent reference path

The non-published `proof-aggregation-reference` crate implements a slow prover
and verifier without importing production SnarkPack internals. It is an
independent acceptance and interoperability oracle, not the normative protocol
definition.

### ALG-I3 — Two-way interoperability

Production proofs are accepted by the reference verifier, and reference proofs
are accepted by the production verifier. The slow lane covers every registered
family and declared count band. Production owns byte stability separately in
TXN-I4.

## Transcript

### TXN-M2 — Transcript completeness

Every challenge uses:

`domain || len(stage) || stage || challenge_context[32] || u64_le(nonce) || messages`

The context is
`SHA256(CHALLENGE_CONTEXT_DOMAIN || statement_digest)`, where
`statement_digest = SHA256(STATEMENT_DIGEST_DOMAIN || canonical_statement)`.
The canonical statement binds the protocol version, family, SRS identifier, VK
digest, counts, padding rule, and ordered padded public inputs. Stage messages
bind the proof data:

| Stage | Ordered messages |
| --- | --- |
| `aggregate.randomizer` | `com_a`, `com_b`, `com_c` |
| `tipp-mipp.x0` | `r`, `com_a`, `com_b`, `com_c`, `ip_ab`, `agg_c` |
| `tipp-mipp.gipa.round` | prior challenge; left AB/C commitments; right AB/C commitments |
| `tipp-mipp.final-bridge` | last GIPA challenge; final commitment keys; final A/B/C messages |
| `tipp-mipp.kzg` | final-bridge challenge; final commitment keys |

The formal v1 and Fiat-Shamir models are normative for this order. Fixtures and
the reference implementation detect drift but do not define the transcript.

### TXN-M3 — Statement and padding binding

The statement uses repeat-final padding to the next power of two. The verifier
reconstructs the padded rows, checks `real_count` and `padded_count`, and verifies
the first `real_count` rows in caller order. A one-proof aggregate has
`padded_count = 1` and no synthetic row.

The verifier obtains the VK from the closed proof-family registry rather than
from the bundle. Wire decoding rejects unknown family identifiers before domain
construction. Preflight compares the exact selected VK/SRS facts, statement
digest, wrapper, decoded proof, row shape, and canonical padding before backend
verification.

### TXN-I1 — Boundary proof (hax → F*)

F* proves the extraction-friendly Rust statement encoding, framing, wrapper
cap, count and arity validation, padding canonicality, preflight order, family
routing, and challenge-preimage contracts. Encoding injectivity does not imply
hash collision resistance; SHA-256 remains a named cryptographic assumption.
Checker evidence is source-digest-pinned and becomes stale after relevant
changes.

### TXN-I2 — Rejection regressions

Targeted tests reject invalid counts, arity, padding, SRS identity, VK digest,
wrapper digest or size, proof layout, and family routing. These tests pin cheap
failure paths; they are not substitutes for the general proofs.

### TXN-I3 — Typed framing and production coupling

Lean proves injective typed serialization for every challenge message and
composes it with the stage, context, and nonce frame. Generated extraction
equations and deployed hash executions connect the accepted production trace to
the adaptive shared-oracle model.

### TXN-I4 — Byte baselines

Committed, version-tagged fixtures pin aggregate-proof bytes and exact prover
and verifier challenge traces. Any intentional byte change must follow X3.

### TXN-I5 — Fuzzing

Stable proptests and libFuzzer targets cover wrapper decode, preflight,
aggregate-proof decode, sidecar decode, bundle shape, and proposal validation.
The invariant is bounded acceptance or error: no panic, unbounded allocation,
or expensive work before cheap shape checks. The committed minimized corpus and
recorded campaign are in
[fuzz-corpus-baseline.md](../../crates/crypto/proof-aggregation-fuzz/fuzz-corpus-baseline.md).

## Cross-cutting gates

### X1 — Performance and DoS asymmetry

`just snarkpack-dos-gate` checks release-mode latency and proves malformed
inputs reject materially faster than a valid aggregate. Thresholds live in
[bench-thresholds.md](../../crates/bench/bench-thresholds.md).

### X2 — Assumption and claim ledger

The manifest lists every theorem root, dependency, assumption, audit module,
allowed axiom, and evidence fingerprint. The handoff and
[theorem graph](https://github.com/mizufinance/shieldd-formal/blob/main/crates/crypto/proof-aggregation/formal/snarkpack/theorem-dependency-graph.md)
are generated from it. Missing, stale, duplicate, or unexpected evidence fails
closed.

### X3 — Optimization byte-lock

An optimization must preserve production proof and transcript bytes or version
the protocol explicitly:

| Change | Required treatment |
| --- | --- |
| Internal computation, same bytes and semantics | Keep the current version; all affected refinement and parity gates pass. |
| Wire encoding | Bump `AGGREGATE_PROTOCOL_VERSION`, regenerate and review both TXN-I4 fixtures, and run slow two-way interoperability. |
| Transcript input or order | Treat as a protocol and proof change, not an optimization. |

The contributor workflow is in
[optimization-playbook.md](../../crates/crypto/proof-aggregation/optimization-playbook.md).

## Explicit boundary

The conditional theorem retains assumptions for SHA-256 and Blake2b security,
query budgets, KZG and GIPA reductions, translator preservation, selected
Arkworks serialization and effect semantics, Rust async/immutable result
transport, and a well-formed proving SRS. The generated handoff states every
postcondition exactly; this summary intentionally does not duplicate them.

`DEPLOYED-SRS-SOUNDNESS` remains open until a production ceremony, complete SRS
artifact, authenticated registry entry, and verification evidence are pinned.
The public-trapdoor development SRS cannot discharge that claim. Deployment
work may remain deferred, but the gap must stay visible and no production
security level may be inferred from the conditional result.

## CI policy

Shieldd pull requests run runtime checks only. The `shieldd-formal` repository
pins an exact Shieldd commit and owns impact analysis, Lean/F* work, reusable
attestations, and scheduled full verification.

Generated Lean, F* evidence, the handoff, and the theorem graph are never edited
as substitutes for their sources. Full CI runs extraction, Lean audits, F*,
Rust/reference parity, slow interoperability, fuzzing, and release DoS checks.
Local formal work uses that repository's bounded single-flight runner.
