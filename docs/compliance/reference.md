# Compliance Reference

Technical lookup material for the current transfer compliance surface.
See [the flow](flow.md) for the end-to-end lifecycle.

## Transfer Wire Format

Only the receiver `TransferOutputBody` carries compliance bytes. Transfer
inputs and the change output must not carry compliance data.

General audits select amount (output core), sender (output extension), or
receiver (sender extension). Named-person audits select a role and field; PET
must authorize that specific selection before any payload share is released.
Flagged payloads use the issuer key. Ownership ciphertexts use the independent
checking key; no current command implements a distributed PET. See
[disclosure](../disclosure.md) for the capability map and upstream gaps.

`TransferComplianceCiphertext` is 835 bytes: suite byte, four compressed Jubjub
EPKs, four field c2 values, two suite-tagged 65-byte ownership ciphertexts,
two confirmation fields, four detection fields and eight payload fields.
`TransferComplianceMetadata` is 272 bytes: four policy hashes, timestamp,
audit epoch and four salts. Exact order is defined by the
[canonical codec](../../crates/core/component/compliance/src/transfer.rs) and
[metadata codec](../../crates/core/component/compliance/src/decode_object.rs).

Every Fq and compressed point must decode canonically. Metadata timestamp zero
is invalid. Tier labels are not serialized; fixed ordering is the tier domain.

The transport has no upload bundle, encrypted seed envelope, public shared
point, DLEQ challenge, or DLEQ response.

After decryption, the four detection words are:

```text
0  asset_id
1  detection_salt
2  is_flagged
3  reserved_zero
```

The flag is canonical boolean and word 3 is exactly zero. Word 0 is the exact
asset ID. Detection carries no slot, role permutation, derivation, address
fragment, or index.

## Transfer Key And Address Validity

The Transfer relation constrains subgroup membership and nonidentity for the
authorization key, both address generators and all four audit EPKs. For a
prime-subgroup Jubjub point, `x = 0` occurs only at identity. The subgroup gadget
proves an on-curve cofactor preimage; the identity check constrains invertible x.
These checks prevent ambiguous ownership and publicly decryptable EPKs.

## Transfer Public Statement

The fixed 2x2 Transfer statement has 69 field elements. Every public point binds
both affine coordinates. It includes state roots, output/recovery commitments,
balance, routing, recent floor, volume transition, two nullifier/key/history
records, detection and tier ciphertexts, policy metadata, audit epoch and both
ownership ciphertexts. The authoritative order is
[`Statement::fields`](../../crates/crypto/circuits/src/transfer.rs).
Its Poseidon domain is `TRANSFER_STATEMENT` in the shared domain registry.
Runtime witness parity tests compare this reconstruction with action bytes.

## Effective Policy Selection

| Value | Regulated | Unregulated |
| --- | --- | --- |
| `ring_pk` | registered asset leaf | fixed unregulated sink ring point |
| `dk_pub` | registered asset leaf | fixed unregulated sink DK point |
| daily volume limit | registered limit | authenticated gap-predecessor limit; ignored outside regulated membership |
| four policy hashes | registered strings | hash of the empty string |

The circuit constrains `is_regulated` to exact asset-tree membership or a valid
canonical non-membership gap. Encryption checks run in both branches.
Registry admission rejects identity `dk_pub` and `ring_pk` values before a
policy can be committed to the asset tree.

An external regulated ordinary Transfer is unflagged only when it proves a
real transition whose checked candidate is at most the authenticated daily
volume limit. The fixed padding branch flags the transfer. Unregulated,
self-transfer, and fee-funding contexts remain unflagged.

For regulated assets, audit-tier shared secrets select the registered role key
when unflagged and issuer DK when flagged. Detection always uses the selected DK. Each tier has an
independent randomizer and EPK. Honest construction derives them from one
fresh private CSPRNG nonce root per Transfer action. That root must not be
reused across sibling Transfers or fee funding; its uniqueness and entropy are
native privacy premises, not public circuit facts.

## Registry Trees

`AssetPolicy` groups issuer parameters (`dk_pub`, daily volume limit, IBC routes
and origin), ring data (RNK derivation key, audit keys and policy identifiers),
and registration/seizure authority keys. [The domain record](../../crates/core/component/compliance/src/structs.rs)
defines storage encoding; [the indexed leaf](../../crates/core/component/compliance/src/indexed_tree.rs)
defines its authenticated projection.

The IMT commits issuer parameters and ring data through policy subhashes, including
the canonical route-policy hash and both audit keys with their epoch. Registration
and seizure authority verification keys remain host-validated policy state outside
that leaf. Successful membership alone does not establish a host authority grant.

