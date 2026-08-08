# Compliance Reference

Technical lookup material for compliance. See `flow.md` for the end-to-end
walkthrough.

## Transfer Wire Format

The receiver `TransferOutputBody.compliance_ciphertext` carries the unified
transfer compliance ciphertext. Transfer inputs and change outputs must carry
empty compliance bytes.

```text
TransferComplianceCiphertext: 585 bytes
  0..128    4 EPKs: sender_core, sender_ext, output_core, output_ext
  128..256  4 C2 envelopes, one per audit tier
  256..320  detection tier: asset id + flag, salt
  320..329  precision byte + sender and receiver fixed 32-bit discovery-tag slots
  329..361  encrypted sender_core amount
  361..457  encrypted sender_ext receiver address
  457..489  encrypted output_core amount
  489..585  encrypted output_ext sender address

TransferComplianceDleqProofs: 256 bytes
  4 * (challenge, response)
```

The legacy IBC memo type remains in `compliance/src/ibc.rs`, but it is not the
current transfer compliance wire.

## Registry Trees

| Tree | Purpose | Notes |
|------|---------|-------|
| QuadTree | `(address, asset) -> ComplianceLeaf` | Arity 4, depth 16, Poseidon377 |
| Indexed asset tree | asset regulation status | Membership for regulated assets, non-membership gap proof for unregulated assets |

Both trees emit historical anchors per block. Clients cache tree state locally;
issuer scanning uses a separate scanner DB and does not share wallet sync
tables.

Tree roots are committed in the app-state JMT. Tree nodes and leaves are stored
in nonverifiable storage as deterministic materialization and are checked
against committed roots at node readiness.

The asset tree remains an IMT because the compliance system needs membership
proofs for regulated assets and non-membership proofs for unregulated assets.
The nullifier set uses a dedicated JMT-style sparse tree instead because
nullifier insertion is validator-executed, not proved inside a circuit.

`ComplianceLeaf` stores the registered address, asset id, one Orbis user public
child key, and its independent 32-byte registration identifier. The leaf-tree
commitment binds the diversified address, asset id, and child
public key. Stateful registration additionally checks
`child_pk = ring_pk * OrbisHash(registration_id)`, while the authority grant and
application state bind the full registration. There are no user key indexes or
slots. The registration identifier is carried to Orbis only as its PRE
derivation input; it is never used for discovery.

## Scanner References

```rust
BlockRef { height, block_hash, parent_hash, block_time_unix }
TxRef { block, tx_index, tx_hash }
ActionRef { tx, action_index }
OutputRef { action, output_index }
ExtractedComplianceCiphertext { output_ref, raw_bytes, upload_bundle_bytes }
```

`tx_hash` must match Shieldd `TransactionId`. If a helper computes it outside
the transaction crate, keep the transaction-crate parity test mandatory.

`CompactBlock.transaction_discoveries` carries, for each shielded transfer,
the original `TransactionId` and its proof-bound sender/receiver discovery
tags. `DiscoveryBlockRange` is the privacy-preserving local-scan path;
`TransactionCandidates` is the optional server-filtered path. Both are bounded
to 10,000 blocks per request and can be paginated. A candidate response is only
routing advice: clients must fetch the original transaction and validate its
ciphertext, DLEQ evidence, and authorization metadata before asking Orbis for
PRE.

## Scanner DB Tables

| Table | Purpose |
|-------|---------|
| `scanner_blocks` | committed block identity and scan status |
| `scanner_ciphertexts` | raw extracted output ciphertexts and screening status |
| `scanner_detections` | DK-detected private transfer outputs and audit status |
| `audit_authorizations` | validated authorization ID/timestamp index keyed by output ref |
| `scanner_invalid_ciphertexts` | first capped malformed ciphertext rows per block |
| `scanner_invalid_ciphertext_summaries` | overflow count for invalid rows above cap |
| `scanner_clear_flows` | public shield/withdraw rows |
| `scanner_sync` | single-row height/hash cursor |
| `audit_rows` | normalized ledger projection |
| `audit_address_aliases` | optional labels for UI/reporting |
| `audit_row_audits` | idempotent subject audit marks |
| `audit_decryption_failures` | failed issuer-DK or Orbis decrypt attempts |
| `audit_evidence_failures` | evidence build/validation/import failures |
| `audit_orbis_receipts` | stored PRE receipt JSON |
| `compliance_evidence_objects` | canonical encrypted evidence object bytes |

