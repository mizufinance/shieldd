# Constraint-System Assurance Strategy

No checked-in Picus artifact currently verifies a *whole* transaction circuit.
Bounded whole-family Picus attempts on `consolidate2x1`, `split1x4`, and
`split1x8` all ended without a solver verdict before the process watchdog
terminated them; the stamped attempt report is
`crates/core/component/shielded-pool/formal/circuit-whole-picus-report.txt`.
That is the expected outcome for an SMT under-constraint checker on Poseidon +
Merkle + Decaf377 in one system. The strategy is therefore layered: a
gnark-native baseline over the whole circuit (evidence), certified theorem-prover
work at **decomposed gadget scope**, and a hard gate that allows a circuit
property to become `proved` only when it cites a stamped whole-circuit artifact.

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
wrappers in [gadgets_constraint.go](../../tools/gnark/internal/circuits/gadgets_constraint.go)
and [decaf_gadgets.go](../../tools/gnark/internal/circuits/decaf_gadgets.go),
each exporting its own `.sr1cs` via `gnarkctl export-r1cs --circuit gadget-*`:

| Family | Gadget label | Gadget | Constraints |
| --- | --- | --- | --- |
| Poseidon377 | `gadget-poseidon-hash1` | one-input hash | 236 |
| Poseidon377 | `gadget-poseidon2` | two-input hash | 276 |
| Poseidon377 | `gadget-poseidon-hash4` | four-input hash / quad path layer | 356 |
| Poseidon377 | `gadget-poseidon-hash6` | six-input note commitment hash | 436 |
| Poseidon377 | `gadget-poseidon-hash7` | seven-input statement hash | 476 |
| Merkle / IMT | `gadget-nullifier` | nullifier derivation | 311 |
| Merkle / IMT | `gadget-imt-gap` | AssetRegistryGap comparator | 5296 |
| Merkle / IMT | `gadget-iszero` | zero test | 3 |
| Merkle / IMT | `gadget-quad-path-1` | quad path depth 1 | 373 |
| Merkle / IMT | `gadget-quad-path-2` | quad path depth 2 | 744 |
| Merkle / IMT | `gadget-quad-path-4` | quad path depth 4 | 1486 |
| Merkle / IMT | `gadget-quad-path-16` | quad path depth 16 | 5938 |
| Merkle / IMT | `gadget-quad-path-24` | quad path depth 24 | 8906 |
| Decaf377 | `gadget-decaf-assert-equivalent` | coset-equivalence with point validity | 11 |
| Decaf377 | `gadget-decaf-compress-to-field` | compression mirror | 2214 |
| Decaf377 | `gadget-decaf-encode-to-curve` | encode-to-curve mirror | 1132 |
| Decaf377 | `gadget-decaf-edwards-add` | Edwards add with point validity | 20 |
| Decaf377 | `gadget-decaf-edwards-double` | Edwards double with point validity | 15 |
| Decaf377 | `gadget-decaf-edwards-neg` | Edwards negation with point validity | 10 |
| Scalar / keys | `gadget-canonical-fq-bits` | canonical Fq bit decomposition | 1090 |
| Scalar / keys | `gadget-bool-select` | `Select(Cond, IfTrue, IfFalse)` | 3 |
| Scalar / keys | `gadget-ivk-mod-r` | IVK reduction modulo r | 1403 |
| Scalar / keys | `gadget-scalar-mul-le-251` | 251-bit little-endian scalar ladder | 3620 |
| Scalar / keys | `gadget-scalar-mul-le-128` | 128-bit little-endian scalar ladder | 1797 |
| Scalar / keys | `gadget-rvk` | randomized verification key | 1822 |
| Scalar / keys | `gadget-dtk` | diversified transmission key | 7510 |
| Balance | `gadget-net-balance-commitment` | transfer net-balance commitment | 9191 |

