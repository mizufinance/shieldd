# Enforcement and planned seizure

This document separates the implemented freeze mechanism from the planned
Bankd seizure workflow. Seizure is not exposed by the current Shieldd API.

## Implemented status model

Each registered `(address, asset_id)` user leaf commits one status:

```text
Active = 1
Frozen = 2
Seized = 3
```

The implemented transitions are `Active -> Frozen` and `Frozen -> Active`.
`Seized` is terminal and currently unreachable. The status belongs in the user
leaf rather than a second tree: address, asset, registration metadata, and
authorization state then have one authenticated position and one proof. A
separate freeze tree would require cross-tree non-membership semantics and make
atomic updates and wallet proof refresh more complex without adding a distinct
ownership boundary.

For a regulated asset, Transfer proves both sender and receiver `Active`;
withdrawal proves the sender `Active`; NoteReshape proves its owner `Active`.
Fee funding uses Transfer. Deposits check the recipient's current leaf before
minting. Frozen or seized users therefore cannot move the affected asset or
reshape its notes to pay fees. Other assets remain independent.

## Bankd authorization boundary

Shieldd must not decide whether an issuer, court, regulator, or governance body
may seize. Bankd owns that authorization and must pass Shieldd a typed action at
a canonical, replay-safe host source. Shieldd will enforce only the mechanical
preconditions committed by the future protocol.

A bare authority signature is not enough for the planned production path. It
can be acceptable in systems whose explicit trust model grants an administrator
unconditional seizure power, but it provides no amount correctness, completeness,
or independent auditability. Bankd should instead require a durable authorization
record and a balance certificate. The first version may trust an authorized
auditor quorum for the amount; a later version can replace that premise with a
verified proof without changing the Shieldd status machine.

### Comparison with public regulated-asset systems

Public balance systems commonly authorize control actions by a privileged key,
without a cryptographic proof of the legal basis. Algorand gives each asset
separate freeze and clawback addresses; freezing is per account and asset, while
clawback directly transfers a specified amount from the target. Stellar lets an
issuer burn a specified amount from a clawback-enabled balance. ERC-3643 exposes
wallet freeze, partial freeze, and forced transfer functions through token-agent
authority. Circle's FiatToken similarly gives a `blacklister` role reversible
address blocking and a separate token-wide emergency pause.

- [Algorand asset freeze and clawback](https://dev.algorand.co/concepts/assets/asset-operations/)
- [Stellar issuer clawback](https://developers.stellar.org/docs/build/guides/transactions/clawbacks)
- [ERC-3643 regulated-token controls](https://eips.ethereum.org/EIPS/eip-3643)
- [Circle FiatToken roles](https://github.com/circlefin/stablecoin-evm/blob/master/doc/tokendesign.md)

Those systems can read the target balance directly in consensus state. Shieldd
cannot: notes are private and the issuer must reconstruct a complete balance
from compliance data. The balance certificate is therefore not an attempt to
prove that the authority has a valid court order; Bankd governance decides that.
It prevents the authority from silently choosing an unauditable amount and
creates a deterministic object that independent auditors can reproduce. A
token-wide pause is common as an incident-response control, but it is deliberately
outside this design: Bankd can add one later as a separate asset-policy action if
there is a concrete operational requirement.

## Complete balance audit projection

An issuer auditor reconstructs the target's regulated-asset balance outside
Shieldd by replaying the canonical Bankd/Shieldd history from genesis or a
verified checkpoint. For every block it validates parent continuity and the
committed Shieldd root, extracts every compliance record for the asset, decrypts
records available under the issuer or approved audit keys, and projects debits,
credits, deposits, withdrawals, and already consumed seizure receipts into a
deterministic balance ledger.

The auditor publishes a canonical audit manifest containing at least:

- Bankd chain ID, asset ID, target address, projection version, and policy IDs;
- start checkpoint, inclusive height range, terminal block hash, and terminal
  Shieldd root;
- an ordered commitment to every examined compliance record and every accepted
  balance delta, including explicit invalid/unavailable classifications;
- the resulting amount, auditor identity, timestamp, and signatures;
- the prior certificate or receipt chain for this target and asset.

The record commitment should be a Merkle root or append-only accumulator over
canonical entries `(height, tx_index, action_index, output_index, record_hash,
classification, signed_delta)`. Publishing only the final amount is
insufficient. An independent auditor can replay the same range, compare roots,
and identify the first differing entry.

This commitment creates accountability and reproducibility; by itself it does
not prove that the issuer scanned every canonical block or decrypted records
correctly. Initial authorization should therefore require either an independent
auditor quorum over the same manifest root or an explicit Bankd governance rule
that accepts the issuer's attestation. A future circuit or recursive proof may
make completeness and arithmetic verifier-checkable.

## Planned balance certificate and once-only seizure

The future `BalanceCertificate` should bind:

```text
chain_id
asset_id
target_address
frozen_user_leaf_commitment
audit_range_and_terminal_root
audit_manifest_root
amount
authorization_policy_id
auditor_or_quorum_signatures
certificate_nonce
```

Bankd will validate its authorization policy and certificate, then atomically:

1. require the current user state to be `Frozen`;
2. consume the certificate ID in durable Bankd/Shieldd state;
3. transition that exact leaf `Frozen -> Seized` without changing its position;
4. mint or release the certified amount on the Bankd side to the authorized
   destination; and
5. emit a receipt binding the certificate, old/new roots, amount, and Bankd
   transaction source.

The terminal transition plus consumed-certificate index prevents a second
seizure. Bankd mint/reissue must be in the same atomic transaction as the
Shieldd transition; marking a leaf seized and minting in separate commits would
permit partial execution. No `SeizeUserAsset` RPC or amount verifier is present
until this authorization contract is selected.
