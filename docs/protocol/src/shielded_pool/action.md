# Transaction Actions

The shielded pool component exposes the following user-visible actions:

- `shielded_pool.v1.Transfer`
- `shielded_pool.v1.NoteReshape`
- `shielded_pool.v1.ShieldedIcs20Withdrawal`

These actions all use the same note/nullifier machinery, but they are not
equivalent:

- `Transfer` moves value between addresses and may create sender-owned change.
- `NoteReshape` only reshapes sender-owned notes.
- `ShieldedIcs20Withdrawal` burns shielded value into an outbound ICS-20 effect
  and may create sender-owned change.
