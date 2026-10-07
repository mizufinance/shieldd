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
the proved policy relation. Consensus rejects duplicate/spent nullifiers. Equal note commitments at distinct
accepted SCT positions are allowed and have separate positional nullifiers.
[Permanent nullifiers](nullifier-history.md) defines the authenticated set and
coordinated durable transition.

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
parameter, memo and fee-funding hashes, the action
count and ordered action hashes. SpendAuth signatures bind these intended effects;
the Binding signature covers the complete body’s auth hash. Balance commitments,
including private fee funding, must sum to zero. Frozen signing vectors live in
[transaction tests](../crates/core/transaction/tests).

### Same-chain joint transactions

The [joint wallet API](../crates/core/transaction/src/joint.rs) assembles ordinary
fixed-shape Transfer actions from independent wallets into one atomic transaction.
An owner can contribute several independent asset legs; a separate bank or wallet
can own only the existing FeeFunding action. The [settlement demos](../crates/core/app-tests/tests/suite/private_avp.rs)
cover regulated AvP/DvP, a three-owner basket, threshold fee sponsorship and actual
receipt spending. AvP exchanges assets; DvP delivers a security against cash.
All legs settle on one shielded chain, using the existing proof registry.

Wallets agree on the finalized SCT anchor, ordered action count, chain ID, expiry,
fee and encrypted memo before proving. Each wallet keeps its plans, witnesses and
keys local and exchanges only serialized proof-bearing Action/FeeFunding records.
A JointSigningRequest contains the complete candidate, local plan, owned action
indices and distinct incoming output expectations. It stays within that owner's
custody group. Every signer reconstructs its own action effects and randomized
keys, checks the shared terms, and decrypts each expected receipt to verify its
address, asset, amount and wrapped memo. Negotiating wallets also verify every
peer proof through the canonical `TransferBody::proof_public` projection. Chain
admission separately checks current roots, grants, fees and unspent state.
All participants, including a fee-only sponsor, share the transaction memo key
and plaintext, including its return address.

Software custody and FROST both sign the complete transaction effect hash.
FROST followers repeat local checks before generating nonces; they receive no
bare digest override. The threshold CLI displays the complete public candidate
and the group's local terms for approval. Ordinary single-wallet plan signing
remains supported.
FROST approval and final binding assembly do not verify peer proofs; that check
belongs to negotiation and is repeated before wallets release balance openings.

Only after every spend authorization verifies do owners release their fresh,
transaction-specific balance openings. The assembler requires exactly one opening
per Transfer and fee slot, proves each principal commitment has zero residual,
checks fee coverage and the nonidentity aggregate binding key, then signs the
complete body auth hash. Contributions bind that final body and its anchor;
changed proofs or signature bytes require fresh contributions. Proof-internal
openings and authorization randomizers never cross the owner coordination boundary.

Existing asset and user registration actions can share the same sponsored
transaction. Transfers precede asset registrations, which precede user
registrations; the host validates fee funding against the pre-transaction roots.
Each registration retains its authority grant and certificate checks. A later
invalid or expired grant rolls back earlier registrations, audit records and fee
spends. Newly registered leaves cannot be used by ordinary proofs built against
the preceding roots. Registration composition does not change private volume
accounting or the fixed Transfer relation.

Run it with a development Pari registry matching the current circuits:

```sh
export CARGO_BUILD_JOBS=2 RAYON_NUM_THREADS=2
cargo run --locked --profile ci -p shieldd-sdk-proof-params --example pari_setup -- /tmp/shieldd-avp-keys
SHIELDD_PARI_KEYS=/tmp/shieldd-avp-keys cargo test --locked --profile ci -p shieldd-sdk-app-tests --test suite --all-features -- private_avp:: joint_registration:: --ignored --nocapture --test-threads=1
```

Regulated cases install asset policies and active participant registrations through
genesis, including the receiving addresses. Wallet completion uses confirmed
volume recovery and a compliance snapshot at the same finalized height. Private
external legs advance each sender's encrypted daily volume accumulator; reopening
the wallet recovers the exact outgoing volume. Self-directed receipt spends and
fee funding do not advance that volume. Both regulated legs use distinct registered
assets; the base fee token cannot be registered as regulated. In the private case,
the issuer cannot recover full transaction terms through the flagged disclosure ciphertext. A
separate explicitly disclosed case verifies issuer recovery of the agreed terms.
The genesis policies use the default daily limit; these fixtures do not exercise
crossing a configured threshold. Existing audit-key visibility still applies.

A fork of the pre-settlement state accepts the complete transaction in CheckTx,
then freezes a recipient. DeliverTx rejects that same transaction as a stale
compliance snapshot, despite the cached stateless verification. The committed
rejection leaves no consumed input or volume nullifiers, indexed transaction,
output payloads, or host withdrawals. The unfrozen chain accepts the transaction.
A status change requires fresh proofs and both owners' renewed authorization.

The demos check native atomic rejection, positive fees, usable receipt notes,
persisted wallet history across reopen, and actual spends using recovered notes
and witnesses. Receipt recognition matches accepted
effects and input nullifiers, recording the actual txID because randomized
signatures can produce different IDs for the same authorized effects.
Amounts, asset identities and recipients stay encrypted on chain; the fee and
ordinary transaction metadata remain public. Participants know their negotiated
terms, and any coordinator given those terms also knows them.

The API has no durable negotiation session or input reservation. Callers provide
authenticated transport, cancellation/retry handling and Bankd submission. Atomic acceptance does not guarantee completion:
the final assembler can withhold submission. Cross-chain settlement requires a
separate protocol; the same-chain transaction does not provide it.

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
