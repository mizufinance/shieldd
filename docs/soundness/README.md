# Soundness

This directory contains four maintained documents. Machine artifacts and
ledgers beside the code are authoritative; these pages explain how to use them.
Hashes, wire numbers, constraint ranges, and obligation counts belong in the
generated artifacts, not in prose.

| Document | Purpose |
| --- | --- |
| [fv.md](fv.md) | What the circuit proof establishes, how it is bound to deployed bytes, and its trust boundary. |
| [optimization.md](optimization.md) | Measured constraint baseline, accepted results, and the ≥1% candidate policy. |
| [release.md](release.md) | Required gates and release evidence. |

## Gate failure routing

A red gate identifies the layer to repair; it does not justify changing circuit
semantics or adding a one-off regression. Use the smallest applicable row:

| Failure | Repair | Verification |
| --- | --- | --- |
| Applicability selected the wrong tier or an unrelated path | Update the matching declaration under `ci/gates/`; change the classifier only when the declaration cannot express the dependency. | Run `python3 scripts/ci/test_gate_applicability.py`. Add a routing regression because the routing contract changed. |
| A correctly selected protocol, specification, or evidence check failed without a circuit change | Fix the named handwritten source, proof, or generator and run the command reported by that check. | Re-run that focused check. Add a regression only for a reusable missing invariant. |
| Generated Lean, a manifest, or an artifact is stale | Fix its source or generator and regenerate it. Never edit generated output or restamp a semantic mismatch. | Use the `fast` or `affected` tier in [fv.md](fv.md#lean-circuit-inner-loop). |
| Diagnosis reaches circuit, witness, statement, constraint, or key semantics | Treat it as a circuit change and coordinate with the circuit owner. | Follow [fv.md](fv.md#lean-circuit-inner-loop) and [release.md](release.md). |
| A periodic or release replay fails on unchanged source | Repair the pinned toolchain, runner, cache/materialization path, or stale generation procedure. | Follow [release failure handling](release.md#failure-handling). |

To explain a candidate locally, run the existing classifier for each formal
family; no wrapper owns additional routing logic:

```sh
python3 scripts/ci/gate-applicability.py --gate soundness-formal --event pull_request --base origin/dev --head HEAD --pretty
python3 scripts/ci/gate-applicability.py --gate snarkpack-formal --event pull_request --base origin/dev --head HEAD --pretty
```

An unrelated `Cargo.lock` edit is skipped when the locked dependency graph
reachable from the declared circuit, prover, verifier, or SnarkPack roots is
unchanged. A relevant lock closure runs the PR tier and the full merge-candidate
tier. Unknown inputs remain fail-closed.

Circuit source and its regenerated FV evidence belong in the same PR so every
reviewed candidate is closed. Put handwritten/source changes before generated
refreshes in distinct commits when practical. The merge queue runs the full
gate on the exact merge candidate for circuit, proof, and relevant toolchain
changes; there is no second formal run on the resulting branch push. A daily
default-branch run detects drift in tools, runners, and regeneration procedures.

## Authority

When sources disagree, use this order:

1. compiled circuit, deployed keys, and source-controlled machine artifacts;
2. generated coverage IR, normalized coverage manifest, Lean contracts, and their gates;
3. formal property and assumption ledgers under `crates/*/formal/`;
4. these explanatory documents.

Git is the history. There is no separate handoff, status mirror, inventory, or
gate-record documentation.

Git stores deployed keys, constraint systems, manifests, hashes, generated
proof contracts, and inputs needed to reproduce a release. Transient logs,
refresh patches, compiler caches, and diagnostics belong in CI artifacts named
for the exact candidate. Removing a tracked proof input requires an immutable,
content-addressed replacement and an offline-verifiable manifest; an ordinary
retained CI artifact is not a substitute.

## Certified families

The two fixed-padded NoteReshape families (`note_reshape1x8` and
`note_reshape8x1`), fixed Transfer 2x2, and fixed shielded ICS-20 Withdrawal
2x1 use the certified deployed-SR1CS path described in [fv.md](fv.md).
Handwritten protocol semantics and refinements are the public review surface;
generated `CircuitFacts` and `Capstone` modules are the typed and exhaustive
exact-row surfaces.

The compliance and shielded-pool property/assumption ledgers remain the source
for protocol-wide claims beyond this circuit. A whole-circuit proof does not by
itself prove the Groth16 backend, cryptographic hardness, handler state
transitions, or a handwritten Alloy model faithful.
