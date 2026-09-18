# Pinned Orbis crypto build adapter

Rust sources are copied unchanged from the revision in `upstream.json`.
The manifest resolves upstream workspace values and selects the source commit
of the published Decaf 0.10.1 release explicitly. This retains Orbis’s Arkworks
0.4 dependencies alongside Shieldd’s Arkworks 0.5 Decaf fork, without allowing
the workspace-wide crates.io patch to replace Orbis’s dependency.
Exchange canonical serialized points and scalars across this boundary.
Run `python3 scripts/check_orbis_vendor.py` to verify the source hashes.
