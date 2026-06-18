# Soundness-Hardening Roadmap (forward-looking)

Open formal-verification work only, in priority order. Each focus area names the
tools, the concrete deliverable, and the assumptions it must retire or audit.
Status of already-landed layers lives in the assumption ledger and the
per-component `formal/` artifacts, not here.

## Focus 1 — DLEQ proof soundness + full assumption review

Tools: Lean/VCVio, Alloy, Tamarin. The DLEQ Fiat-Shamir knowledge-soundness
proof is mechanized; this focus is an end-to-end **soundness + assumption
audit** across the three layers that touch DLEQ, not new construction unless the
audit surfaces a gap.

- **Lean/VCVio:** re-confirm `dleq_fs_knowledge_soundness` `#print axioms` is
  clean modulo the two residuals (`CC-ASSUME-POSEIDON-RO`,
  `CC-ASSUME-DECAF377-PRIME-ORDER-GROUP`); confirm the `1/2^250` bound and the
  challenge embedding match `crypto.rs`.
- **Tamarin:** confirm `compliance-active.spthy` imports DLEQ soundness as
  `ProofSound` faithfully — i.e. the symbolic `ProofSound` restriction is exactly
  the property the Lean proof establishes, with no stronger symbolic assumption
  smuggled in.
- **Alloy:** confirm the designated-decryptability / committee state machine does
  not assume a DLEQ property the computational proof does not deliver.
- **Assumption review:** every DLEQ-touching row in the ledger has a status, a
  removal path, and no `assumed` row silently covers a property a higher layer
  treats as `proved`. The two residuals are the irreducible base — document them
  as such; no removal path short of a different cryptographic assumption.
- **ACP ↔ Orbis interaction model (REQUIRED, not yet done):** the current DLEQ
  proofs are *local* — they show the relation is sound in isolation. They do
  **not** model the protocol interaction where ACP and Orbis exchange/derive the
  DLEQ-bound values (and the `derive_capability_scalar` / `derive_compliance_scalar`
  byte-parity that makes the PRE math cancel — see
  `crates/core/component/compliance/src/crypto.rs`). A game-based/algebraic proof
  of the bare relation cannot see replay, reflection, or party-confusion attacks
  across the ACP/Orbis boundary. **Tamarin must model the multi-party ACP↔Orbis
  message flow** before Focus 1 is "done." Tamarin + maude are installed and the
  base `compliance-symbolic.sh` gate passes; the remaining work is authoring the
  ACP↔Orbis multi-party model, not tooling.



## Focus 2 — gnark trust boundary: full-constraint extraction

Motivated by the 2024–2025 halo2/Zcash library-soundness bug, which lived in the
proving *library*, not the application circuit — exactly the layer our current
proofs trust. Today we prove: (1) no under-constraint (Picus) and (2) the
*extracted* R1CS matches its spec (Lean), but the wiring transcript only checks
call-site wiring, not the full constraint set, so a gnark **frontend** miscompile
could slip through.

- **Extract the complete constraint system** (not just the wiring transcript) for
  each whole circuit and prove the full R1CS in Lean. A frontend bug then surfaces
  as a Lean proof that no longer matches the Go spec. This is the
  "full R1CS transcript proof" the whole-circuit artifacts list under
  `known_limitations`.
- **Pin + advisory-track gnark** and record `gnark frontend+backend trusted at vX`
  as an explicit ledger row.
- **Backend crypto (Groth16/Plonk, KZG, pairing, prover Fiat-Shamir)** stays a
  named cryptographic trust assumption — not feasibly self-proved. The Zcash
  lesson is that real exploits cluster in layers (1)–(frontend), which *are* in
  reach.

## Deferred (not in current focus)

- `shielded_ics20_withdrawal_circuit.go` whole-circuit proof — same whole-circuit
  Lean pattern as the landed circuits, scheduled after the gnark-boundary work.
- Proof-system crypto (Groth16 / SnarkPack backend soundness) stays assumed in the
  ledger; see Focus 2 for the frontend-fidelity portion that *is* in reach.

## Verification bar (per scheduled item)

- Lean: `lake build` green; `#print axioms` shows no new kernel axioms beyond any
  named residual being retired; no `sorry` / `admit` / `axiom`.
- New artifacts stamped (source + artifact SHA-256) and wired into the nightly
  `provers` job.
- Every retired/added assumption-ledger row has a status and a removal path.

## Tool roles

- **Lean / proven-zk** — semantic circuit composition against extracted gnark call
  graphs and gadget relations (the whole-circuit `*_circuit_sound` theorems) and
  the DLEQ Fiat-Shamir knowledge-soundness proof (`lean-dleq`, VCVio).
- **Picus** — under-constraint / determinacy evidence on decomposed constraint
  systems; a bug finder and drift check, not a semantic proof.
- **ACL2/Axe** — independent R1CS/gadget constraint proofs over exported systems.
- **F\*/hax** — Rust statement, serialization, padding, and transcript-seam
  injectivity at executable boundaries.
- **Tamarin** — symbolic protocol properties under explicit crypto idealizations
  (installed; base `compliance-symbolic.sh` gate passes — see Focus 1 for the
  ACP↔Orbis model still to author).
- **Alloy** — bounded ledger/state-machine search for double-spend, supply, anchor,
  and nullifier-lifecycle violations (installed; four models pass).

## Promotion rules

- A property row reaches `proved` only when a stamped artifact proves the exact
  property scope the row cites.
- Gadget proofs, Picus reports, differential tests, and symbolic proofs are
  evidence for their own layer; they do not promote another layer by implication.
- Assumptions retire only when a new artifact proves the same obligation over the
  shipping code or a strictly stronger boundary.
- Every heavy prover artifact has a reproducible command and a SHA-256 stamp
  checked by CI.

## Long-range phase backlog

Beyond the active Focus areas, the full assurance arc (not all scheduled):

| Phase | Goal | Exit / ledger effect |
| --- | --- | --- |
| All consolidate/split circuits | Whole-circuit Lean proof per note-reshape family, no circuit-local decaf assumptions. | Retire `ZK-ASSUME-DECAF377-*` for those families. |
| All circuit families | Extend the artifact pattern to split + shielded ICS-20 withdrawal. | Circuit property rows move toward `proved` where artifacts cover the full property. |
| ACL2/Axe complementary R1CS | Keep independent constraint-level proofs for high-risk gadgets. | Independent regression protection; no whole-circuit promotion by itself. |
| Statement & SnarkPack seams | Bind Rust statement bytes, aggregation transcript, and Lean/F\* models to one statement. | Retire statement/aggregation seam assumptions as boundary proofs land. |
| Alloy ledger audit | Model global ledger transitions (note tree, nullifiers, anchors, balances, deposits/withdrawals). | Bounded counterexample search + reviewed invariants for supply risks. |
| Tamarin cross-track audit | Bind ciphertext, circuit statements, and aggregation to one accepted statement; model ACP↔Orbis (Focus 1). | Retires informal statement-map assumptions where covered. |
| Turnstile feasibility | Decide whether to add Zcash-style runtime supply accounting. | Runtime backstop for supply bugs; not a replacement for circuit FV. |
