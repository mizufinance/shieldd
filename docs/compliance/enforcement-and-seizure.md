# Enforcement and seizure

Shieldd is an embedded Bankd subsystem. Bankd owns consensus, canonical host
sources, public custody, and settlement. Shieldd owns private note state,
compliance state, proof verification, nullifiers, and replay-safe host receipts.
They do not jointly produce proofs.

## Capsule release

For capsule EPK `E`, asset payload key `C`, and released point `S`, Shieldd
verifies an equality-of-discrete-logs proof for

```text
C = xG
S = xE
```

The proof transcript binds a canonical release ID derived from the exact
capsule, note, claimed address and asset, authenticated payload key and epoch, Orbis policy,
authority instruction, and expiry. It proves the DH relation for `S` under
`C`. It does not prove owner identity or ACP authorization. The note proof
checks the owner, RNK, capsule plaintext and note commitment after opening.

`CapsuleReleaseRequest::release_id` defines the canonical resource ID;
`CapsuleReleaseEvidence` carries the point and proof for that ID.

The production contract permits only authority-approved public disclosure of an
exact accepted note/capsule, independently of whether a claimed owner matches.
Before release, the external service must validate accepted-note provenance and
the authority's exact disclosure grant. A request alone is not a grant. A host
owner check after opening cannot enforce pre-release confidentiality.

The intended production sequence is:

1. an authority approves public opening of the exact accepted note/capsule and
   signs the exact seizure instruction;
2. the release service checks that grant and provenance;
3. Orbis returns `S` and a request-bound DLEQ proof;
4. Shieldd verifies the instruction, release, owner/RNK note proof and nullifier;
5. Bankd atomically applies the withdrawal returned by Shieldd.

No reusable payload or RNK secret enters Bankd consensus. Publishing `S` opens
that capsule to observers; reusing its key and EPK would share the opening.
Private/address-scoped capsule release, collection and ownership PET are
unavailable. Ordinary Transfer ownership ciphertexts do not cover all capsules.

## State transition

Each registered `(address, asset_id)` leaf commits the address, asset,
regulated-nullifier derivation data, status, freeze generation, and
freeze height. Legal transitions are:

```text
Active -> Frozen -> Active
Active -> Frozen -> Seized
Seized -> Seized       while consuming more notes from the same freeze
```

Every regulated spend and receive requires an `Active` leaf under the current
root. A new freeze generation invalidates older seizure instructions.

`SeizeNote` verifies the authority signature and expiry, the current frozen
leaf, the capsule-specific DLEQ release, the Pari note-membership and opening
proof, the canonical regulated nullifier, and nullifier nonmembership. One
state delta inserts the nullifier, updates the lifecycle, records the audit
effect and receipt, and returns the exact typed Bankd withdrawal. Exact source
replay returns the receipt without another mutation.

## Implementation status

| Capability | Status |
| --- | --- |
| Recovery capsules and note-seizure circuit | Implemented in Shieldd |
| Capsule release request, DLEQ verifier, and host state transition | Implemented in Shieldd |
| Production ACP policy enforcement | Not implemented |
| Orbis capsule-release and address-DH APIs | Not implemented |
| Private capsule locator and operator workflow | Not implemented |
| Bankd seizure admission and atomic settlement | Not implemented |

The Shieldd host method is protocol preparation, not a complete seizure
product. Tests construct release evidence locally; that does not stand in for
ACP or Orbis integration.
