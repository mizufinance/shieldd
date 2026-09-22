# QMDB current ordered scratch experiment

Source pin: Commonware monorepo `bd0f7eb33af26c4aa9831d98d53621ba3cb4b14e`. The harness in `harness/` is separate from the Shieldd repository. It runs 32 durable commits of 512 keys with 64-byte values, then point reads, inactivity-floor pruning, root-preserving reopen, logical delete, pruning and deleted-key reopen. It has two key modes:

- `hashed` (default): SHA-256 of `hist/{i:08}`. This approximates the point-key hashing that Cnidarium's JMT uses, but destroys Shieldd prefix/predecessor order.
- `ordered`: `hist/{i:08}` bytes zero-padded to 32 bytes. This retains lexical order, asserts predecessor/successor around key 256, and streams all 512 keys with value checks. It tests correctness of QMDB ordered operations, but uses `OneCap`, which translates only the first byte. All keys share `h`; the index is highly colliding and latency is not representative of a tuned integration.

Both modes use the current ordered variable QMDB, not an in-memory proxy. `Db::commit`, `Db::prune(...).sync()`, `Db::init` reopen and equality of authenticated root are checked. The harness does not yet supply Cnidarium-compatible ICS23 proofs, speculative branch conflict tests, atomic application/nonverifiable commits, or Shieldd's full mixed workload. Those are integration gates before selecting a backend.

Build and run only under the shared heavy verification token. Preserve stdout/stderr in scratch logs. Capture `df -h` and memory pressure before/after; stop if available disk approaches 2 GiB or swapping begins. No production source is edited.

## Actual run

The harness compiled from the pinned source with shared `target/ci`, two workers and locked dependencies. Logs are `hashed-v2.log` and `ordered-v2.log`; both completed with root-equal reopen, all 512 final values, safe pruning and deleted-key reopen. The safe prune boundary was `sync_boundary=31744`, below `inactivity_floor=31777`; attempting to prune at the latter was rejected (`PruneBeyondMinRequired`) in the first harness run, as current-QMDB source requires.

| Mode | 512 point reads after 32 commits | Ordered predecessor/next/range | Bytes before prune | Bytes after prune and reopen | Bytes after deleting all keys, pruning and reopen |
|---|---:|---|---:|---:|---:|
| SHA-256 key | 2.24 ms | Not meaningful under hashed order | 7,158,728 | 206,080 | 95,122 |
| Zero-padded ASCII key | 31.25 ms | All checks passed | 7,158,728 | 206,080 | 95,122 |

The 14× point-read slowdown of the ordered trace is consistent with every `hist/…` key sharing the same first-byte `OneCap` translated bucket; this is a key/index configuration limitation, not evidence that ordered QMDB inherently has this latency. Commit times were generally ~50–70 ms per 512-key batch in both modes, versus ~5 ms for the Cnidarium scratch trace, but the engines use different durability internals, key mapping and caches, so this is exploratory. The 206,080-byte pruned QMDB directory is much smaller than the 2,403,529-byte closed/reopened Cnidarium historical directory for the same 512-key final state; it has discarded old operation history up to the safe boundary. That comparison does not establish equal historical proof availability, ICS23 compatibility, speculative branch behavior or application transaction atomicity.

Exact command shape (use a fresh directory for each mode): `CARGO_TARGET_DIR=/Users/antoinecyr/Documents/Source/shieldd/target CARGO_BUILD_JOBS=2 RAYON_NUM_THREADS=2 GOMAXPROCS=2 cargo run --profile ci --locked --offline --manifest-path /tmp/shieldd-experiments/qmdb/harness/Cargo.toml -- /tmp/shieldd-experiments/qmdb/hashed-data-v2` and append `ordered` after a distinct data path for the ordered trace. The dependency lock was generated offline; one uncached `sha3` crate required a network-enabled first build, after which locked offline runs succeeded.
