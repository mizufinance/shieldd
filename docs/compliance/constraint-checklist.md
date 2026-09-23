# Compliance Constraint Checklist

This checklist covers the current compliance surface. General spend, note,
nullifier, and value constraints are tracked in
`docs/transfer-circuit/constraint-checklist.md`.

## Circuit Constraints

### Asset Status And Effective Policy

- Enforced by exact asset-tree membership or canonical non-membership-gap
  verification in `transfer_circuit.go`.
- Regulated values come from the committed asset leaf.
- Asset id zero is rejected because it is the indexed-tree sentinel, not an
  asset policy.
- Policy admission rejects identity detection and ring keys before the asset
  leaf can enter durable registry state.
- Unregulated values select fixed sink ring/DK points and empty-string policy
  hashes. Their authenticated predecessor-leaf daily limit remains in the
  fixed witness but cannot enable accumulation or disclosure.
- `is_regulated` is boolean and cannot be chosen independently of the tree.
- Mutation coverage: regulated/unregulated fixtures, bad gap bounds, wrong
  asset leaf, and selected-policy field changes.

### Sender And Receiver Compliance Leaves

- Transfer rejects identity authorization keys and identity sender/receiver
  diversified generators with three exact one-row Decaf predicates. This
  matches native key/address allocation and prevents identity-DTK ownership
  aliasing; it is not merely an honest-construction precondition.
- Regulated transfers bind the diversified generator, transmission key, asset
  ID, capability, RNK commitment, and lifecycle into compliance-leaf
  commitments under the accepted compliance anchor.
- Native registration rejects a derived `d = 0`, preventing an identity ACK.
- Regulated sender and receiver statuses must both equal `Active`.
- ACK derivation uses the selected ring point and the bound `d`.
- Unregulated transfers keep the same witness shape but gate membership against
  the exact asset-status branch.
- Mutation coverage: leaf fields, paths, positions, anchor, derivation, and ACK
  inputs.

### Daily Volume And Detection

- An eligible real transition proves a canonical day origin or SCT predecessor,
  checked `u128` addition, and `candidate <= daily_volume_limit`.
- Eligible padding means disclosure; ineligible padding remains unflagged.
- An unregulated transfer is never flagged, including when its receiver amount
  is `u128::MAX`.
- UTC midnight alone selects the next day, and fee funding is constrained
  to its statement-bound disabled context.
- Detection encryption is unconditional and uses the selected DK shared secret,
  sender-core EPK, asset ID/flag, and detection salt.
- The exact plaintext order is asset, salt, flag, reserved zero. The flag is
  boolean and no slot, role permutation, derivation, or address index appears.
- The detection ciphertext is part of the public statement.
- Mutation coverage: origin, continuation, exact limit, over-limit candidate,
  successor amount, transition mode, timestamp decomposition, flag, reserved
  word, salt, EPK, and each detection ciphertext word.

### Audit-Tier Encryption

- Four fixed tiers exist in structural order: sender core, sender extension,
  output core, output extension.
- Every tier constrains `EPK = r*G`, the selected ring field-key/DK shared secret,
  `c2 = seed + compress(shared_secret)`, and every Poseidon stream word.
- These equations are unconditional in both regulated and unregulated branches.
- Each tier uses an independent witness randomizer and EPK.
- Every published tier EPK is constrained outside both Decaf identity
  representatives.
- Honest construction rejection-samples each tier scalar until nonzero.
- Address tiers encrypt the canonical two-field, 64-byte address encoding split
  into 31-byte words. The circuit's native binary decomposition enforces
  reduced field encodings before packing.
- Honest native construction samples one CSPRNG nonce root per Transfer action
  and never reuses it across sibling Transfers or fee funding. The root
  deterministically expands into every salt, seed, and tier randomizer, so this
  is a privacy precondition rather than an R1CS-enforceable invariant.
- Mutation coverage: randomizer, EPK coordinates, c2, seed, plaintext, and every
  ciphertext word for each tier.

### Ownership checking ciphertexts

- Each role binds the canonical actual address generator and transmission key to
  `EncodeToCurve(Poseidon377_hash_2(domain, generator, transmission_key))`.
- Full ElGamal R/C points use independent nonzero checking randomizers and the
  committed checking key. Unregulated transfers select the fixed sink key.
- All four compressed points enter the public statement. The role is structural;
  identical addresses intentionally have identical fingerprints across roles.
- Coverage includes Rust/Go/gnark parity, valid ciphertexts for the wrong owner,
  role substitution between distinct addresses, changed public points and zero scalars.
- PET execution and authorization enforcement are unavailable upstream.

### Factored Metadata

- One metadata record binds ten facts: four selected policy hashes,
  `target_timestamp`, `audit_epoch`, and four tier salts. It publishes no subject derivation.
- The four salts are structural tier domains in the fixed tier order.
- The serialized record is exactly 272 bytes: eight canonical Fq encodings plus
  two little-endian u64 values.
- Metadata timestamp equals the existing transfer target timestamp; it is not a
  second statement field.
- Mutation coverage: every metadata field, noncanonical Fq bytes, zero
  timestamp, truncation, and trailing bytes.

### Public Statement

- Rust and Go reconstruct the same 58-field preimage for the 2×2 family (48 base fields,
  three per input and two per output).
- The statement hash uses the canonical transfer domain.
- The preimage binds the consensus recent-position floor and one
  `history_required` bit per spend.
- The public tail commits both core key confirmations and all eight
  non-duplicate metadata Fq values.
- ABI tests reject malformed headers and wrong vector lengths.
- Differential tests compare native Rust/Go reconstruction, circuit public
  assignment, and statement hash.

## Consensus And Runtime Checks

### Live Context

- `validate_compliance_anchors` requires the exact current mutable asset and
  user-status roots.
- Regulated NoteReshape proves its owner is `Active`; fee funding uses Transfer,
  so a frozen user cannot reshape notes or spend the affected asset for fees.
- `check_timestamp_freshness` bounds target timestamp drift.
- Proof verification precedes handler completion.
- Spend signatures cover a Transfer effect hash containing the exact receiver
  ciphertext and metadata; delegated construction cannot replace those bytes
  after authorization.
- Transaction-wide spend-nullifier insertion, temporary scoped daily-volume
  nullifier insertion, and the binding signature remain external acceptance
  requirements.

### Wire Shape

- Only the receiver output may carry the 832-byte ciphertext and 272-byte
  metadata.
- Inputs and the change output carry neither.
- Point and Fq decoders reject noncanonical values and wrong lengths.
- The wire contains no capsule-release evidence, shared point, or DLEQ proof.

## Evidence Checks

- `BlockRef`, `TxRef`, `ActionRef`, and `OutputRef` are the canonical keys.
- `tx_hash` is the transaction crate's `TransactionId`.
- `validate_audit_evidence` checks the evidence object's canonical payload hash
  and metadata. Callers bind the object to the accepted output context.
- `AuditStatus::try_advance` requires validated evidence before audit completion.
- Flagged transfer tiers support issuer-DK decryption.
- Capsule-release material is excluded from evidence objects.
