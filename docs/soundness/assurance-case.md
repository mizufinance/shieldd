# Assurance case — shieldd shielded pool

**Status:** frontier-authored skeleton, 2026-07-06. The tree structure and
claim decomposition are fixed (frontier judgment); the leaf citations are
maintained by the executor (see EXECUTOR-HANDOFF Task 13) and must be kept
current: **every edge is either a stamped artifact, a named ledger row, or an
explicit TODO — an edge with none of these is a finding.**

This document answers "is what we prove the right thing, and is it necessary":
a claim not on this tree is unnecessary work; a root claim without an
all-green path is unproven. It is the composition argument across tools — the
per-tool gates check their own layer; only this tree states why the layers
together imply the protocol claims.

Legend: `[PROVED <artifact>]` stamped machine-checked artifact ·
`[ROW <id>]` named assumption/property ledger row · `[TEST <anchor>]` pinned
test (completeness/parity class) · `[TODO <task>]` open edge.

---

## R1. No inflation — the shielded pool cannot mint value

- R1.1 Every accepted action's statement conserves value *(per-shape)*
  - consolidate2x1: Alloy `NoInflation` UNSAT [PROVED alloy-consolidate2x1-statement-artifact]
    - conditional on model fidelity → A4, and on injectivity rows → A1
  - transfer: Alloy transfer instantiation [PROVED alloy artifact, commit 62f47dfce]
    - conditional on the 8 functional-assumption classes [ROW ZK-ASSUME-TRANSFER-DEPLOYED-*]
  - split / ics20 / other shapes: [TODO — out of current scope; scope boundary
    must be stated in the release checklist]
- R1.2 An accepted proof implies the statement's circuit relation holds
  - Whole-circuit soundness, consolidate2x1: capstone composition theorem
    [PROVED Capstone.lean + coverage 49/49 gate]
  - No witness slack at the gadget frontier: Picus per-leaf determinism,
    composed by argument [ROW — supporting evidence only; promotion blocked on
    Tasks 11/12 (input hashes + wiring certificate)]
  - Compiled artifact = proved artifact: manifest pin `relation_sha256_hex`
    [PROVED coverage gate] + deployed-artifact identity [TODO Task 17 release
    checklist]
- R1.3 The proof system accepts only satisfiable statements
  - Groth16 soundness over BLS12-377 [ROW — L0/L5 assumption, pinned gnark]
  - SnarkPack aggregation implies each per-proof Groth16 check
    [ROW — S1 decision: accepted on Filecoin lineage, removal path = Lean
    mechanization of the aggregated verification equation; see plan §3]
  - Aggregate statement = per-circuit statements [PROVED S5 conformance tests:
    VK arity 1, statement parity]

## R2. No double spend — a note is consumed at most once

- R2.1 Every accepted spend reveals a nullifier deterministically bound to the
  note [PROVED nullifier segs / deployedSpec10 + Poseidon injectivity ROW]
- R2.2 The chain rejects repeated nullifiers [TEST action_handler tests;
  Alloy `ChainAcceptance` fact cites the Rust conjuncts]
- R2.3 No same-note double spend within one action: Alloy `NoDoubleSpend`
  UNSAT [PROVED alloy artifacts, both shapes] — conditional on A1, A4
- R2.4 Statement binds the anchor; spent notes exist under a valid root
  [PROVED deployedSpec12 + SCP Merkle specs 11/29]

## R3. Spend authorization — only the note owner can spend

- R3.1 rk fields bind spend-auth key material [PROVED rvk segs 13/31 —
  conditional spec: on-curve(ak) → binding; ak on-curve enforced in-circuit]
- R3.2 Signature check over rk [TEST + ROW — decaf377-rdsa assumption row]
- R3.3 Alloy `SpendAuthBound` UNSAT [PROVED alloy artifacts]

## R4. Completeness — honest users are never bricked

- Prover round-trip on release artifacts per shape [TEST — named obligation,
  plan §1; wired into release checklist TODO Task 17]

## R5. Compliance surface (transfer) — ciphertexts are well-formed and
## detection works as specified

- R5.1 Ciphertext/DLEQ gadget semantics: 8 classes [ROW
  ZK-ASSUME-TRANSFER-DEPLOYED-* — open Lean work, plan Phase H]
- R5.2 Encryption security properties [TODO — VCVio game-based or explicit
  assumption row, plan Phase H]
- R5.3 consolidate2x1 has no compliance surface [ROW
  MODEL-ASSUME-CONSOLIDATE-COMPLIANCE-EXEMPT — **awaiting human confirmation
  that the exemption is intended protocol design**]

## A. Cross-cutting assumptions (every R-branch is conditional on these)

- A1 Poseidon collision resistance / injectivity idealization [ROW]
- A2 decaf377 group + compress-to-field injectivity [ROW + compress segs PROVED]
- A3 L0 parameter provenance (Poseidon params, curve constants) [ROW — Phase E memo]
- A4 **Model fidelity**: the Alloy facts transcribe the real circuit/handler
  [ROW MODEL-ASSUME-ALLOY-FIDELITY — TODO Task 15; mitigated by file:symbol
  citations + reviewed inventories + statement-seam test]
- A5 Toolchain trust: Lean kernel, Picus/cvc5, Alloy, gnark compiler, pinned
  versions [ROW class — S3 pattern extended to all tools; TODO Task 14/16]

---

## Maintenance rule

Any commit that flips a manifest verdict, adds/removes a ledger row, or
changes a statement encoding MUST update the affected edge here in the same
commit. `check-soundness-invariants.sh` does not (yet) parse this file; until
it does, the executor audits the tree at the end of every session.
