# Enforcement and seizure

Bankd owns consensus, canonical host sources, public custody and settlement.
Shieldd verifies private note consumption and maintains compliance state,
nullifiers, audit effects and exact replay receipts.

## Whole-note batches

`seize_notes` accepts a signed `NoteSeizureBatch`. Each entry contains a canonical
nullifier and a freshly blinded value commitment. One ordinary Seizure proof per
entry privately reconstructs the complete nonzero note, proves membership at its
actual position, derives its regulated nullifier from RNK and that same position,
and binds its complete amount to the entry's value commitment. Equal note
commitments at different accepted positions have distinct nullifiers and proofs.
No partial note is consumed.

The public individual statement is the common anchor, target address, asset,
current registered RNK commitment, nullifier and value commitment. Note commitment,
position, origin, amount, note blinding, recovery commitment and RNK remain private.
The circuit opens one constrained public digest.

For each entry `C_i = v_i G_asset + r_i H`, preparation samples a fresh independent
Jubjub scalar `r_i`. The signed body includes the exact ordered `(NF_i, C_i)` list,
chain, suite/domain, registry identity, target address/asset, freeze generation
and height, withdrawal destination and total `T`, expiry, and the canonical
aggregate blinding `R = sum r_i`. The host always checks:

```text
sum C_i = T G_asset + R H
```

Only `T` is an amount field. Public `R` opens the already public aggregate total;
it is unrelated to note blinding or RNK. A singleton exposes its value blinding,
and reused overlapping commitment groups disclose corresponding linear
combinations. Use fresh independent commitments for fresh preparation.

Entries are unique and ordered by canonical nullifier bytes, never private
positions. There are 1–256 entries, subject to the encoded request byte limit.
Amounts are complete u128 values; the bounded integer sum is below the Jubjub
subgroup order. Preparation checks u128 overflow before proving: split whole notes
before authorization. Zero aggregate blinding is valid and does not bypass balance.
The verifier decodes canonical subgroup points and canonical Jubjub scalars.

Proofs are generated locally and transmitted individually. The host explicitly
uses the existing same-family `Registry::verify_items` verifier with fresh random
coefficients. All proofs and live checks must succeed before any mutation.
This is verification batching, with no recursive or compressed aggregate proof.
Anchor and proof bytes are outside the economic authorization. Refreshing paths
with unchanged commitments requires all private witnesses, including each `r_i`.
After those blindings are discarded, refresh requires fresh commitments, proofs,
aggregate opening and authority signature. Changing destination or expiry alone
can reuse admissible proofs but needs a new signature.

## Private recovery

Creation capsules are unchanged and have no public owner or asset locator.
An authorized private service must process all accepted real-note capsules at a
pinned global snapshot, validate accepted creation provenance, recover candidates
under the registered payload key and return only matching openings over a
confidential recipient-bound channel. Internally it can learn candidate plaintext
across assets sharing that key. Its grant must explicitly authorize that key-wide
scope, policy/key identities and epoch, snapshot/range, target, expiry and recipient.
It must check live policy/freeze before release; an uploaded capsule is not proof
of accepted provenance. External share, participant, threshold and confirmation
checks remain required inside recovery.

RNK delivery under the separate RNK ring needs separate authorization and a check
against the current leaf. Learning RNK permits subject-wide nullifier linking;
expiry cannot revoke an already learned key. Capsule plaintext, shared points,
seeds, DLEQ evidence and RNK never enter the public seizure request.

The private SDK preparer accepts recovered matching facts, an authenticated current
leaf and locally retained membership paths. Discover selected positions first,
then replay authenticated global history locally to retain those paths. A forgotten
frontier witness cannot be restored by adding an index. Reject unavailable history;
do not query an untrusted provider for selected positions.
`pcli seizure prepare-local` exercises explicit local fixtures from bounded private
stdin and exports only the completed signed public request. It does not authenticate
uploaded history, call a recovery service or submit to Bankd. Its output has one
exclusive owner and atomic protected replacement; no raw opening, RNK or individual
value blinding is persisted. Interrupted preparation restarts with fresh blindings.
A completed request can be retried while its anchor and live state remain admissible.

## State transition and replay

```text
Active -> Frozen -> Active
Active -> Frozen -> Seized
Seized -> Seized       while consuming more notes from the same freeze
```

Every regulated ordinary spend/receive requires an `Active` leaf under an
[admitted snapshot](flow.md#snapshot-admission-and-freezes). First successful
nonempty seizure is terminal for that address/asset pair. Subsequent disjoint
batches under the same freeze are allowed; no batch claims every note is covered.

The host checks the registered seizure authority signature, expiry, current
Frozen/Seized leaf and freeze identity, registry identity, admitted anchor,
aggregate opening, every individual proof and every nullifier's unspentness.
One state delta consumes all nullifiers, updates the lifecycle, records one
`NotesSeized` audit effect and the exact receipt, and returns one total-valued
withdrawal. The audit projection binds the ordered nullifier list and authorization
commitment, which includes commitments and `R`. Exact same-source replay returns
the receipt without another settlement; changing any request bytes at that source
rejects. A new source cannot reuse a consumed nullifier. Query the receipt before
rebuilding a batch that may already have settled.

## External completion requirements

Production ACP/private matching, confidential RNK delivery and the compatible
Jubjub Orbis services require agreement with their owners before an adapter is
implemented. Local fixtures do not establish these guarantees. Bankd must atomically
settle the aggregate withdrawal with Shieldd's candidate state and receipt, including
revert, candidate abandonment, finalization, restart and replay.

Joint public/private freezes likewise require one authenticated command naming
both explicit targets and their association, applied at the same ordered position
and rolled back together. An EVM address does not identify a private address.
The current Shieldd host API does not supply this external atomicity.

Changed Seizure relations require a fresh complete proof registry and fresh app
and wallet state. Old registries and stale schema/application versions reject;
there is no compatibility path. See [proof setup](../proof-system.md) and
[external cryptographic requirements](../jubjub-external-contract.md).
