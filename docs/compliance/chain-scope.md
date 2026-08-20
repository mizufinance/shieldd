# Bankd execution scope

Shieldd is an embedded Bankd subsystem. The target deployment does not run an
independent Shieldd chain, validator set, governance system, or bridge.

## Ownership boundary

| Bankd owns | Shieldd owns |
| --- | --- |
| consensus and the validator set | shielded note and nullifier state |
| block ordering and canonical host sources | zero-knowledge proof verification |
| issuer and authority authorization | regulated asset and user-status commitments |
| transparent deposits, withdrawals, minting, and reissue | encrypted compliance records and audit export data |
| atomic commit coordination | compact blocks for wallets and auditors |

Every host mutation includes the Bankd chain ID, height, transaction hash,
transaction index, and message index. Shieldd requires the active height and
stores a receipt under that canonical source. An exact replay returns the same
result; reusing the source for different content or a different action kind
fails. A failed call publishes neither its receipt nor partial state.

## Shielded actions

`Transfer`, `NoteReshape`, and shielded Bankd withdrawal actions execute inside
Bankd. Fee funding is a regulated transfer and follows the same status rules.
Legacy standalone-chain and IBC modules may remain while integration code is
removed, but they are not part of the target deployment contract.

## Compliance actions

The typed host API currently admits:

- `FreezeUserAsset(address, asset_id)` — `Active -> Frozen`;
- `UnfreezeUserAsset(address, asset_id)` — `Frozen -> Active`.

Status is committed in the existing user leaf. It is scoped to one address and
one asset; no global blacklist or independent asset-pause switch exists.
The current schema has only `Active` and `Frozen`; a terminal seizure state will
be added only with the Bankd authorization and balance-certificate contract.

All regulated proofs require the exact current user root and current asset root.
Native action admission applies that exact-root requirement to every shielded
action, including unregulated assets. Consequently, any user registration,
status change, or asset-policy registration invalidates all pending shielded
proofs, even for unrelated address/asset pairs. This is an explicit freshness
tradeoff: authorization remains per asset, but proof construction is globally
coupled so a freeze takes effect immediately. Avoiding that coupling would
require a future asset-scoped root or version design with equivalent immediate
revocation semantics.
