# Soundness Handoff

Statuses are **kind-aware** (enforced by `scripts/check-soundness-invariants.sh`):

- **Properties** use `open`, `composed`, `refined`, `assumed`, `proved`, and
  `proved-symbolic`. `proved-symbolic` means a Tamarin lemma is discharged
  *modulo* the cited assumption-ledger idealizations (DLEQ, Poseidon/DEM, IMT
  membership, compressed-Decaf masking); it becomes plain `proved` only when
  those idealizations are themselves removed. Every `proved`/`proved-symbolic`
  row must cite a checked-in, sha256-stamped proof artifact in its Evidence, and
  `proved-symbolic` rows must additionally cite ≥1 assumption-ledger ID.
- **Findings** use `open`, `resolved`, and `accepted-risk`.
- **Assumptions** are always `assumed`.

The compliance properties are `proved-symbolic` via Tamarin
(`crates/core/component/compliance/formal/compliance-symbolic-artifact.txt`).
The Rust statement-field encoders have an F* field-count injectivity artifact
(`crates/core/component/shielded-pool/formal/statement-field-formal-artifact.txt`);
full encoder injectivity and the Rust↔Go correspondence remain `composed`.
Constraint-system (R1CS) property rows stay `refined`/`composed` until they cite
a stamped whole-circuit artifact. The gadget decomposition (C1), gadget-scope
Picus under-constraint check (C2, nightly CI only), and gadget-scope ACL2/Axe
theorems (C3) are evidence for those rows but do not promote a property by
themselves. `gadget-bool-select`, `gadget-iszero`, `gadget-poseidon2`,
`gadget-nullifier`, and `gadget-imt-gap` now have stamped gadget-scope semantic
proofs. See `docs/soundness/constraint-system-assurance.md`
and `crates/core/component/shielded-pool/formal/circuit-gadget-proofs.md`.

