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

## C3 — ACL2/Axe gadget theorems (the only route to `proved`)

C3 proves a gadget's R1CS *implies* an ACL2 spec predicate (Axe lifts the R1CS,
the Axe Prover discharges `R1CS ⟹ spec`; PFCS gives compositional scaling). Only
this reaches `proved`, scoped to the gadget — it never promotes a whole-circuit
property row. Heavy, nightly CI only. Toolchain pinned in
[toolchain.toml](../../crates/core/component/shielded-pool/formal/toolchain.toml)
`[constraints]`. Full plan: `.claude/plans/soundness-phase-c3-acl2-axe-gadget-theorems.md`.

**C3.0 (landed) — toolchain pin + R1CS bridge.** The field is pinned to
BLS12-377 Fr and asserted equal to gnark's `ScalarField()` (a mismatch makes
proofs vacuous). `gnarkctl export-r1cs --circuit gadget-* --format axe-json`
emits a named-wire R1CS: the prime, a wire manifest (`ONE`, public, secret, and
internal wires — so the spec can name `Out`/`In0`/…), and constraints as sparse
`(A,B,C)` prime-field combinations. Bridge fidelity is enforced by
`TestAxeExportFidelity*`
([gadgets_axe_fidelity_test.go](../../tools/gnark/internal/circuits/gadgets_axe_fidelity_test.go)):
it solves each gadget in gnark, then checks `A(W)·B(W) == C(W)` for every
exported constraint on gnark's own witness `W`, plus wire-count and
constraint-count agreement. A silent converter bug (wrong coeff, wrong wire,
dropped constraint) fails the test rather than proving the wrong system.

**C3.1 (landed) — the first certified gadget theorem.**
[gadget-bool-select](../../tools/gnark/internal/circuits/gadgets_constraint.go)
isolates the routing primitive `Valid = Select(Cond, IfTrue, IfFalse)` for
boolean `Cond` — the algebraic core of Rust's
`is_regulated.select(is_exact_match, is_in_gap)`. Its R1CS (3 constraints, 6
wires) is hand-modelled in
[acl2/bool-select-proof.lisp](../../crates/core/component/shielded-pool/formal/acl2/bool-select-proof.lisp)
and the theorem `BOOL-SELECT-R1CS-IMPLIES-SPEC` (`R1CS ⟹ select-spec`) is
certified in ACL2 (parallel `acl2p` image + `arithmetic-5`). The model is tied to
the *actual compiled gadget* wire-for-wire by `TestBoolSelectAcl2ModelParity`
([gadgets_acl2_parity_test.go](../../tools/gnark/internal/circuits/gadgets_acl2_parity_test.go)),
so the proof cannot drift onto a different circuit.
[scripts/circuit-gadget-proof-check.sh](../../scripts/circuit-gadget-proof-check.sh)
re-runs parity → certify → stamp in the nightly `provers` job, and a stamped
[bool-select-proof-artifact.txt](../../crates/core/component/shielded-pool/formal/acl2/bool-select-proof-artifact.txt)
gates the `proved` row. Scope honesty: booleanity of `Cond` (constraint c0) is a
hypothesis, not yet derived from `Cond*(1-Cond)=0` (needs the prime-fields
`primep` book).

The gadget-scoped ledger
[circuit-gadget-proofs.md](../../crates/core/component/shielded-pool/formal/circuit-gadget-proofs.md)
carries the `proved` rows. It is the only ledger whose rows may hold `proved`,
and a `proved` gadget row never promotes a whole-circuit property row —
`REGULATED-STATUS-SOUNDNESS` *cites* `gadget-bool-select` but stays `refined`.

**C3.2–C3.4 (future) — full Poseidon spec + proof, nullifier composition, c0
booleanity closure via prime-fields.** `gadget-poseidon2`/`gadget-nullifier`
remain Picus under-constraint *evidence* until an Axe lift of the full
permutation (276/311 constraints) lands; that needs the Kestrel Axe books and is
multi-week, CI-bound.
