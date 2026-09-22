# Proof-bound note routing

Routing derives directly from the address transmission key and does not use
fuzzy message detection. [Interoperability](jubjub-external-contract.md#keys-and-encodings)
defines the suite-tagged address encoding.

For every address, the stable routing word is

```text
Trunc32(Poseidon("shieldd.discovery.route", transmission_key_s))
```

The hash excludes the asset, regulation class, precision, height, time, epoch,
and address-purpose metadata. Regulated and unregulated selectors are therefore
nested low-bit prefixes of the same word. Application parameters contain the
regulated precision, unregulated precision, and activation height, with
`regulated_precision <= unregulated_precision`. Transactions reveal only the
parameter-set identifier, never the privately selected class precision.

Every public `RoutingTag` is one `u32`. Its low `p` bits equal the address word
and its other bits come from the proof-bound routing nonce and tag slot. A
transfer always publishes two permuted slots. Regulated transfers route the
authenticated sender and receiver; unregulated transfers route the receiver
and either the change owner or a nonce-derived filler. Withdrawals and note
reshapes publish one owner slot. Dummy and filler slots remain in compact blocks.

Compact blocks expose only typed action locations:

```text
RoutingRecord {
  tag, height, transaction_id, action_index, tag_slot
}
```

They do not label sender or receiver roles. A match returns the encrypted note
payloads for that action, which the wallet trial-decrypts. A full compact-block
scan is always a valid recovery path.

## Wallet state and recovery

The view service persists every issued address before returning it, including
the actual randomized address index, its local purpose, birth height, and
optional retirement height. `General` and `Regulated { asset_id }` purposes are
wallet metadata and never affect an address or routing word. Backups should
retain these records; scanning full compact blocks recovers notes when the
metadata is unavailable.

## Remote privacy modes

- **Local full node:** selector matching is local and discloses no search to an
  external provider.
- **Remote full compact blocks:** the client downloads the whole range. This has
  the highest bandwidth cost but reveals no selector or matched position.
- **Remote filtered query:** the provider learns the selectors, height ranges,
  timing, grouping, network identity, and the action positions returned.

Downloading tags and subsequently requesting only matching actions is still a
filtered query: the provider can map the requested positions back to tags. The
base API does not claim PIR, padding, decoys, or anonymity. Private remote
recovery requires downloading the full range or adding one of those mechanisms.

## Issuer audit routing

Detection-key screening authenticates the asset, salt, flag and reserved zero;
it does not reveal routing roles or their permutation. Slots do not identify an
address and no registered subject selector prefilters ciphertexts. Named-person
audit selection uses separate proof-bound ownership ciphertexts and requires
external PET, which is not implemented. See [compliance](compliance/flow.md) and
[audit selection](disclosure.md#pet-ready-audit-selection). Routing grants no
spending or release authority.
