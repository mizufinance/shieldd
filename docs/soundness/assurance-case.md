# Assurance case — shieldd shielded pool

**Status:** frontier-authored skeleton, 2026-07-06; leaf citations resolved by
the executor (Task 13, same date). The tree structure and claim decomposition
are fixed (frontier judgment); the leaf citations are maintained by the executor
and must be kept current: **every edge is either a stamped artifact, a named
ledger row, or an explicit TODO — an edge with none of these is a finding.**
Two edges resolved to evidence gaps (R2.2, R3.2) — logged below, not findings
(missing evidence, not contradicted evidence).

This document answers "is what we prove the right thing, and is it necessary":
a claim not on this tree is unnecessary work; a root claim without an
all-green path is unproven. It is the composition argument across tools — the
per-tool gates check their own layer; only this tree states why the layers
together imply the protocol claims.

Legend: `[PROVED <artifact>]` stamped machine-checked artifact ·
`[ROW <id>]` named assumption/property ledger row · `[TEST <anchor>]` pinned
test (completeness/parity class) · `[TODO <task>]` open edge.

---

Artifact paths are relative to `crates/core/component/`; sha256 prefixes match
the committed `<artifact>.sha256` stamp (the stamp file is the source of truth).

## R1. No inflation — the shielded pool cannot mint value

- R1.1 Every accepted action's statement conserves value *(per-shape)*
  - consolidate2x1: Alloy `NoInflation` UNSAT [PROVED
    compliance/formal/alloy-consolidate2x1-statement-sufficiency-artifact.txt
    sha256:03e5e685…]
    - conditional on model fidelity → A4, and on injectivity rows → A1
  - transfer: Alloy `NoInflation` UNSAT [PROVED
    compliance/formal/alloy-transfer-statement-sufficiency-artifact.txt
    sha256:383646d9…, commit 62f47dfce]
    - conditional on the 8 functional-assumption classes [ROW
      ZK-ASSUME-TRANSFER-DEPLOYED-DLEQ / -SHARED-SECRET / -ACK /
      -POSEIDON-ENCRYPTION / -THRESHOLD-FLAG (5 rows)] and the compliance-gadget
      class row [ROW ZK-ASSUME-TRANSFER-COMPLIANCE-GADGETS]
  - split / ics20 / other shapes: [TODO Task 17 — out of current scope; scope
    boundary stated in the release checklist]
- R1.2 An accepted proof implies the statement's circuit relation holds
  - Whole-circuit soundness, consolidate2x1: capstone composition theorem
    `consolidate2x1_circuit_sound` [PROVED
    shielded-pool/formal/consolidate2x1-whole-circuit-lean-artifact.txt
    sha256:ea76f525…] over the 49/49 coverage gate [PROVED
    shielded-pool/formal/consolidate2x1-coverage-manifest.json sha256:4ef7343e…]
  - No witness slack at the gadget frontier: Picus per-leaf determinism, each
    leaf now bound to its exact `.sr1cs` input (input-fingerprint footer) and
    composed by the machine-checked wiring certificate [ROW — supporting
    evidence; input fingerprints + acyclic wiring cert landed Tasks 11/12
    (commit c72844309); promotion to a property row deferred pending frontier
    review per `reference/picus-composition-note.md`]
  - Compiled artifact = proved artifact: manifest pin `relation_sha256_hex`
    [PROVED shielded-pool/formal/consolidate2x1-coverage-manifest.json
    sha256:4ef7343e…] + deployed VK/`.sr1cs` identity [TODO Task 17 release
    checklist]
- R1.3 The proof system accepts only satisfiable statements
  - Groth16 soundness over BLS12-377 [ROW ZK-ASSUME-GNARK-FRONTEND-BACKEND —
    L0/L5, pinned gnark; A5 class]
  - SnarkPack aggregation implies each per-proof Groth16 check
    [ROW — S1 decision: accepted on Filecoin lineage, removal path = Lean
    mechanization of the aggregated verification equation; see plan §3. **Ledger
    row added by Task 14** on the SnarkPack `formal-handoff.md` side]
  - Aggregate statement = per-circuit statements [TEST
    shielded-pool/src/gnark/artifacts.rs::family_vks_expose_single_statement_hash_public_input
    + ::committed_family_artifacts_carry_verified_hashes — S5 conformance, all 7
    family VKs arity 1]

## R2. No double spend — a note is consumed at most once

- R2.1 Every accepted spend reveals a nullifier deterministically bound to the
  note [PROVED deployedSpec10,
  shielded-pool gnark/lean …/Deployed/Contracts/Consolidate2x1/Seg10.lean,
  composed into the whole-circuit artifact ea76f525…] + Poseidon injectivity
  [ROW ZK-ASSUME-IMT-LEAF-COMMIT]
