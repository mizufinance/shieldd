# Constraint-System Assurance Strategy

No tool formally verifies a *whole* transaction circuit — not Picus, not Ecne,
not ACL2. That is a fundamental scaling limit (Poseidon + Merkle + Decaf377 in
one SMT system), not a setup gap: a Picus spike on the smallest family
(consolidate2x1) timed out, the expected outcome. Serious projects (Zcash,
Aztec) verify **gadgets**, not whole circuits. The strategy is therefore
layered: a gnark-native baseline over the whole circuit (evidence), and
automated/formal tooling only at **decomposed gadget scope**.

This is heavy prover work. It runs in the `soundness-formal` CI `provers` job
(nightly cron + `workflow_dispatch`), guarded `if: github.event_name !=
'pull_request'`. It does **not** run before merging a PR — pre-merge only the
cheap deterministic ledger gate runs. Same cadence as the snarkpack nightly.

## C0 — gnark-native baseline (whole circuit, evidence)

The gnark-native baseline compiles production circuit families, asserts their
constraint/public/secret/internal variable counts, checks valid representative
witnesses, rejects targeted mutations, and records the public input seam through
Rust/Go statement-field differential tests. These checks are tests and drift
evidence, not formal under-constraint proofs. Rows stay `refined`.

## C1 — Gadget decomposition (landed)

The soundness-critical gadgets are isolated as minimal `frontend.Circuit`
wrappers in [gadgets_constraint.go](../../tools/gnark/internal/circuits/gadgets_constraint.go),
each exporting its own small `.sr1cs` via `gnarkctl export-r1cs --circuit
gadget-*`:

| Gadget label | Gadget | Gates | Constraints |
| --- | --- | --- | --- |
| `gadget-poseidon2` | Poseidon377 two-input hash | hashing primitive | 276 |
| `gadget-nullifier` | nullifier derivation | `NO-DOUBLE-SPEND` | 311 |
| `gadget-imt-gap` | `Select(IsRegulated, exactMatch, inGap)` comparator | `REGULATED-STATUS-SOUNDNESS` | 5066 |

The derived output (hash / nullifier) is a witness wire so Picus has a signal
whose uniqueness it must decide. Encryption/DLEQ and balance-commitment gadgets
are the next decomposition targets.

## C2 — Picus under-constraint at gadget scope (CI-only)

[circuit-constraint-check.sh](../../scripts/circuit-constraint-check.sh) runs
Picus (`--solver z3`) on the *decomposed gadgets*, emitting a SHA-256-stamped
`circuit-constraint-report.txt` under the shielded-pool `formal/` tree.
Whole-circuit families are recorded as `undischarged-by-design`, not retried.

**Status honesty:** a Picus-clean gadget is under-constraint *evidence* for that
gadget — necessary, not sufficient for the semantic property. There is no
theorem connecting "no under-constraint found" to `NO-DOUBLE-SPEND` /
`REGULATED-STATUS-SOUNDNESS`. Picus keeps rows at `refined`/`composed`; only a
C3 ACL2/Axe gadget theorem reaches `proved`, scoped to that gadget.

## Follow-Up Track C

| Tool | Disposition | Reason |
| --- | --- | --- |
| Picus | Landed at gadget scope (C2, CI-only). | Runs on the decomposed gadget `.sr1cs` in the nightly `provers` job; whole-circuit recorded `undischarged-by-design`. Source: [Picus package docs](https://pkg.go.dev/github.com/Veridise/Picus). |
| Ecne | Follow-up feasibility spike. | Ecne targets R1CS weak/witness verification, but Penumbra needs an export and variable-labeling bridge from gnark artifacts. Source: [0xPARC Ecne overview](https://0xparc.org/writings/ecne). |
| ACL2/Axe | Deep follow-up for selected gadgets. | Useful for theorem-prover-grade R1CS proofs of small high-value gadgets such as Poseidon, nullifier, or encryption components. Source: [Formal Verification of Zero-Knowledge Circuits](https://arxiv.org/abs/2311.08858). |
| LLZK / ZK Vanguard | Research alternative only if gnark can lower into LLZK. | ZK Vanguard analyzes LLZK IR, not gnark source directly. Source: [ZK Vanguard docs](https://docs.veridise.tools/zkvanguard). |
| Circomspect / Coda | Not applicable unless Circom circuits are introduced. | Penumbra production circuits are gnark; Circom source analyzers do not run on this codebase. |

## Artifact Prerequisites

Deterministic `.sr1cs` export (`gnarkctl export-r1cs`) and the SHA-256 stamped
constraint report exist (C1/C2). The remaining prerequisite for C3 is per-gadget
public/private/output variable *labels* carried into the export so an ACL2/Axe
spec can name wires.
