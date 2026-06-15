# Constraint-System Assurance Strategy

No checked-in artifact currently verifies a *whole* transaction circuit. Picus
timed out on the smallest family (consolidate2x1), the expected outcome for an
SMT under-constraint checker on Poseidon + Merkle + Decaf377 in one system. The
strategy is therefore layered: a gnark-native baseline over the whole circuit
(evidence), certified theorem-prover work at **decomposed gadget scope**, and a
hard gate that allows a circuit property to become `proved` only when it cites a
stamped whole-circuit artifact.

This is heavy prover work, so the `soundness-formal` workflow is tiered by cost.
The Lean whole-circuit FV gate (`scripts/check-lean-circuit-fv.sh`) runs in two
modes:

- **`stamps` (pull requests)** — hygiene (no `sorry`/`admit`/`axiom`), stamp
  integrity (every pinned source sha256 matches the committed file), and
  Go↔Lean wiring-transcript fidelity. It builds only the zero-import transcript
  module, so it needs no Mathlib cache and never elaborates the multi-GB
  whole-circuit proofs. Because the stamps are produced by running `full`
  locally, a stale stamp means a circuit or proof source changed without being
  re-verified, and the PR goes red.
- **`full` (nightly cron + `workflow_dispatch`)** — everything `stamps` checks,
  plus a clean-room `lake build` of the proof modules and the `#print axioms`
  baseline that proves the theorems are axiom-clean. This is the source of truth
  and is too expensive (and memory-heavy) to run per PR.

Nightly additionally runs the heavy prover stack (Tamarin, F*/hax, Picus, ACL2).
The ACL2/Axe certification leg is advisory while its generated proof drift is
being repaired; Lean FV (`full`), Picus, Tamarin, F*/hax, and invariant stamp
drift remain hard failures for the jobs that run them.

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
| `gadget-bool-select` | `Select(Cond, IfTrue, IfFalse)` | `REGULATED-STATUS-SOUNDNESS` routing primitive | 3 |
| `gadget-iszero` | zero test | IMT exact-match primitive | 3 |
| `gadget-poseidon2` | Poseidon377 two-input hash | hashing primitive | 276 |
| `gadget-nullifier` | nullifier derivation | `NO-DOUBLE-SPEND` | 311 |
| `gadget-imt-gap` | AssetRegistryGap `Select(IsRegulated, exactMatch, inGap)` comparator | `REGULATED-STATUS-SOUNDNESS` | 5568 |

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
`REGULATED-STATUS-SOUNDNESS`. Picus keeps rows at `refined`/`composed`; C3
ACL2/Axe gadget theorems reach `proved` only in the gadget ledger, and property
rows still require whole-circuit composition artifacts.

## Follow-Up Track C

