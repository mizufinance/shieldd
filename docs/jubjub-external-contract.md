# Jubjub compliance interoperability

This contract defines the Shieldd Jubjub suite shared by native cryptographic
primitives, compliance records and Pari circuits.

The Shieldd suite identifier is `shieldd-jubjub-pari-v1` (binary discriminator
`1`). Jubjub operations use the prime-order subgroup, not arbitrary points on
the full cofactor-eight curve. BLS12-381 scalar-field arithmetic is used by
Poseidon and Pari; it is distinct from Jubjub scalar arithmetic.

## Keys and encodings

Jubjub scalars and base-field elements have canonical 32-byte little-endian
encodings with strict modulus checks. A compressed point is its canonical
little-endian y coordinate with the x parity in bit 255. Decoders must reject
noncanonical points and points outside the prime subgroup. Public keys and
ephemeral keys must be nonidentity; an ElGamal second component may be identity.
Imported wallet addresses are 49 bytes: suite byte followed by the jumbled
48-byte diversifier/transmission-key payload. Transparent addresses carry suite
plus the 32-byte transmission key. Viewing keys are suite plus authorization and
nullifier keys (65 bytes); serialized spend keys are suite plus seed (33 bytes).
Bare group encodings are accepted only within a suite-identified protocol.
Audit-key bundles are 73 bytes: suite byte, little-endian `u64` epoch, then two
compressed points in payload/checking order. Ownership ciphertexts
are 65 bytes: suite byte, compressed `R`, compressed `C`.

The authorization and encryption base is RedJubjub Sapling SpendAuth. The value
blinding base is Sapling Binding. Generator bytes are derived and tested against
the pinned RedJubjub implementation. This does not make Shieldd addresses,
notes, nullifiers or transactions compatible with Sapling.

The audit payload key encrypts unflagged amount/sender/receiver tiers, withdrawal
sender data and recovery capsules. The ownership-checking key is separate. Both
bind one nonzero epoch and must differ from each other, the issuer DK, RNK ring
key and unregulated sink. Intended role secrets must be provisioned independently;
point inequality does not prove independent key generation. Signing keys for
independent Orbis BLS services are not audit-encryption keys.

## Orbis

The Shieldd-facing audit service must support Jubjub distributed key generation,
ownership PET and verifiable threshold release. Registering a ring identifier or
successfully transporting an opaque opening does not establish those capabilities.

Ownership ciphertexts use ElGamal: `R = rG`, `C = Fingerprint(address) + rK`.
The fingerprint binds both validated address points through Shieldd's Poseidon
domain 35 over `[diversified.x, diversified.y, transmission.x, transmission.y]`,
then Elligator 2 with `Z=5`, its Edwards rational map and cofactor clearing.
Both sender and receiver ciphertexts are bound by
the Transfer relation. Ciphertext and key encodings must carry the suite context;
unidentified legacy bytes must not be reinterpreted as Jubjub keys.

The distributed PET contract must bind the accepted ciphertext, person/address
selection, key role, epoch and authorized request. The service must not return a
raw decrypted ownership fingerprint as a substitute for a private equality test.
Threshold release evidence must bind the same request, recipient, accepted
transaction, field and key identity. Clients validate every share, require
distinct participants and enforce the registered threshold before combining.

Independent BLS signing or transport services may keep their own BLS groups and
keys. They cannot process Jubjub ownership ciphertexts by reinterpreting bytes
or reducing scalars into a different field.

## Authorization and issuer evidence

Capabilities and general-audit certificates use `reddsa::sapling::SpendAuth`,
with canonical `R || s` signatures and the registered Orbis ring key. The pinned
RedJubjub FROST implementation uses the same SpendAuth challenge. Capability
messages bind the chain, asset, ring key and identifiers, suite-tagged address,
RNK DH point and RNK commitment. General-audit messages bind the chain,
asset and canonical policy encoding, including the suite-tagged audit keys.
RNK derivation retains its address/asset-bound static DH and separate ring key.
Capsules carry no address-derived encryption capability. Their release contract
is limited to authority-approved public opening of an exact accepted note;
[seizure](compliance/enforcement-and-seizure.md) defines its authorization boundary.

Issuer decryption evidence uses a Chaum–Pedersen proof over the SpendAuth base
and accepted ciphertext EPK. Its challenge is personalized Blake2b-512
(`ShielddIssuerDH`, zero-padded to 16 bytes), reduced as a little-endian Jubjub
scalar. The transcript is suite byte, version as little-endian u32, canonical
32-byte asset ID, then compressed G, DK, EPK, shared point, generator commitment
and EPK commitment, followed by a request-presence byte and the exact 32-byte
request when present. Version 1 is unbound; version 2 requires that request.
All six points must be nonidentity prime-subgroup points.

Transaction RedJubjub signatures retain the pinned library's standard
cofactor-cleared verification semantics. Their 64-byte protobuf decoding is
structural; canonical signature checks occur during verification. Verification
keys are always checked for prime-subgroup membership and nonidentity at the
Shieldd boundary. Certificates additionally require prime-subgroup R.

## Ledger

Hardware custody is unavailable for this suite. Firmware must implement Shieldd's
Jubjub derivation, addresses, transaction format and RedJubjub authorization,
with an explicit suite negotiation before a host adapter can be added.
Software custody and threshold custody are available independently.

## Embedded consumers and live validation

Consumers must regenerate affected protobufs, rebuild against the staged C
header/library, remove SnarkPack aggregate-bundle handling and accept the Pari
proof envelope and history protocol version 3. Bankd integration is separate.

The locked live Orbis image declares Decaf377 and is unsupported by the native
Shieldd adapter. Startup rejects it before launching containers. A replacement
BLS12-381 image is required for PRE transport; Jubjub PET and threshold audit
release need their own compatible implementation. The external image is not
changed by this Shieldd-only migration.

Local contract tests use explicit fixtures. Orbis PET/release, Ledger hardware
and Bankd integration checks require corresponding external implementations.
An unmet prerequisite is reported as blocked, never as successful verification.
