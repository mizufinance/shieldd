# Experiment evidence

Read [the consolidated report](../circuit-state-optimization-experiments.md)
for adoption decisions and limitations. These are research harnesses and candidate
patches, not installed production code or formal verification artifacts.

- [Compiled/proof results](compiled-and-proof-results.json): raw measurements and log hashes.
- [Arithmetic report](arithmetic/report.md): complete relation variants, focused tests and the 57-test native suite.
- [Crypto report](crypto/report.md): windows, extracted hash/format gadgets, parity and encryption proof tests.
- [Storage report](storage/report.md): Cnidarium, pack lifecycle, SQLite and workload models.
- [QMDB report](qmdb/experiment-notes.md): real current-engine tests and integration limitations.
- [Source fingerprints](baseline/source-manifest.json): 1,163 files before experiments.
- [Initial working-tree status](baseline/status.txt): this baseline includes preexisting uncommitted work.

## Baseline and environment

Shieldd base commit: `1dc62a7a09480d966b29e7ecfbe8caa3c309c933` **plus the
fingerprinted working tree**, not that commit alone. Native Commonware pin:
`1a56762927a8ad3300e0594886c28c59d9801769`, with Shieldd's existing vendor patches.
Cnidarium: `0.83.0`, source commit `dd1a08c81d8b3f27083e8a8c47a4e9403786e88e`.
Separate QMDB source: Commonware `bd0f7eb33af26c4aa9831d98d53621ba3cb4b14e`.
Poseidon2 reference constants/source and MIT license are preserved in `crypto/`.

Apple M4 Pro, 48 GiB RAM, macOS 15.7.7. Cargo profile `ci` inherits release
optimization with debug assertions and 16 codegen units. At most two build and
Rayon workers, one heavy verification job at a time; expensive tests serial.
An unrelated Docker workload remained active. No swap was used during measured
runs. These are local comparative measurements, not production TPS estimates.

## Replaying the circuit experiments

The preserved scripts use the original paths
`/Users/antoinecyr/Documents/Source/shieldd` and `/tmp/shieldd-experiments`.
They are exact executed harnesses, not a portable installed tool. To replay,
materialize this evidence tree at the scratch path (or consistently adjust its
path constants), restore the fingerprinted source baseline, and inspect patches
before applying. Do not run against unrelated dirty source or concurrently with
other Cargo/prover work. Scripts save and restore affected source bytes in `finally`;
process termination during restoration still requires checking the manifest.

Catalogue metrics used this temporary logging immediately before
`let log_size = size.ilog2();` in Commonware's Pari circuit compiler:

```rust
eprintln!("EXPERIMENT_METRICS rows={} columns={} squared_nnz={} linear_nnz={} domain={}",
    self.rows.len(), self.next_column,
    self.rows.iter().map(|r| r.squared.terms.len()).sum::<usize>(),
    self.rows.iter().map(|r| r.linear.terms.len()).sum::<usize>(), size);
```

It does not change the relation. Restore the vendor file afterward and run
`python3 scripts/commonware.py check`.

Representative commands, run sequentially from the repository:

```sh
python3 /tmp/shieldd-experiments/arithmetic/run_bundle.py --limb-equality --full-tests
python3 /tmp/shieldd-experiments/proofs/run_proofs.py disclosure --label disclosure-baseline
python3 /tmp/shieldd-experiments/proofs/run_proofs.py disclosure --bundle --limb-equality --label disclosure-bundle32
python3 /tmp/shieldd-experiments/proofs/run_proofs.py disclosure --bundle --limb-equality --capacity 1 --label disclosure-bundle1
python3 /tmp/shieldd-experiments/proofs/run_proofs.py history --bundle --limb-equality --label history-bundle10
python3 /tmp/shieldd-experiments/proofs/run_proofs.py history --bundle --limb-equality --width 11 --label history-bundle11
python3 /tmp/shieldd-experiments/proofs/run_proofs.py transfer --bundle --limb-equality --w3 --label transfer-bundle-w3
python3 /tmp/shieldd-experiments/summarize.py
```

The winning arithmetic candidate requires `--limb-equality`; the default bundle
also preserves the earlier three-comparison ablation. History catalogue labels
remain `history_chunk10` even in width variants: use the log filename and runner
arguments for width. One-note measurements temporarily replace capacity 32;
they do not install a distinct production family.

## Replaying storage

The standalone Cargo manifests/locks and all sources are retained. Their path
dependencies need the same checkout layout. Fetch the exact QMDB source commit
into the directory referenced in its manifest; the source tarball, compiled
targets and live RocksDB directories are intentionally not committed here.
Use the shared target directory and resource limits from the QMDB report.
Pack fixtures are retained for cold reconstruction/corruption tests.

Raw logs include unsuccessful exploratory runs as well as final `v5` lifecycle,
`retention-v3`, and QMDB `*-v2` results. The stopped non-progressing lifecycle
database was removed after preserving its log/file-size manifest. Do not use
intermediate WAL-inflated sizes or the failed loop as successful measurements.

The final reports identify coverage gaps: the entire application, release-gated
suite, full database replacement and new audit-authorization formats were not
implemented or tested by these isolated experiments.
