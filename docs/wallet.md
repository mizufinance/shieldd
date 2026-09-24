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

`sync_from_provider` accepts `FullScan` by default, or an explicit
`RemoteFiltered { provider_id }` matching the selected provider. FullScan decrypts
every note with bounded concurrency and does not depend on an issued-address
manifest. Filtered mode queries all issued selectors for both asset precisions,
including the applicable previous-parameter grace period, in batches of 256.
Retired addresses remain eligible. An incomplete manifest requires FullScan recovery.

Filtered responses contain matched and unrouted payloads, positional block proofs,
metadata and every compliance event. The checked sparse constructor validates
positions, canonical padding, paths and shared nodes. The resulting SCT must match
the independently supplied host root before commit. Spend pages cover each scanned
block, including newly discovered notes, seizures and other-device spends. Positive
membership must match an independently supplied generation root and the requested
height. Omission completeness and exact spend-time mapping remain trusted-provider
facts; this is not a light client. Selectors and owned nullifiers are disclosed to
that provider. See [routing privacy](routing.md#remote-privacy-modes).

All page fragments and required transactions complete before the existing atomic
wallet write. Expired mutable cursors or failed queries discard unfinished work;
restart at a fresh host anchor. Historical block-proof trees are disposable node
caches, bounded separately to 64 MiB with one reconstruction worker. Wallet
compliance synchronization remains global.

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
Spent notes cannot regain history cache rows.
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
