# Soundness release gate

A circuit release is ready only when source, deployed bytes, formal proof, key
material, and an actual proof round trip all describe the same circuit. Hash-only
restamping is never a fix for a failed semantic or source-drift gate.

## Required evidence

1. Focused circuit and statement-seam tests pass.
2. Fresh Go compilation is byte-identical to the deployed SR1CS and semantic
   manifest.
3. Fresh typed IR, normalized coverage manifest, exact contract and adapter
   sets, Wiring, Capstone, and generated Statement byte-match the committed
   files.
4. Every deployed obligation is discharged and its relation/wire-role hashes
   match the exact rows.
5. The protocol-readable Lean statement builds from the deployed capstone.
6. No project axiom or compiler-backed primality shortcut exists, and
   `#print axioms` for the scalar-field certificate, capstones, and Statements
   matches each reviewed baseline.
7. PK/VK metadata pins match the deployed files; VK JSON and binary encode the
   same key.
8. The deployed keys prove and verify the committed witness against a freshly
   compiled constraint system.
9. Stamped artifacts are updated last and their sidecars match.
10. Constraint and performance deltas are recorded when the circuit changed.

## Commands

Run Lean serially and single-threaded:

```sh
(cd tools/gnark && go test ./internal/circuits/... ./internal/primitives/...)
cargo test -p shieldd-constraint-coverage
scripts/check-fv-census.sh
scripts/check-extracted-lean-heartbeats.sh
bash scripts/check-manifest-pin.sh all
bash scripts/check-constraint-coverage.sh --require-full-deployed --check-typed-bindings all
LEAN_NUM_THREADS=1 bash scripts/check-lean-circuit-fv.sh full all
bash scripts/check-soundness-invariants.sh
```

The full FV gate performs the deployed-key round trip for all five checked
circuits, including the four NoteReshape families and transfer. Run any
repository-wide release/prover suites required by CI after the focused gates.

The focused StatementHash resource gate uses a 120 s / 4 GiB aggregator budget,
a 2 GiB marginal-RSS leaf budget, and a 50 MiB generated-olean budget. Recent
top-level aggregator checks passed for 4 → 1 (2 s, 424 MiB marginal RSS),
1 → 8 (12 s, 706 MiB), and 8 → 1 (3 s, 820 MiB); the four family hashes,
domains, row counts, and block partitions are recorded in [fv.md](fv.md) and
the stamped artifacts.

## Performance record

For an optimization, record the exact pre/post commit and deployed artifact,
constraint count and percentage, compile/setup/witness/prove/verify timings,
run count and statistic, acceleration mode, and key/proof sizes. Do not compare
different machines or setup modes without labeling the difference. A constraint
reduction without a current prover run is reported only as a constraint
reduction.

## Failure handling

- Source/SR1CS mismatch: regenerate and review the semantic diff; never restamp.
- IR/contract/adapter/wiring/capstone/Statement mismatch: fix the generator or
  proof, regenerate, and review the exact diff.
- New project axiom: stop; the NoteReshape FV path permits none.
- Key round-trip failure: the key set is stale or inconsistent; run a fresh
  setup and replace the complete PK/VK/SR1CS/metadata set together.
- Lean resource failure: narrow the module or proof shape. Do not set unlimited
  heartbeats or run concurrent Lake builds.
