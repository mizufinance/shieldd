# Compliance Reference

Technical lookup material for the current transfer compliance surface.
See `flow.md` for the end-to-end lifecycle.

## Transfer Wire Format

Only the receiver `TransferOutputBody` carries compliance bytes. Transfer
inputs and the change output must not carry compliance data.

```text
TransferComplianceCiphertext: 640 bytes
  0..128    four compressed EPKs
             sender_core, sender_ext, output_core, output_ext
  128..256  four canonical Fq c2 values in the same order
  256..384  four-Fq detection ciphertext
  384..416  sender_core ciphertext: one Fq
  416..512  sender_ext ciphertext: three Fq
  512..544  output_core ciphertext: one Fq
  544..640  output_ext ciphertext: three Fq

TransferComplianceMetadata: 264 bytes
  0..32     ring_id_hash Fq
  32..64    policy_id_hash Fq
  64..96    resource_hash Fq
  96..128   permission_hash Fq
  128..136  target_timestamp u64 little-endian
  136..168  sender_core_salt Fq
  168..200  sender_ext_salt Fq
  200..232  output_core_salt Fq
  232..264  output_ext_salt Fq
```

Every Fq and compressed point must decode canonically. Metadata timestamp zero
is invalid. Tier labels are not serialized; fixed ordering is the tier domain.

The transport has no upload bundle, encrypted seed envelope, public shared
point, DLEQ challenge, or DLEQ response.

After decryption, the four detection words are:

```text
0  asset_id
1  detection_salt
2  is_flagged
3  reserved zero
```

The flag is a canonical bit. Word 0 is the exact asset id and word 3 must be
zero. The public routing tags provide the address candidate filter separately.

## Transfer Key And Address Validity

The Transfer relation has three explicit one-row Decaf identity exclusions:

```text
authorization_key.x             != 0
sender.diversified_generator.x  != 0
receiver.diversified_generator.x != 0
```

For the on-curve companion-Edwards points consumed by the surrounding gadgets,
`x = 0` is exactly the Decaf identity class. These rows match Rust's
full-viewing-key and address allocation rules. In particular, the sender row
prevents identity-DTK ownership aliasing, and the receiver row prevents a
malicious proof from creating a note with that ambiguous owner.

## Transfer Public Statement

The fixed 2x2 Transfer statement has 45 Fq fields. Its hash uses the
`shieldd.shielded_pool.transfer.public_input_hash.v7` domain.

```text
 0       anchor
 1..2    receiver and change note commitments
 3       balance commitment
 4..5    fixed two-slot routing tags
 6       routing parameter-set identifier
 7       recent position floor
 8..13   two (nullifier, randomized verification key, history-required bit) triples
14..15   asset and compliance anchors
16..19   detection ciphertext
20..22   sender_core: EPK, c2, one ciphertext word
23..27   sender_ext: EPK, c2, three ciphertext words
28..30   output_core: EPK, c2, one ciphertext word
31..35   output_ext: EPK, c2, three ciphertext words
36       target_timestamp
37..40   ring, policy, resource, and permission hashes
41..44   sender-core, sender-ext, output-core, and output-ext salts
```

The exact tail append order is:

```text
target_timestamp,
ring_id_hash,
policy_id_hash,
resource_hash,
permission_hash,
sender_core_salt,
sender_ext_salt,
output_core_salt,
output_ext_salt
```

The metadata timestamp is not appended twice: its serialized value must equal
the statement's existing `target_timestamp`. The authoritative builders are
`transfer_statement_fields` in Rust and `buildTransferStatementFields` /
`ReconstructedTransferStatementFieldsFromWitnessV20` in Go.

## Effective Policy Selection

| Value | Regulated | Unregulated |
| --- | --- | --- |
| `ring_pk` | registered asset leaf | fixed unregulated sink ring point |
| `dk_pub` | registered asset leaf | fixed unregulated sink DK point |
| threshold comparator input | registered threshold | authenticated gap-predecessor threshold; ignored by the regulation gate |
| four policy hashes | registered strings | hash of the empty string |

The circuit constrains `is_regulated` to exact asset-tree membership or a valid
canonical non-membership gap. Encryption checks run in both branches.
Registry admission rejects identity `dk_pub` and `ring_pk` values before a
policy can be committed to the asset tree.

The threshold flag is
`is_regulated * (amount >= authenticated_leaf_threshold)`. It follows that
regulated assets use their registered threshold exactly, while unregulated
assets are never flagged regardless of the authenticated predecessor leaf's
threshold or the receiver amount.

