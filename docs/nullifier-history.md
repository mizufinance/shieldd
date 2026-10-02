# Authenticated storage and permanent nullifiers

Shieldd has one storage owner in `shieldd-sdk-storage`. NOMT authenticates the
application and sixteen permanent spend-nullifier shards. RocksDB stores original
keys, full values, ordered records, native tree nodes and retained wallet history.
There is no JMT, Cnidarium database, duplicate permanent set, per-nullifier height
index or archived-nullifier backfill.

## Commit and execution ownership

Permanent keys use a canonical domain-separated hash; the high four bits select
one of sixteen shards. Values are one-byte spent markers. Application NOMT values
contain a hash and checked byte length; reads verify the original RocksDB bytes.
Volume nullifiers use canonical UTC-day generations. Logical retirement is strictly
after `day_start + 88,200` seconds. A local retirement ledger shares the raw commit
batch; retired handles close after durability and files are collected after two
retained boundaries, under the writer that drains proof sessions. GC does not
change consensus effects.

The canonical manifest binds format, chain/protocol identity, height, block ID,
previous boundary and ordered participant roots/counts. Bankd authenticates its
digest, the replay-receipt digest and boundary header in the SDK Shieldd module.
The exact normal SDK Commit metadata `WriteSync` batch also writes one private
receipt blob. That SDK commit is the authoritative block decision.

Each native mutation saves its application overlay and restores it on failure.
Read observations and resource charges survive failed calls. Bankd permits native
mutations only during FinalizeBlock; SDK simulations cannot mutate canonical
native state. General rollback coordination across SDK/EVM/IBC caches is tracked
separately in [Bankd #355](https://github.com/mizufinance/bankd/issues/355).

Freeze authenticates committed observations from successful and failed calls before SDK durability. NOMT participants then materialize, followed by one
synced RocksDB values/manifest batch. Public SDK and native queries wait for a
matched boundary. SDK Commit acknowledges the durable decision while native
materialization and proof-session draining run in the background. Stateless proof
verification for H+1 overlaps H persistence; H+1 cannot decide before H finishes.
Owned chunks contain at most 128 transactions/16 MiB, preserve transaction order
and do not impose a block admission limit.

## Recovery and proofs

Startup reconciles before normal traffic. If SDK H is durable and raw Shieldd is
H−1, the receipt must match its SDK-authenticated digest. Only changed NOMT
participants that advanced are rewound, then native calls and their outcomes are
replayed and outputs, canonical deltas and every root are compared. SDK transfers
and EVM execution are never replayed by this procedure. Native stores retain two
undo boundaries. All persistence jobs join before recovery or shutdown.

Matched checkpoints need no receipt. Missing inputs, unexpected roots or replay
results, and native state ahead of SDK fail closed and require matched repair.
Unilateral SDK/Comet rollback commands are refused. Restore SDK, Comet and Shieldd
at one matched boundary, then use ordinary full Comet/SDK replay.

State and nullifier proofs carry participant identity and the manifest. Consumers
verify through shared Rust/native/WASM code against a separately authenticated
SDK Shieldd commitment. A proof's own manifest is not a trust anchor.

Retained compact/ciphertext/routing/transaction records remain full raw values
with NOMT value commitments and authenticated ordering. Filtered pages remain
opt-in trusted-provider discovery; spend-height metadata retains its provider-trust
contract. This prototype retains wallet and transaction history from genesis.

## Checkpoints and offline maintenance

Stop Bankd at a matched boundary for offline work. Obtain ROOTHEX from
SDK-authenticated state, not from the local native manifest.

```sh
shieldd-store capacity DB ROOTHEX
shieldd-store export DB SNAPSHOT ROOTHEX
shieldd-store restore SNAPSHOT NEW_DB ROOTHEX
shieldd-store grow DB permanent-00 BUCKETS ROOTHEX
```

Export captures a RocksDB checkpoint and quiesced active NOMT files at one
published boundary. Validation checks complete sorted NOMT export, roots/counts,
raw-value completeness and native SCT/compliance
commitments. Restore validates a private destination before
publication. Live replacement uses atomic same-filesystem directory exchange.
SDK state-sync requires the Shieldd extension exactly once; its boundary must
match the restored SDK state.

`SHIELDD_STORAGE` supplies local bucket, cache, preallocation and worker options.
Linux requires usable `io_uring`; containers use the
[NOMT seccomp profile](../deployments/seccomp/README.md). macOS uses the synchronous
backend. Nodes store all permanent shards; sharding does not reduce aggregate RAM.

Capacity reports per-participant file/address headroom, occupancy, undo space,
branch pages, branch headers, actual map-node allocations and bucket metadata.
Requested resident-index allocations exclude allocator rounding, fragmentation
and transient copy-on-write roots; mapped pool bytes are not RSS. Monitor process
RSS and filesystem free space separately. Offline growth checks temporary space
for the replacement hash table, then validates complete roots/counts/proofs before
and after rehash. Keep a validated matched backup in another failure domain.
Before projected twelve-month usage reaches 70% of usable file-address space or
configured aggregate resident-index budget, qualify wider addressing or a bounded
index. Increasing shard count alone does not satisfy this qualification.

## Admission and performance limits

The shared nullifier cap is 131,072 per block; per-transaction limits are unchanged.
Protocol-versioned recording allows 131,072 calls and 64 MiB encoded receipts, with a separate 128 MiB observation cap. EndBlock work and queued deposits reserve capacity before side effects. Failed
and aborted work is charged. Decoded artifacts have a configurable local memory
ceiling; exhaustion cancels processing rather than changing transaction validity.

At five-second blocks, 5,000 TPS with two nullifiers per transaction requires
50,000 nullifiers, below the new cap. Comet's unchanged 22,020,096-byte block limit
allows only about 881 bytes per transaction at 25,000 transactions/block; gas and
byte limits remain independent constraints. This rewrite removes storage and
admission blockers. It does not demonstrate measured 5,000-TPS performance, and
no benchmarks are part of this work.
