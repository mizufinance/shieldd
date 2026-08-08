# Compliance Flow

Shieldd compliance gives issuers selective visibility into regulated-asset
activity while leaving unregulated assets on the normal private path. The chain
still validates asset integrity with Shieldd circuits; Orbis/ACP/Defra are
confidentiality and authorization services, not balance-integrity authorities.

External systems:

- **Orbis**: MPC ring key, encrypted-seed storage, and PRE for authorized audit.
- **Defra**: off-chain KYC document storage.
- **SourceHub**: ACP policies, Orbis `x/orbis` records, and Defra proof verification.

For low-level formats, schema, and source files, see `reference.md`.

## Registration

1. **Ring creation**: issuer creates SourceHub policy metadata, authorizes the
   Orbis nodes for that policy, creates a SourceHub `x/orbis` ring from Orbis
   node keys, then starts DKG against that `ring_id`.

```text
Orbis nodes -> NodeInfo(node_key, peer_id, controller_key)
Issuer/controller -> ACP policy
Issuer/controller -> UpdateNodePeerId(node_key, docker-reachable peer_id)
Issuer/controller -> AddNodeToWhitelist(node_key, policy_id)
Issuer/controller -> CreateRing(peer_node_keys, threshold, policy_id) -> ring_id
Issuer -> Orbis DKG(ring_id)
  -> Orbis finalizes x/orbis Ring(ring_id, ring_pk)
  -> ring_id and ring_pk public on Shieldd
  -> sk_ring threshold-shared inside Orbis
```

Orbis node keys are stable chain identities. Peer IDs are network routes and may
be rewritten for Docker/local topology before they are written to each node's
SourceHub `NodeInfo`.

2. **Asset registration**: issuer submits `RegisterAsset` on Shieldd.

```text
AssetPolicy {
  dk_pub,
  ring_pk,
  threshold,
  allowed_channels,
  ring_id,
  policy_id,
  permission,
  resource
}
```

Regulated assets are inserted into the indexed asset tree. Unregistered assets
are treated as unregulated through non-membership proofs. Channel whitelist
enforcement is first-hop only and immutable after registration.
The tree root is committed in app state; large node/leaf materialization lives
in NV storage and is checked at readiness.

3. **User registration**: user completes KYC with Defra, publishes a hidden-doc
   proof through SourceHub/Orbis, then registers a `(address, asset)` compliance
   leaf on Shieldd. The registration authority signs the address and one
   independent Orbis user public key together.

```text
user_derivation = OrbisHash(independent_registration_id)
user_public_key = user_derivation * ring_pk
                = (user_derivation * sk_ring) * G

ComplianceLeaf = (address, asset_id, user_public_key, independent_registration_id)
```

Normal Shieldd address generation is unchanged. Each user has one compliance
key for the asset, not a set of indexed keys. The Orbis child key is the audit
encryption key (`ACK`) used by transfer tiers. Its registration identifier is
independent of address discovery; Shieldd does not derive one from the
other. The chain validates that the registration identifier derives the child
public key from the asset ring, and validates the authority grant over the full
registration. The identifier is then carried in Orbis upload packages so PRE
nodes can apply the child-key scalar. Discovery uses the ordinary diversified
Shieldd address, so registration adds no routing keypair or secret.

## Transfer

Users run normal transfers:

```bash
pcli tx transfer --to <recipient> <amount><asset>
```

The planner detects regulated assets and adds the transfer compliance bundle.
Both sender and receiver must have compliance leaves for the regulated asset.

```text
planner:
  fetch sender/receiver compliance leaves
  fetch AssetPolicy
  use sender/receiver user public keys as ACKs
  set is_flagged = amount >= threshold
  create one receiver-output compliance ciphertext and two public discovery tags
```

The receiver output carries a unified transfer compliance ciphertext and DLEQ
(Discrete Logarithm Equality) material for each audit tier. Shieldd binds each
tier to a common authorization ID and authorization timestamp, in addition to
policy/resource/permission/tier/salt. Inputs and change outputs carry no
compliance ciphertext.

