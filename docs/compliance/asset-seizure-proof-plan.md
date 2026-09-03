# Asset seizure

Status: the Shieldd capsule, circuit, canonical-nullifier, verifier, lifecycle,
host RPC, and settlement-response core is implemented. The production workflow
is not complete: the private capsule locator, archive reconciliation, ACP/Orbis
client, proof-building operator, Bankd authorization, and atomic Bankd
settlement still need implementation.

## Production decision

Use a fixed-shape recovery capsule for every created note and a small per-note
gnark Groth16 seizure proof over BLS12-377. A seizure consumes the real note,
emits its canonical nullifier, and settles its value to Bankd. Normal regulated
spends and seizures derive the same nullifier, so neither path can spend after
the other.

The chain proves that each seized note is real, unspent, owned by the frozen
address for the regulated asset, correctly opened by Orbis, and covered by the
seizing authority's signature. It does not prove that the authority submitted
every note. Omitting a note cannot steal from anyone or let the frozen user
spend it; it only leaves value unrecovered. This removes the need to prove a
year of blocks at seizure time.

gnark Groth16 remains the right framework. The existing transaction circuits,
Poseidon/Decaf gadgets, Orbis relations, Rust verifier, and BLS12-377 proof
artifacts already use that stack. A zkVM, recursive proof system, or SnarkPack
aggregation would add complexity without reducing the normal transaction work
that dominates at 5,000 transactions per second. Independent seizure proofs can
be generated in parallel and aggregated later only if verification throughput
requires it.

An auditor quorum is not part of proof soundness. The seizing authority signs
the legal authorization. The ACP independently controls Orbis access, while
Orbis threshold-derives the address DH secret and opens selected capsules.
Bankd verifies the authority instruction but does not ingest the ACP decision.
These are distinct controls and none claims that all historical records were
scanned.

## Authenticated account state

Reuse the existing compliance user tree. Do not add a custody-key tree or a
capsule accumulator. A `ComplianceLeaf` contains:

```text
address
asset_id
capk
rnk_dh_pk
Poseidon(rnk)
status
freeze_generation
frozen_since_height
```

`capk = d * ring_pk` remains the address-selective capsule capability.
`rnk_dh_pk = ring_sk * G_d` is Orbis's ring key on the same diversified
generator. The wallet derives `K = ivk * rnk_dh_pk`; Orbis derives the same
point as `ring_sk * pk_d`. The canonical KDF binds `K`, `G_d`, `pk_d`, the
asset, and `ring_pk`, and the leaf stores only `Poseidon(rnk)`.

No party submits or stores an RNK. The wallet derives it locally for ordinary
regulated spends. After ACP authorization, Orbis releases an address-scoped DH
result from which the authority derives the same RNK. The output creator does
not learn the recipient's RNK. The aggregate asset `ring_pk` is immutable while
notes can remain unspent; routine operator rotation reshares that key.

Registration carries an Orbis FROST capability certificate binding chain, ring,
policy, asset, address, `G_d`, and `rnk_dh_pk`. Validators verify it before
inserting the authority-signed leaf. This is admission validation, not a
registration SNARK, and the certificate is not stored in the leaf.

The lifecycle is:

```text
Active -> Frozen(generation + 1, current_height)
Frozen -> Active
Frozen -> Seized
Seized -> Seized       only while consuming more notes
```

`Seized` is terminal for ordinary actions: it cannot receive, spend normally,
or become active. It does not mean that every note has already been recovered.
The first accepted seizure changes `Frozen` to `Seized`; later seizures for the
same authorization and freeze generation are accepted without another state
transition. This is necessary because one address can own many notes.

There is no intermediate authorization status. The authorization signature is
bound to the chain, address, asset, freeze generation, destination, case nonce,
and expiry. The ACP uses it to authorize Orbis access, while Bankd independently
checks it when admitting a seizure. An unfreeze or refreeze changes the
authenticated state or generation and invalidates stale authorization.

## Recovery capsules

Every real output has one logical `RecoveryCapsule` slot. Eight note-reshape
outputs therefore have eight slots. A later spend of one output uses the slot
bound to that output; it does not require opening the other seven.

The smallest sufficient private opening is:

```text
amount
note_blinding
```

The address and asset come from the authenticated leaf, and the position and
note commitment are public to the seizure proof. Encrypting the full note,
address, asset, or `rseed` would add bytes and constraints without adding a
seizure capability.

The current field-native capsule is a self-contained 192-byte ciphertext:

```text
ephemeral public key
encrypted seed envelope
salt
key confirmation
encrypted amount
encrypted note_blinding
```

It uses the same Decaf capability and seed-release relation verified by ordinary
Orbis PRE evidence. Capsule components are Poseidon-committed, and that
commitment is an input to the real note commitment:

```text
capsule_commitment = Poseidon(capsule fields)

note_commitment = Poseidon(
  note_blinding,
  amount,
  asset_id,
  diversified_generator,
  transmission_key,
  capsule_commitment
)
```

