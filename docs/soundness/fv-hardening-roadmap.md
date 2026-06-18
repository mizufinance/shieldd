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

## Focus 2 — consolidate2x1: one circuit completely verified, all assumptions retired

Make the single `note_reshape` (consolidate2x1) circuit fully closed: Picus
first (no under-constraint), then Lean (relation soundness with no open
assumptions on this circuit).

- **Picus (under-constraint):** drive the **whole consolidate2x1 circuit** to a
  determinacy verdict, not just leaf gadgets. **Capacity wall:** the FF solver
  currently times out on the full circuit; only leaf gadgets pass, with
  ladders/composites `safe-by-composition`. Decision required: accept
  `safe-by-composition` as "complete," or invest in making the whole-circuit run
  terminate (decomposition strategy / solver tuning). Resolve this before
  claiming the circuit "completely verified by Picus."
- **Lean — retire every remaining assumption on this circuit:**
  - `ZK-ASSUME-DECAF377-TWO-TORSION-INVARIANCE` — prove the extracted
    `CompressToField` relation invariant under `(x,y) ↦ (−x,−y)`, upgrading
    `DecafEquivalent` (equality up to the 2-torsion `T=(0,−1)`) to genuine
    statement-field equality. Self-contained algebra, no new circuit surface.
    Highest-leverage Lean task.
  - Decaf377 group-law axiom removal — extract the gnark group-law subcircuits
    behind the `RVK` / `DTK` / `net-balance` bridges and replace the named-group
    rows with proved ones. This bridge library is shared, so closing it here also
    unblocks Focus 3.
- **Exit criterion:** Picus verdict resolved (per the decision above);
  `consolidate2x1_circuit_sound` `#print axioms` clean with no decaf
  assumption-ledger rows left in `assumed` for this circuit.

## Focus 3 — transfer: one circuit completely verified, all assumptions retired

Same bar as Focus 2, applied to `transfer_circuit.go` (which today has **no**
`*_circuit_sound` proof).

- **Picus:** whole-circuit determinacy verdict for the transfer circuit (same
  capacity decision as Focus 2 applies).
- **Lean:** build `transfer_circuit_sound` reusing the consolidate2x1 bridge
  library completed in Focus 2 (group-law, compression, assert-equivalent,
  encode-to-curve, RVK, DTK, net-balance sub-proofs), with its own stamped
  whole-circuit artifact + Go↔Lean wiring transcript.
- **Assumption review:** every transfer-specific ledger row has a status and
  removal path.

## Deferred (not in current focus)

- `shielded_ics20_withdrawal_circuit.go` whole-circuit proof — same pattern as
  Focus 3, scheduled after transfer is closed.
- Proof-system crypto (Groth16 / SnarkPack soundness) stays assumed in the
  ledger; no in-repo mechanization planned.

## Verification bar (per scheduled item)

- Lean: `lake build` green; `#print axioms` shows no new kernel axioms beyond any
  named residual being retired; no `sorry` / `admit` / `axiom`.
- New artifacts stamped (source + artifact SHA-256) and wired into the nightly
  `provers` job.
- Every retired/added assumption-ledger row has a status and a removal path.
