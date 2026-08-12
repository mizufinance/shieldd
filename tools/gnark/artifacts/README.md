# Proof artifacts

Git LFS stores only the current SR1CS and proving key for each deployed proof
family. Metadata, manifests, setup receipts, verification keys, fixtures, and
frontend assets are ordinary Git files.

A normal clone with Git LFS installed materializes the current artifacts. For a
clone made with LFS smudging disabled, hydrate only the proving keys used by
local runtime builds and proof tests:

```sh
python3 scripts/proof_artifacts.py materialize --bundle runtime
python3 scripts/proof_artifacts.py verify --bundle runtime
```

The runtime bundle is four proving keys (currently about 80 MB). Formal checks
that inspect or regenerate constraints explicitly request all eight objects:

```sh
python3 scripts/proof_artifacts.py materialize --bundle full
python3 scripts/proof_artifacts.py verify --bundle full
```

The helper fetches only missing or invalid objects and checks their hashes
against each family's committed `circuit_metadata.json`. Proof and integration
recipes request the runtime bundle before builds that bundle proving keys.

CI checkouts never hydrate LFS globally. Each workflow has at most one preparer
that can fetch a scoped bundle on an exact cache miss. Parallel consumers use a
restore-only action and fail instead of falling back to LFS. Cache identities
come from the committed LFS object IDs and sizes, so unrelated metadata changes
do not create new downloads. Container runs on `dev` and `main` also seed a
missing full base-branch cache for later PRs; the seed uses a lookup-only probe,
so a warm push does not download the 510 MB constraints bundle.

## Rotating proof material

Regenerate and commit the same current artifact paths plus their metadata. The
LFS policy rejects a proving-key rotation unless the matching SR1CS and setup
evidence rotate in the same change. Do not add dated key directories or broaden
the LFS patterns. GitHub retains old LFS objects for billing even after a branch
stops referencing them, so removing old generations from billed storage is a
separate provider cleanup operation. For this POC, request an LFS-object purge
or recreate the repository after preserving the desired source history when
historical storage becomes material.
