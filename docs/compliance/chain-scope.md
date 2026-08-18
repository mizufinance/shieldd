# Chain Scope

This is a lightweight Shieldd deployment with a deliberately smaller action surface.
Most application logic such as staking and DeFi lives on BankD.
This chain's sole purpose is to provide a shielded transfer layer with compliance
visibility for regulated assets.

## Supported Actions

| Action | Purpose |
|--------|---------|
| `Transfer` | Spend up to two notes and create up to two shielded notes |
| `NoteReshape` | Reshape sender-owned notes using a supported 1→8, 2→1, 4→1, or 8→1 family |
| `IbcRelay` | IBC light client and channel lifecycle (inbound and outbound) |
| `ShieldedIcs20Withdrawal` | Transfer tokens out via IBC |
| `ShieldedHostWithdrawal` | Transfer or execute shielded value on BankD |
| `ComplianceRegisterAsset` | Register a regulated asset with its issuer policy |
| `ComplianceRegisterUser` | Register a user address for a regulated asset |

## Removed Actions

The chain does not expose DEX, staking delegation, community-pool transaction
actions, governance, or validator management. Those surfaces remain on BankD or
were deleted as part of the shielded-circuit simplification.

## Relationship to BankD

BankD is the primary application chain. It handles:
- Staking and validator rewards
- DEX and liquidity positions
- Dutch auctions
- Community pool
- Governance features not present on this chain

This chain connects to BankD through IBC and the host execution client. Tokens
flow in via `IbcRelay` / ICS-20 and are shielded here for private transfers.
Tokens flow back to BankD via `ShieldedIcs20Withdrawal` or
`ShieldedHostWithdrawal`. Compliance enforcement applies only while tokens are
on this chain. Host withdrawals use the same spend-side compliance proof data
as other shielded withdrawals.
