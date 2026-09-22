# Storage experiments and source audit, 2026-09-21

Agent report. For subsequent parent proof timings and final decisions, see
[the consolidated report](../../circuit-state-optimization-experiments.md).

No production files were changed. The Rust/Cnidarium harness source is in `cnidarium/`, output in `results.json` and individual `.log` files. It used the shared `target/ci`, two build workers, locked offline dependencies, and fresh data directories. `retention` uses durable commits, release/reopen, deletion, physical byte counts, and an equal-root latest-state rebuild. `lifecycle` uses full-field canonical random nullifiers, rollovers, pack build, cold proof parity, bounded deletion pages, simulated interruption/reopen and root assertions. `pack_only` measures cold pack decode/reconstruction/proof in a separate process with `/usr/bin/time -l`. The commands and exact source are preserved in scratch.

## Persisted Cnidarium/JMT retention result

The `retention` bin committed 512 distinct verifiable keys at each of 32 versions, overwriting each value with 64 bytes; a separate latest-state rebuild inserted the same 512 final values and **asserted equal root**. With both RocksDB stores closed/reopened, the historical store used 2,403,529 bytes and the rebuild 379,473 bytes: 6.33× physical size for identical logical values/root under this trace. Deleting all logical keys and reopening left 2,625,466 bytes. The open-store figure of ~6.69 MB includes WAL/SST churn and is not the fair comparison. This directly confirms physical historical retention for the tested versioned JMT path, but not a safe garbage-collection policy: old nodes may be needed by retained roots, readers and proof queries.

## Retired-pack lifecycle result

Full-width random nullifiers were inserted durably, generation 0 was retired, a pack was built, eight cold nonmembership proofs matched the live tree, and a receipt was published. A nonempty verifiable sentinel was present. The scratch bounded prototype deleted at most 256 nonverifiable keys per commit, simulated interruption/reopen after page one, and asserted an unchanged consensus root after every page. To keep Cnidarium's snapshot coherent for many pages, this run re-put the *same* sentinel value in an ordinary commit; this is a harness device, **not** an online worker design. An actual worker must coordinate pages into the application writer's ordinary commits. Reopening after each in-place page also worked but inflated files and took 2.18 seconds for 10,000 leaves, so those figures are excluded from the primary comparison.

| Nullifiers | Pack bytes | Build | Cold reconstruction in lifecycle | Expanded records deleted | 256-key pages | Bounded delete | Reopened store |
|---:|---:|---:|---:|---:|---:|---:|---:|
| 100 | 3,308 | 6 ms | 25 ms | 454 | 4 | 10 ms | 752,009 B |
| 1,000 | 32,108 | 56 ms | 74 ms | 4,352 | 18 | 16 ms | 1,050,849 B |
| 10,000 | 320,108 | 561 ms | 594 ms | 43,353 | 173 | 159 ms | 3,884,958 B |

For 10,000, the existing unbounded `prune_packed_generation` deleted the same 43,353 records in one in-place commit in 115 ms and reopened at 3,833,373 bytes. The 159 versus 115 ms figures show bounded paging was close at this scale, but the benchmark uses local SSD cache, one generation and an artificial no-op verifiable write. It does not measure writer contention, maintenance backlog, or crash recovery under active blocks. Physical directories include RocksDB files and do not isolate JMT or nonverifiable column families.

The standalone `pack_only` process loaded only the serialized pack and produced eight valid cold proofs. For 100/1,000/10,000 nullifiers, reconstruction took 7/58/549 ms and maximum resident set size was 1.999/2.310/5.882 MB respectively. RSS includes process/runtime baseline, so the incremental 100→10,000 change is about 3.88 MB, not an exact allocation of the reconstructed tree. A cache limited to one generation can still grow with generation length/traffic; an explicit byte budget is justified before scaling beyond this range.

