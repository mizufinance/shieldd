# Embedded artifacts

Bankd links the `shieldd` static library through `crates/bin/shieldd/include/shieldd.h`.
Bankd invokes Shieldd only through CGO; the library opens no network listener.
The C header defines method IDs and protobuf payload types. Execution payloads
live in `shieldd.execution_client.v1`; read-only queries use component messages
directly. Bankd serves public queries and executes IBC; Shieldd reads committed
snapshots. Host withdrawals use the shared `shielded_withdrawal` proof family
and return value to Bankd for transfer or execution.

ABI 2 requires an archive directory at open; Bankd uses `data/shieldd-archives`
and fails startup if it is unusable. Compact/local storage and archive formats are
incompatible with older data: reset and resynchronize, without migration paths.

Public reads use committed snapshots independently of the execution mutex. Block
and transaction pages bind cursors to chain, query parameters and immutable block
identity; mutable spend cursors bind the snapshot version and remain resumable while
Cnidarium retains that published snapshot. They expire after cache eviction. Clients must discard incomplete expired queries. Oversized records
are fragmented. Overload, snapshot expiry and unavailable data are distinct errors.
Native response buffers own their memory reservation until `shieldd_buffer_free`,
even after service shutdown; callers must free every result/error buffer.

Local defaults are 4 MiB response pages, 256 KiB requests, 256 selectors/nullifiers,
eight read requests, 64 MiB query workspace/outstanding responses, two CheckTx
workers and two archive readers. `SHIELDD_SERVICE_LIMITS` accepts a JSON object
with fields defined by [ServiceLimits](../crates/bin/shieldd/src/limits.rs), applying
at startup. Transport budgets can be tightened within supported client bounds.
Excess work fails with retryable overload instead of entering an unbounded queue.
Archive and historical SCT caches each have a separate 64 MiB budget; archive
maintenance and historical SCT reconstruction each run one job at a time. These
are operating budgets, not consensus or transaction validity limits.

Build explicit deliverables from the Shieldd source root:

```sh
python3 scripts/stage_artifacts.py native
python3 scripts/stage_artifacts.py provers
python3 scripts/stage_artifacts.py audit
python3 scripts/stage_artifacts.py verify
```

The output is `target/shieldd`: `include/shieldd.h`, `lib/libshieldd.a`,
`bin/` tools, and `manifest.json`. Proof code is native Rust. Configure
`SHIELDD_PARI_KEYS` separately with the shared [registry](proof-system.md);
keys are not embedded in staged binaries. The manifest records source revision,
target, suite, compiler profile, deliverable groups and SHA-256 checksums.
Staging selects the native host target unless `--target` is explicit, regardless
of Cargo's implicit target settings. Revision labels are supplied by the caller
or taken from HEAD; they do not certify that the source tree is unmodified.

Verify with an independently selected revision before using downloaded artifacts:

```sh
python3 scripts/stage_artifacts.py verify --output /opt/shieldd \
  --revision "$SHIELDD_REVISION" --target x86_64-unknown-linux-gnu
```

Source copied under Bankd without its own Git metadata must receive
`SHIELDD_REVISION` (or `--revision`) from the importing build. The staging script
resolves source files relative to itself, not the enclosing repository root.
Bankd's `shieldd` Docker target exports only native artifacts; `shieldd-provers`
exports the proof builders, and `shieldd-audit` exports audit tooling.

CI compares uninterrupted execution with close/reopen and checkpoint reimport,
checks committed query bytes/proofs, deposited notes and nonempty history, rejects
replayed host sources, and compares the next committed root. The same fixture
runs under a nested Bankd source directory to check source relocation.
Bankd owns real transfer/withdrawal integration tests, including spent-note replay
rejection after restarting the embedded service. Shieldd PR CI explicitly
runs `just pari-proof-tests`, including the ignored Disclosure CLI/application
tests with a prover-enabled pcli. Ordinary `cargo test` does not run ignored tests.
These gates use the optimized `ci` profile; they do not establish a separate
`--release` run or live Bankd/Orbis integration.

The native decoder and minimized regression seeds remain in Shieldd. Campaigns,
corpora, focused decoder proofs, and certification evidence are owned by
[Shieldd Security](https://github.com/mizufinance/shieldd-security).
