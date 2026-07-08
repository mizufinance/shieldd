/-
U-shared: abstract pairing structure and the named cryptographic assumption
definitions shared by all proof units. Assumptions are named `Prop`
definitions consumed as explicit hypotheses (see DESIGN.md); each maps 1:1 to
a `formal-handoff.md` assumption row. No axioms — the `just snarkpack-lean-ipp`
gate tolerates `axiom` only in this file as an escape hatch, but the intended
state is axiom-free.
-/
