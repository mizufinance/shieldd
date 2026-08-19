# Transactions

Transactions describe an atomic collection of state changes. Each transaction
contains a sequence of supported actions plus the authorization, memo, and
balance-commitment data needed to execute them safely.

The target Bankd integration exposes these Shieldd actions:

- shielded note actions:
  - `Transfer`
  - `NoteReshape`
  - `ShieldedHostWithdrawal`

Bankd owns deposits, withdrawals, asset and user registration authorization,
and compliance status actions. Legacy IBC actions are not part of this target
surface.

Shielded actions consume existing note commitments, reveal nullifiers for spent
notes, and create new note commitments when applicable. The transaction-level
binding signature enforces that the value balance of all actions, together with
fees, nets to zero.
