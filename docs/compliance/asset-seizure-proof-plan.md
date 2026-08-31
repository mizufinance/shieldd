# Asset seizure

Status: the production design is fixed, but the capsule circuits and seizure
action are not implemented. The branch contains the compliance-leaf foundation
and a separate historical full-audit proof prototype. The historical path is
not the production settlement path.

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
the legal authorization. Orbis performs threshold decryption and returns its
existing verifiable evidence. The ACP releases the compliance nullifier key only
for that signed authorization. These are distinct controls and none claims that
all historical records were scanned.

## Authenticated account state

Reuse the existing compliance user tree. Do not add a custody-key tree or a
capsule accumulator. A `ComplianceLeaf` contains:

```text
address
asset_id
capk
Poseidon(cnk)
status
freeze_generation
frozen_since_height
```

`capk` is the ordinary Orbis address capability validated against the address
and the asset ring at registration. Caching it in the leaf avoids repeating the
address-to-ring scalar multiplication in every circuit. `capk` and the nullifier
key commitment are immutable for the lifetime of the address-asset pair. The
asset ring public key is likewise stable while notes can remain unspent; routine
Orbis operator rotation must reshare that key rather than replace it. Replacing
the public key requires an explicit asset recovery/migration design because a
single current leaf cannot authenticate both old and new capabilities.

The user and ACP hold `cnk`; the chain stores only its commitment. The user needs
`cnk` for an ordinary regulated spend. The output creator does not need the
recipient's `cnk`.

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
and expiry. The ACP checks that exact signature before releasing `cnk`, and the
chain checks it again when admitting a seizure. An unfreeze or refreeze changes
the authenticated state or generation and invalidates stale authorization.

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

The field-native capsule has a fixed public shape derived from the ordinary
Orbis ciphertext format:

```text
ephemeral header
key confirmation
encrypted amount
encrypted note_blinding
```

The exact header fields must be taken from the existing Orbis implementation;
Shieldd must not invent a second encryption protocol. Capsule components are
Poseidon-committed, and that commitment is an input to the real note
commitment:

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

### Reuse encryption work

Do not add a fresh public-key encryption header when an action already has the
right Orbis context.

- A transfer has receiver and sender Orbis headers already. Add the receiver
  note opening under the receiver ACK shared secret and the change-note opening
  under the sender ACK shared secret. Recovery always uses ACK/`capk`, even when
  the existing policy ciphertext selects the issuer key for a flagged transfer.
- A note reshape has one owner and up to eight outputs. Use one randomized
  action header for that owner's `capk`, then eight independently salted and
  committed slot bodies. These are eight capsules with a shared header, not one
  all-or-nothing capsule.
- A public note-creation path uses one header per distinct recipient capability.
- A withdrawal creates no Shieldd note, so it adds no output capsule.

Encryption is performed locally from the public capability. Normal transaction
construction does not contact Orbis. Orbis is contacted only to decrypt during
an authorized seizure.

## Canonical nullifier

For every real input, the transaction circuit selects the nullifier key without
revealing whether the asset is regulated:

```text
effective_nk = is_regulated ? cnk : wallet_nk
nullifier = Poseidon(effective_nk, note_commitment, position)
```

The regulated branch proves `Poseidon(cnk)` equals the commitment in the
authenticated sender leaf. The unregulated branch keeps the existing wallet
nullifier key. Transfer, both note-reshape families, host withdrawal, and any
remaining ICS withdrawal must use this same helper.

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

The private witness contains the note, its SCT path, and `cnk`. Orbis evidence
is verified natively against current consensus policy and the current
compliance leaf before the proof is accepted. The circuit proves:

1. `Poseidon(cnk)` equals the public CNK commitment checked against the current
   leaf;
2. the capsule commitment and recovered `(amount, note_blinding)` reconstruct
   the real note commitment for the leaf address and asset;
3. the note is a member at the claimed position;
4. the public nullifier is the canonical nullifier derived from `cnk`, that
   note commitment, and that position.

Native admission verifies the configured authority signature and expiry,
checks the current leaf, capability, CNK commitment, and freeze generation,
verifies the ordinary and compact PRE evidence, applies the existing current
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

## Historical audit path

Keep the existing scan/classify/finalize code as a separate offline tool for:

- independent balance audits;
- development data created before capsules;
- reconciliation of the private locator; and
- investigations that explicitly require a completeness certificate.

Its authenticated audit-effect log and checkpoints are not prerequisites for
`SeizeNote`, must not be read by normal capsule admission, and must not impose a
million-block proof on production settlement. Do not duplicate capsule bytes in
consensus key-value state. If the audit log is retained, benchmark its append
cost independently at 5,000 transactions per second.

## Implementation order

1. Finish the leaf and lifecycle in place. Keep canonical unversioned domain
   types, validate `capk` at registration, commit `cnk`, and remove the
   intermediate authorization state.
2. Add `RecoveryCapsule` and its Poseidon commitment. Extend `Note` with the
   capsule commitment and change the note commitment in place; there is no
   legacy note path or migration in this pre-launch repository.
3. Change regulated input nullifiers to use committed `cnk` in transfer,
   note reshape, and withdrawal circuits. Add parity tests for the Rust and Go
   nullifier helpers.
4. Add one capsule slot per output. Reuse transfer Orbis headers, add the shared
   note-reshape header with per-output slots, and cover every public note creator.
5. Implement `SeizeNote`, the gnark circuit, Rust verifier and offline prover,
   privileged host RPC, state transition, nullifier insertion, receipt, and
   typed Bankd settlement response. It is not a normal user transaction action.
6. Add the ACP authorization/release client and adapt the existing Orbis
   decryption evidence response. Do not create a new evidence format if the
   existing response already carries the required proof.
7. Add the durable private capsule locator and archive reconciliation worker at
   the storage edge.
8. Regenerate all proof keys, metadata, witnesses, vectors, and fixtures once.
   Delete replaced artifacts rather than keeping numbered alternatives.
9. Keep historical proof commands and storage explicitly separate from the
   production capsule APIs.

## Verification and performance gates

The current leaf/capability refactor has these gnark constraint baselines before
capsule work:

```text
transfer                                126,887
note reshape, one input/eight outputs    51,559
note reshape, eight inputs/one output   141,865
shielded withdrawal                      75,586
```

Record proof duration, peak RSS, constraint count, action bytes, block bytes,
Rust verification time, and state-write time before and after each capsule
change. Extrapolate bytes and verification at 5,000 transactions per second;
do not extrapolate historical seizure proving because it is no longer on the
production path.

Required adversarial tests include:

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

- Freeze the exact ordinary-Orbis capsule fields and confirm that its existing
  evidence proves the required ACK opening.
- Define ACP generation, backup, rotation, and hardware custody for `cnk`.
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