Iterated and composite gadgets (the scalar ladders, the quad-path depths, the
sqrt-ratio mirrors, and `rvk`/`dtk`/`net-balance-commitment`) are not checked
monolithically — a whole-ladder per-signal SMT sweep does not scale. Each is
decomposed to a leaf probe that Picus discharges in seconds, and the full
gadget's determinism follows by composition (see C2). The probes are
verification-only top-level circuits exposing a sub-segment the production gadget
already contains; no production circuit changes, so the extracted Lean is
untouched.

| Family | Leaf probe | Folds to | Constraints |
| --- | --- | --- | --- |
| Decaf377 | `gadget-scalar-mul-step` | `scalar-mul-le-128`, `scalar-mul-le-251` | 18 |
| Merkle / IMT | `gadget-quad-path-round` | `quad-path-1/2/4/16/24` | 372 |
| Decaf377 | `gadget-decaf-compress-to-field-core` | `decaf-compress-to-field` | 36 |
| Decaf377 | `gadget-decaf-encode-to-curve-core` | `decaf-encode-to-curve` | 43 |

The `*-step`/`*-round` probes fold over a boolean decomposition
(`gadget-canonical-fq-bits`, itself `safe`); the `*-core` probes factor the
253-bit sign decomposition out to that same leaf.

For gadget `.sr1cs`, public operands and auxiliary witness hints are Picus
inputs. Claimed result wires (`Out`, `OutX`, `OutY`, `Root`, `Nullifier`,
`Valid`, `IvkReduced`) are Picus outputs whose uniqueness it must decide. There
is no dedicated DLEQ gadget wrapper; the DLEQ relation is built from the
Decaf377 group-law and scalar gadgets above, with semantic DLEQ soundness handled
in the Lean DLEQ track.

## C2 — Picus under-constraint at gadget scope (CI-only)

[circuit-constraint-check.sh](../../scripts/circuit-constraint-check.sh) runs
Picus (`--solver cvc5`, finite-field theory) on the *leaf gadgets*, emitting a
SHA-256-stamped `circuit-constraint-report.txt` under the shielded-pool
`formal/` tree. The default gate remains leaf-scoped; separate bounded
whole-family attempts are recorded in
[circuit-whole-picus-report.txt](../../crates/core/component/shielded-pool/formal/circuit-whole-picus-report.txt)
and do not promote any property row.

The solver is cvc5 with its finite-field theory (the `-gpl` prebuilt bundles
CoCoALib); z3 emits QF_NIA with no finite-field theory and cannot decide the
decaf/division gadgets, so it is a fallback only (`PICUS_SOLVER=z3`).

The current stamped report
([circuit-constraint-report.txt](../../crates/core/component/shielded-pool/formal/circuit-constraint-report.txt),
SHA-256 `e4a8e2e09a1e768723ff41e552c0574beea5435672ab0d6947e078a85364b769`)
uses `timeout_ms = 120000` and `total_timeout_seconds = 150`. Picus returned
`safe` for **every** leaf on the board: the five Poseidon arities,
`gadget-nullifier`, `gadget-imt-gap`, `gadget-iszero`,
`gadget-quad-path-round`, `gadget-decaf-assert-equivalent`,
`gadget-decaf-edwards-add`, `gadget-decaf-edwards-double`,
`gadget-decaf-edwards-neg`, `gadget-decaf-compress-to-field-core`,
`gadget-decaf-encode-to-curve-core`, `gadget-canonical-fq-bits`,
`gadget-bool-select`, `gadget-ivk-mod-r`, and `gadget-scalar-mul-step`. No
gadget returned `undischarged` or `underconstrained`.

**Prior finding (the check earned its keep).** The all-`safe` board above is the
*post-fix* state. An earlier run of this same checker returned a real
`underconstrained` verdict on the Decaf377 scalar-multiplication gadget: a
multiplication result wire in the ladder was left untied to the constraint system,
so a malicious prover could have satisfied the circuit with an incorrect product —
a genuine soundness defect, not a tooling artifact. It was fixed by adding the
missing output equality constraints (the `AssertIsEqual` ties now in
[scalar_mul_gadgets.go](../../tools/gnark/internal/circuits/scalar_mul_gadgets.go)).
This is the one and only real circuit bug the formal-verification effort has
surfaced; every other `undischarged` result has been a solver-capability or
SMT-scaling limitation (addressed by the cvc5 finite-field solver and leaf
decomposition), never an unsound circuit.

