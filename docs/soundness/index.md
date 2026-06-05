# Protocol Soundness

This directory summarizes the analysis fixtures for the two protocol surfaces
that carry most soundness risk:

- [Compliance ciphertext](compliance-ciphertext.md)
- [ZK circuits](zk-circuits.md)
- [Constraint-system assurance strategy](constraint-system-assurance.md)
- [Soundness handoff ledger](soundness-handoff.md)

Machine-checked fixtures live next to the code:

- `crates/core/component/compliance/formal/`
- `crates/core/component/shielded-pool/formal/`

The current phase records adversary-facing properties, assumptions, findings,
scope bindings, statement maps, and a Rust/Go field-vector differential. It does
not run a symbolic prover or claim R1CS-level formal verification.
