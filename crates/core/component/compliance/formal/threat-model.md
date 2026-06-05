# Compliance Ciphertext Threat Model

This fixture models the adversary-facing obligations for Penumbra compliance
ciphertexts. It is intentionally above the constraint level: R1CS satisfaction
and symbolic-prover execution are follow-up work.

## Adversaries

| ID | Capability | Soundness question |
| --- | --- | --- |
| `ADV-NETWORK` | Dolev-Yao observer can replay, reorder, copy, and modify transaction bytes before consensus acceptance. | Can a copied or modified ciphertext remain accepted under a different statement, tier, key, or timestamp? |
| `ADV-PROVER` | Malicious prover controls private witnesses and can choose encryption randomness, salts, paths, and `is_regulated`. | Can the prover satisfy the accepted language with false decryptability, false regulatory status, or mismatched metadata? |
| `ADV-ISSUER` | Curious issuer has detection keys and may receive decode objects for selected tiers. | Can the issuer learn unflagged ACK-tier plaintext or confuse ACK and DK tiers? |
| `ADV-OBSERVER` | Non-authority observer sees public transaction data and proofs. | Can the observer recover plaintext, link tiers, or use public DLEQ data as a decryption oracle? |

## Trust Roots

The trust roots are consensus-committed asset and compliance Indexed Merkle Tree
anchors, accepted only inside the validation window checked by
`validate_compliance_anchors`. Circuit arguments may prove membership or
non-membership relative to an anchor, but the anchor is meaningful only after
the action handler accepts it as live state.

## Public And Secret Inventory

| Class | Items | Notes |
| --- | --- | --- |
| Public statement | anchors, nullifiers, commitments, compliance ciphertext Fq elements, EPKs, `c2`, DLEQ challenges/responses, target timestamp | These are included in transaction bodies or in the statement hash. |
| Prover witness | plaintext tier fields, seeds, ephemeral randomizers, IMT paths, compliance leaf data, spend notes | The prover can choose malformed witnesses unless constrained. |
| Issuer secret | detection key material for regulated assets | Detection correctness is a designated-decryptability claim, not public decryptability. |
| User secret | ACK/DK-derived scalars, note plaintext, spend authorization key material | Secrecy excludes holders of the intended ACK/DK secrets. |

## Follow-Up Boundary

The symbolic model will idealize DLEQ, Poseidon, compressed Decaf377 points,
and IMT state. This fixture records which implementation facts those
abstractions must preserve; it does not claim mechanized secrecy or binding.