The encrypted note plaintext carries `capsule_commitment`, while the action
body carries the full capsule. A wallet verifies both when scanning. The state
commitment tree still stores one field element per note; capsule bytes live in
the canonical action history and an indexed archive.

Regulated and unregulated actions have identical public shapes. The regulation
bit, leaf path, `capk`, and effective nullifier key remain private circuit
witnesses. Unregulated outputs use the fixed sink capability and a well-formed
random capsule. Dummy output slots also use well-formed fixed-shape data. No
public key, flag, length, omitted field, or constant ciphertext may identify the
branch.

### Header factoring

The implementation currently creates an independent self-contained capsule for
each output. This keeps note recovery local to one archived output, but it does
not reuse transfer compliance headers or share a header across note-reshape
outputs. The cost is most visible in the one-input/eight-output circuit.

Before launch, benchmark and design an action-level header representation. A
note reshape can share one owner header while retaining eight independently
salted slot bodies and eight separately committed logical capsules. Transfer
reuse is less direct because sender, receiver, and flagged-policy ciphertexts
may select different capabilities. Header factoring must preserve a
self-contained canonical locator from each note to its action header and must
not add a public regulated/unregulated discriminator.

Encryption is performed locally from the public capability. Normal transaction
construction does not contact Orbis. Orbis is contacted only to decrypt during
an authorized seizure.

## Canonical nullifier

For every real input, the transaction circuit selects the nullifier key without
revealing whether the asset is regulated:

```text
effective_nk = is_regulated ? rnk : wallet_nk
nullifier = Poseidon(effective_nk, note_commitment, position)
```

The regulated branch derives `rnk` from `ivk * rnk_dh_pk` inside the circuit and
proves `Poseidon(rnk)` equals the commitment in the authenticated sender leaf.
It reuses the IVK bit decomposition already required for `pk_d`. The
unregulated branch keeps the existing wallet nullifier key. Transfer, both
note-reshape families, host withdrawal, and shielded ICS withdrawal use this
same helper.

An alternate seizure-only nullifier is invalid: the owner could spend with the
wallet nullifier after the authority emitted a different one. Emitting both
nullifiers would add state and linkage. A single selected canonical nullifier is
the smaller and safer construction.

Old notes do not require a special custody tree. The seizure proof opens the
note at its real state-commitment position. The transaction's existing
nullifier-window and archived-generation nonmembership mechanism covers old
positions exactly as it does for an ordinary spend.

## Seizure action

`SeizeNote` consumes one real note. Its proof binds:

```text
chain_id
address
asset_id
freeze_generation
frozen_since_height
Bankd destination
authorization expiry
Orbis release-scope commitment
note commitment and position
capsule commitment and ciphertext
canonical nullifier
amount
```

The private witness contains the recovered note blinding, its SCT path, and the
RNK derived from the authorized Orbis address-DH release. Capsule PRE evidence
is verified natively against current consensus policy and the current
compliance leaf before the proof is accepted. The circuit proves:

1. `Poseidon(rnk)` equals the public RNK commitment checked against the current
   leaf;
2. the capsule commitment and recovered `(amount, note_blinding)` reconstruct
   the real note commitment for the leaf address and asset;
3. the note is a member at the claimed position;
4. the public nullifier is the canonical nullifier derived from `rnk`, that
   note commitment, and that position.

Native admission verifies the configured authority signature and expiry,
checks the current leaf, capability, RNK commitment, and freeze generation,
verifies the ordinary PRE share evidence, applies the existing current
and archived nullifier nonmembership checks, and verifies the Groth16 proof.
Within Shieldd, one state delta atomically inserts the nullifier, records the
audit effect and receipt, and changes `Frozen` to `Seized` on the first accepted
note. The host RPC returns the exact signed Bankd withdrawal. Bankd must apply
that withdrawal in the same host transition; cross-ledger atomicity cannot be
provided by Shieldd alone. An exact source replay returns the durable receipt
without another Shieldd mutation, while a changed request at that source is
rejected.

One-note proofs keep the circuit and witness builder simple. A bank can generate
many proofs in parallel over days. A fixed-size batch or same-key SnarkPack
aggregation is an optimization only after measured verification pressure; it
must not change the leaf, capsule, nullifier, or authorization statements.

## Finding capsules

Publishing `capk` does not make capsules publicly linkable to an address. That
privacy property also means consensus cannot expose an address-to-capsule index.
The existing private routing/discovery flow must retain a durable locator index
from the target capability to canonical `(transaction, action, output)`
locations. Orbis uses that index to return the target's candidate capsules and
decryption evidence.

The canonical block archive is the source of capsule bytes. The locator is an
availability optimization and may be rebuilt by replaying routing records. A
missing locator or capsule prevents recovery but cannot authorize a false note.
Retention, replication, restore drills, and reconciliation against canonical
blocks are therefore production requirements.

The authority submits every unspent capsule returned for the case. The protocol
does not certify completeness, because doing so recreates the historical scan.
The authority gains nothing by omitting recoverable value, and `Seized` prevents
the user from spending or receiving afterward.

## Implementation status

