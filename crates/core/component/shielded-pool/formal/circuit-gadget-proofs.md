# Circuit Gadget Proofs (Phase C / Track C)

Gadget-scoped `R1CS ⟹ spec` theorems. This is the **only** ledger whose rows may
hold `proved`, and a `proved` row here is scoped to a single decomposed gadget —
it never promotes a whole-circuit property row in
[circuit-soundness-properties.md](circuit-soundness-properties.md). Property rows
may *cite* a gadget proof as one supporting input while staying
`refined`/`composed`.

Status model (gadget rows):

- `proved` — a checked-in, certified `R1CS ⟹ spec` theorem over the **actual**
  gnark-exported constraints (parity test ties the model to the compiled gadget),
  with a stamped proof artifact. Enforced by the gate.
- `evidence` — Picus under-constraint clean at gadget scope: necessary, not
  sufficient. Recorded in
  [circuit-constraint-report.txt](circuit-constraint-report.txt).
- `decomposed` — gadget isolated and exported, no theorem yet.
- `planned` — spec/obligation identified, gadget not yet decomposed.

| Gadget label | Spec proved | Theorem | Artifact | Cited by | Status |
| --- | --- | --- | --- | --- | --- |
| `gadget-bool-select` | `Valid = Select(Cond, IfTrue, IfFalse)` for boolean `Cond` — the algebraic core of `is_regulated.select(is_exact_match, is_in_gap)` | `BOOL-SELECT-R1CS-IMPLIES-SPEC` in [acl2/bool-select-proof.lisp](acl2/bool-select-proof.lisp) | [acl2/bool-select-proof-artifact.txt](acl2/bool-select-proof-artifact.txt) | `REGULATED-STATUS-SOUNDNESS` | `proved` |
| `gadget-poseidon2` | claimed output equals `Poseidon377(domain, in0, in1)` | — | — | `CIPHERTEXT-CORRECTNESS`, `NO-DOUBLE-SPEND` | `evidence` |
| `gadget-nullifier` | claimed nullifier equals `Poseidon377(nk, stateCommitment, position)` | — | — | `NO-DOUBLE-SPEND` | `evidence` |
| `gadget-imt-gap` | `Select(IsRegulated, exactMatch, inGap) == 1` comparator | — | — | `REGULATED-STATUS-SOUNDNESS` | `evidence` |

## Scope honesty

- `gadget-bool-select` proves the **routing primitive** (a satisfying R1CS
  assignment forces `Valid` to the spec-selected branch). It is the end-to-end
  certified anchor for the C3 methodology: a real `R1CS ⟹ spec` proof over the
  byte-for-byte gnark export (parity asserted by
  `TestBoolSelectAcl2ModelParity`). Booleanity of `Cond` from constraint c0 is
  taken as a hypothesis; closing that needs the prime-fields `primep` book.
- `gadget-poseidon2`/`gadget-nullifier` reach `proved` only with an Axe lift of
  the full Poseidon permutation (276/311 constraints) against a Poseidon spec —
  multi-week, Axe + Kestrel community books, CI-bound. Until then they are Picus
  under-constraint **evidence**, not proofs.
- No row here promotes a whole-circuit property. `REGULATED-STATUS-SOUNDNESS`
  stays `refined` even though it now cites a `proved` gadget, because the
  whole-circuit comparator wiring (16-deep Merkle path, full-field 256-bit
  comparators) is outside the proved gadget's scope.

## Reproduction

`bash scripts/circuit-gadget-proof-check.sh` runs the parity test, certifies the
ACL2 proof with the parallel `acl2p` image, and checks the stamped artifact.
Heavy prover work — it runs in the soundness-formal CI `provers` job, not on PRs.