`commit_block` atomically writes block identity, raw ciphertexts, screening
results, detections, invalid summaries, clear flows, audit projections, and
sync state. Reorg handling compares live parent hash to stored `height - 1`,
rolls back to a common ancestor, and replays.

## Scanner Boundaries

- `ScannerStore`: async storage boundary. SQLite is current; Postgres or remote
  stores should not change worker logic.
- `ComplianceScreener`: pure parse + detection-tier DK decrypt. No persistence,
  Orbis, ACP, audit, or chain I/O.
- `AuditAdviceProvider`: policy/ring/label lookup boundary. SourceHub, Orbis,
  ACP, and caches stay outside scanner logic.

## Evidence And Audit Status

`ComplianceEvidenceObject` is the canonical encrypted evidence payload for a
detected transfer:

```text
output ref
asset id, flag, detection salt
sender and receiver discovery tags plus their tier EPKs
transfer ciphertext
transfer DLEQ bundle
public tier decode objects
optional Orbis upload-bundle hash
payload hash
```

`AuditValidationInput` checks payload hash, canonical tier order, ciphertext and
proof byte consistency, tier DLEQ validation against `ring_pk`, and upload
bundle validation when present.

Valid audit states:

```text
pending
evidence_valid
evidence_invalid
decrypt_failed
audit_complete
```

Allowed transitions:

```text
pending -> evidence_valid
pending -> evidence_invalid
evidence_invalid -> evidence_valid
evidence_valid -> decrypt_failed
decrypt_failed -> audit_complete
evidence_valid -> audit_complete
audit_complete -> audit_complete
```

Both flagged issuer-DK decrypt and unflagged Orbis PRE import require
`evidence_valid`.

## Orbis Authorization Binding

Each audit tier carries Chaum-Pedersen/DLEQ material so Orbis can bind a PRE
request to the metadata that ACP authorized. The proof is verified when the
transaction is accepted because the transaction sender chooses the ciphertext
and proof. Issuers can later use the accepted DLEQ material as evidence that
the encrypted audit tier matches the authorized metadata. `ACK` is the user
public child key committed in the compliance leaf:

```text
authorization_id = Poseidon(auth_id_domain, transfer_nonce_root)
S  = r * ACK
R  = k * G
R' = k * ACK
M  = Poseidon(policy_id_hash, resource_hash, permission_hash, tier,
              authorization_timestamp, authorization_id, salt)
c  = Poseidon(ACK, EPK, S, R, R', M)
s  = k + c * r
```

Verifier reconstruction:

```text
R       = s * G   - c * EPK
R'      = s * ACK - c * S
c_check = Poseidon(ACK, EPK, S, R, R', M)
```

Tier constants:

| Tier | Constant |
|------|----------|
| sender_core | 1 |
| sender_ext | 2 |
| output_core | 3 |
| output_ext | 4 |

The authorization ID is a dedicated selector, distinct from the Shieldd
transaction ID, tier salt, and block metadata. All four statements in a
transfer must carry the same authorization ID and timestamp. The transfer
circuit derives the ID and constrains both values in each tier's metadata hash.
The scanner indexes them only after the evidence object and upload bundle have
validated.

Current Orbis encrypted-seed objects retain their existing
policy/resource/permission/tier/timestamp/salt metadata and proof. Shieldd
therefore validates two proofs in an upload package: the Shieldd transfer proof
above, which includes `authorization_id`, and the existing Orbis object proof.
New regulated packages carry the independent registration identifier as the
Orbis PRE derivation input. Shieldd checks that it derives the registered child
public key and that the DLEQ statement targets that key before encryption and
evidence acceptance.
The demo selects and revalidates the Shieldd authorization metadata before
requesting Orbis PRE. A future ACP integration must carry the Shieldd
authorization tuple through the Orbis authorization boundary. `C2` correctness
remains separate: it is established by the transfer construction and by
validating the decrypted seed against `C2` after PRE or issuer-DK decryption.

## Audit Selection And Authority

`AuditSelection` supports exact authorization ID and inclusive authorization
timestamp bounds. Master audits require at least one bound; user audits may
scan all validated candidates for the named subject. Selection is checked both
against the scanner index and against the extracted, validated upload bundle.

