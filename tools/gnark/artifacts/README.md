# Proof artifacts

Git LFS stores only the current SR1CS and proving key for each deployed proof
family. Metadata, manifests, setup receipts, verification keys, fixtures, and
frontend assets are ordinary Git files.

A normal clone with Git LFS installed materializes the current artifacts. For a
clone made with LFS smudging disabled, or after clearing the files locally, run:

```sh
python3 scripts/proof_artifacts.py materialize
python3 scripts/proof_artifacts.py verify
```

The helper pulls exactly the eight paths listed in `.gitattributes` and checks
their hashes against each family's committed `circuit_metadata.json`. Proof and
integration recipes call it before builds that bundle proving keys.

CI checkouts do not hydrate LFS globally. Jobs that need proving material use a
cache keyed by the committed metadata and fall back to that same exact-path LFS
pull on a cache miss.

## Rotating proof material

Regenerate and commit the same current artifact paths plus their metadata. Do
not add dated key directories or broaden the LFS patterns. GitHub retains old
LFS objects for billing even after a branch stops referencing them, so removing
old generations from billed storage is a separate provider cleanup operation.
For this POC, request an LFS-object purge or recreate the repository after
preserving the desired source history when historical storage becomes material.
