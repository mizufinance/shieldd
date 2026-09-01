# Enforcement and seizure

Shieldd enforces per-asset status and verifies the cryptographic mechanics of
seizure. Bankd decides whether a legal or governance authorization is valid and
must settle the returned withdrawal atomically with the Shieldd call.

## Lifecycle

Each registered `(address, asset_id)` leaf commits:

```text
address, asset_id, capk, Poseidon(cnk), status,
freeze_generation, frozen_since_height
```

The legal transitions are:

```text
Active -> Frozen -> Active
Active -> Frozen -> Seized
Seized -> Seized       while consuming more notes from the same freeze
```

`Seized` is terminal for ordinary activity. The address cannot send, receive,
withdraw, deposit, reshape notes, or become active for that asset. Multiple
seizure calls remain possible because one address can own multiple notes.

Every regulated spend and receive proves an `Active` leaf under the exact
current user root. Host deposits perform the same check natively. An unfreeze
and refreeze increments `freeze_generation` and changes `frozen_since_height`,
invalidating an earlier seizure authorization.

## Per-note seizure

Every real output carries a fixed-shape recovery capsule and commits that
capsule inside the note commitment. Regulated and unregulated outputs have the
same public shape. Publishing `capk` does not provide a public address test for
capsules or decrypt ordinary note ciphertexts.

The privileged `SeizeNote` host call verifies:

- the configured seizure-authority signature, chain, destination, amount,
  expiry, and signed release scope;
- the current `Frozen` or same-generation `Seized` leaf, including `capk`, CNK
  commitment, freeze generation, and frozen-since height;
- ordinary Orbis PRE share evidence for that exact capability, capsule EPK, and
  release scope;
- recovery of the capsule seed and its `(amount, note_blinding)` plaintext;
- the Groth16 proof for the real note commitment, SCT membership, canonical
  compliance nullifier, and committed CNK; and
- current or archived nullifier nonmembership, according to the note position.

The accepted state delta inserts the real note's canonical nullifier, advances
the lifecycle on the first note, stores a replay-safe receipt, and returns an
exact typed Bankd withdrawal. The owner-spend and seizure paths use the same
nullifier, so neither can succeed after the other.

This proves each submitted note, not completeness of the submitted set. An
authority that omits a recoverable note only leaves value behind, while
`Seized` prevents the owner from moving it.

## Implemented boundary

Shieldd currently contains the leaf lifecycle, recovery capsules in all note
creation circuits, canonical regulated nullifiers, note-seizure circuit and
offline prover client, native admission checks, host RPC, receipt, nullifier
insertion, and typed settlement response.

The end-to-end bank workflow is incomplete. It still needs:

- a durable private capability-to-capsule locator and archive reconciliation;
- ACP authorization and CNK-release integration;
- an Orbis client that returns the existing PRE evidence for selected capsules;
- an operator that rebuilds SCT paths, proves notes, and submits them; and
- Bankd-side authorization policy and atomic application of the returned
  withdrawal.

See [the asset seizure design](asset-seizure-proof-plan.md) for cryptographic
details, measured circuit growth, and remaining performance work.
