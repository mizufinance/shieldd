# Formal Verification Plan

This is the canonical roadmap for moving Shieldd from targeted proof artifacts to
end-to-end protocol assurance. Each phase states the proof target, allowed
assumptions, expected artifact, verification gate, and ledger effect.

## Tool Roles

- **Lean / proven-zk** proves semantic circuit composition against extracted
  gnark call graphs and gadget relations.
- **ACL2/Axe** independently proves R1CS/gadget constraints imply executable
  specs over exported constraint systems.
- **Picus** provides under-constraint evidence for decomposed constraint systems;
  it is a bug finder and drift check, not a semantic proof.
- **F*/hax** proves Rust statement, serialization, padding, and transcript seam
  injectivity at executable boundaries.
- **Tamarin** proves symbolic protocol properties under explicit crypto
  idealizations.
- **Alloy** searches bounded ledger state-machine traces for double-spend,
  supply, anchor, and nullifier lifecycle violations.

## Current Status

- `consolidate2x1` is the first proved whole-circuit Lean artifact. Decaf377
  gadget FV is closed for this circuit, including explicit in-circuit
  curve-equation checks for raw affine Decaf representatives that enter as bare
  field elements.
- ACL2/Axe has proved key gadgets over byte-identical gnark exports, including
  bool-select, iszero, Poseidon2, Poseidon hash4, nullifier, and the
  AssetRegistryGap-backed IMT gap gadget.
- Tamarin proves the compliance protocol lemmas symbolically modulo the
  assumption-ledger crypto idealizations.
- F*/hax proves statement-field and SnarkPack boundary facts where stamped
  artifacts exist; SnarkPack algebraic soundness remains paper/Filecoin-backed.
- Transfer, split, shielded ICS-20 withdrawal, cross-track statement binding, and
  ledger/supply state-machine soundness remain open work.

## Phases