Implemented in Shieldd:

- unversioned leaf lifecycle with `capk`, certified `rnk_dh_pk`, and committed
  `rnk`;
- Orbis capability-certificate admission for normal and genesis registration;
- wallet-side registration preparation without a submitted nullifier secret;
- a typed, transcript-bound address-DH release request and threshold evidence
  verifier, separate from capsule PRE;
- capsule-bound note commitments and fixed-shape capsules for every real and
  hidden-arity output;
- canonical regulated nullifiers in transfer, note reshape, and withdrawal;
- the note-seizure Groth16 circuit, Rust verifier and daemon prover client;
- ordinary Orbis PRE evidence admission, authority signature, host RPC,
  lifecycle transition, nullifier insertion, receipt, and typed settlement; and
- regenerated circuit keys, metadata, witnesses, vectors, and fixtures.

Not implemented:

- private capsule locator and deterministic archive reconciliation;
- the live ACP/Orbis address-DH service endpoint and Shieldd client;
- the operator that assembles recovered openings, SCT paths, proofs, and host
  requests;
- Bankd policy and atomic settlement integration; and
- action-header factoring and complete end-to-end adversarial tests.

## Verification and performance gates

Generated circuit metadata records cumulative capsule-related growth:

```text
                                      before    current    increase
transfer                              126,887    143,161      12.8%
note reshape, one input/eight outputs  51,559    116,552     126.1%
note reshape, eight inputs/one output 141,865    150,405       6.0%
shielded withdrawal                    75,586     83,880      11.0%
note seizure                                -     15,051          -
```

The diversified-DH change itself has the following cost relative to the prior
committed-RNK witness design:

| Circuit | Before | DH RNK | Constraint change |
| --- | ---: | ---: | ---: |
| Transfer | 143,161 | 150,593 | +5.2% |
| Note reshape 1 to 8 | 116,552 | 122,896 | +5.4% |
| Note reshape 8 to 1 | 150,405 | 156,742 | +4.2% |
| Shielded withdrawal | 83,880 | 90,221 | +7.6% |

On the Windows development host, three fresh prover-process runs per family
gave these medians. Wall time includes loading the proving key; peak memory is
the process peak working set. The Groth16 proof remains 192 binary bytes.

| Circuit | Prove before / after | Wall before / after | Peak MiB before / after |
| --- | ---: | ---: | ---: |
| Transfer | 1,003 / 893 ms | 19,289 / 19,470 ms | 393 / 376 |
| Note reshape 1 to 8 | 631 / 665 ms | 14,231 / 14,491 ms | 286 / 303 |
| Note reshape 8 to 1 | 1,117 / 1,124 ms | 21,993 / 22,322 ms | 427 / 420 |
| Shielded withdrawal | 519 / 536 ms | 11,377 / 11,715 ms | 242 / 253 |

The state increase is exactly one 32-byte compressed point per registered
`(address, asset)` before tree and database overhead. Transaction, note, and
capsule state sizes do not change.

Record proof duration, peak RSS, constraint count, action bytes, block bytes,
Rust verification time, and state-write time before and after each capsule
change. Extrapolate bytes and verification at 5,000 transactions per second.

The remaining end-to-end adversarial test matrix includes:

- capsule swapped between output slots;
- capsule opening with wrong amount, blinding, address, asset, or `capk`;
- regulated spend using `wallet_nk` or seizure using a different nullifier;
- owner spend followed by seizure and seizure followed by owner spend;
- old nullifier generation and archived nonmembership failure;
- stale freeze generation, unfreeze/refreeze, expired authorization, wrong
  destination, and signature replay;
- first seizure transition plus later seizures from `Seized`;
- malformed, identity, and noncanonical Orbis points and evidence;
- unregulated and dummy outputs distinguishable by shape or constants;
- missing archive data, locator corruption, and deterministic rebuild; and
- atomic rollback when nullifier insertion or Bankd settlement fails.

Prover/release-gated tests must be run after the final circuit change and key
generation, not inferred from constraint-only tests.

## Open production decisions

- Confirm the ordinary Orbis client response maps exactly to the admitted PRE
  evidence and add cross-implementation vectors.
- Implement and deploy ACP-gated Orbis address-DH release; no RNK custody or
  backup exists.
- Define the authority key set, signature threshold, expiry bounds, case nonce,
  and emergency revocation policy.
- Define the Bankd settlement call and atomic failure semantics.
- Define quarantine for every asynchronous credit that can arrive after freeze;
  this is not specific to IBC.
- Define Orbis share refresh, compromise recovery for the stable ring public
  key, and canonical capsule archive retention.
- Validate recipient unlinkability of the chosen ciphertext under the public
  `capk`; fixed shape alone is insufficient if the encryption exposes a public
  key test.
- Apply the volume and transaction-count seizure thresholds without changing
  capsule shape or exposing the regulated branch.

Not required: a capsule accumulator, a custody-key tree, an auditor quorum, a
monolithic historical proof, an intermediate authorization status, a zkVM, or
numbered internal model names.