`gadget-decaf-edwards-add` and `gadget-scalar-mul-step` reach `safe`
*assumption-relative*: their precondition files under `formal/picus-preconditions/`
assert the Edwards completeness denominators (`1 ± d·v₀·v₁`) non-zero — a global
curve theorem Picus cannot derive locally. The precondition `.json` sha256 is
recorded per gadget in the report so the assumption is auditable. The Lean
artifact proves the corresponding curve-denominator obligations in
`EdwardsCompleteness`.

The report then records each iterated/composite gadget as `safe-by-composition`:
`scalar-mul-le-128/251` (the rung folded over the boolean scalar decomposition),
`quad-path-1/2/4/16/24` (the round folded over the position decomposition),
`decaf-compress-to-field` and `decaf-encode-to-curve` (core + canonical-fq-bits),
and `rvk`/`dtk`/`net-balance-commitment` (chains of the leaves above). The
composition lift — deterministic leaves compose to a deterministic gadget, with
the boolean decomposition supplying the per-rung selector — is the one step Picus
does **not** perform; it is the documented residual assumption of the C2 verdict.

**Status honesty:** a Picus-clean gadget is under-constraint *evidence* for that
gadget — necessary, not sufficient for the semantic property. There is no
theorem connecting "no under-constraint found" to `NO-DOUBLE-SPEND` /
`REGULATED-STATUS-SOUNDNESS`. Picus keeps rows at `refined`/`composed`; C3
ACL2/Axe gadget theorems reach `proved` only in the gadget ledger, and property
rows still require whole-circuit composition artifacts.

## Follow-Up Track C

| Tool | Disposition | Reason |
| --- | --- | --- |
| Picus | Landed at leaf-gadget scope (C2, CI-only), all leaves `safe` under cvc5; whole-family attempts are stamped as undischarged timeouts. | Runs on Poseidon, nullifier/IMT, quad-path-round, Decaf377 group-law, sqrt-ratio cores, scalar rung, and key `.sr1cs` exports in the nightly `provers` job; ladders/composites are `safe-by-composition`. Bounded 180-second runs on `consolidate2x1`, `split1x4`, and `split1x8` produced no verdict before watchdog termination. Source: [Picus package docs](https://pkg.go.dev/github.com/Veridise/Picus). |
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
`TestAxeExportFidelity*` and `TestPicusExportFidelityAllGadgets`
([gadgets_axe_fidelity_test.go](../../tools/gnark/internal/circuits/gadgets_axe_fidelity_test.go)):
it solves each gadget in gnark, then checks `A(W)·B(W) == C(W)` for every
exported constraint on gnark's own witness `W`, plus wire-count and
constraint-count agreement. The Picus path additionally checks the emitted
`in`/`out` role split for public operands, auxiliary witnesses, and claimed
outputs. A silent converter bug (wrong coeff, wrong wire, dropped constraint, or
wrong Picus role) fails the test rather than proving the wrong system.

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
closure, and net-balance composition are bridged against extracted gadgets.
`AssertEquivalent` is exposed as Decaf quotient equality, not affine
representative equality. Raw affine Decaf representatives that do not otherwise
pass through compression now have explicit in-circuit curve-equation assertions,
and the whole-circuit theorem has no named external Decaf assumptions. The
staged path from this single-circuit artifact to family-wide and protocol-wide
coverage is tracked in
[formal-verification-plan.md](formal-verification-plan.md).

**M6 Lean scaffold.** A Lean 4 project now lives in
[tools/gnark/lean](../../tools/gnark/lean). The vendored
`gnark-lean-extractor` port emits supported BoolSelect, IsZero, and Nullifier
models, and `lake build ShielddGnarkFormal` checks the extracted files,
Poseidon bridge leaves, Decaf377 gadget bridges, and the stamped
`consolidate2x1` whole-circuit composition theorem.
