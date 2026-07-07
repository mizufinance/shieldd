# Protocol Soundness

**This file is the summary. If you are not doing FV work, you do not need to read
anything else.** It says what is mechanically proved, what stays an assumption,
and what is still open. The `reference/` docs are depth — pull one only when a
task actually needs it.

## What is proved (machine-checked, axiom-clean)

| Property | Tool / artifact | Status |
| --- | --- | --- |
| `transfer` whole circuit computes its spec | Lean `transfer_circuit_sound` — axioms `{propext, Classical.choice, Quot.sound}` | proved |
| `consolidate2x1` whole circuit computes its spec | Lean `consolidate2x1_circuit_sound` — same axiom set | proved |
| No under-constraint in the R1CS gadgets | Picus + finite-field cvc5 — all leaf gadgets `safe`, composites `safe-by-composition` | proved |
| DLEQ Fiat-Shamir knowledge soundness | Lean/VCVio (`lean-dleq`), one declared axiom `q_prime` | proved |
| Ledger state machine (double-spend, supply, anchors, nullifier lifecycle) | Alloy — 4 models pass | bounded-checked |
| Compliance protocol (ProofSound, committee flow) | Tamarin — `compliance.spthy` + `compliance-active.spthy` verify | symbolic |

## What stays assumed (the irreducible base)

- **Cryptographic hardness:** decaf377 is a prime-order group (`q_prime` /
  `CC-ASSUME-DECAF377-PRIME-ORDER-GROUP`), Poseidon is a random oracle
  (`CC-ASSUME-POSEIDON-RO`), DLEQ Fiat-Shamir is non-malleable.
- **DLEQ challenge truncation** to 250 bits — soundness ≈ 2⁻²⁴⁹·⁹.
- **gnark backend** (Groth16/Plonk, KZG, pairing, prover Fiat-Shamir) — a named
  crypto trust assumption, not self-proved.
- **gnark frontend** is partially covered for `consolidate2x1` and `transfer`:
  Lean checks the Define wiring transcript, and an independent Rust parser checks
  compiled `.sr1cs` partition/hash/VK binding. Segment identity remains a named
  trust gap.

The authoritative per-row list with status + removal path is the **assumption
ledger** at `crates/core/component/compliance/formal/assumption-ledger.md`.

## What is open

The governing plan is [full-verification-plan.md](full-verification-plan.md)
(layers, hole inventory, phases A–H, promotion rules, §8 backlog). The
composition of all claims across tools is
[assurance-case.md](assurance-case.md) — every protocol claim traces to a
stamped artifact, a named ledger row, or an explicit TODO.

## Top-level docs (all forward-looking)

- **[full-verification-plan.md](full-verification-plan.md)** — the plan.
- **[assurance-case.md](assurance-case.md)** — the claim tree.
- **[optimization-playbook.md](optimization-playbook.md)** — where the
  constraints are, ranked reduction candidates, the optimize-safely pilot.
- **[release-checklist.md](release-checklist.md)** — binding proofs to shipped
  artifacts at release time.

## Reference (pull when relevant)

- **[reference/fv-playbook.md](reference/fv-playbook.md)** — read before touching a
  proof, circuit, or stamp: tool locations & PATH, Lean ≤60-gate slicing, the
  OOM/memory rules, Picus decomposition, stamping workflow, trust boundary, the two
  SHA derivations.
- **[reference/soundness-handoff.md](reference/soundness-handoff.md)** — the detailed
  living state ledger behind the summary table above.
- **[reference/constraint-system-assurance.md](reference/constraint-system-assurance.md)** —
  per-circuit assurance argument + CI tiers (referenced by the invariant gates).
- **[reference/phase-c-alloy-statement-sufficiency-spec.md](reference/phase-c-alloy-statement-sufficiency-spec.md)** —
  design of the implemented Alloy H2 models (maintain the `.als` against it).
- Evidence bases: [reference/consolidate2x1-statement-binding-inventory.md](reference/consolidate2x1-statement-binding-inventory.md),
  [reference/transfer-statement-binding-inventory.md](reference/transfer-statement-binding-inventory.md),
  [reference/transfer-deployed-bridge-dossier.md](reference/transfer-deployed-bridge-dossier.md);
  Picus determinism composition is §C2b of
  [reference/constraint-system-assurance.md](reference/constraint-system-assurance.md).
- **[reference/history.md](reference/history.md)** — the single backward-looking
  ledger: resolved incidents, closed scoping memos, point-in-time audits.

## Machine-checked evidence (next to the code — do not relocate)

Fixtures and proofs live beside their crates, referenced by
`scripts/check-soundness-invariants.sh` / `check-snarkpack-invariants.sh` by exact
path:

- `crates/core/component/compliance/formal/` — threat model, soundness properties,
  **assumption ledger**, symbolic-model design, findings, DLEQ Lean/VCVio proof.
- `crates/core/component/shielded-pool/formal/` — circuit threat model, statement
  maps, gadget proofs, Picus reports, whole-circuit Lean artifacts.
- `crates/crypto/proof-aggregation/formal/snarkpack/` — SnarkPack/RIPP refinement.