- R2.2 The chain rejects repeated nullifiers: Alloy `ChainAcceptance` fact in
  both `.als` models transcribes the handler conjunct (nullifier-set insertion
  in `shielded-pool/src/component/note_manager.rs`; enforced by the
  `action_handler/{consolidate,transfer}.rs` check-then-nullify path).
  [TODO Task 13-followup — no *dedicated* repeated-nullifier rejection test
  symbol exists to pin this runtime edge; add one. Logged as evidence gap #1.]
- R2.3 No same-note double spend within one action: Alloy `NoDoubleSpend`
  UNSAT [PROVED both alloy artifacts, 03e5e685… / 383646d9…] — conditional on
  A1, A4
- R2.4 Statement binds the anchor; spent notes exist under a valid root
  [PROVED deployedSpec12,
  …/Deployed/Contracts/Consolidate2x1/Seg12.lean + SCP Merkle specs segs 11/29,
  composed into ea76f525…]

## R3. Spend authorization — only the note owner can spend

- R3.1 rk fields bind spend-auth key material [PROVED rvk segs 13/31, conditional
  spec on-curve(ak) → binding with ak on-curve enforced in-circuit; the RVK
  bridge `decaf377_randomizedVerificationKey_sound` [ROW ZK-ASSUME-DECAF377-RVK]
  is composed into the whole-circuit artifact ea76f525…]
- R3.2 Signature check over rk (spend-auth rdsa) [TODO Task 15-candidate — no
  dedicated spend-auth rdsa assumption row exists; `ZK-ASSUME-BINDING-SIG-DL`
  covers the *binding* signature only, not spend authorization. Add a
  spend-auth-rdsa row. Logged as evidence gap #2.]
- R3.3 Alloy `SpendAuthBound` UNSAT [PROVED both alloy artifacts, 03e5e685… /
  383646d9…]

## R4. Completeness — honest users are never bricked

- Prover round-trip on release artifacts per shape [TEST
  shielded-pool/src/transfer/proof.rs::transfer_hidden_arity_1x1_roundtrip_* +
  gnark/internal/primitives/statement_hash_test.go::TestTransferStatementHashGroth16RoundTrip
  + primitives/phase0_test.go::TestPhase0Groth16Bls12377RoundTrip; per-shape
  round-trip on the *release* artifacts wired into the checklist TODO Task 17]

## R5. Compliance surface (transfer) — ciphertexts are well-formed and
## detection works as specified

- R5.1 Ciphertext/DLEQ gadget semantics: 8 classes [ROW
  ZK-ASSUME-TRANSFER-DEPLOYED-* (5 rows) + ZK-ASSUME-TRANSFER-COMPLIANCE-GADGETS
  — open Lean work, plan Phase H-a]
- R5.2 Encryption security properties [TODO — VCVio game-based or explicit
  assumption row, plan Phase H-b]
- R5.3 consolidate2x1 has no compliance surface [ROW
  MODEL-ASSUME-CONSOLIDATE-COMPLIANCE-EXEMPT — **awaiting human confirmation
  that the exemption is intended protocol design**]

## A. Cross-cutting assumptions (every R-branch is conditional on these)

- A1 Poseidon collision resistance / injectivity idealization [ROW
  ZK-ASSUME-IMT-LEAF-COMMIT + CC-ASSUME-POSEIDON-PARAM-PROVENANCE]
- A2 decaf377 group + compress-to-field injectivity [ROW
  ZK-ASSUME-DECAF377-COMPRESS-TO-FIELD + compress segs PROVED in ea76f525…]
- A3 L0 parameter provenance (Poseidon params, curve constants) [ROW
  CC-ASSUME-POSEIDON-PARAM-PROVENANCE — Phase E memo]
- A4 **Model fidelity**: the Alloy facts transcribe the real circuit/handler
  [TODO Task 15 — `MODEL-ASSUME-ALLOY-FIDELITY` not yet ledgered; mitigated by
  file:symbol citations + reviewed inventories + statement-seam test]
- A5 Toolchain trust: Lean kernel, Picus/cvc5, Alloy, gnark compiler, pinned
  versions [ROW ZK-ASSUME-GNARK-FRONTEND-BACKEND + `toolchain.toml` pins; S3
  pattern; toolchain-pin CI enforcement TODO Task 16]

---

## Evidence gaps (surfaced by Task 13 leaf resolution — the tree doing its job)

These are edges the tree *claims* but for which no backing artifact/row/test was
found. Missing evidence, not contradicted evidence — tracked, not findings.

- **Gap #1 (R2.2)** — no dedicated test pins "the chain rejects a repeated
  nullifier". The enforcement exists in the handler path
  (`note_manager.rs` nullifier-set insertion; `action_handler/*.rs`
  check-then-nullify) and is transcribed by the Alloy `ChainAcceptance` fact,
  but there is no `#[test]` asserting a second spend of the same nullifier is
  rejected. *Fix:* add that handler test and cite it here.
- **Gap #2 (R3.2)** — no spend-auth rdsa assumption row. The spend-authorization
  signature over `rk` (decaf377-rdsa) is relied on but only the *binding*
  signature has a row (`ZK-ASSUME-BINDING-SIG-DL`). *Fix:* add a spend-auth-rdsa
  assumption row (Task 15 is the natural home) and cite it here.

## Maintenance rule

Any commit that flips a manifest verdict, adds/removes a ledger row, or
changes a statement encoding MUST update the affected edge here in the same
commit. `check-soundness-invariants.sh` does not (yet) parse this file; until
it does, the executor audits the tree at the end of every session (adopted as
the session-end routine per Task 13).