The pinned Commonware QMDB current ordered-variable harness was run in hashed and order-preserving key modes. The latter used zero-padded `hist/{i:08}` keys and passed predecessor, successor and all 512 range assertions. After safe pruning and reopen, both stores used 206,080 bytes with equal roots and all values; after delete/prune/reopen, 95,122 bytes. Hashed-key point reads took 2.24 ms for 512 keys, while ordered keys took 31.25 ms because all ASCII keys shared the same first-byte `OneCap` translated bucket. See [the QMDB experiment notes](../qmdb/experiment-notes.md) and [structured results](../qmdb/results.json). A point-write/disk result cannot select an engine: retained proof format (ICS23), speculative branches, snapshots, nonverifiable records and cross-store atomicity remain integration gates.

## Confirmed behavior from source

- `nullifier_generation_packs::spawn_worker` scans every retired generation after every snapshot notification, publishes missing packs, and never records a receipt or prunes. `prepare` does both at startup. A continuously running node therefore retains expanded retired trees until restart.
- `prune_packed_generation` reads all keys under node, leaf, value and value-desc prefixes into one vector, sorts and deduplicates, then schedules deletes. Peak memory scales with all expanded records in a generation. Paginated commit batches require a durable cursor/receipt and a writer that cannot race consensus commits.
- Cnidarium exposes `nonverifiable_range_raw(prefix, range)` with exclusive bounds. A bounded prototype can persist `(generation, prefix number, last deleted key, receipt hash)` alongside each deletion batch; resume from an exclusive last-key bound. It should read at most `page_size+1` keys from one prefix into the delta, commit, and advance. This bounds in-process pending deletes to `O(page_size)` and makes every page crash replayable. The worker must coordinate each commit with the single storage writer and recheck that the generation is retired and its receipt matches before every page. The final page clears the cursor. A mere in-memory cursor or a second concurrent storage writer would be unsafe.
- `GenerationPackRepository` limits reconstructed generations by *count*; one reconstruction builds `leaves`, sorted `ordered`, and `levels` vectors. Its pack is `108 + 32*N` bytes. The standalone Rust measurement above shows cold reconstruction rising from 7 to 549 ms and peak process RSS from 2.00 to 5.88 MB across 100–10,000 nullifiers. A count of one is not a byte cap.
- Cnidarium 0.83 `Substore` deletes the current key-preimage indexes on logical deletion, but writes versioned JMT nodes and values without consuming stale-node indexes or deleting old versions. RocksDB compaction cannot infer that distinct versioned keys are obsolete. A latest-state rebuild must compare roots and retained proof needs before replacing an active database.
- Wallet `compliance_user_hashes` and `compliance_asset_hashes` have composite `(position,height)` primary keys in ordinary rowid tables; `sct_hashes` has a position index, without uniqueness. The full tree is projected in the wallet, while full user leaf data is limited to sync scope. Any targeted proof-fetch design must maintain exact-root consistency and weigh recipient interest leakage.

## SQLite microbenchmark

`sqlite_bench.py`, Python 3 SQLite, WAL + FULL synchronous, 4 MiB cache, 20,000 rows of `(position,height,32-byte hash)`, 500-row transactions, 1,177 point reads after reopen. Three schema variants used identical row data. This is a small synthetic tree-table experiment, not wallet replay.

| Variant | file after insert | insert | reads | file after deleting half + checkpoint | file after VACUUM + checkpoint |
|---|---:|---:|---:|---:|---:|
| rowid + unique index | 1,167,360 B | 21.9 ms | 2.72 ms | 1,167,360 B | 577,536 B |
| rowid composite PK | 1,167,360 B | 21.1 ms | 2.80 ms | 1,167,360 B | 577,536 B |
| WITHOUT ROWID composite PK | 962,560 B | 16.8 ms | 2.56 ms | 962,560 B | 438,272 B |

