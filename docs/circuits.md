# Circuit constraints

This is the constraint boundary for Shieldd's native circuits. [Proof system](proof-system.md)
owns proving, registry and verification mechanics; [compliance](compliance/flow.md)
owns policy semantics. Exact statements and field order live in the circuit
source, with runtime projections in the shielded pool.

## Families

The [catalogue](../crates/crypto/circuits/src/catalogue.rs) fixes nine relations:

| Relation | Proved behavior | Source |
| --- | --- | --- |
| Transfer | Two-input/two-output ownership, balance, policy, volume, encryption and routing | [transfer.rs](../crates/crypto/circuits/src/transfer.rs) |
| Reshape 1-to-8 and 8-to-1 | Owner-preserving split/merge, conservation and regulated Active status | [reshape.rs](../crates/crypto/circuits/src/reshape.rs) |
| Withdrawal | Spend validity, destination/value binding, change, sender encryption and volume policy | [withdrawal.rs](../crates/crypto/circuits/src/withdrawal.rs) |
| Seizure | Accepted note membership, recovered opening, owner/RNK and canonical nullifier | [seizure.rs](../crates/crypto/circuits/src/seizure.rs) |
| Disclosure, one-note and 32-slot | Selected commitment openings, revealed fields, exact predicate results and selected-output totals | [disclosure.rs](../crates/crypto/circuits/src/disclosure.rs) |
| Historical generation and chunk | Archived nullifier nonmembership and authenticated ordered coverage | [history.rs](../crates/crypto/circuits/src/history.rs) |

Each relation exposes one public digest and constrains its statement opening.
The native builder and verifier reconstruct that same statement from typed
records. Family and key identity are enforced by the registry. [Disclosure](disclosure.md)
defines request-driven capacity selection; [nullifier history](nullifier-history.md)
defines chunk/tail coverage. Neither proof by itself establishes chain acceptance.

## Transfer spends and outputs

For each real spend, the relation binds note fields to the commitment, the SCT
path to its anchor, and the nullifier to the effective nullifier key, commitment
and position. Transmission keys bind to the IVK decomposition; randomized
verification keys bind to the spend authorization key and action randomizer.
Dummy slots use synthetic nullifiers and randomized verification keys. The
statement binds the recent-position floor and the exact old-note classification
`!is_dummy && position < recent_position_floor` for every spend.

Output zero is a nonzero receiver note; output one is sender-owned change when
present. Both use the shared asset and bind their note fields and recovery
commitments. Input/output amounts and action blinding determine the net value
balance commitment. Transaction-wide balancing remains a host acceptance check.

The authorization key and both distinct address generators must be nonidentity
Jubjub subgroup points. Identity sender derivation would make a transmission key
independent of the IVK and allow ambiguous note ownership; identity receivers
would create such notes. The subgroup gadget proves an on-curve cofactor preimage,
and the nonidentity gadget constrains invertible x.

## Policy and encrypted data

The circuit derives regulated status from exact asset membership or a canonical
nonmembership gap, rejects the zero sentinel, and selects the authenticated or
sink policy. Regulated sender/receiver leaves bind both address points, asset,
RNK DH point, RNK commitment and `Active` lifecycle under the supplied compliance
anchor. Unregulated witnesses retain the same shape without enabling regulated
membership or volume behavior.

The volume relation proves origin or SCT predecessor validity, checked addition,
limit comparison, UTC day, proof context and flag selection according to the
[volume rules](compliance/flow.md#daily-volume-state). Padding cannot masquerade
as a real undisclosed transition; fee funding is constrained to disabled context.

All detection and payload encryption equations run in both policy branches.
Each payload tier binds `EPK = rG`, the selected payload-key/issuer-DK shared
secret, `c2 = seed + compress(shared_secret)`, and every stream word. Tier EPKs
must be nonidentity subgroup points. Native construction supplies fresh randomness
as described in [compliance](compliance/flow.md#transfer-visibility).

Detection binds the selected DK shared secret, sender-core EPK, asset, salt,
boolean flag and reserved zero. Canonical address decomposition precedes packing.
The selected policy facts, epoch, timestamp, salts and both core confirmations
enter the statement. The 2×2 statement has 69 fields; their authoritative order
is `Statement::fields` in [transfer.rs](../crates/crypto/circuits/src/transfer.rs).

Sender and receiver ownership ciphertexts bind their actual address components
through the shared fingerprint map and independent nonzero ElGamal randomness
under the checking key. All R/C coordinates enter the statement. Roles are bound
by position; identical addresses intentionally share a fingerprint. The map and
external PET contract are defined in [interoperability](jubjub-external-contract.md#orbis).
Routing constraints bind the two privately permuted tags and complete parameter
identifier; [routing](routing.md) defines selector semantics and privacy limits.

## Recovery capsules

[Output gadgets](../crates/crypto/circuits/src/note.rs) bind created notes to their
[recovery capsules](../crates/crypto/circuits/src/recovery.rs) in Transfer,
NoteReshape and withdrawal change. The relation constrains EPK/DH, encrypted
amount and blinding, confirmation and capsule commitment under the selected
asset payload key or unregulated sink. A seizure proof checks the recovered
plaintext against the note and its owner/RNK opening. Release authorization and
DLEQ validation are enforced outside that circuit by the [seizure host path](compliance/enforcement-and-seizure.md).

## Acceptance and tests

Circuits do not authenticate a root's freshness, sign transactions, check global
spent state or grant external release authority. Runtime validation supplies
current roots/windows, checks signatures and uniqueness, and applies atomic state
transitions. Issuer registration, scanner evidence and external PET are separate
boundaries even when the transaction proof is valid.

Tests must distinguish invalid private facts with a recomputed public digest
from a changed statement paired with an old digest. Native/circuit parity checks
complement independent boundary vectors, adversarial witnesses, real proofs and
host acceptance tests. [Testing](testing.md#choose-the-boundary) defines the method;
[Development](development.md) owns execution commands.
