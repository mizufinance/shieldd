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

## Authority

When sources disagree, use this order:

1. compiled circuit, deployed keys, and source-controlled machine artifacts;
2. generated coverage IR, normalized coverage manifest, Lean contracts, and their gates;
3. formal property and assumption ledgers under `crates/*/formal/`;
4. these four explanatory documents.

Git is the history. There is no separate handoff, status mirror, inventory, or
gate-record documentation.

## Current focus

The four NoteReshape families (`note_reshape2x1`, `note_reshape4x1`,
`note_reshape8x1`, and `note_reshape1x8`) use the deployed SR1CS proof path described in
[fv.md](fv.md); transfer retains the same release gate. The gate recompiles each
Go circuit, rejects byte drift, derives proof inputs from the exact deployed
rows, checks the generated Lean surface, and binds the deployed proving and
verifying keys. Handwritten protocol semantics and refinement are the public
review surface; generated `CircuitFacts` and `Capstone` modules are the typed
and exhaustive exact-row surfaces.

The compliance and shielded-pool property/assumption ledgers remain the source
for protocol-wide claims beyond this circuit. A whole-circuit proof does not by
itself prove the Groth16 backend, cryptographic hardness, handler state
transitions, or a handwritten Alloy model faithful.
