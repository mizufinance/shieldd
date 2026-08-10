# Compliance Ciphertext Threat Model

This model describes the deployed V16 transfer compliance boundary. Circuit
refinement establishes exact algebraic relations; computational confidentiality
still depends on the Decaf377, Poseidon-stream, and hash assumptions recorded in
`assumption-ledger.md`.

## Adversaries

| ID | Capability | Soundness question |
| --- | --- | --- |
| `ADV-NETWORK` | Reads, copies, reorders, and modifies all public transaction bytes before consensus acceptance. | Can modified ciphertext or metadata verify under a different transfer, policy, tier position, or timestamp? |
| `ADV-PROVER` | Chooses private notes, paths, authorization/viewing material, the compliance nonce root and its derived encryption seeds/randomizers and salts, and the proposed regulation flag. It can intentionally disclose plaintext it already knows; the circuit cannot prove entropy, action-level nonce uniqueness, or non-collusion. | Can an identity key/address alias note ownership, or can a false policy branch, threshold flag, recipient key, plaintext, or metadata record satisfy the circuit? |
| `ADV-ISSUER` | Holds the registered detection secret and observes accepted outputs. | Can it learn an unflagged ACK tier without the corresponding authorized capability? |
| `ADV-OBSERVER` | Sees the proof, 640-byte ciphertext, and 328-byte metadata record. | Does any serialized field reveal a tier seed, DH shared point, or plaintext? |
| `ADV-AUDIT-BRIDGE` | Controls inputs to the disabled Orbis v0 export/import API. | Can it bypass the fail-closed boundary and complete an unflagged PRE audit? |

## Trust Roots

The asset-policy proof is accepted only against the current mutable asset root.
The user-compliance proof may use a recent recorded root of the append-only
user tree. `validate_compliance_anchors` enforces these distinct liveness
policies before proof verification; the circuit establishes membership or
non-membership only relative to the statement roots it receives.

Asset-policy admission is also a live prerequisite: both the detection key and
ring key must be non-identity, and validation occurs at protobuf, storage, and
registry boundaries before any policy-map or IMT mutation. The circuit proves
use of the committed keys; it does not make an identity key cryptographically
useful.

Transaction acceptance also trusts proof verification, timestamp freshness,
spend signatures, transaction-wide nullifier uniqueness, and the binding
signature. These checks are outside the Transfer R1CS and are composed with its
refinement. The Transfer effect hash includes the exact proof-bound compliance
ciphertext and metadata, so replacing encryption randomness or payload bytes
after spend authorization invalidates every spend signature.

The Transfer relation itself rejects identity authorization keys and identity
sender/receiver diversified generators with three exact Decaf `x != 0`
predicates, matching the native full-viewing-key and address gadgets. This is
not delegated to honest construction: without the sender predicate, identity
DTK derivation lets one note commitment and state path open under distinct
nullifier keys; without the receiver predicate, a malicious proof can create
such an ownership-ambiguous output.

Computational privacy additionally assumes honest construction samples a fresh,
unpredictable Transfer nonce root for each action, including a nonce distinct
from fee funding and every other Transfer in the same transaction. Each
action's tier seeds, salts, and ephemeral scalars are deterministically
domain-separated from that root. Cross-action root reuse therefore repeats
EPKs and stream material and is forbidden by the native builder. This is a
construction-side CSPRNG premise, not an R1CS or consensus-enforceable fact:
the nonce root is private, and a malicious action creator can always choose or
disclose its own randomness.

Honest construction also rejection-samples each tier scalar until nonzero.
Registry admission rejects a zero derived `d` and requires a checked canonical
discovery key in the v2 compliance leaf. These prevent identity audit capabilities
and discovery-key substitution for state admitted through the supported builders;
a malicious creator can still disclose plaintext it already knows.

## Public And Secret Inventory

| Class | Items | Security boundary |
| --- | --- | --- |
| Public statement/transport | anchors, nullifiers, randomized spend keys, note and balance commitments, detection/audit ciphertexts, EPKs, c2 values, target timestamp, subject derivations, policy hashes, and tier salts | The V16 wire has no PRE envelope, shared point, DLEQ proof, or seed-opening material. Detection stores exact asset and salt, then a bounded sender slot plus flag and a bounded receiver slot. |
| Prover witness | notes, ownership keys, paths, tier plaintexts, a per-action nonce root, derived seeds, ephemeral randomizers, and asset/compliance leaf data | Every integrity fact used by an accepted transfer is constrained or intentionally external. Fresh unpredictable nonce roots are an honest-construction privacy premise. |
| Issuer secret | registered detection secret | It decrypts detection for regulated transfers and all audit tiers only when the threshold flag is true. |
| User/audit secret | ACK/DK scalars or equivalent authorized capability, tier seeds, note plaintext, spend authorization material | Computational secrecy requires these values to remain unavailable to observers. |

Confidentiality is claimed only for fresh per-action CSPRNG nonce roots and the
honestly derived, undisclosed ephemeral randomizers and seeds. Reusing one root
across actions is outside that claim even if every resulting proof is
algebraically valid. A malicious action creator can choose recognizable
randomness or publish the plaintext directly; preventing intentional
self-disclosure is outside both the circuit and protocol threat model.

For unregulated assets, the fixed sink ring/DK policy preserves the circuit
shape. It does not promise issuer decryptability. For regulated unflagged
transfers, ACK-tier ciphertext remains public but Orbis v0 PRE is disabled, so
authorized recovery is currently unavailable.

## Formal Boundary

The extracted Lean relation and handwritten Transfer refinement cover exact
constraint semantics: policy selection, threshold, key selection, EPK/shared
secret/c2 equations, payload encryption, metadata binding, and the 41-field
statement. They do not prove computational secrecy of Decaf377 or the
Poseidon-based stream.

Only the gnark circuits under `tools/gnark/` define the deployed arithmetic
language. The obsolete Arkworks alternatives formerly exported from
`compliance/src/r1cs.rs` and `shielded-pool/src/r1cs.rs` were deleted. No
zero-anchor skip or second circuit architecture is part of the accepted
Transfer or Withdrawal language.

The existing generic DLEQ Lean/Tamarin material is standalone research. DLEQ is
absent from the V16 witness, statement, transport, evidence object, and deployed
certification chain.