| Tree | Purpose | Shape |
| --- | --- | --- |
| Compliance tree | `(address, asset) -> ComplianceLeaf` | arity 4, depth 16 |
| Asset tree | regulated policy membership and unregulated gap | indexed tree |

Consensus requires the exact current mutable asset-policy and user-status
roots. Large node
materialization is nonverifiable storage checked against those committed
roots.

`ComplianceLeaf` is

```text
Poseidon(COMPLIANCE_LEAF, [
  diversified_generator.x, diversified_generator.y,
  transmission_key.x, transmission_key.y, asset_id,
  rnk_dh_pk.x, rnk_dh_pk.y, RNK_commitment, packed_lifecycle
])
```

Address and RNK DH points must be canonical, nonidentity subgroup points. The
registration certificate binds `rnk_dh_pk = ring_sk * G_d` and the RNK commitment.
The wallet derives the RNK through static DH; the corresponding production Orbis
release API is not implemented. Capsules use the asset policy's payload key.
The leaf exposes only its Poseidon commitment. The packed lifecycle injectively
contains status, freeze generation, and frozen-since height. Asset ID zero is
reserved for the indexed-tree sentinel and cannot be registered or used as a
Transfer or Withdrawal action asset.

## Scanner Types And Tables

```rust
BlockRef { height, block_hash, parent_hash, block_time_unix }
TxRef { block, tx_index, tx_hash }
ActionRef { tx, action_index }
OutputRef { action, output_index }
ExtractedComplianceCiphertext { output_ref, routing_tags, raw_bytes, metadata_bytes }
```

| Table | Purpose |
| --- | --- |
| `scanner_blocks` | canonical block identity and scan status |
| `scanner_ciphertexts` | accepted ciphertext and metadata bytes |
| `scanner_detections` | DK-detected private outputs and audit status |
| `scanner_invalid_ciphertexts` | bounded malformed rows |
| `scanner_invalid_ciphertext_summaries` | overflow counts |
| `scanner_sync` | replay cursor |
| `compliance_evidence_objects` | canonical evidence bytes |
| `audit_rows` | normalized audit projection |
| `audit_decryption_failures` | bounded decryption failures |
| `audit_evidence_failures` | bounded evidence failures |

## Scanner evidence

`ComplianceEvidenceObject` contains:

```text
transfer object type
OutputRef and block identity
asset id, flag, detection salt
TransferComplianceCiphertext
TransferComplianceMetadata
SHA-256 payload hash
```

It deliberately excludes release material, DH shared points, and standalone DLEQ
proofs. `validate_and_save_evidence_object` verifies the payload hash, metadata
shape, accepted ciphertext/metadata byte equality, and persisted detection
facts before advancing the row to `evidence_valid`.

## Audit Boundary

Flagged transfers can be completed by issuer-DK decryption after evidence
validation. Scanner evidence never publishes seed-opening material. The
privileged note-seizure host call uses a capsule-specific point and DLEQ proof;
see [`enforcement-and-seizure.md`](enforcement-and-seizure.md).

Transfer statements, user transactions, and scanner evidence do not contain
capsule-release material.

## Circuit Implementation Boundary

Transfer and shielded withdrawal use the native Pari circuits under
`crates/crypto/circuits/src`, with runtime witness projections in the shielded pool.

## Restrictions

- Flagging discloses only the current external regulated Transfer. Real
  accumulator transitions advance only undisclosed receiver volume.
- Equality with `daily_volume_limit` remains undisclosed; a greater candidate
  uses the disclosed padding branch.
- Note reshapes carry no transfer audit ciphertext, but regulated reshapes prove
  the owner leaf is `Active` under the exact current compliance root.
- Asset policies and registrations are immutable.
- Channel whitelist enforcement is first-hop only.
- Cross-tier randomizer/EPK independence is mandatory.
- Metadata belongs only to the receiver output.
- Capsule-release material must remain outside user transactions and scanner evidence.

## Source Map

| Component | Location |
| --- | --- |
| Ciphertext construction | `crates/core/component/compliance/src/transfer.rs` |
| Metadata codec | `crates/core/component/compliance/src/decode_object.rs` |
| Native crypto | `crates/core/component/compliance/src/crypto.rs` |
| Transfer circuit | `crates/crypto/circuits/src/transfer.rs` |
| Witness projection | `crates/core/component/shielded-pool/src/transfer/proof.rs` |
| Rust statement builder | `crates/core/component/shielded-pool/src/public_input_hash.rs` |
| Scanner | `crates/core/component/compliance/src/scanner/` |
| Evidence and audit | `crates/core/component/compliance/src/evidence.rs`, `audit.rs` |
| Formal verification | [`shieldd-security`](https://github.com/mizufinance/shieldd-security) |
