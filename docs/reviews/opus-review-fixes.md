# Opus review fixes

2026-09-22. Baseline `bac4f6b31e40a7597214b4a0c32e3c364a125f90` (clean).
Addresses the validated [Opus findings](opus-5.5-branch-review/findings.md).
The unfinished review queue remains separate; this is not a claim to complete it.

## Design and acceptance

- Keep one owned, cancellable history task per SyncWorker. Startup and successful
  scans send a coalescing wake signal; the task reads durable rows, never a passed
  snapshot. Periodic retries also advance deferred work without new blocks.
  Drop cancels the task. Existing cache/window/unspent compare-and-swap checks
  continue to fence late work. Bound external witness awaits and each note to
  one proof per pass; retain serial proving and bounded database pages.
- Store issuer detection scalars in zeroizing ownership, remove implicit Copy,
  and redact Debug. Use zeroize's volatile default overwrite for a private scalar
  wrapper; no ad-hoc unsafe writes or ordinary zero assignment. Arithmetic may
  make temporary copies, so this does not promise all process memory is erased.
- Move the misplaced function comment, remove the unsupported minimum compiler
  declaration, correct the dependency comment, and delete unused Orbis CI cleanup
  tooling and the unused DetectionKeyPublic wrapper. Keep the explicit rejection
  of the incompatible live Orbis image.

No circuit, proof statement, registry identity, persisted schema or authorization
change is intended. No new generic scheduler, provider abstraction or compatibility
path is needed.

## Implementation

The changes above are implemented. The history task starts after snapshot and
registry validation, then wakes on committed scans, explicit requests or a
30-second retry. Witness calls time out after 30 seconds. One pass advances each
note by at most ten witnesses and one proof. It still visits all notes using
bounded pages; total notes per pass are not capped. Dropping the owner aborts its
task. Already-started blocking proof work can finish, and already-dispatched
database writes remain protected by the existing row/window/unspent checks.

`DetectionKey` owns `Zeroizing<DetectionScalar>` and no longer implements Copy or
exposes a public scalar field. The private scalar implements `DefaultIsZeroes`;
the resolved zeroize 1.9 implementation overwrites it with a volatile write and
an optimization barrier on drop. Jubjub's scalar default is zero. CLI issuer
import uses the same validated constructor as other key imports. This is source
verification of the cleanup mechanism, not a test that reads freed memory.

## Verification

Tests were added only for distinct behavior: a pending witness must not block
startup or two committed scans, owner drop must cancel the request, timeouts
must persist a retryable state, and a real chunk proof must yield before the
next generation and resume without refetching it. The existing key test now
checks Debug redaction. The unused public-key wrapper and its test were removed.

Before fixing the code, the startup and redaction assertions failed at their
intended boundaries. Restoring only the baseline history worker later made the
new real-proof test fetch eleven generations in one pass instead of ten; the
fixed file was restored byte-for-byte before green verification. The startup
test was subsequently strengthened to await an explicit source-entry signal.

- [Startup reproduction](opus-review-fixes/history-red.log): failed as intended.
- [Debug reproduction](opus-review-fixes/secret-red.log): failed as intended;
  the displayed scalar is the deterministic demo key.
- [Backfill fault injection](opus-review-fixes/bounded-work-red.log): failed as intended.
- [Native history gates](opus-review-fixes/history-proofs-green.log): all three
  passed, serially, including real chunk/tail proofs and restart recovery.
- Selected view, compliance, disclosure, app-tests and pcli suites: 323 passed,
  nine ignored. The three ignored view gates were run separately above; the six
  ignored disclosure gates were not run. Actual sweep, transfer and withdrawal
  application flows passed.
- `just check`: passed formatting, docs, Commonware integrity, tooling tests and
  all-target/all-feature workspace compilation.
- `just wasm-check`: all twelve web-facing crate checks passed.

Full [test output](opus-review-fixes/affected-and-integration.log),
[workspace check output](opus-review-fixes/check.log),
[WASM output](opus-review-fixes/wasm-check.log) and
[commands/results](opus-review-fixes/verification.json) are preserved.
The separate native history command was
`cargo test --locked --profile ci -p shieldd-sdk-view --all-features --lib -- --ignored --test-threads=1`.

Runs used Rust 1.95.0, the optimized `ci` profile, two build/Rayon workers, and
`target/optimized-pari-keys-20260921`. The registry manifest SHA-256 was
`f3e342c0c80da1b8122e749eb577fdd9e53360cbb5ac49b4da4749c3214d91ad`.
No release-profile run, full workspace test suite, full ignored proof-gate suite
or live Orbis integration was performed. The earlier Opus branch review remains
incomplete; this remediation does not fill its pending review sectors.
