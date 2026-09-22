# Wallet state and planning

[View](../crates/view/src) consumes host-supplied `WalletBlock` records through
`SyncWorker`. Each record contains compact data, transactions, a timestamp and
an expected SCT root. The worker verifies roots before atomically committing
notes, witnesses, compliance projection, historical state and the new sync height.
A failed projection cannot publish partial wallet state. Block admission checks the
predecessor height inside the same transaction, so only one competing scan can commit.
Each worker binds its in-memory trees to a durable height and rejects scans after another
writer advances storage. Recreate a stale worker, including after cancelling a scan
whose database commit may have completed.

`StoragePlanningIo` fixes its read height when created and rejects reads after
the wallet advances. `PlanningIo` supplies the external reads needed to complete
an intent. Issued addresses are durable records: planning and discovery reuse
canonical address indices, including diversifiers beyond the default address.
Note selection with an address index matches the complete index, including its
diversifier. Amount cutoffs apply only to unspent notes of one specified asset.
Sweep returns one ready plan; execute it and sync before requesting the next step
to avoid reusing fee notes. Paid base-asset consolidation uses two-input
self-transfers. Reshape and withdrawal actions conserve their asset value and use
separate base-asset fee funding. Withdrawal maintenance can first create an exact
principal note and a fee note; resume planning after those outputs are confirmed.

The wallet retains witnesses for owned notes. Compliance projection uses separate
user and indexed asset trees; their pair is validated against advertised anchors.
Asset-registration events must match their leaf identity and committed policy
fields before any side policy is persisted.
The SQLite SCT hash cache is keyed by position and height. Repeated writes of the
same hash are idempotent; a conflicting hash is rejected. Forgetting deletes the
selected range, and block writes remain atomic. Compliance trees reconstruct
internal hashes from their persisted positions and leaves. The schema hash rejects
older wallet databases; reset and resynchronize them before use.
See [tree persistence](state.md) for mutation and atomicity rules.

`SyncWorker` owns one background `HistoricalProofWorker`, an explicit configured
Pari registry and a `HistoricalWitnessSource`. Startup and committed scans schedule
history work without awaiting external witnesses or proving. `request_history_update`
coalesces wake requests, and the worker also retries 30 seconds after each pass.
Each pass reads bounded pages and advances each note by at most ten checked
witnesses and one proof, serially; the number of notes in a pass is not capped.
A witness request times out after 30 seconds and persists a retryable failure.
Blocked, invalid and useful failure states remain durable; work becomes ready
only after archive/proof prerequisites validate. Every worker write compares its
expected cache row and captured nullifier window atomically; stale work is discarded.
Dropping the sync worker cancels its history task. Already-started blocking proof
work may finish without its cancelled caller publishing the result. Database
writes already dispatched may also finish and remain guarded by the row/window
comparison. The shared prover limit still bounds proof work. View's optional `rpc` feature supplies
`RpcHistoricalWitnessSource`; hosts may supply another real external source.
[Nullifier history](nullifier-history.md) defines coverage, archive and pruning requirements.

Completion permits at most one real daily-volume transition per subject/day,
including precompleted actions. A daily-volume transfer reserves one confirmed
accumulator head per subject/day.
Definite pre-broadcast failure or rejection releases the reservation only for its
transaction owner; ambiguous
broadcast keeps it reserved until confirmation or strict expiry. Confirmation
records the successor and clears the reservation atomically. Recovery verifies
the owner payload’s commitment and transition chain before a head becomes
plannable. Incomplete history cannot open a second budget. See
[the volume relation](compliance/flow.md#daily-volume-state).

`pcli` supports offline initialization, addresses and custody. Bankd owns live
query/submission workflows and mobile/admin smoke tests. See
[development](development.md) for test prerequisites.