| Tool | Disposition | Reason |
| --- | --- | --- |
| Picus | Landed at gadget scope (C2, CI-only). | Runs on the decomposed gadget `.sr1cs` in the nightly `provers` job; whole-circuit recorded `undischarged-by-design`. Source: [Picus package docs](https://pkg.go.dev/github.com/Veridise/Picus). |
| Ecne | Follow-up feasibility spike. | Ecne targets R1CS weak/witness verification, but Shieldd needs an export and variable-labeling bridge from gnark artifacts. Source: [0xPARC Ecne overview](https://0xparc.org/writings/ecne). |
| ACL2/Axe | Landed for bool-select, iszero, Poseidon2, nullifier, and AssetRegistryGap-backed `gadget-imt-gap` semantic gadget proofs. | Useful for theorem-prover-grade R1CS proofs of small high-value gadgets such as Poseidon, nullifier, or encryption components. Source: [Formal Verification of Zero-Knowledge Circuits](https://arxiv.org/abs/2311.08858). |
| LLZK / ZK Vanguard | Research alternative only if gnark can lower into LLZK. | ZK Vanguard analyzes LLZK IR, not gnark source directly. Source: [ZK Vanguard docs](https://docs.veridise.tools/zkvanguard). |
| Circomspect / Coda | Not applicable unless Circom circuits are introduced. | Shieldd production circuits are gnark; Circom source analyzers do not run on this codebase. |

## C3 — ACL2/Axe gadget theorems (the only route to `proved`)

C3 proves a gadget's R1CS *implies* an ACL2 spec predicate (Axe lifts the R1CS,
the Axe Prover discharges `R1CS ⟹ spec`; composition uses the sparse-R1CS
constraint-list `append` idiom). Only
this reaches `proved`, scoped to the gadget — it never promotes a whole-circuit
property row. Heavy, nightly advisory CI only until the current generated-proof
drift is repaired. Toolchain pinned in
[toolchain.toml](../../crates/core/component/shielded-pool/formal/toolchain.toml)
`[constraints]`. Full plan: `.claude/plans/soundness-phase-c3-acl2-axe-gadget-theorems.md`.

**C3.0 (landed) — toolchain pin + R1CS bridge.** The field is pinned to
BLS12-377 Fr and asserted equal to gnark's `ScalarField()` (a mismatch makes
proofs vacuous). `gnarkctl export-r1cs --circuit gadget-* --format axe-json`
emits a named-wire R1CS: the prime, a wire manifest (`ONE`, public, secret, and
internal wires — so the spec can name `Out`/`In0`/…), and constraints as sparse
`(A,B,C)` prime-field combinations. `--format axe-lisp` exports the same data as
Kestrel sparse R1CS constants for `lift-r1cs`/`verify-r1cs`. Bridge fidelity is
enforced by
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
certified in ACL2 (parallel `acl2p` image + arithmetic and BLS12-377 prime
books). The theorem derives `Cond` booleanity from c0
`Cond*(1-Cond)=0` over BLS12-377 Fr; it is no longer a hypothesis. The model is
tied to the *actual compiled gadget* wire-for-wire by
`TestBoolSelectAcl2ModelParity`
([gadgets_acl2_parity_test.go](../../tools/gnark/internal/circuits/gadgets_acl2_parity_test.go)),
so the proof cannot drift onto a different circuit.
[scripts/circuit-gadget-proof-check.sh](../../scripts/circuit-gadget-proof-check.sh)
re-runs parity -> certify -> stamp in the nightly `provers` job as advisory
evidence while ACL2 drift is open, and a stamped
[bool-select-proof-artifact.txt](../../crates/core/component/shielded-pool/formal/acl2/bool-select-proof-artifact.txt)
gates the `proved` row.

**C3.2 (landed) — semantic Poseidon/nullifier gadgets plus comparator checkpoints.** The same gate now regenerates
the checked-in
[gadget-poseidon2-r1cs.lisp](../../crates/core/component/shielded-pool/formal/acl2/generated/gadget-poseidon2-r1cs.lisp)
from gnark, regenerates/certifies the generated
[poseidon377-spec.lisp](../../crates/core/component/shielded-pool/formal/acl2/generated/poseidon377-spec.lisp)
ACL2 spec against the existing Poseidon vectors, and certifies the semantic
[poseidon2-proof.lisp](../../crates/core/component/shielded-pool/formal/acl2/poseidon2-proof.lisp)
and
[nullifier-proof.lisp](../../crates/core/component/shielded-pool/formal/acl2/nullifier-proof.lisp)
books. Poseidon opens the generated `poseidon377-pow17` spec into the 5-mul R1CS
S-box chains; nullifier specializes the Poseidon hash3 spec at the fixed
nullifier domain. The same gate certifies `gadget-iszero` and the
AssetRegistryGap-backed `gadget-imt-gap` output proof over the real
5568-constraint export.

The gadget-scoped ledger
[circuit-gadget-proofs.md](../../crates/core/component/shielded-pool/formal/circuit-gadget-proofs.md)
carries the `proved` rows. It is the only ledger whose rows may hold `proved`,
and a `proved` gadget row never promotes a whole-circuit property row —
`REGULATED-STATUS-SOUNDNESS` *cites* `gadget-imt-gap` but stays `refined`.

**Future semantic proof — whole-circuit composition.** `gadget-imt-gap` is proved
at gadget scope; `REGULATED-STATUS-SOUNDNESS` still needs a stamped
whole-circuit artifact composing the gadget theorem with the Merkle path and
Poseidon path checks.
A circuit property row moves to `proved` only with a stamped whole-circuit
artifact; the invariant gate rejects gadget artifacts as substitutes for that
property-level claim.

**Lean wiring fidelity.** The `consolidate2x1` Lean whole-circuit artifact uses a
Go Define wiring transcript, not a full R1CS transcript comparison. The transcript
records the ordered call-site composition of proved leaves and decaf gadget
bridges with stable semantic wire names, then byte-compares that output
against the Lean model transcript in `scripts/check-lean-circuit-fv.sh`. This
catches dropped calls, miswired inputs, missing equality/equivalence checks, and
statement-field order drift without re-materializing the full Poseidon/Merkle
constraint system.

The Decaf377 boundary for this artifact is now constraint-derived in Lean:
compress, assert-equivalent, encode-to-curve, RVK, DTK, scalar ladders, Edwards
closure, and net-balance composition are bridged against extracted gadgets. The
whole-circuit theorem still takes explicit protocol-layer hypotheses naming the
accepted prime-order subgroup and raw witness membership for bare decaf field
coordinates; those are accepted-language obligations, not Lean axioms. The staged
path from this single-circuit artifact to family-wide and protocol-wide coverage
is tracked in
[formal-verification-plan.md](formal-verification-plan.md).

**M6 Lean scaffold.** A Lean 4 project now lives in
[tools/gnark/lean](../../tools/gnark/lean). The vendored
`gnark-lean-extractor` port emits supported BoolSelect, IsZero, and Nullifier
models, and `lake build ShielddGnarkFormal` checks the extracted files,
Poseidon bridge leaves, Decaf377 gadget bridges, and the stamped
`consolidate2x1` whole-circuit composition theorem.
