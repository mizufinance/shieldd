# Compliance Ciphertext Symbolic Model Design

The V16 verification boundary separates two layers:

1. exact R1CS extraction and Lean refinement for circuit semantics; and
2. an attacker model for the remaining computational/transport boundary.

The first layer is implemented and is the deployed circuit-certification
artifact. A V16 attacker model for the second layer is not currently a
certification artifact; its confidentiality and cryptographic conclusions
therefore remain explicit computational assumptions or composed runtime
claims.

The checked-in legacy DLEQ models are research fixtures. They must not be cited
as deployed Transfer evidence.

## Idealizations

A transport model may idealize Decaf377 Diffie-Hellman, point compression,
Poseidon hashes/stream blocks, proof-system knowledge soundness, and authenticated
consensus state only when the matching assumption-ledger row is cited. It must
give the attacker every V16 serialized field.

There is no deployed DLEQ or PRE rule to idealize. A future PRE v1 requires a
new protocol model and exact circuit binding before its export/import path can
be enabled.

## Roles

| Role | Actions |
| --- | --- |
| User prover | Selects notes and paths, samples one fresh nonce root and nonzero tier scalars for this action, constructs four independent tier encryptions and one factored metadata record, then proves the V16 statement. |
| Issuer | Holds the registered detection secret, screens detection ciphertexts, and decrypts all tiers only for flagged regulated transfers. |
| Consensus verifier | Reconstructs the 41-field v4 statement, verifies the proof, and enforces live anchors, fresh timestamp, signatures, nullifiers, and binding signature. |
| Scanner | Canonically decodes accepted ciphertext/metadata, persists typed facts, and validates evidence before audit completion. |
| Network adversary | Reads and modifies public bytes before consensus; cannot invoke a successful Orbis v0 audit transition. |

## Required V16 Attacker-Model Inventory

| ID | Fact or rule | Meaning |
| --- | --- | --- |
| `FACT-LiveAnchor(root,height)` | State fact | Consensus committed the root at a height still in the validation window. |
| `FACT-AssetPolicy(asset,policy,root)` | State fact | The regulated policy is the exact asset-tree member at `root`. |
| `FACT-UnregulatedGap(asset,lo,hi,root)` | State fact | Canonical ordered neighbors prove the asset absent at `root`. |
| `RULE-SelectPolicy` | Circuit rule | Membership selects registered values; non-membership selects fixed sink keys and empty hashes. The threshold comparator consumes the authenticated member/predecessor leaf threshold, and its result is regulation-gated. |
| `RULE-EncryptDetection` | Circuit rule | Detection encryption is always checked under the selected DK and binds exact asset, salt, bounded sender slot plus flag, and bounded receiver slot. |
| `RULE-BindComplianceLeaf` | Circuit/state rule | A regulated v2 leaf authenticates the complete canonical address including its discovery key; admission rejects zero `d`. |
| `RULE-EncryptTier` | Circuit rule | Each tier checks independent EPK, selected shared secret, c2, and stream ciphertext equations. |
| `RULE-BindMetadata` | Circuit rule | One record binds two subject derivations, four effective policy hashes, timestamp, and four salts. |
| `RULE-FreshActionNonce` | Honest-construction premise | A CSPRNG samples one private nonce root per Transfer, distinct from sibling actions and fee funding; deterministic expansion of one root never crosses an action boundary. This is not a consensus or circuit rule. |
| `RULE-AcceptTransfer` | Composition rule | Exact proof plus live external acceptance facts yields a valid ledger action. |
| `RULE-DecryptFlagged` | Audit rule | Evidence-valid flagged rows may be decrypted with issuer DK. |
| `RULE-RejectOrbisV0` | Audit rule | PRE export and import terminate with an error and cannot complete an audit row. |

## Required Property Sketches

| Property ID | Lemma/query |
| --- | --- |
| `SECRECY` | For a fresh action-unique CSPRNG nonce root and honestly derived, nonzero, undisclosed encryption randomness, if a non-colluding observer learns a regulated unflagged plaintext, it possessed the corresponding ACK capability or broke a cited computational assumption; no public V16 field is a seed opener. Root reuse and intentional sender disclosure are out of scope. |
| `DETECTION-CORRECTNESS` | Every accepted transfer has a detection ciphertext consistent with the selected policy and threshold-exact flag. |
| `DESIGNATED-DECRYPTABILITY` | Regulated tier equations select ACK when unflagged and DK when flagged; unregulated sink branches make no issuer-decryption claim. |
| `REPLAY-RESISTANCE` | A copied output cannot change metadata or statement fields, and acceptance still requires a fresh timestamp and live roots. |
| `NO-KEY-CONFUSION` | Fixed tier order and exact selected-key equations prevent ACK/DK or cross-tier substitution. |
| `ANCHOR-FRESHNESS` | Every accepted registry fact is rooted in a live consensus anchor. |
| `ORBIS-DESIGNATED-DECRYPT` | In V16 this is a fail-closed property: neither Orbis v0 export nor import can produce an audit-completion trace. |

Generic DLEQ completeness, extraction, HVZK, truncation, and Fiat-Shamir
properties remain scoped to `formal/lean-dleq/`. They become relevant to a
future protocol only after that protocol explicitly adopts and binds DLEQ.