For regulated assets, audit-tier shared secrets select ACK when unflagged and
issuer DK when flagged. Detection always uses the selected DK. Each tier has an
independent randomizer and EPK. Honest construction derives them from one
fresh private CSPRNG nonce root per Transfer action. That root must not be
reused across sibling Transfers or fee funding; its uniqueness and entropy are
native privacy premises, not public circuit facts.

## Registry Trees

| Tree | Purpose | Shape |
| --- | --- | --- |
| Compliance tree | `(address, asset) -> ComplianceLeaf` | arity 4, depth 16 |
| Asset tree | regulated policy membership and unregulated gap | indexed tree |

Consensus requires the exact current mutable asset-policy and user-status
roots. Large node
materialization is nonverifiable storage checked against those committed
roots.

`ComplianceLeaf` v5 is

```text
PoseidonHash5(
  "shieldd.compliance.leaf.v5",
  diversified_generator_fq,
  transmission_key_fq,
  asset_id,
  d,
  status
)
```

The address encodings must be canonical, and `d` must equal the nonzero scalar
derived from the complete canonical address bytes. Asset id zero is reserved
for the indexed-tree sentinel and cannot be registered or used as a Transfer
or Withdrawal action asset.

Address audit plaintext is the canonical 64-byte little-endian concatenation
of `diversified_generator_fq` and `transmission_key_fq`, split into 31-byte
stream words. Gnark's `ToBinary(..., 256)` clamps each native field to 253
bits, enforces the built-in `<= p-1` check, and pads the remaining three bits
with zero; the formal provider exposes this reducedness condition explicitly.

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
| `scanner_clear_flows` | public shield/withdraw projections |
| `scanner_sync` | replay cursor |
| `compliance_evidence_objects` | canonical evidence bytes |
| `audit_rows` | normalized audit projection |
| `audit_decryption_failures` | bounded decryption failures |
| `audit_evidence_failures` | bounded evidence failures |

## Evidence Version 3

`ComplianceEvidenceObject` contains:

```text
version and transfer object type
OutputRef and block identity
asset id, flag, detection salt
TransferComplianceCiphertext
TransferComplianceMetadata
SHA-256 payload hash
```

It deliberately excludes PRE envelopes, DH shared points, and standalone DLEQ
proofs. `validate_and_save_evidence_object` verifies the payload hash, metadata
shape, accepted ciphertext/metadata byte equality, and persisted detection
facts before advancing the row to `evidence_valid`.

## Audit Boundary

Flagged transfers can be completed by issuer-DK decryption after evidence
validation. Orbis v0 export and import always return errors because its public
proof reveals the seed-opening DH point. Consequently, unflagged ACK-tier PRE
audit is currently unavailable.

The retained DLEQ implementation and Lean/Tamarin material are standalone
research. No deployed statement field, transaction byte, evidence object, or
certification claim depends on them.

## Circuit Implementation Boundary

The deployed Transfer and shielded-withdrawal proving systems are the gnark
circuits under `tools/gnark/`. The obsolete Arkworks alternative modules
historically exported as `compliance/src/r1cs.rs` and
`shielded-pool/src/r1cs.rs` were deleted and must not be cited as circuit
evidence. Their zero-anchor skip is not part of the accepted gnark language;
there is no second circuit architecture to maintain.

## Restrictions

- Flagging is per receiver amount and regulation-gated:
  `is_regulated * (amount >= authenticated_leaf_threshold)`.
- Note reshapes carry no transfer audit ciphertext, but regulated reshapes prove
  the owner leaf is `Active` under the exact current compliance root.
- Asset policies and registrations are immutable.
- Channel whitelist enforcement is first-hop only.
- Cross-tier randomizer/EPK independence is mandatory.
- Metadata belongs only to the receiver output.
- PRE must remain disabled until a non-disclosing v1 is circuit-bound and
  formally reviewed.

## Source Map

| Component | Location |
| --- | --- |
| Ciphertext construction | `crates/core/component/compliance/src/transfer.rs` |
| Metadata codec | `crates/core/component/compliance/src/decode_object.rs` |
| Native crypto | `crates/core/component/compliance/src/crypto.rs` |
| Transfer circuit | `tools/gnark/internal/circuits/transfer_circuit.go` |
| Witness ABI | `tools/gnark/internal/abi/transfer_witness_binary.go` |
| Rust statement builder | `crates/core/component/shielded-pool/src/public_input_hash.rs` |
| Scanner | `crates/core/component/compliance/src/scanner/` |
| Evidence and audit | `crates/core/component/compliance/src/evidence.rs`, `audit.rs` |
| Formal transfer semantics | `tools/gnark/lean/ShielddGnarkFormal/Protocol/Transfer/` |