| Phase | Goal | Allowed assumptions | Artifact | Gate | Exit / ledger effect |
| --- | --- | --- | --- | --- | --- |
| 1. Consolidate2x1 baseline | Maintain the existing Lean whole-circuit theorem for the smallest note-reshape circuit. | No circuit-local Decaf hypotheses; standard Lean axioms only. | `consolidate2x1-whole-circuit-lean-artifact.txt` and `consolidate2x1-decaf-fv-inventory.txt`. | `bash scripts/check-lean-circuit-fv.sh` (defaults to the `full` tier; CI runs the cheap `stamps` tier on PRs and `full` nightly — see [constraint-system-assurance.md](constraint-system-assurance.md)). | Keep `CONSOLIDATE2X1-LEAN-SOUNDNESS` proved; no decaf gadget FV holes for this circuit. |
| 2. One-circuit FV pattern | Document and stabilize the reusable proof pattern: extraction, segmented gadget bridges, raw Decaf on-curve constraints, wiring transcript fidelity, inventory stamps, and axiom baseline. | Same assumptions as phase 1. | Updated Lean guide comments and artifact checklist in durable docs. | `lake build ShielddGnarkFormal`; `check-lean-circuit-fv.sh` | A repeatable template for the remaining note-reshape circuits. |
| 3. All consolidate and split circuits | Prove every consolidate/split note-reshape circuit with no circuit-local decaf assumptions. | Raw Decaf representatives should be constrained in-circuit; no definitional gadget models. | One stamped Lean artifact per circuit family, or one family-level artifact with separate theorems. | Family wiring-transcript gates plus `lake build ShielddGnarkFormal`. | Retire `ZK-ASSUME-DECAF377-*` rows for consolidate/split families. |
| 4. Transfer circuit after ciphertext design settles | Prove transfer once ciphertext formal design and statement binding are stable. | Tamarin crypto idealizations may remain tracked assumptions; raw Decaf representative validity should be constrained in-circuit. | Transfer Lean artifact plus updated compliance/circuit binding theorem. | Lean family gate, `compliance-symbolic.sh`, statement-field/F* gate. | Promote transfer-side `BALANCE-CONSERVATION`, `NOTE-OWNERSHIP-SPEND-AUTH`, and `CIPHERTEXT-CORRECTNESS` only for proved scope. |
| 5. All circuit families | Extend the Lean artifact pattern to transfer, split, consolidate, and shielded ICS-20 withdrawal. | Only explicitly recorded accepted-language and crypto assumptions. | Stamped whole-circuit artifacts for each family. | `go test ./...`, family Lean gates, soundness invariants. | Circuit property rows may move from `refined`/`composed` to `proved` where artifacts cover the full property. |
| 6. ACL2/Axe complementary R1CS proofs | Keep independent constraint-level proofs for high-risk gadgets and expand where Lean composition reuses gadget specs. | Field prime, exported R1CS fidelity, and toolchain assumptions recorded in artifacts. | Gadget proof artifacts under `crates/core/component/shielded-pool/formal/acl2/`. | Advisory nightly `bash scripts/circuit-gadget-proof-check.sh` until current ACL2 drift is repaired. | Provides independent regression protection; does not alone promote whole-circuit property rows. |
| 7. Picus under-constraint coverage | Run Picus on decomposed gadgets and record whole-circuit timeout/coverage honestly. | Solver completeness is not assumed as proof of soundness. | `circuit-constraint-report.txt`, `circuit-whole-picus-report.txt`, and stamps. | `bash scripts/circuit-constraint-check.sh` in prover CI; bounded whole-family attempts are recorded as evidence artifacts, not hard proof gates. | Under-constraint evidence and bug-finding coverage; no property promotion by itself. |
| 8. Statement and SnarkPack seams | Bridge Rust statement bytes, aggregation transcript, and Lean/F* models so proofs bind the same statement. | Paper-backed Groth16/SnarkPack algebraic soundness until separately mechanized. | F*/hax artifacts, SnarkPack refinement docs, Lean conformance evidence. | SnarkPack formal gate and statement-field artifact gate. | Retire statement/aggregation seam assumptions as executable-boundary proofs land. |
| 9. Alloy ledger audit | Model global ledger transitions: note tree, nullifiers, anchors, balances, deposits, withdrawals, transfer, consolidate, and split. | Bounded Alloy scope only; R1CS and cryptography abstracted to proved/assumed predicates. | Alloy model, scope file, checked assertions, stamped report. | Parse check in cheap CI; bounded `check` in prover CI. | Converts ledger/supply risks into explicit bounded counterexample search and reviewed invariants. |
| 10. Tamarin cross-track audit | Extend symbolic protocol proofs to bind ciphertext, circuit statements, and aggregation outputs to one accepted statement. | Crypto idealizations remain ledgered unless computational proofs replace them. | Extended `.spthy`, assumption ledger updates, stamped Tamarin report. | `bash scripts/compliance-symbolic.sh` | Makes cross-track binding explicit; retires informal statement-map assumptions where covered. |
| 11. Turnstile feasibility | Decide whether to add runtime supply accounting similar to Zcash turnstiles. | None for design analysis; implementation would be consensus protocol work. | Design note with invariants, state transitions, migration impact, and failure visibility properties. | Review gate plus Alloy model update if adopted. | Provides a runtime backstop for supply bugs; not a replacement for formal circuit verification. |

## Promotion Rules

- A property row reaches `proved` only when a stamped artifact proves the exact
  property scope cited by the row.
- Gadget proofs, Picus reports, differential tests, and symbolic proofs are
  evidence for their own layer; they do not promote another layer by implication.
- Assumptions are retired only when the new artifact proves the same obligation
  over the shipping code or a strictly stronger boundary.
- Every heavy prover artifact must have a reproducible command and a SHA-256
  stamp checked by CI.

## Near-Term Work Order

1. Keep `consolidate2x1` green while extracting the reusable Lean proof pattern.
2. Add Lean whole-circuit artifacts for remaining consolidate/split families.
3. Stabilize the ciphertext formal design before transfer FV.
4. Add Alloy ledger modeling in parallel with circuit-family work.
5. Extend Tamarin only after statement/circuit/aggregation bindings are explicit.
6. Keep ACL2/Axe and Picus running as independent constraint-level checks.
7. Decide turnstile feasibility before mainnet-risk assumptions depend on proof
   completeness alone.
