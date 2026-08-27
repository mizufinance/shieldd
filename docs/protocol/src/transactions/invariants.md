
# System-Level

#### Invariants

1. User-submitted transactions cannot create or destroy value. Movement between
   Bankd and Shieldd is handled explicitly by typed host deposit and withdrawal
   operations.

1.1. Each supported shielded action commits to its local value balance, and the
     transaction binding signature ties the total transaction balance to zero.

2. Individual actions are bound to the transaction they belong to.

3. Unsupported action families are rejected before execution.

#### Justification

1.1. We check that the summed balance commitment of a transaction commits to 0.

2. The transaction binding signature is computed over the `AuthHash`, calculated from the proto-encoding of the entire `TransactionBody`. A valid binding signature can only be generated with knowledge of the opening of the balance commitments for each action in the transaction.

## Action-Level

- Shielded actions must consume valid note commitments, reveal fresh
  nullifiers, and create note commitments that match their proved witness data.
- `Transfer` alone participates in compliance extraction and binding.
- `NoteReshape` reshapes sender-owned notes without transfer audit ciphertext,
  but regulated reshapes bind the current user root and require `Active` status.
- `ShieldedHostWithdrawal` binds the withdrawn value and its complete host
  destination. For execution withdrawals, this includes the refund address,
  gas limit, and ordered call batch.