| ID | Kind | Source | Status | Evidence | Removal path |
| --- | --- | --- | --- | --- | --- |
| `SECRECY` | property | compliance | `proved-symbolic` | Tamarin lemma `SECRECY verified` in `crates/core/component/compliance/formal/compliance-symbolic-artifact.txt`; modulo `CC-ASSUME-COMPRESSED-DH-MASK` and `CC-ASSUME-POSEIDON-STREAM`. | Remove the masking/DEM idealizations (computational proof) to reach plain `proved`. |
| `DETECTION-CORRECTNESS` | property | compliance | `proved-symbolic` | Tamarin lemma `DETECTION_CORRECTNESS verified` in `crates/core/component/compliance/formal/compliance-symbolic-artifact.txt`; modulo `CC-ASSUME-POSEIDON-STREAM`. | Remove the Poseidon-DEM idealization to reach plain `proved`. |
| `DESIGNATED-DECRYPTABILITY` | property | compliance | `proved-symbolic` | Tamarin lemma `DESIGNATED_DECRYPTABILITY verified` in `crates/core/component/compliance/formal/compliance-symbolic-artifact.txt`; modulo `CC-ASSUME-COMPRESSED-DH-MASK` and `CC-ASSUME-DLEQ-FS`. | Remove the masking/DLEQ idealizations to reach plain `proved`. |
| `DLEQ-BINDING` | property | compliance | `proved-symbolic` | Tamarin lemma `DLEQ_BINDING verified` in `crates/core/component/compliance/formal/compliance-symbolic-artifact.txt`; modulo `CC-ASSUME-DLEQ-FS` and `CC-ASSUME-CHALLENGE-TRUNCATION`. | Mechanize the Fiat-Shamir transform and challenge truncation to reach plain `proved`. |
| `REPLAY-RESISTANCE` | property | compliance | `proved-symbolic` | Tamarin lemma `REPLAY_RESISTANCE verified` in `crates/core/component/compliance/formal/compliance-symbolic-artifact.txt`; modulo `CC-ASSUME-DLEQ-FS`. | Remove the DLEQ idealization to reach plain `proved`. |
| `NO-KEY-CONFUSION` | property | compliance | `proved-symbolic` | Tamarin lemma `NO_KEY_CONFUSION verified` in `crates/core/component/compliance/formal/compliance-symbolic-artifact.txt`; modulo `CC-ASSUME-DECAF377-ENCODING` and `CC-ASSUME-DLEQ-FS`. | Remove the encoding/DLEQ idealizations to reach plain `proved`. |
| `ANCHOR-FRESHNESS` | property | compliance | `proved-symbolic` | Tamarin lemma `ANCHOR_FRESHNESS verified` in `crates/core/component/compliance/formal/compliance-symbolic-artifact.txt`; modulo `CC-ASSUME-DECAF377-ENCODING` (IMT roots as canonical field elements). | Remove the IMT/encoding idealization to reach plain `proved`. |
| `NO-DOUBLE-SPEND` | property | zk-circuits | `composed` | `gadget-nullifier` has a stamped gadget-scope ACL2/Axe semantic proof; state-commitment path wiring and action-handler freshness are separately scoped. | Mechanize cross-layer accepted-language proof and add a stamped whole-circuit artifact before promotion. |
| `BALANCE-CONSERVATION` | property | zk-circuits | `refined` | Circuit balance commitment checks are scoped; whole-circuit constraint FV is out of reach. | Add gadget-scope balance-commitment verification (ACL2/Axe). |
| `NOTE-OWNERSHIP-SPEND-AUTH` | property | zk-circuits | `composed` | Circuit key derivation and external signature verification are mapped. | Prove accepted-language composition. |
| `OUTPUT-WELL-FORMEDNESS` | property | zk-circuits | `refined` | Commitment and recipient binding code is scoped. | Add gadget-scope checks for note/output commitments. |
| `REGULATED-STATUS-SOUNDNESS` | property | zk-circuits | `refined` | Go mirrors Rust membership/non-membership via `VerifyAssetRegistryIMT`, now backed by the 5568-constraint AssetRegistryGap gadget under the shipped `gadget-imt-gap` label; regression tests reject a regulated asset routed through the unregulated branch. Gadget-scope: `gadget-imt-gap` is a stamped ACL2/Axe proof, with exact-match, lexLess ladders, final select, and output predicate certified over the real export. The 16-deep Merkle path and accepted-language composition are not yet proved, so this stays `refined`. | Compose the proved `gadget-imt-gap` theorem with the Merkle path and Poseidon proofs into a stamped whole-circuit artifact. |
| `CIPHERTEXT-CORRECTNESS` | property | zk-circuits | `composed` | Compliance encryption/DLEQ checks are tied to Track A (`proved-symbolic`). | Add gadget-scope R1CS verification for encryption and DLEQ gadgets. |
| `STATEMENT-INTEGRITY` | property | zk-circuits | `composed` | Rust/Go differential plus F* field-count injectivity (`crates/core/component/shielded-pool/formal/statement-field-formal-artifact.txt`); full encoder injectivity is not yet proved. | Prove full Rust encoder injectivity and mechanize the Go-side correspondence. |
| `CONSOLIDATE2X1-LEAN-SOUNDNESS` | property | zk-circuits | `proved` | Lean theorem `Shieldd.GnarkFormal.Consolidate2x1.consolidate2x1_circuit_sound` in `crates/core/component/shielded-pool/formal/consolidate2x1-whole-circuit-lean-artifact.txt`; scope is `whole-circuit` for the consolidate2x1 note-reshape Define-model, with Go Define call-site wiring byte-checked against the Lean transcript, under `ZK-ASSUME-DECAF377-COMPRESS-TO-FIELD`, `ZK-ASSUME-DECAF377-ASSERT-EQUIVALENT`, `ZK-ASSUME-DECAF377-RVK`, `ZK-ASSUME-DECAF377-DTK`, and `ZK-ASSUME-DECAF377-NET-BALANCE`. | Replace the named decaf377 assumptions with imported decaf-repo tier-1 gadget bridge theorems and extend the accepted-language theorem. |
| `CC-FIND-C2-MALLEABILITY` | finding | compliance | `resolved` | `validate_c2_seed` checks `c2 == seed + compress(shared_point)` on the standalone decode path; `compliance-ciphertext.md` documents that DLEQ does not authenticate `c2`. | — |
| `CC-FIND-UNUSED-STREAM-DOMAIN` | finding | compliance | `resolved` | The stream cipher now uses `COMPLIANCE_STREAM_CIPHER_DOMAIN` via `compliance_stream_block` across Rust-native, Rust-R1CS, and Go circuit; fixtures re-blessed. | — |
| `CC-FIND-DESIGNATED-VERIFIER-CLAIM` | finding | compliance | `resolved` | The designated-decryptability claim is now a Tamarin lemma (`DESIGNATED_DECRYPTABILITY verified`) with a stamped artifact; see the `DESIGNATED-DECRYPTABILITY` property row. | — |
| `ZK-FIND-GO-UNREGULATED-NONMEMBERSHIP` | finding | zk-circuits | `resolved` | `VerifyAssetRegistryIMT` enforces `Select(IsRegulated, exactMatch, inGap)` through AssetRegistryGap in both transfer and shielded ICS-20 circuits; reproducing regression tests in `transfer_metamorphic_test.go`. | — |
| `ZK-FIND-WITHDRAWAL-EFFECT-HASH-EXTERNAL` | finding | zk-circuits | `accepted-risk` | Mitigated by centralized verifier extraction; residual risk is the external-obligation contract. | Keep extraction centralized and add mutation tests around action body changes. |
| `ZK-FIND-DUMMY-NULLIFIER-DOMAIN` | finding | zk-circuits | `accepted-risk` | Domain-separated synthetic seeds are documented and tested; not yet formalized. | Add formal collision/domain-separation argument. |
| `ZK-FIND-RUST-GO-FIELD-CORRESPONDENCE` | finding | zk-circuits | `accepted-risk` | Differential test passes; F* proves field-count injectivity only, not full encoder injectivity. | Prove full Rust encoder injectivity and gate both proofs. |
| `CC-ASSUME-COMPRESSED-DH-MASK` | assumption | compliance | `assumed` | Ledger row has owner, rationale, evidence, postcondition, and removal path. | Replace with construction proof or new KEM. |
| `CC-ASSUME-POSEIDON-STREAM` | assumption | compliance | `assumed` | Ledger row records exact stream construction (now domain-separated). | Prove or replace stream construction. |
| `CC-ASSUME-DECAF377-ENCODING` | assumption | compliance | `assumed` | Ledger row records Rust/Go compression obligations. | Add canonical encoding proof/tests. |
| `CC-ASSUME-DLEQ-FS` | assumption | compliance | `assumed` | Ledger row records transcript and Fiat-Shamir assumptions. | Mechanize or cite exact DLEQ proof. |
| `CC-ASSUME-CHALLENGE-TRUNCATION` | assumption | compliance | `assumed` | Ledger row records truncation postcondition. | Prove truncation soundness for accepted encodings. |
| `ZK-ASSUME-DECAF377-COMPRESS-TO-FIELD` | assumption | compliance | `assumed` | Ledger row records the Lean `decaf377_compressToField_sound` external-library boundary. | Extract or mechanize the decaf377 compression gadget. |
| `ZK-ASSUME-DECAF377-ASSERT-EQUIVALENT` | assumption | compliance | `assumed` | Ledger row records the Lean `decaf377_assertEquivalent_sound` external-library boundary. | Extract or mechanize the decaf377 point-equivalence gadget. |
| `ZK-ASSUME-DECAF377-RVK` | assumption | compliance | `assumed` | Ledger row records the Lean `decaf377_randomizedVerificationKey_sound` external-library boundary. | Extract or mechanize the RVK affine-formula bridge. |
| `ZK-ASSUME-DECAF377-DTK` | assumption | compliance | `assumed` | Ledger row records the Lean `decaf377_diversifiedTransmissionKey_sound` external-library boundary. | Extract or mechanize the DTK affine-formula bridge. |
| `ZK-ASSUME-DECAF377-NET-BALANCE` | assumption | compliance | `assumed` | Ledger row records the Lean `decaf377_netBalanceCommitment_sound` external-library boundary. | Extract or mechanize the balance-commitment affine-formula bridge. |