`WITHOUT ROWID` saved 17.5% of the initial table bytes here. A checkpoint copied/truncated the WAL but did not shrink the main database after deletion; 115–138 pages were on the freelist. VACUUM plus checkpoint reclaimed file bytes. With one transaction per row, insert times rose to ~0.67–0.76 s versus ~0.017–0.022 s for 500-row transactions. Exact timings vary with OS cache and are directional only. The production wallet already batches block updates, so a row-per-transaction contrast is not a measured optimization opportunity.

## Generation-length model

`models.py` is a transparent arithmetic scenario: 3,600 epochs, 1,000 nullifiers per epoch, 10,000 old unspent notes, history chunk width 10, 244 bytes/proof envelope. It assumes complete retired generations, steady traffic and excludes indexes, tree nodes, SQLite/JMT overhead and metadata.

| Epochs/generation | Retired generations | Peak nullifiers in two active generations | Pack payload total | Proof bytes per old note | 10k old notes |
|---:|---:|---:|---:|---:|---:|
| 30 | 120 | 60,000 | 115.21 MB | 2,928 | 29.28 MB |
| 60 | 60 | 120,000 | 115.21 MB | 1,464 | 14.64 MB |
| 120 | 30 | 240,000 | 115.20 MB | 732 | 7.32 MB |

Longer generations reduce the number of historical proof envelopes and fixed per-pack headers, but do not meaningfully reduce total nullifier payload bytes. They multiply the active-tree and worst-case cold-reconstruction working set. The measured 100–10,000 nullifier reconstruction curve informs this tradeoff, but a traffic trace at realistic generation size and workload is still needed before choosing a length.

## Archive/wallet availability conditions

Moving old compact blocks or pack payloads out of hot validator storage changes placement, not total bytes. An archive must still provide accepted transaction data, historical ciphertexts and recovery capsules needed for wallet catch-up, disclosure and seizure; the client must authenticate them against chain commitments/roots. A standalone file checksum detects corruption relative to a known checksum but does not prove consensus acceptance.

Full wallet compliance projection pays sync writes/storage to preserve local proofs without recipient queries. Targeted batch requests can reduce local tree state but reveal queried recipients and must be bound to one root/height; padding/batching only reduces that signal, not eliminates it. A wallet workload with observed tree update frequency, recipient-query count and proof sizes is needed to locate the crossover. There is no such traffic trace in this repository, so no numeric crossover is claimed.

`wallet_model.py` sweeps 1,000/100,000 global compliance updates and 1/10/100 needed recipients. At depth 16 with 32-byte hashes, a single tree update touches at most 16 path hashes (512 raw hash bytes); two quaternary authentication paths require 2×16×3×32 = 3,072 raw sibling bytes per recipient before leaf/envelope overhead. At 1,000 updates the raw path-write payload is 512 KiB per tree; one, ten, and 100 recipient queries request 3, 30, and 300 KiB of raw sibling hashes. At 100,000 updates the path-write figure is 51.2 MB per tree, while query payload stays tied to recipient count. These are *traffic model* quantities, not retained SQLite size or measured wire bytes; shared nodes, overwrites, updates to both trees, batch proof compression and encryption change the totals. Exact-root verification and recipient privacy remain design gates even where remote payload is smaller.

`volume_retention.py` used the current `volume_accumulators` SQL shape with 100 subjects and one confirmed row per subject per day. The SQLite file was 557,056 bytes for 30 days/3,000 rows and 6,881,280 bytes for 365 days/36,500 rows after WAL checkpoint. This measures a synthetic volume table only. Source inspection shows reservation expiry cleanup and writes/recovery of confirmed heads, but no automatic deletion of older confirmed accumulator days; policy must establish whether those rows are reconstructible before deletion. Payment history has separate user retention value and cannot be treated as a disposable cache.

`pack_corruption.py` mutated a valid 1,000-nullifier pack's header, body, checksum and length. All four standalone decode/reconstruction attempts rejected the mutation. Exact errors and exit codes are in [pack_corruption.json](pack_corruption.json). This tests local pack integrity, not consensus acceptance of a remote archive.
