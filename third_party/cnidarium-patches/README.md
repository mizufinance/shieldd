# Cnidarium sources

Shieldd pins the crates.io archive for Cnidarium 0.83.0. Run
`python3 scripts/cnidarium.py check` for the source and patch inventory, or
`python3 scripts/cnidarium.py reproduce` to fetch the exact archive, apply the
patch and compare all files. `--archive` accepts the same cached crate tarball.
This provenance is independent of Commonware.

The patch adds non-verifiable prefix deletion to a frozen `StagedWriteBatch`.
It rejects overlapping point writes, overlapping ranges, substore boundaries
and migration batches. The existing RocksDB batch atomically commits tombstones
and application metadata; ordinary snapshot publication remains unchanged.
Change subscribers receive range invalidations. The upstream watch protocol
cannot represent them, so affected watch streams fail explicitly and require a
fresh snapshot. A separate method permits bounded, host-scheduled compaction
through the same database owner.

On upgrades, reproduce the upstream archive, re-evaluate this patch, and run its
range-deletion tests plus Shieldd retirement/restart tests. The patch grants no
range deletion to readable application deltas.
