# Implementation verification evidence

Evidence for [the four implemented recommendations](../circuit-state-optimization-implementation.md).
Tests ran locally on 2026-09-21 in the optimized `ci` profile, with
`CARGO_BUILD_JOBS=2`, `RAYON_NUM_THREADS=2`, and `GOMAXPROCS=2`.
Heavy verification jobs ran sequentially; expensive proof tests used one test thread.

The explicit registry was
`target/optimized-pari-keys-20260921`; [its manifest](registry-manifest.json)
records the final nine relation identities and key digests. Key binaries and
database contents are not included here.

[Source fingerprints](source-fingerprints.json) compare this implementation with
the initial working tree, including its earlier uncommitted changes. All 359
Commonware source and patch-policy files checked against that baseline are
unchanged. `python3 scripts/commonware.py check`, `cargo fmt --all -- --check`,
and `git diff --check` passed.

## Focused evidence

- [Circuit suite](circuit-tests.log): 63 library tests and 1 proof-envelope
  integration test, including native proof generation.
- [Registry setup](key-setup.log): generation and validation of staging and
  final registry directories.
- Wallet SCT: [reproduction](wallet/sct-before.log), then
  [four passing regression tests](wallet/sct-after.log).
- [SCT suite](storage/sct-test.log): 36 tests, including byte accounting,
  concurrent cold loads, failed-load wakeups, and pack quarantine.
- [Pack lifecycle](storage/app-packs-test.log): 6 tests, including bounded
  cleanup, restart, retirement races, and concurrent repair.
- [App retry](storage/app-maintenance-test.log): maintenance failure preserves
  pending application writes.
- [Historical proof service](storage/service-pack-test.log): spent-query
  rejection and pack-loss recovery from retained compact blocks.
- [Broad integration run](integration-tests.log): 648 passed, 24 ignored, no
  failures. The app subprocess check is excluded from the total to avoid
  counting it twice.
- [Workspace check](workspace-check.log): all targets and all features compile.
- [CLI build](pcli-build.log): all features, including Disclosure proving.
- [Prover gates](proof-gates.log): all 19 selected ignored tests actually ran
  and passed, including wallet Disclosure export/import and history proofs.

Exact commands, environment bounds, and exit statuses are recorded in
[verification runs](verification-runs.json). Prover strategy benchmarks and the
signing-vector generator were excluded. A separate release-profile suite and
full workspace test matrix were not run; all workspace targets/features were
compile-checked.

## Review and limits

Independent Sol review checked request-derived Disclosure family selection and
pack repair ownership. The repair mutex guard moves into blocking inspection
and publication, so cancellation cannot release it while those operations run.
This lifetime was reviewed in code; a deterministic caller-cancellation test was
not added. Concurrent repair tests do not substitute for that test.

The 64 MiB limit covers cache-owned reconstructed vectors, not active-request
references or total process memory. Cleanup checks verified receipt and file
identity; silent corruption preserving file metadata is detected on a later
full read. Retained compact blocks provide recovery after expanded-tree pruning.
The 256-key page bounds work per commit; it does not guarantee a bounded cleanup
backlog at every transaction rate. Sustained pruning throughput was not load-tested.

Experimental performance numbers remain in the experiment report. These checks
validate the integrated implementation; they are not a new throughput benchmark.
External Orbis deployments, containers, and formal certification were not run.
