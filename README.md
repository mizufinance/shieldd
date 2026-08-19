# Shieldd

Shieldd is Bankd's private execution subsystem for shielded assets. It is not a
separate product chain: Bankd owns consensus, validators, authorization, asset
accounting, and application logic, and invokes Shieldd through the typed host
execution API in the same validator process.

> **Not production ready.** Shieldd and its Bankd integration are active prototypes.

## Target deployment

Bankd and Shieldd are atomic at the block boundary. The same validator set
orders a Bankd block, calls Shieldd with canonical Bankd transaction locations,
and commits both state transitions. Shieldd has no independent validator set,
governance authority, or externally operated bridge in the target design.

Shieldd owns the privacy-specific state machine: shielded notes and nullifiers,
proof verification, regulated-asset policy commitments, per-address/per-asset
status commitments, encrypted compliance records, and compact data for wallets
and auditors. Bankd owns deposits, withdrawals, issuer authority, compliance
action authorization, and any transparent mint or reissue caused by a future
seizure.

The currently supported Bankd compliance actions are typed `FreezeUserAsset`
and `UnfreezeUserAsset` calls. A frozen `(address, asset_id)` cannot send or
receive that regulated asset, fund fees with it, withdraw it, deposit it, or use
`NoteReshape`. Unregulated assets and the same address's other regulated assets
are unaffected. There is no global address blacklist and no asset-pause action.

`Seized` is reserved as a terminal user-asset state, but seizure authorization,
balance certification, and Bankd reissue are intentionally not implemented yet.
See [the enforcement and seizure design](docs/compliance/enforcement-and-seizure.md).

## Compliance visibility

Regulated transfers carry encrypted detection and audit records. The asset
issuer can scan its asset's activity; unregulated transfers retain the same
fixed proof shape without promising issuer decryptability. See:

- [deployment and ownership](docs/compliance/chain-scope.md)
- [compliance flow](docs/compliance/flow.md)
- [technical reference](docs/compliance/reference.md)
- [enforcement and planned seizure](docs/compliance/enforcement-and-seizure.md)
