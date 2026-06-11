# Circuit FV — First Benchmark: Lean-First Whole-Circuit Coverage

Decision and execution plan for the circuit verification track: keep both ACL2
and Lean, but commit Lean to the first attempt at full single-circuit coverage,
on consolidate2x1, as a real benchmark. Supersedes the "Lean as corroboration
only" stance in
[verification-strategy-decision.md](verification-strategy-decision.md) action
item 9. Context in [assessment-2026.md](assessment-2026.md).

## Decision

- **Keep both engines.** ACL2/Axe remains the current `proved` spine for gadgets
  ([circuit-gadget-proofs.md](../../crates/core/component/shielded-pool/formal/circuit-gadget-proofs.md)).
  It is not retired by this decision.
- **Lean drives the first whole-circuit push.** The benchmark tests whether
  `proven-zk` reaches full single-circuit coverage where ACL2 stalled.
- **Promotion rule unchanged.** A `proved` whole-circuit property still requires a
  stamped whole-circuit artifact, per the invariants gate. Lean reaching coverage
  does not relax the standard; it changes which engine is expected to meet it.

### Rationale

- **ACL2 hit a composition wall.** Six gadgets are `proved`, but whole-circuit
  composition failed: `quad-path` depth-2 control-stack overflow
  ([QUAD-PATH-HANDOFF.md](../../crates/core/component/shielded-pool/formal/QUAD-PATH-HANDOFF.md),
  Stage 3 = OPEN). The 16-deep Merkle/IMT path that whole-circuit soundness needs
  is exactly what did not compose.
- **`proven-zk` is built for this.** It is purpose-built for ZK circuit
  composition and Merkle-path reasoning — the structure ACL2 choked on.
- **Ecosystem momentum.** EF Verified-zkEVM, Succinct/Nethermind SP1, and Veridise
  tooling are consolidating circuit FV on Lean. Better shared libraries,
  longevity, and hiring than the comparatively isolated ACL2/Axe path.

## Benchmark definition

- **Target circuit.** consolidate2x1 — the smallest production circuit (Picus
  already times out on it as the smallest family), giving the best chance of
  actually reaching full coverage and a clear verdict before scaling up.
- **Success.** A single whole-circuit property for consolidate2x1, proved in Lean,
  covering all constituent gadgets plus Merkle/IMT path composition (depth-2 and
  beyond — the ACL2 failure point), with Poseidon377 no longer opaque in the Lean
  spec.
- **Verdict regardless of outcome.** Either Lean reaches full single-circuit
  coverage (record effort and promote the path), or it stalls (record where and
  why). A negative result is still the tool-selection answer the benchmark exists
  to produce.

## Next steps (ordered)

1. **De-opaque Poseidon377 in the Lean spec.** Poseidon is currently opaque in
   [Specs.lean](../../tools/gnark/lean/ShielddGnarkFormal/Specs.lean); no
   whole-circuit Lean claim is possible until it is concrete. This is the hard
   blocker and the first real test of the approach.
2. **Extend gnark-lean-extractor coverage** from the current three gadgets
   (bool-select, iszero, nullifier) to the full consolidate2x1 gadget set.
3. **Prove Merkle/IMT path composition in Lean** via `proven-zk` — the depth-2+
   composition ACL2 could not reach.
4. **Compose to a whole-circuit property** and define the artifact + sha256 stamp
   and CI gate, mirroring the existing ACL2 whole-circuit artifact convention the
   invariants script enforces.
5. **Record the benchmark verdict**: did Lean reach full single-circuit coverage,
   at what effort, versus ACL2's gadget-only ceiling — and whether to migrate the
   spine to Lean or keep ACL2 for gadgets and Lean for composition.

## Out of scope

- gnark→LLZK ingestion: no path exists today; watch only.
- Retiring ACL2: not until Lean demonstrably reaches coverage.
- The other three circuits: scale up only after a consolidate2x1 verdict.
