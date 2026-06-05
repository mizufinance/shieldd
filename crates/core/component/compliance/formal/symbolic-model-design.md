# Compliance Ciphertext Symbolic Model Design

The follow-up model should be encoded after this catalogue is reviewed. Tamarin
is the recommended first tool because its built-in Diffie-Hellman theory helps
with nested scalar multiplication and mutable anchor state. ProVerif is a
lighter alternative if the model is restricted to correspondence queries.

## Idealizations

The model must explicitly abstract DLEQ, Poseidon, IMT membership, compressed
Decaf377 point masking, and `is_regulated` circuit-conditioning. Tamarin's DH
theory does not prove the DEM, the Fiat-Shamir transform, point compression, or
the Rust/Go circuit correspondence; those guarantees live in
`assumption-ledger.md` and Track B fixtures.

## Roles

| Role | Actions |
| --- | --- |
| User prover | Chooses randomizers, encrypts tiers, constructs DLEQ proofs, proves circuit statement. |
| Issuer | Holds detection key material for regulated assets and attempts designated decryption. |
| Consensus verifier | Accepts only live anchors, fresh timestamps, valid proofs, and unspent nullifiers. |
| Network adversary | Controls message delivery and can replay or modify public bytes before verification. |

## Facts And Rules

| ID | Fact or rule | Meaning |
| --- | --- | --- |
| `FACT-LiveAnchor(root,height)` | State fact | Root was committed by consensus at `height`. |
| `FACT-KeyInIMT(asset,ack,dk,root)` | State fact | ACK/DK material belongs to the asset registry at `root`. |
| `RULE-EncryptTier` | Prover rule | Emits EPK, `c2`, ciphertext, metadata, and DLEQ proof. |
| `RULE-VerifyRegulated` | Verifier rule | Requires membership, DLEQ, encryption consistency, and fresh anchors. |
| `RULE-VerifyUnregulated` | Verifier rule | Models shape-preserving sink keys and the absence of issuer decryptability. |
| `RULE-DecodeDesignated` | Issuer/user rule | Reveals plaintext only to the designated ACK/DK holder. |

## Lemma Sketches

| Property ID | Lemma/query |
| --- | --- |
| `SECRECY` | If a plaintext is learned, the adversary has the matching ACK/DK secret or the tier was intentionally disclosed. |
| `DETECTION-CORRECTNESS` | Every accepted regulated transfer has an issuer-decryptable detection tier and a threshold-consistent flag. |
| `DESIGNATED-DECRYPTABILITY` | Accepted regulated ciphertext tiers decrypt under exactly the designated tier key. |
| `DLEQ-BINDING` | A DLEQ proof accepted for one metadata tuple cannot be reused for a different tier, salt, timestamp, EPK, or ACK. |
| `REPLAY-RESISTANCE` | An accepted replay must use still-live anchors and a fresh timestamp; stale contexts are rejected. |
| `NO-KEY-CONFUSION` | ACK, DK, and tier-index roles remain separated in all accepted regulated traces. |
| `ANCHOR-FRESHNESS` | Accepted keys are derived from anchors with `LiveAnchor` facts inside the validation window. |
