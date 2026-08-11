# Proof artifacts

Git contains the canonical metadata, manifests, setup receipts, and verification
keys for each deployed proof family. The large SR1CS and proving-key files are
kept in one rolling GitHub Release asset for the POC; old key generations are
not retained.

Materialize and validate the current files before a bundled-prover build:

```sh
python3 scripts/proof_artifacts.py materialize
python3 scripts/proof_artifacts.py verify
```

After intentionally regenerating all four deployed families, replace the
rolling asset:

```sh
python3 scripts/proof_artifacts.py publish
```

`publish` requires `gh` authentication and replaces the asset attached to the
prerelease tag declared in `current-bundle.json`. The hashes in each family's
committed `circuit_metadata.json` remain the source of truth.

## Rollout

1. Run `publish` once before merging the commit that removes the large files.
   The bootstrap bundle can be published directly with
   `python3 scripts/proof_artifacts.py publish --archive path/to/shieldd-proof-artifacts.zip`.
2. Exercise a manual bundled-prover workflow and confirm it downloads the
   release bundle rather than repository large-file storage.
3. Merge the change, then remove historical large-file objects separately.
   Deleting pointers from the current branch does not remove already-billed
   objects from repository history; use the hosting provider's purge process or
   replace the POC repository after preserving the source-only history.
4. Keep the release tag rolling. Regeneration replaces its one asset; it does
   not create dated key archives.