| Tier | Content | Unflagged Encryption | Flagged Encryption |
|------|---------|----------------------|--------------------|
| Detection | asset id, flag, salt | `dk_pub` | `dk_pub` |
| Sender core | amount | sender ACK | `dk_pub` |
| Sender ext | receiver address | sender ACK | `dk_pub` |
| Output core | amount | receiver ACK | `dk_pub` |
| Output ext | sender address | receiver ACK | `dk_pub` |

`authorization_id` is a dedicated, domain-separated Poseidon identifier derived
from the transfer nonce root. It is not a Shieldd transaction ID and is not
reused as a salt or another metadata field. The current authorization timestamp
uses the transfer target timestamp, but scanner and audit records name it by its
authorization purpose rather than treating it as block time.

`dk_pub` is the issuer Detection Key public key from `AssetPolicy`. Detection
is always issuer-DK decryptable. ACK encryption routes unflagged audit tiers to
authorized subject/ring access through Orbis PRE; flagged transfers encrypt all
audit tiers to issuer `dk_pub` directly. Both core tiers contain the amount. The
sender extension contains the receiver address, and the output extension
contains the sender address. The audit API maps these role-relative tiers to
independent `sender`, `amount`, and `receiver` disclosures.

The compliance ciphertext carries the protocol-selected precision `n` and two
fixed 32-bit slots. Like Miden's public address-tag approach, each sender and
receiver tag is the low `n` bits of the canonical little-endian diversified
transmission-key encoding already present in its Shieldd address:

```text
tag = low_n(address.transmission_key_s)
```

The transfer proof constrains the spent note to the registered sender address,
each output note to its recipient address, each note's committed transmission
key encoding to its address point, and both public tags to those encodings.
Tags deliberately do not reuse tier randomness
or authorization metadata: discovery is routing, while the DLEQ statement is
authorization binding. `ShieldedPoolParameters.discovery_params` selects any
precision from 0 through 32 without changing the circuit shape. The prototype
default is 11 bits, selecting about 0.098% of unrelated two-party transfers
(roughly 976 per million). An address-prefix match never decrypts an audit tier.

At execution, the chain emits a compact transaction-discovery record containing
the original Shieldd transaction ID and the proof-bound sender/receiver tags.
This does not alter or replace the transaction ID. Auditors scan this compact
stream locally and fetch only candidate transactions.

The transfer circuit owns value/nullifier/note/balance soundness. Compliance
owns asset-policy binding, threshold flag correctness, ciphertext construction,
detection tag correctness, tier metadata, and DLEQ validity. The DLEQ does not
protect Shieldd balances or nullifiers; it is in the transaction proof because
the transaction sender is adversarial. Accepted transactions must carry valid
DLEQ material so the issuer and Orbis can later rely on it when ACP authorizes
PRE for a specific metadata tuple. See:

- `docs/compliance/constraint-checklist.md`
- `docs/transfer-circuit/constraint-checklist.md`

## Scanner And Audit Pipeline

The scanner DB is the spine. It is not a stage. Scanning, screening, evidence
validation, decryption, audit projection, and exporters all share keyed rows.

```text
Chain
  -> Scan: extract raw OutputRef ciphertexts and clear public flows
  -> Scanner DB spine
  -> Screen: detection-tier DK decrypt marks detected / irrelevant / invalid
  -> User prefilter: public address prefix selects likely sender/receiver matches
  -> Validate evidence: persisted ciphertext + upload bundle + policy/ring binding
  -> Decrypt audit tiers per detected output:
       flagged:   full-tier issuer DK decrypt
       unflagged: Orbis PRE decrypt
  -> Audit ledger projection
  -> Exporters: audit-demo JSON, reports, Orbis audit input
```

`ComplianceScreener` is pure. It parses transfer ciphertexts and DK-decrypts the
detection tier only. It does not persist, fetch blocks, call Orbis, consult ACP,
or mutate audit state.