User authority first examines compact public discovery records with the
subject's public diversified address, then sends only matching candidates to
Orbis. False positives can reach Orbis but false negatives are not expected for
valid proof-bound tags. The subject's
registered user key selects the decryptable sender or receiver tiers. Master
authority uses the Orbis ring-key path and does not require a subject address.
Both paths support independent `sender`, `amount`, and `receiver` output fields.

The discovery tag for a role is:

```text
tag = low_n(address.transmission_key_s)
```

The transfer circuit binds each tag to the corresponding registered address and
to the transmission-key encoding committed by the note, and binds public
precision `n`. The tag is intentionally
independent from DLEQ authorization metadata. For unrelated transfers, one role matches with
probability `2^-n`; either of two role tags matches with probability
`1 - (1 - 2^-n)^2`. At the default 11 bits this is about 0.098%, or 976
candidates per million.

### Precision And Constraint Cost

`ShieldedPoolParameters.discovery_params.precision` selects 0 through 32 bits
for new transactions; 11 is the default. The precision is copied into the transfer plan,
stored in the ciphertext, included in the proof's public statement, and checked
against the current or grace-period previous protocol parameter during execution. Historical tags keep
their original precision.

The circuit has one fixed shape. It decomposes each canonical transmission-key
field element once, keeps the low 32 bits, and uses constrained selectors to
zero the inactive high bits.
Changing the public precision therefore changes only the false-positive rate,
not wire size, proving key, or constraint count.

| Bits per role | Either-role false positives | Candidates per million |
|---:|---:|---:|
| 8 | 0.780% | 7,797 |
| 9 | 0.390% | 3,902 |
| 10 | 0.195% | 1,952 |
| 11 | 0.098% | 976 |
| 12 | 0.049% | 488 |
| 16 | 0.0031% | 31 |

All rows use the same circuit and constraint count. The new construction removes
the two in-circuit DH scalar multiplications and two Poseidon hashes used by
the earlier auditor-FMD prototype; its remaining cost is bit decomposition and
dynamic truncation. The discovery-tag gadget is 1,208 constraints at every
precision, and the full canonical transfer circuit is 252,669 constraints.
Lean/formal artifacts are intentionally not regenerated here.

## Restrictions

- Flagging is per transfer receiver amount: `amount >= threshold`.
- Note reshapes do not carry compliance ciphertexts.
- Registrations and asset policies are immutable.
- Channel whitelist enforcement is first-hop only.
- No key rotation is currently defined.
- Knowing a subject address intentionally grants probabilistic transaction
  discovery through its public prefix; it does not grant decryption.
- Precision is protocol-wide, not issuer-specific. Asset ID is private in the
  transfer proof, so an issuer-specific public setting would require expanding
  the asset-policy leaf across every circuit that commits to it.
- Cross-tier independence is mandatory: independent EPK/randomness per tier.
- Orbis PRE operates on one encrypted-seed object per tier.
- Transfer-circuit constraints that compliance assumes are tracked separately in
  `../transfer-circuit/constraint-checklist.md`.

## Source Files

| Component | Location |
|-----------|----------|
| Transfer ciphertext/DLEQ | `crates/core/component/compliance/src/transfer.rs` |
| Discovery tag creation/examination | `crates/core/component/shielded-pool/src/discovery.rs`, `crates/core/component/compliance/src/participant.rs` |
| Transaction discovery stream/query | `crates/core/component/compact-block/src/discovery.rs`, `component/rpc.rs` |
| Crypto helpers | `crates/core/component/compliance/src/crypto.rs` |
| Compliance circuits | `crates/core/component/compliance/src/r1cs.rs` |
| Registry/trees | `crates/core/component/compliance/src/registry.rs`, `tree.rs`, `indexed_tree.rs` |
| Scanner | `crates/core/component/compliance/src/scanner/` |
| Evidence/audit | `crates/core/component/compliance/src/evidence.rs`, `audit.rs`, `audit_validation.rs` |
| Transfer planning/proofs | `crates/core/component/shielded-pool/src/transfer/` |
| Local compliance sync | `crates/view/src/storage/compliance.rs`, `crates/view/src/client_compliance.rs` |
| Audit bridge | `crates/bin/orbis-audit/src/main.rs` |
