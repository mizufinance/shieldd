# Action Reference

This page is a quick-reference list of the supported transaction actions in the
reduced chain.

| Action | Description |
| ------ | ----------- |
| `shielded_pool.v1.Transfer` | Moves shielded value between addresses and may produce sender-owned change. |
| `shielded_pool.v1.NoteReshape` | Reshapes sender-owned notes using a supported 1→8, 2→1, 4→1, or 8→1 family. |
| `shielded_pool.v1.ShieldedIcs20Withdrawal` | Burns shielded value into an outbound ICS-20 transfer effect and may produce sender-owned change. |
| `shielded_pool.v1.ShieldedHostWithdrawal` | Burns shielded value into a proof-bound host transfer or host execution effect and may produce sender-owned change. |
| `ibc.v1.IbcRelay` | Relays IBC datagrams needed to advance clients, connections, channels, and packets. |
| `compliance.v1.ComplianceRegisterAsset` | Registers or updates asset-side compliance metadata. |
| `compliance.v1.ComplianceRegisterUser` | Registers or updates user-side compliance metadata. |
