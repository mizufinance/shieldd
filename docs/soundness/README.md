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
- **gnark frontend** is only *partially* covered: the wiring transcript checks
  call-site wiring, not the full constraint set. Closing this is a top open item
  on the roadmap.

The authoritative per-row list with status + removal path is the **assumption
ledger** at `crates/core/component/compliance/formal/assumption-ledger.md`.

## What is open

Forward work, in priority order, lives in
[fv-hardening-roadmap.md](fv-hardening-roadmap.md): the Tamarin ACP↔Orbis
interaction model, and full-constraint gnark-frontend extraction (the halo2/Zcash
library-bug class).

## Reference (pull when relevant)

- **[reference/fv-playbook.md](reference/fv-playbook.md)** — read before touching a
  proof, circuit, or stamp: tool locations & PATH, Lean ≤60-gate slicing, the
  OOM/memory rules, Picus decomposition, stamping workflow, trust boundary, the two
  SHA derivations.
- **[reference/assumption-axiom-review.md](reference/assumption-axiom-review.md)** —
  the manual audit: every conclusion, its kernel-axiom status, every residual, and
  the model-vs-deployed gaps.
- **[reference/soundness-handoff.md](reference/soundness-handoff.md)** — the detailed
  living state ledger behind the summary table above.
- **[fv-hardening-roadmap.md](fv-hardening-roadmap.md)** — open
  work detail, tool roles, promotion rules, long-range backlog.
- **[reference/constraint-system-assurance.md](reference/constraint-system-assurance.md)** —
  per-circuit assurance argument + CI tiers (referenced by the invariant gates).

## Machine-checked evidence (next to the code — do not relocate)

Fixtures and proofs live beside their crates, referenced by
`scripts/check-soundness-invariants.sh` / `check-snarkpack-invariants.sh` by exact
path:

- `crates/core/component/compliance/formal/` — threat model, soundness properties,
  **assumption ledger**, symbolic-model design, findings, DLEQ Lean/VCVio proof.
- `crates/core/component/shielded-pool/formal/` — circuit threat model, statement
  maps, gadget proofs, Picus reports, whole-circuit Lean artifacts.
- `crates/crypto/proof-aggregation/formal/snarkpack/` — SnarkPack/RIPP refinement.
