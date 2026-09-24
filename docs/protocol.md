# Protocol reference

This page describes current Shieldd records. Exact field ordering and encodings
live in the linked code and schemas. Internal format policy is in [AGENTS.md](../AGENTS.md).

## Keys and addresses

[BIP44 derivation](../crates/core/keys/src/keys/bip44.rs) uses
`m/44'/6532'/account'`. The spend seed derives spend authorization and nullifier
keys. Full viewing keys contain the spend verification key and nullifier key;
incoming viewing keys scan incoming notes, and outgoing viewing keys recover
sent-note data. Proving can be delegated without giving the builder signing keys.
Key constructors enforce the current nonzero/nonidentity refinements.

[Addresses](../crates/core/keys/src/address.rs) contain a 16-byte diversifier and
32-byte canonical transmission key. The payload is F4Jumbled; serialized addresses
include the suite tag defined in [interoperability](jubjub-external-contract.md#keys-and-encodings)
and use Bech32m for text. Diversifiers are AES-derived from address indices; the diversified
basepoint uses the `Shieldd_Divrsfy` domain, and the transmission key is
`ivk * B_d`. There is no separate discovery key in the address. Exact key KDF
labels and rejection rules live in [keys](../crates/core/keys/src/keys).
[Routing](routing.md) describes selector derivation and remote-provider leakage.

## Assets, notes and nullifiers

An amount is a `u128`; a value pairs it with a canonical asset ID. Asset IDs are
field-valued hashes of canonical denominations, distinct from IBC’s SHA-256
trace identifier. Use [asset derivation](../crates/core/asset/src/asset/id.rs),
including its vectors, rather than deriving identifiers in callers. Base-asset
fees consist of the required gas charge and any excess tip.

A [note](../crates/core/component/shielded-pool/src/note.rs) contains a value,
address, random seed and recovery commitment. Its commitment uses Poseidon
`hash_6` under `Fq(BLAKE2b-512("shieldd.notecommit"))`, with ordered inputs:

```text
note blinding, amount, asset ID,
compressed diversified generator, transmission-key field, recovery commitment
```

The blinding derives from the seed under `Shieldd_DeriRcm`. Commitment-to-address
checks use the canonical diversified generator and transmission key. Note
ciphertexts use the note encryption implementation’s authenticated encoding;
recovery capsules have a separate proved relation described in
[enforcement and seizure](compliance/enforcement-and-seizure.md).

A [positioned nullifier](../crates/core/component/sct/src/nullifier.rs) is
`hash_3(Fq(BLAKE2b-512("shieldd.nullifier")), (nk, commitment, position))`.
Regulated actions use the effective compliance-scoped nullifier key selected by
the proved policy relation. Consensus rejects duplicate/spent nullifiers.
[Nullifier history](nullifier-history.md) defines current/previous generations,
archived nonmembership proofs, and activation/pruning requirements.

The tiered commitment tree preserves ordered positions, height-aware hash domains
and finalized padding. Validators can forget witnesses; wallets retain owned-note
witnesses. [State](state.md) defines batched materialization and storage invariants.

## Transactions and signing

A [transaction plan](../crates/core/transaction/src/plan.rs) exposes intended
effects for authorization. Proof construction fills action proofs; authorization
assembly adds exactly one SpendAuth signature per Transfer, NoteReshape or
ShieldedHostWithdrawal, including the private fee-funding action, and retains the
transaction binding signature. Each action samples a fresh randomizer before
signing; its key binds every real input to the shared owner in the circuit.
Duplicate action keys within one transaction are rejected, including fee funding;
there is no persistent key-reuse set. Software and FROST custody use the same
action order with fee funding last. Missing, extra or reordered authorizations
fail count or key/signature checks. Delegated proving receives no spending secret.

[Effect hashes](../crates/core/txhash/src/effect_hash.rs) use BLAKE2b-512 with an
8-byte little-endian type-URL length, the type URL and encoded effecting data.
The [transaction body](../crates/core/transaction/src/transaction.rs) combines
parameter, memo and fee-funding hashes, the explicit nullifier window, the action
count and ordered action hashes. SpendAuth signatures bind these intended effects;
the Binding signature covers the complete body’s auth hash. Balance commitments,
including private fee funding, must sum to zero. Frozen signing vectors live in
[transaction tests](../crates/core/transaction/tests).

Supported user action families are defined by [Action](../crates/core/transaction/src/action.rs).
Transfer binds its receiver ciphertext, metadata, owner accumulator payload and
proof context. NoteReshape preserves sender ownership and regulated Active status.
Withdrawals bind the complete destination and withdrawn value. Each action carries
its own proof; [native verification](proof-system.md) batches compatible statements.

Host deposits, registrations, status changes and seizure use canonical host
source locations and replay-protected receipts. Bankd supplies their authorization;
Shieldd validates the state/proof prerequisites. [HostExecution](../crates/core/app/src/app/host.rs)
defines legal lifecycle transitions and exact source/digest encoding.

## Withdrawals and proof systems

`ShieldedHostWithdrawal` is the withdrawal action. Its `HostWithdrawal` carries
an asset, amount, and either a transfer recipient or host execution calls.
Bankd settles the resulting host effects and owns all IBC execution.
`ShieldedWithdrawalProof` binds the host destination effect hash, value and
compliance facts; the canonical proof family is `shielded_withdrawal`.

[Native circuits](../crates/crypto/circuits/src) and Rust witness projections
share Jubjub encodings and Poseidon-381 domains. Relation coverage is defined in
[Circuit constraints](circuits.md). The
[proof registry](proof-system.md) binds each circuit relation and its configured
verification key. Key changes require fresh pool and wallet state.
