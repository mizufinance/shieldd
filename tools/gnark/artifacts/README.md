# Proof artifacts

Git LFS stores only the current SR1CS for each deployed proof family. Proving
keys, metadata, manifests, setup receipts, verification keys, fixtures, and
frontend assets are ordinary Git files.

Runtime builds and proof tests need no LFS hydration. To hydrate the constraint
systems used by circuit inspection or external tooling:

```sh
python3 scripts/proof_artifacts.py materialize --bundle constraints
python3 scripts/proof_artifacts.py verify --bundle constraints
```

The full bundle adds the four LFS-backed constraint systems:

```sh
python3 scripts/proof_artifacts.py materialize --bundle full
python3 scripts/proof_artifacts.py verify --bundle full
```

The helper fetches only missing or invalid SR1CS objects and checks all hashes
against each family's committed `circuit_metadata.json`.

CI checkouts never hydrate LFS globally. Consumers request the constraint
bundle explicitly. Rust, Go, docs, smoke, release, and container jobs read
proving keys directly from Git.

## Rotating proof material

Regenerate and commit the current artifact paths plus their metadata. The
artifact policy rejects a proving-key rotation unless the matching SR1CS
and setup evidence rotate in the same change. Do not add dated key directories
or broaden the LFS patterns. GitHub retains old LFS objects for billing even
after a branch stops referencing them, so removing old generations from billed
storage is a separate provider cleanup operation.
