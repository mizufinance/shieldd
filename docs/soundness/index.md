# Protocol Soundness

This directory summarizes the analysis fixtures for the two protocol surfaces
that carry most soundness risk:

- [Compliance ciphertext](compliance-ciphertext.md)
- [ZK circuits](zk-circuits.md)
- [Constraint-system assurance strategy](constraint-system-assurance.md)
- [Soundness handoff ledger](soundness-handoff.md)

Assessment and forward roadmap:

- [Formal verification assessment — 2026](assessment-2026.md)
- [Full protocol soundness roadmap](full-protocol-soundness-roadmap.md)
- [Circuit FV first benchmark (Lean-first)](circuit-fv-benchmark.md)

Machine-checked fixtures live next to the code:

- `crates/core/component/compliance/formal/`
- `crates/core/component/shielded-pool/formal/`

The current phase records adversary-facing properties, assumptions, findings,
scope bindings, statement maps, and a Rust/Go field-vector differential. It does
not run a symbolic prover or claim R1CS-level formal verification.