An upload bundle is the client-produced set of per-tier encrypted-seed upload
packages: encrypted seed material, tier metadata, policy/ring binding, and
proofs needed by Orbis storage/PRE. "Encrypted-seed upload package" refers to
one tier inside the bundle. New regulated packages encrypt to the registered
Orbis user public key and carry its independent registration ID as the PRE
derivation input. See `reference.md` for the canonical fields.

Current Orbis storage no longer uses a Shieldd-facing bulletin namespace.
`StoreSecret` posts a SourceHub-backed Orbis document record and returns its
`object_id`; the record binds the encrypted document, proof, `ring_id`,
`policy_id`, `resource`, `permission`, optional tier, and optional timestamp.
PRE later reads that document by `object_id`, reads the ring by `ring_id`, checks
ACP authorization against the document policy metadata, and returns the
re-encrypted tier seed.

```text
ExtractedComplianceCiphertext
  -> Irrelevant
  -> Detected(DetectionEvent)
  -> InvalidCiphertext
```

The scanner is reorg-safe: each block row stores `height`, `block_hash`, and
`parent_hash`. A parent mismatch rolls back to the common ancestor and replays.
Invalid ciphertext persistence is capped per block.

```bash
pcli tx compliance scan run \
  --node <url> \
  --db /path/to/compliance-scanner.db \
  --dk-hex <hex> \
  --scan-asset-id <id>

pcli tx compliance scan catch-up \
  --node <url> \
  --db /path/to/compliance-scanner.db \
  --dk-hex <hex> \
  --scan-asset-id <id>
```

## Audit Branches

Detected private rows start as `pending`. Audit completion requires validated
evidence first.

```text
pending -> evidence_valid
pending -> evidence_invalid
evidence_invalid -> evidence_valid
evidence_valid -> decrypt_failed
decrypt_failed -> audit_complete
evidence_valid -> audit_complete
audit_complete -> audit_complete
```

Forbidden:

```text
pending -> audit_complete
evidence_invalid -> audit_complete
```

### Flagged

If `amount >= threshold`, all tiers are encrypted to `dk_pub`. The issuer can
decrypt locally after evidence validates. Orbis is not used.

### Unflagged

Only the detection tier decrypts locally. For a user audit, public transaction
discovery records are examined before Orbis and only likely matches become PRE requests. Audit
tiers require governance/ACP authorization and Orbis
PRE. Each tier has an independent encrypted-seed upload package and independent
PRE path.

```text
ACP grant
  -> Orbis reads stored encrypted-seed object and ring metadata
  -> Orbis checks ACP against policy/resource/permission/tier/timestamp
  -> Orbis verifies the ciphertext/proof binds to the authorized metadata
  -> issuer requests PRE for authorized tier object_id
  -> issuer recovers tier seed
  -> issuer decrypts Shieldd tier payload locally
```

Audit-demo and reports are exporters over the scanner DB. The frontend state
shape remains `scan`, `scanner`, `ledgerRows`, and `audits`; backend state comes
from the DB.

## Audit Demo

The demo keeps Orbis storage and PRE in the path but does not implement the
future ACP authorization-envelope flow or require an Orbis metadata change. A
user audit identifies the subject first and uses the subject-derived key. A
master audit identifies transfers only by the
proof-bound authorization ID or authorization timestamp range and uses the
Orbis ring authority. `--field` may be repeated or comma-separated; omitting it
requests sender, amount, and receiver.

```bash
# Known subject: audit that user's activity over an authorization-time range.
orbis-integration audit-demo audit-user Alice \
  --from-timestamp <from> --to-timestamp <to>

# Unknown subject: inspect the transaction associated with an incident ID.
orbis-integration audit-demo audit-transaction <authorization-id>

# Demonstrate master-key field granularity.
orbis-integration audit-demo audit-transaction <authorization-id> --field sender
orbis-integration audit-demo audit-transaction <authorization-id> --field amount
orbis-integration audit-demo audit-transaction <authorization-id> --field receiver

# Unknown subject and unknown transaction: inspect an incident time window.
orbis-integration audit-demo audit-range <from> <to>

# Run the complete comparison above.
orbis-integration audit-demo scenario Alice <authorization-id> <from> <to>
```
