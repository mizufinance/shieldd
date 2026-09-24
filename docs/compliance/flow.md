# Compliance

Shieldd proves asset policy and regulated-address eligibility and publishes
ciphertexts for issuer detection and authorized audit. Bankd owns host
admission and settlement; external policy services authorize disclosure.
[Circuit constraints](../circuits.md) define what the proofs establish,
[interoperability](../jubjub-external-contract.md) defines external crypto
encodings, and [seizure](enforcement-and-seizure.md) defines privileged enforcement.

## Policy and registration

An `AssetPolicy` contains issuer detection parameters and a daily volume limit,
IBC route policy, the RNK derivation ring, audit keys and epoch, policy identifiers,
and registration/seizure authority keys. The [domain record](../../crates/core/component/compliance/src/structs.rs)
owns its encoding; the [indexed leaf](../../crates/core/component/compliance/src/indexed_tree.rs)
owns the authenticated projection. Issuer and ring projections enter the asset
tree. Authority keys remain host-validated state; membership is not an authority grant.

Registered assets prove membership; other assets prove a canonical nonmembership
gap. Asset ID zero is the indexed-tree sentinel and cannot be registered or used
as a Transfer or Withdrawal asset. Policy admission rejects identity detection
and RNK ring keys. Audit-key separation and canonical encoding requirements are
specified in [interoperability](../jubjub-external-contract.md#keys-and-encodings).
Policies and registrations are immutable; route whitelists cover the first hop.

Each regulated `(address, asset)` leaf commits both address points, the asset ID,
RNK DH point, RNK commitment and lifecycle. Address and RNK DH points must be
canonical nonidentity subgroup points; the RNK commitment must be nonzero.
The registration certificate binds `rnk_dh_pk = ring_sk * G_d` and the commitment.
The packed lifecycle contains status, freeze generation and frozen-since height.
The user tree has arity four and depth sixteen.

Spending and receiving regulated assets require `Active` leaves under the exact
current user root; policies use the exact current asset root. The same address
may register independently for different assets. One live address per KYC identity
is an external ACP requirement: Shieldd authenticates address-specific grants,
but stores no KYC identity record that could enforce that uniqueness.

## Transfer visibility

Regulated transfers use the authenticated policy. Unregulated transfers use
fixed sink keys and empty-string policy hashes, with the same circuit shape and
unconditional encryption checks. A gap predecessor's daily limit cannot enable
unregulated accumulation or disclosure.

Detection always encrypts `(asset_id, salt, flag, 0)` to the selected issuer DK.
The flag is boolean; there is no role, address index or routing permutation in
that plaintext. The four payload tiers use the following fixed order:

| Tier | Plaintext | Owner checked by PET | Unflagged regulated key | Flagged regulated key |
| --- | --- | --- | --- | --- |
| Sender core | Amount | Sender | Shared payload key | Issuer DK |
| Sender extension | Receiver address | Sender | Shared payload key | Issuer DK |
| Output core | Amount | Receiver | Shared payload key | Issuer DK |
| Output extension | Sender address | Receiver | Shared payload key | Issuer DK |

Capsules also use the asset payload key; RNK derivation and ownership checking
use their separate keys. Decryption does not grant spending or seizure authority.
Unregulated ciphertexts select the sink policy and establish no issuer or
external-release capability.

Honest construction samples a fresh private CSPRNG nonce root per Transfer,
including separate roots for sibling actions and fee funding. Domain separation
derives salts, seeds and nonzero tier randomizers. Root freshness is a privacy
precondition, not a circuit-enforceable fact about a malicious creator's randomness.

## Daily volume state

An external regulated ordinary Transfer stays undisclosed by proving a real
accumulator transition with checked `u128` addition and
`prior_undisclosed_volume + receiver_amount <= daily_volume_limit`. Equality is
allowed. A larger candidate or explicit disclosure request uses padding, flags
only the current transfer, and leaves the accumulator head unchanged. Unregulated
and self-transfers remain unflagged. Fee funding uses a proof-bound disabled
context and emits no accumulator commitment.

The accounting day is UTC-aligned and independent of SCT epochs. Target timestamps
must be within ±30 minutes of signed block time. A day's first transition emits a
private deterministic origin nullifier; later transitions prove SCT membership
of the predecessor and derive its positioned nullifier. Ordinary transfers emit
indistinguishable real or padding commitments.

Volume nullifiers live in a day-scoped set, separate from global spend-nullifier
history, and are pruned strictly after `day_start + 24h + 30m`. The owner recovers
the transition from a 108-byte OVK-authenticated compact-block payload containing
92 plaintext bytes. Each day starts a new origin. Incomplete history prevents
tracked transfers for that day while disclosure remains available. The issuer
learns the current transfer, not the private total. [Wallet state](../wallet.md)
owns reservation, recovery and concurrent-completion rules.

## Wire and acceptance

Only the receiver output carries the 835-byte `TransferComplianceCiphertext`
and 272-byte `TransferComplianceMetadata`; inputs and change carry neither.
The ciphertext binds four tiers, two ownership ciphertexts, key confirmations
and detection. Metadata binds four policy hashes, the timestamp, audit epoch and
four salts. The [ciphertext codec](../../crates/core/component/compliance/src/transfer.rs)
and [metadata codec](../../crates/core/component/compliance/src/decode_object.rs)
define exact order. Fields and points decode canonically; timestamp zero and
incorrect lengths are rejected. Address plaintext packs two canonical field
encodings into 31-byte stream words. Tier identity comes from position.

The circuit binds this data to the statement; consensus additionally checks
current roots, timestamp freshness, proof and spend signatures, spend/volume
nullifier uniqueness and the binding signature. The Transfer effect hash covers
ciphertext, metadata, accumulator payload and proof context, so a delegated
builder cannot replace them after authorization. Release points and DLEQ proofs
belong to the privileged seizure path, not ordinary transaction or scanner bytes.

## Issuer scanning and evidence

The scanner identifies accepted outputs through `BlockRef`, `TxRef`, `ActionRef`
and `OutputRef`, using the transaction crate's canonical `TransactionId`.
It validates block/parent hashes and rolls back to the common ancestor on a reorg.
`ComplianceScreener` performs pure decoding and DK screening; it owns no storage,
chain access or release calls.

The source supplies bounded canonical transaction pages. Screening retains relevant
records and at most 256 invalid ciphertexts per block; irrelevant traffic increments
coverage counters without durable ciphertext rows. Structural decoding failures
are invalid, transfer detection nonmatches are irrelevant, and target-asset
withdrawals retain their flagged/unflagged classification.

Retained results are spooled into a private anonymous file with a 256 MiB local
budget. Cancellation/process exit removes scratch data. One synchronous SQLite
transaction streams evidence, counters and coverage, rechecking the predecessor
and the public detection-key/target-asset identity. It performs no network calls
or screening. Identity conflicts roll back the batch; configuration changes require
reset/replay. Reorg rollback includes evidence and coverage. Relevant ciphertext
bytes are preserved exactly. Evidence contains the
output/block identity, detection facts, ciphertext, metadata and payload hash.
`validate_and_save_evidence_object` checks byte equality and the persisted
asset/flag/salt/reserved-zero facts before completing downstream work. Failures
remain durable with bounded attacker-controlled reason text.

```text
pending -> evidence_valid | evidence_invalid
evidence_valid -> evidence_invalid | decrypt_failed | audit_complete
evidence_invalid -> evidence_valid
decrypt_failed -> audit_complete
audit_complete -> audit_complete
```

Flagged transfers can complete through issuer-DK decryption after evidence
validation. Unflagged payloads require authorized threshold release; distributed
PET and release integration are unavailable, so those rows cannot currently
complete. Scanner evidence does not publish seed-opening material. Voluntary
and issuer submissions use the separate [disclosure API](../disclosure.md).

Source owners: [scanner](../../crates/core/component/compliance/src/scanner/),
[evidence](../../crates/core/component/compliance/src/evidence.rs), and
[audit](../../crates/core/component/compliance/src/audit.rs).
