# Strict comparator Transfer candidate

Development-only gnark module based on the selected-key Transfer circuit. Two unsigned strict comparison helpers use polynomial recurrences while preserving amount decomposition, caller-constrained scalar bits and final Boolean assertions. Negative or oversized constants are rejected. Production code and keys are unchanged.

Use the parent `comparator377_compile.py` and `examples/comparator_compile.rs` for typed six-witness preparation and actual Square-R1CS checks. The completed screen has154224 original rows,141728 wires and224778 converted rows. It establishes relation correctness and reduced counts, without setup or proving measurements. Sources and evidence are pinned in `checkpoints/2026-09-14-comparator377`.

The comparison must apply these helpers to both the selected subset Groth16 control and the ZK-Pari relation before their fresh-key measurements. See [the report](../../../../docs/research/comparator377-screen.md).
