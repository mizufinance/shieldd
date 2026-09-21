# Pinned Orbis crypto build adapter

Rust sources are copied unchanged from the revision in `upstream.json`.
The manifest resolves upstream workspace values. Shieldd selects BLS12-381
for PRE delivery, using the upstream Arkworks 0.4 implementation. Sealed
payloads contain opaque Jubjub audit openings; the two groups are independent.
The upstream optional Decaf implementation remains unselected.
Run `python3 scripts/check_orbis_vendor.py` to verify the source hashes.
