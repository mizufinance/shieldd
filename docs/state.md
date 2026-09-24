# Tree update architecture

Shieldd preserves the canonical roots, positions, proofs, and insertion order of
its TCT, nullifier, and compliance trees while batching internal materialization.
The durable stores remain the source of truth.

## Consensus state commitment tree

The application reserves commitment positions in transaction order. At block
finalization, validators use an exact finalized-block reducer for sufficiently
large all-`Forget` batches and insert the resulting block root into the existing
tiered tree. Smaller batches use ordinary inserts.

The reducer preserves:

- eight block levels and the existing height-aware TCT hash domains;
- `Hash::one()` padding for absent finalized children;
- canonical commitment positions, block roots, epoch roots, and global roots;
- incremental persistence and reload behavior.

Rayon is feature-gated. Builds without the `parallel` feature use the same
reducer serially. Wallet synchronization retains the witness-aware `Keep` path
because a root-only builder cannot retain owned-note witnesses.

## Nullifier tree

Transactions stage nullifiers in proposal order in block-local state. Membership
uses a persistent ordered set so copying a Cnidarium object does not copy every
previous nullifier. The ordered log is retained through block materialization for
compact-block production.

At block finalization, one storage-backed plan:

1. validates duplicates, spent markers, generation identity, and capacity;
2. applies predecessor-link changes in proposal order;
3. collapses repeated leaf and node changes into a dirty overlay;
4. hashes independent parents in parallel when the feature and threshold allow;
5. writes final leaves, indexes, nodes, count, and root atomically.

`PrepareProposal` performs committed-state reads, same-proposal conflict checks,
and capacity accounting. It does not materialize a nullifier tree because the
temporary proposal application state is discarded. `ProcessProposal` and block
delivery retain transaction-delivery validation semantics; canonical state is
materialized only on the delivery path.

## Compact history and committed reads

Routing staging uses persistent collections. A compact payload is stored once at
its actual SCT position; action records reference positions assigned during
execution, including fee and volume outputs. Dummy outputs have no invented
position. Metadata, payload fragments, other compact collections and canonical
signed transactions are separate records. Signed transaction bytes remain intact.
Tag indexes store reversed bits, permitting range scans for low-bit selectors.

Cnidarium has one database owner and one ordered application writer. Queries use
independent snapshots explicitly published by Bankd only after its commit,
Shieldd's commit and the durable recovery record succeed. Recovery inspection is
separate from public reads. CheckTx uses disposable deltas with bounded admission;
delivery still validates current state. Local query budgets and buffer ownership
are defined in [Embedded artifacts](embedded-artifacts.md).

## Validator compliance trees

User and asset mutations operate on sparse durable nodes. Before changing a
touched leaf, the registry reads its authentication path and verifies that the
existing leaf/path reaches the committed root. It then writes only the changed
path and new root. Asset insertion authenticates both the predecessor and the new
empty position before changing either.

Full reconstruction validates complete tree structure, leaf records, successor
links, counts, and roots during application readiness. End-block anchor recording
reads the committed roots directly and remains constant-time. This separation
keeps local mutations authenticated without turning every block into a registry
scan.

## Wallet compliance projection

The view worker publishes an immutable pair of user and asset trees. Blocks with
no compliance events validate their advertised anchors against the current pair
and reuse the same snapshot without cloning either tree or writing compliance-tree
records.

For an event-bearing block, the worker:

1. clones the current pair once and applies ordered compact-block events;
2. validates the resulting roots against the advertised anchors;
3. extracts typed persistence records for dirty user and asset leaves;
4. clears dirty tracking on the staged pair;
5. commits tree records, scoped leaf data, policies, anchors, and sync height in
   one SQLite transaction;
6. publishes the staged SCT and compliance snapshots and their durable height
   after the commit succeeds.

The wallet TCT remains witness-aware and is independent of this compliance
snapshot.

## Protocol invariants

- Fixed depths, child order, leaf commitments, hash domains, zero tables,
  padding, and proof layouts are protocol facts.
- Nullifier and commitment positions follow proposal order; values are never
  sorted to make batching easier.
- Compliance proofs use [paired snapshot admission](compliance/flow.md#snapshot-admission-and-freezes);
  its epoch and history are application-hash-covered state.
- Mutable indexed-tree predecessor selection is sequential; only independent
  parent hashing is parallel.
- A failed block or wallet projection publishes neither partial tree state nor a
  new sync height.

## Verification

Tests cover sequential-versus-batched root parity, ordered positions, duplicate
and capacity rejection, persistence/reload parity, TCT tier boundaries,
compliance path authentication, no-event snapshot reuse, and atomic SQLite
rollback. Parallel and serial feature configurations must both compile and
produce identical roots.

Production capacity claims require lifecycle benchmarks that include durable
commit and reload costs. Root-only microbenchmarks are useful for threshold
tuning but are not throughput guarantees.
