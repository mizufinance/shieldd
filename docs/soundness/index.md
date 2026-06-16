# Protocol Soundness

This directory contains the durable protocol-soundness entry points:

- [Formal verification plan](formal-verification-plan.md)
- [Constraint-system assurance strategy](constraint-system-assurance.md)
- [Soundness handoff ledger](soundness-handoff.md)

Machine-checked fixtures live next to the code:

- `crates/core/component/compliance/formal/`
- `crates/core/component/shielded-pool/formal/`

The current phase records adversary-facing properties, assumptions, findings,
scope bindings, statement maps, symbolic proofs, R1CS/gadget proofs, and
whole-circuit Lean artifacts where available. Cross-family whole-circuit and
cross-track composition remain staged in the formal verification plan.
