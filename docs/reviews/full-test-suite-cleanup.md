# Full first-party test review and cleanup

2026-09-22. Review, cleanup and verification complete. Baseline: `1dc62a7` plus the pre-existing
dirty tree. This work is separate from the earlier 15-test cleanup.

## Coverage and decisions

Reviewed all **909 active first-party declarations** in 204 files: 884 Rust tests
(including properties and ignored gates), 25 Python tests, plus the standalone C
ABI harness and persistent-state Rust/shell scenario. The initial lexical count
of 910 included a commented-out bincode test; that dead block was removed.

The [audit snapshot](full-test-suite-cleanup/audit.json) accounts for every reviewed
test file, its original/final hashes and counts, and reasons/retained homes for changes.
It is evidence for this completed review, not an inventory agents must maintain.
Review used assertion/control-flow dossiers for every declaration and full source
and helper followups for suspicious tests and consolidation candidates. This was
not an audit of every dependency's implementation.

**65 functions were deleted or consolidated, 56 rewritten, and 788 retained
unchanged.** There are now 844 declarations: 819 Rust and 25 Python. A combined
case table counts once; the reduction does not imply that 65 behaviors disappeared.
The implementation removes roughly 1,500 net lines without adding a test framework.

Archived experiments (40 declarations) remain historical evidence. The vendored
suite (1,618 lexical test attributes across 147 files) was inventoried and left
unchanged. No executable first-party Rust doctests were found; the ASCII diagram
fence remains. Build/feature scripts remain verification drivers, not extra unit tests.

## Changes and retained coverage

| Area | Cleanup | Retained or stronger oracle |
| --- | --- | --- |
| Transfer witnesses | Removed repeated debug-era witness builders and identical registered-user fixtures | Runtime adapter matrix retains origin/continuation/self/other cases; scenario tables retain base/nonbase, populated asset gaps, user paths, position 512 and change |
| Withdrawal routing | Three fixture copies become one change/no-change matrix | Output count, destination and exact routing parameters |
| Indexed tree | Consolidated sentinel, presence/gap, insertion, codec and predecessor smoke tests | Strict field endpoints, authenticated paths, wrong-root rejection, complete leaf/index equality, unchanged state after rejection and a linear predecessor oracle |
| Registry commitments | Replaced a two-field mutation | Each link, policy, ring and audit field independently affects commitment |
| Compliance paths | Removed four overlapping top-level tests | Tree owner checks sibling ordering and reconstructs roots; registry owner checks stored sender/recipient paths |
| Compliance anchors | Removed historical genesis-attack duplication and corrected an “immediate” test that only checked after expiry | Genesis/current-height asset cases, current-root positive controls, expired history and user-root rejection before recording history |
| Timestamp policy | Four tests become one explicit boundary table | Zero, negative time, inclusive ±1,800 seconds, rejection at ±1,801, signed maximum and unsigned overflow cases |
| Compliance codecs | Removed arbitrary-byte privacy assertion and repeated partial equalities | Exact serialized field sequence, roundtrip, length/canonical rejection and full record equality |
| Registration | Combined absent/base-asset rejection; strengthened count-only address-scope test | No user/event mutation on rejection; exact persisted leaves and distinct address positions |
| Scanner storage | Replaced scheduler-dependent “concurrency”; removed arbitrary five-block WAL-size bound | Reader result arrives while write transaction is held and sees committed data; configured WAL/checkpoint/vacuum policy remains checked |
| Reshape execution | Removed duplicate one-nullifier regression with misleading “every” name | Two input slots are each persisted and independently reject a second spend; fresh input still succeeds |
| Wallet trees/planning | Consolidated SCT spot check and many-to-one smoke | Empty/missing storage plus incremental append/forget/reopen; explicit/inferred family, partial/full capacity and all padded backrefs |
| Reservation state | Deleted unused release API and its historical regression | Strict expiry and replacement exclusivity; atomic multi-reservation and recovery-head checks remain |
| Host lifecycle | Six repeated genesis/block fixtures become one lifecycle trace | Initial errors, phases, readiness, checkpoint export, supplied block facts, snapshot versions and committed-state visibility |
| Host source identity | Removed same-call tautology | Changed deposit contents preserve source position key and change deposit ID; chain/height/transaction index/message index scope remains distinct |
| Asset codecs/balances | Replaced broad `should_panic`; compressed six repeated signed-value fixtures | Valid metadata control followed by explicit mismatch rejection; signed arithmetic examples, cancellation and emitted sign bits |
| Keys/custody | Removed obsolete address literal and duplicated import/password smoke | Current accepted encodings and invalid lengths; own/foreign viewing; full threshold Config equality; password/ciphertext authentication |
| TCT properties | Consolidated identical trace generators and three inverse-only properties | Independent numeric packing across the full u16 domain; named index/proof/cache checks; separate model/serialization/forgotten traces, with integer forgotten-count oracle |
| Backrefs/accumulators | Removed a random wallet/tree fixture for an empty ciphertext | Direct empty-opening case; real roundtrip property; accumulator day and commitment binding, including authenticated inconsistent plaintext |
| CLI/tooling | One help invocation instead of two; isolated CSV temp paths; replaced checkout-dependent discovery smoke | Supported/rejected CLI options and actual invocation; source-root competition in a temporary tree |
| Miscellaneous | Deleted literal-only Orbis test, unasserted dependency-read smoke, internal constant-label test, duplicate assertions and dead bincode block | Production behavior owners and existing cross-boundary tests remain |

