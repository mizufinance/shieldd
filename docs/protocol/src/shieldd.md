Shieldd provides shielded value transfer, compliance, and IBC interoperability.

The current chain surface is intentionally reduced:

- shielded actions:
  - `Transfer`
  - `NoteReshape`
  - `ShieldedIcs20Withdrawal`
  - `ShieldedHostWithdrawal`
- infrastructure and control actions:
  - `IbcRelay`
  - `ComplianceRegisterAsset`
  - `ComplianceRegisterUser`

Removed product families such as DEX, auctions, community-pool actions,
staking/delegation economics, governance, and validator management are not part
of the active protocol surface.

This website renders the work-in-progress protocol specification for Shieldd.

Press `s` or use the magnifying glass icon for full-text search.

If you're interested in technical discussion about the project, why not

- join [the discord](https://discord.gg/hKvkrqa3zC),
- check out [the repo and issue tracker](https://github.com/mizufinance/shieldd),
- view the [roadmap goals](https://github.com/orgs/mizufinance/projects),
- or [follow the project on Twitter](https://twitter.com/shielddzone) for updates.

## Private Transactions

Shieldd records all value in a single multi-asset shielded pool based on the
Zcash Sapling design, while using a reduced action set tailored to shielded
transfers, note management, outbound ICS-20 withdrawals, and host execution.
Inbound IBC transfers shield value as it moves into the zone, while outbound
transfers use the dedicated `ShieldedIcs20Withdrawal` path.

## Host Execution

`ShieldedHostWithdrawal` commits shielded value to either a direct host transfer
or an ordered EVM call batch. Execution withdrawals include a Shieldd
`refund_address`; the address, gas limit, and calls are bound by the withdrawal
effect hash and proof.

After accepting the Shieldd transaction, `DeliverTx` returns committed host
withdrawals in transaction order. The host derives the Shieldd transaction ID
from the submitted bytes and uses each response position as the withdrawal
index. The host must execute a call batch atomically. If execution fails, it
restores the withdrawn host coin and submits a Shieldd deposit to the bound
refund address.

Unlike Zcash, Shieldd has no notion of transparent transactions or a
transparent value pool; instead, inbound IBC transfers are analogous to `t2z`
Zcash transactions, outbound IBC transfers are analogous to `z2t` Zcash
transactions, and the entire Cosmos ecosystem functions analogously to
Zcash's transparent pool.

Unlike account-based chains, Shieldd centers the note model rather than
transparent user balances.