Similar fixtures were retained where failure boundaries differ: circuit relations,
real proofs, host admission, C ABI, wallet storage, replay, rollback, cancellation,
and stale-worker interleavings. Tiny independent path/constructor tests were not
merged just to reduce the count. The ignored signing-vector writer remains an
explicit fixture-generation utility, outside ordinary tests and the proof gate.

The only runtime API removal is `Storage::release_volume_reservation`; all callers
were tests. No circuit relation, registry key, protocol or vendor patch changed.
The Orbis discovery test adds the existing workspace `tempfile` as a dev dependency.

## Fault checks

Three isolated production faults were injected and restored byte-for-byte before
final checks. These are bounded examples of failure detection, not a mutation
coverage score. [Commands and outcomes](full-test-suite-cleanup/fault-results.json):

| Fault | Original control | Rewritten test |
| --- | --- | --- |
| Remove the low 64 bits of the daily volume limit from the leaf commitment | Passes | Fails specifically on the unbound daily limit |
| Route persistent scanner reads through the held writer lock | Passes | Times out waiting for the reader while the writer is held, then releases and joins cleanly |
| Remove denomination-to-asset-ID validation from metadata decoding | Not rerun | Fails the explicit mismatched-ID rejection assertion |

Logs: [commitment](full-test-suite-cleanup/fault-leaf-volume.log),
[reader isolation](full-test-suite-cleanup/fault-reader-lock.log),
[metadata binding](full-test-suite-cleanup/fault-metadata-binding.log).
No fault, extra control test or experiment runner remains in source.

## Verification

Ordinary workspace verification is complete: **799 Rust tests passed; 20 ignored**.
The completed app/app-tests/circuits targets (167 passes, three ignored) were
reused from the first run; after correcting two rewritten compliance assertions,
the remaining workspace passed (632 passes, 17 ignored). The two mistakes were
assuming distinct keys from a fixed-key fixture and an hour instead of the
specified 30-minute drift limit. Neither required a production change.
Doc-test commands also passed; there were no executable doc tests.

The [target-level accounting](full-test-suite-cleanup/ordinary-test-results.json)
avoids double-counting the application's nested child-process test output.
Logs: [initial run](full-test-suite-cleanup/workspace-initial.log),
[completed workspace](full-test-suite-cleanup/workspace-completion.log),
[remaining doc checks](full-test-suite-cleanup/remaining-doc-tests.log).
The unchanged app and circuit source was already checked before the final
compliance test-only adjustments; all temporary faults were restored.

All 25 Python tooling tests passed. Focused asset/keys/compliance/transaction and
shielded-pool/custody/view batches passed during implementation. Commonware source
inventory and baseline hashes confirm vendor code and pre-existing signing
vectors were unchanged by this task.

**All 19 ignored proof-gated tests passed** under the optimized `ci` profile,
using the existing explicit registry. The signing-vector writer was not run.
The C ABI harness and uninterrupted/reopen/checkpoint persistence scenario passed
against the compiled artifacts. `just check` passed: formatting, documentation
links, Commonware inventory, Python tooling and workspace all-target/all-feature
checking. Final diff and source hash checks passed; source remained unchanged
during final verification.

[Executed commands and exit codes](full-test-suite-cleanup/verification-results.json),
[proof-gate log](full-test-suite-cleanup/pari-proof-tests.log),
[final-check log](full-test-suite-cleanup/final-check.log), and
[verification identity](full-test-suite-cleanup/verification-identity.json).
Registry manifest SHA-256:
`f3e342c0c80da1b8122e749eb577fdd9e53360cbb5ac49b4da4749c3214d91ad`.
Build/Rayon concurrency was two; test execution was serial. No swapping was
observed during these checks.

Limitations: no live Orbis/network or container integration, release-profile
rerun, platform/feature matrix, or vendored Commonware test rerun. The C link
warned that some cached objects target macOS 15.5 while the linker defaulted to
15.0; execution passed on this host and does not establish macOS 15.0 support.
Dependency stability/future-Rust warnings also remain. The unchanged vendor
inventory was verified, but upstream tests were not included in first-party
cleanup decisions.
