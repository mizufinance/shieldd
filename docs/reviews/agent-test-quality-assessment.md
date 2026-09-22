# Agent test quality assessment

Status: assessment and bounded experiments complete, 2026-09-22; the selected
changes are tracked in [implementation and verification](agent-test-cleanup-implementation.md).
The original assessment follows. The workflow
changes below are proposals, not new engineering instructions. Production code,
existing tests, CI and skills were not changed during this assessment.

## Conclusion

The first version of this assessment emphasized better new tests and understated
the existing suite's cleanup needs. The user's correction is accepted: test
quality work must also remove tests and test-only APIs whose rationale no longer
exists, consolidate overlapping assertions, and retire completed experiments.
The [cleanup assessment](#existing-suite-cleanup) below takes priority over adding
more testing machinery.

The highest-value correction is to require a justified expected result and
evidence that an important test detects the defect it claims to cover. A green
run, many assertions, high coverage and a second agent's approval do not establish
that. The agent setup just added is incomplete here: it specifies verification
commands and risk boundaries much better than it specifies test design.

Use requirements to decide what should happen; use implementation knowledge to
find ways it could go wrong. Keep those two reasoning steps separate. For a bug
fix, demonstrate the behavioral failure before the fix. For important new
behavior, challenge the test with a plausible faulty implementation when practical.
Do this selectively, without adding a mutation farm or paperwork to every edit.

## Scope and evidence

Baseline: `codex/zkpari-migration`, HEAD
`1dc62a7a09480d966b29e7ecfbe8caa3c309c933` plus the dirty tree captured in
[source identity](agent-test-quality/source-identity.json). This is a purposeful
sample across tooling, CLI, wallet planning, persistent workers, compliance,
trees and circuits, not an exhaustive test audit. Source inspection cannot reliably
establish which individual tests were written by agents.

The executed experiment concerns one small Python artifact-staging suite. Seven
hand-selected faulty variants ran in temporary copies, first with its existing
two tests and then with four added tests. No source mutation touched the workspace.
The unmodified implementation passed both suites. Every reported detection was an
assertion failure, not a syntax/import error or timeout.

### A passing suite that accepts the wrong hash algorithm

[Artifact tests](../../scripts/tests/test_stage_artifacts.py) compute their expected
manifest checksums using `stage.digest`, which is also used by
[the verifier](../../scripts/stage_artifacts.py). Replacing SHA-256 with SHA-1
therefore passes both tests, despite the explicit SHA-256 contract in
[Embedded artifacts](../embedded-artifacts.md). Checking changed file bytes does
not catch this shared mistake: SHA-1 also detects those changed bytes.

| Deliberate change | Existing two tests | With four focused additions |
| --- | --- | --- |
| SHA-1 instead of SHA-256 | Missed | Detected by a fixed SHA-256 known-answer vector |
| Remove required-deliverable check | Missed | Detected by a valid manifest missing the required library entry |
| Remove path-containment check | Missed | Detected by an existing, checksum-matching file outside the artifact directory |
| Ignore nonzero build exit | Missed | Detected when Cargo emits an artifact but subsequently fails |
| Remove revision check | Detected | Detected |
| Remove cryptographic-suite check | Detected | Detected |
| Remove checksum comparison | Detected | Detected |

The added tests first establish a working valid fixture where relevant, then
change the one condition being tested. The failed-build case checks both the
error and absence of a published manifest. Its process fake sits at an external
effect boundary; the real staging and verification functions execute.

This demonstrates four specific test gaps, not four production vulnerabilities:
the current production checks exist. It also does not estimate the repository's
mutation score. The cases were deliberately selected, and the added tests were
designed with knowledge of them. Generalization needs held-out defects.

Reproduction and per-variant logs are in
[experiment.py](agent-test-quality/experiment.py) and
[results.json](agent-test-quality/results.json). Run without a Rust build:

```sh
python3 docs/reviews/agent-test-quality/experiment.py \
  --repo "$PWD" --output /tmp/shieldd-test-quality-results
```

The four additional tests currently exist only in this experiment. They have not
been installed into the normal suite.

### Good local patterns to reuse

| Source | What makes the example useful | Scope limit |
| --- | --- | --- |
| [Historical worker tests](../../crates/view/src/storage/historical_worker_tests.rs), `history_worker_old_window_must_not_poison_newer_staged_cache` | Pauses a real worker with notifications, advances durable state, resumes stale work, and checks that the newer prefix survives | Specific scheduled interleaving, not exhaustive concurrency verification |
| [Audit persistence tests](../../crates/core/component/compliance/src/audit_tests.rs), `persistence_failure_rolls_back_results_evidence_and_cursor` | Injects SQL failure at four write points, checks all affected tables and cursor, reopens storage, then verifies retry/idempotency | SQL abort/reopen coverage, not abrupt process death or every disk failure |
| [Tree predecessor tests](../../crates/core/component/compliance/src/indexed_tree_tests.rs), `test_imt_predecessor_index_matches_linear_scan` | Compares the optimized lookup with a simpler linear search and explicit boundary cases | Shared field-order primitive remains a common dependency; parity is not an independent oracle for that primitive |
| [Registry random trace](../../crates/core/component/compliance/src/registry_tests.rs), `test_direct_read_proofs_match_reconstructed_trees_random_trace` | Exercises real storage and compares direct reads against reconstruction after a reproducible sequence | One seeded insertion trace; it does not cover arbitrary update/freeze/restart histories |
| [Scalar reduction tests](../../crates/crypto/circuits/src/scalar.rs) | Includes a deliberately field-wrapped quotient/remainder witness that must fail constraints | A targeted counterexample, not a complete proof of arithmetic soundness |
| [Encryption tests](../../crates/crypto/circuits/src/encryption/tests.rs) | Exercise both flag branches, intended and wrong recipients, and mutations of published fields | Witness/input mutation is different from removing a constraint; shared native helpers can still hide a common mistake |
| [Proof envelope tests](../../crates/crypto/circuits/tests/pari.rs) | Real proofs, different statements/keys/families, full byte corruption and mixed-validity batches | The small product relation verifies envelope plumbing, not every production circuit |
| [Documentation checker tests](../../scripts/tests/test_docs.py) | Actual temporary files, positive controls, wrong-case paths and missing anchors; previous work recorded red-before-green casing regressions | Mocked Git inventory means these tests do not establish actual Git discovery behavior |

These are source-reviewed examples, not Rust tests rerun in this assessment.
Their strength comes from discriminating outcomes and controlling relevant
conditions, not from test length or the number of mocks.

### Further concrete weaknesses and limits

- [CLI detection-key test](../../crates/bin/pcli/tests/cli_surface.rs),
  `generates_detection_key_without_a_wallet_or_network`, checks a public-key label
  and a 32-byte decoded secret. It does not parse the public key or establish its
  relation to the secret, and does not isolate wallet configuration or instrument
  network use. Its assertions establish less than its name suggests. Other key
  tests do not replace verification of the CLI's emitted values.
- [CLI worker cancellation test](../../crates/bin/pcli/src/command/disclosure.rs),
  `worker_suppresses_dumps_and_cancels_process_group`, cancels after 300 ms and then
  assumes the PID file exists. A slow process startup can fail the fixture before
  the cancellation behavior is assessed. This is a source-level flakiness risk,
  not an observed intermittent failure in this assessment. Wait for readiness with
  a bounded deadline, then trigger cancellation and observe the process group.
- Round trips, satisfiable honest witnesses and synthetic acceptance fixtures are
  useful but limited. For example, [handoff vectors](../../crates/disclosure/tests/handoff.rs)
  explicitly use synthetic acceptance and local checking keys. Preserve that
  distinction; do not count them as external PET or application admission evidence.
- [Development](../development.md) and the three repository skills say where and
  how to verify, but do not require agents to explain the assertion's source,
  show the negative fixture reaches the intended check, or challenge important
  tests with plausible faults. This is a workflow gap in our own new setup.

## What the research supports

Meta's TestGen-LLM filtered generated tests for buildability, passing behavior and
coverage improvement. That is useful admission filtering, but it does not by
itself establish the correctness of the expected behavior.
[TestGen-LLM, FSE 2024](https://arxiv.org/abs/2402.09171).

Meta's subsequent ACH work targets currently undetected, concern-specific faults
and generates tests that catch them. In its trial, 73% of reviewed tests were
accepted, but only about 36% were judged privacy-relevant. The relevant lesson is
to combine executable fault detection with a review of whether the fault matters;
mutation success alone does not establish requirement coverage. This was a Kotlin
deployment, not evidence for these particular Rust agents or cryptographic circuits.
[ACH, FSE 2025](https://arxiv.org/html/2501.12862v1).

A September 2026 preprint studying five models and four Python benchmarks found
that tests can trigger wrong behavior yet fail to assert that it is wrong. It
also found limited gains from generic mutation criteria and specification-guided
oracles. This supports caution about treating any single score as quality. It
does not establish the same defect rates for Shieldd: its authors explicitly
limit generalization beyond Python functions and the selected benchmarks/models.
[Study and validity limits](https://arxiv.org/html/2609.09315v1).

The practical distinction is old: behavioral assertions can survive an internal
refactor, while tests that copy implementation structure mainly detect edits.
Implementation observations are still appropriate when the requirement itself
concerns bounded reads, no side effect, or ordering.
[Google testing guidance](https://testing.googleblog.com/2015/01/testing-on-toilet-change-detector-tests.html),
[behavior versus implementation](https://testing.googleblog.com/2013/08/testing-on-toilet-test-behavior-not.html).

## Proposed working method

### Decide the assertion before building the fixture

For substantial behavior changes, the agent should identify these facts in the
existing plan or its working reasoning; a separate document is unnecessary:

1. **Requirement:** the observable rule and its source. If intent is unresolved,
   ask rather than deriving the rule from whichever code currently exists.
2. **Plausible defect:** what a reasonable but wrong implementation would do.
3. **Observation:** the exact result, durable state, emitted bytes or external
   effect that distinguishes correct behavior from that defect.
4. **Oracle:** how the expected result is obtained independently of the disputed
   behavior. Reusing unrelated production setup helpers is fine; using the very
   calculation under test as its own expected result is not sufficient.
5. **Boundary and execution:** which real component must execute, which effects
   may be faked, and which command actually selects this test.

For the stale-worker case: the rule is preservation of newer authenticated state;
the defect is unconditional failure persistence; the observation is the newer row
after the old worker resumes. The expected row comes from the explicitly arranged
new state, not a second call to the worker's write function.

### Establish that the test is sensitive to the defect

- **Bug fixes:** run the test against the faulty behavior before applying the
  fix. A compile failure, missing registry, timeout in setup or unrelated error is
  not the required red result. If the old source is not build-compatible with the
  new test, use a compatible behavioral revert or carefully scoped fault variant;
  describe that substitution honestly.
- **New important behavior:** choose a small number of material counterexamples
  or code mutations and observe the intended assertion fail. Do not remove every
  condition mechanically or require one mutant per test.
- **Negative cases:** start from a valid accepted fixture; change one relevant
  fact, and demonstrate the intended rejection boundary. Use a stable typed error
  or narrow error check where available. If only a boolean is exposed, use the
  positive control and direct relation/state observations. A malformed signature
  that prevents reaching an ownership check does not test ownership.
- **Failures with side effects:** assert the failure and the promised state:
  unchanged balance/root, no completed row, retained reservation, or no output
  publication. Check reopen/retry when persistence is part of the requirement.
- **Review failed tests:** first decide whether code, fixture or expectation is
  wrong. Do not regenerate expected outputs merely to make the run green. If the
  user intentionally changes semantics, update the expectation and explain which
  requirement changed; internal snapshots are not permanent compatibility promises.

Round trips and parity tests remain useful alongside known-answer vectors,
independent simple models, boundary examples and metamorphic properties. State
which shared dependency a parity test cannot validate. A reference model must be
simpler and separately justified, not a line-for-line copy of the implementation.

### Match the technique to Shieldd's boundary

| Area | Preferred evidence | Plausible fault to challenge |
| --- | --- | --- |
| Arithmetic and codecs | Known-answer vectors; independent integer/group comparison; boundary values and canonical rejection | Wrong endianness, missing bound, modular alias, truncated/extra bytes |
| ZK relations | Valid baseline; adversarial witnesses reaching constraints; statement-binding tests; relevant real proof/admission tests | Omitted equality/range condition; unconstrained statement field; wrong branch gating |
| Trees and optimized storage | Small model/parity tests plus actual persistent reads; mixed operation sequences | Missed update, wrong predecessor, stale root/cache, reconstruction inconsistency |
| Durable workers | Real temporary storage; scheduled pause/resume; failure injection, reopen and retry | Old owner overwrites/reclaims newer state; partial completion; cursor advances on failure |
| CLI and external adapters | Actual process/local protocol boundary; isolated config; parsed semantic output | Wrong key/statement output, failed child treated as success, cancelled child survives |
| Pure internal helpers | Small table or property test with a clear independent expected result | Boundary, branch or ordering defect meaningful to a caller |

For circuits, changing witness bytes is not a mutation test of the circuit code.
An invalid witness should reach the relation instead of being rejected by a
convenience constructor. Statement-binding tests also need both cases: altering
the statement while retaining its old digest, and presenting an invalid relation
with a consistently recomputed digest. The latter asks whether the claimed facts
are actually constrained. Keep native proving/application gates for the relevant
families; do not run a full proof for every arithmetic boundary.

For state and scheduling, extend the existing notification-driven and SQL-failure
patterns. Use timeouts as hang guards, not sleeps as evidence that an event
happened. A test intentionally about polling, timeout or backoff may still need
time control. Simple model-based sequences can use the existing Proptest dependency;
persist minimized failures and explicit regression examples.
[Proptest persistence](https://proptest-rs.github.io/proptest/proptest/failure-persistence.html).

Do not introduce Loom across the storage stack by default. It only explores
operations using its replacement synchronization types; uninstrumented dependencies
remain outside its model. It may be appropriate for a future isolated concurrency
primitive, not as a claim to verify SQLite/RocksDB/Tokio together.
[Loom limitations](https://docs.rs/loom/latest/loom/#limitations-and-caveats).

## Existing suite cleanup

Follow-up source assessment, 2026-09-22. These are concrete deletion/consolidation
candidates, not changes already applied or an exhaustive repository disposition.
No new Rust tests or mutation campaign ran for this follow-up.

The admission question for an existing test is: **which current requirement and
distinct failure does it protect, at which boundary?** “It once caught a bug” is
background information, not a permanent exemption. If the feature was discarded,
its tests should normally leave with it. If the requirement remains, retain the
smallest useful regression or fold its distinctive input into the owning test.
Do not preserve a mistaken intermediate design just because a test describes it.

### Concrete first cleanup slice

| Disposition | Exact target | Evidence and retained responsibility |
| --- | --- | --- |
| Delete obsolete workflow and its helpers | In [registry_tests.rs](../../crates/core/component/compliance/src/registry_tests.rs): `test_verify_compliance_leaf`, `test_leaf_json_serialization`, `test_share_and_verify_workflow`, `test_verify_with_multiple_leaves`; corresponding `verify_compliance_leaf`, `ComplianceLeaf::to_json` and `ComplianceLeaf::from_json` | Workspace searches find the three APIs only in their definitions and these tests/the omnibus test below. The public verification wrapper simply calls authenticated `get_user_leaf` and compares equality. No production caller or current documented JSON-sharing flow was found. Under the prototype contract policy, delete this test-supported API surface together; retain actual authenticated lookup and protobuf coverage. |
| Delete omnibus test after preserving any remaining unique assertions | `test_comprehensive_integration` in the same file | It repeats registration flags, JSON sharing, lookup and path checks in one scenario. Actual multi-asset address indexing is directly covered by `test_user_leaf_position_lookup`; direct proof/path tests cover the tree operations. Its same-address/multiple-assets case should remain explicit in the retained lookup test, including retrieving both records if needed. It is not an application/CLI admission test. |
| Delete misleading redundant smoke test | `test_cold_user_and_asset_proof_lookup_uses_keyed_storage` | It writes and reads in the same `StateDelta`, checks a path length and two asset fields, and neither creates a cold reader nor measures keyed versus scanning reads. The random-trace and direct-read parity tests exercise these functional outcomes more thoroughly. Remove this test rather than carrying its stronger-than-evidence name forward. |
| Merge two registration tests | `test_register_regulated_asset` and `test_register_asset_with_custom_daily_volume_limit` | Keep the before/after unregulated-to-regulated transition, use a non-default policy, and assert the stored policy in that same scenario. A second storage fixture merely to round-trip the value 500 adds little. |
| Consolidate proof-query cases | `test_imt_get_proof_data_regulated`, `test_imt_get_proof_data_unregulated`, `test_imt_multiple_regulated_assets` into `test_asset_proof_direct_read_membership_and_gap_parity` | The latter already compares complete returned records and paths for membership and surrounding gaps. Preserve the other tests' unsorted insertion and explicit expected predecessor/position cases in its table. Do not infer all expectations from the same reconstructed tree. The old regulated test verifies a freshly reconstructed path rather than its returned `auth_path`, so its apparent extra proof check does not cover an extra boundary. |
| Delete retired-layout assertions; keep current authentication test | Two `get_raw` assertions for `compliance/user_lookup/...` and `compliance/user_leaf/...` in `user_leaf_record_is_compact_and_authenticated` | Those literal paths appear only in these assertions. The current record equality and deliberate record/tree disagreement rejection matter. Eternal absence of two obsolete spellings does not establish compactness or current storage bounds. Do not weaken the corruption-rejection portion. |
| Delete low-value wrapper test | `test_string_to_fq_deterministic` in [indexed_tree_tests.rs](../../crates/core/component/compliance/src/indexed_tree_tests.rs) | It calls the one-line wrapper twice on `hello` and compares `world`. This neither pins the identifier encoding nor establishes security. Primitive vector/domain tests and actual leaf/policy tests own the meaningful behavior. A future identifier-boundary regression belongs with `policy_identifier`, not another generic determinism assertion at each wrapper. |
| Remove experiments from the correctness suite | `prover_strategy_sequential`, `prover_strategy_rayon_two`, and their `compare_strategy` helpers in [Transfer proof tests](../../crates/core/component/shielded-pool/src/transfer/proof.rs) and [history cache tests](../../crates/view/src/historical_proof_cache/tests.rs) | These four ignored tests repeat timed proving four times and print measurements. The canonical gate needs a name-based exclusion for them. Keep an actively useful strategy comparison in benchmark tooling, or delete it if the experiment is finished; retain the genuine concurrent-prover liveness test and native proof gates. This is relocation/retirement of an experiment, not removal of proof validation. |

The first row is stronger than a “duplicate test” finding: the tests are the only
customers keeping an unnecessary API alive. Test fixtures and helpers therefore
belong in the deletion audit, not just functions marked `#[test]`. The prior unused
MCK deletion was another instance of that pattern; it does not establish that all
remaining key or serializer tests are unnecessary.

Do not claim an exact runtime saving or deletion count from this table. Several
rows require preserving assertions while consolidating fixtures. Compile and run
the affected tests after that implementation, then measure the actual result.

### Similar-looking tests that should not be bulk-deleted

- [Application proof acceptance](../../crates/core/app/src/app/tests/proof_acceptance_tests.rs)
  checks artifact creation, proposal admission, direct delivery, and host delivery
  with cold/checked caches. They share invalid-proof fixtures but enter distinct
  paths. The direct-delivery test inspects staged transaction effects, whereas the
  host test checks its response/cache boundary and unchanged committed state.
  Removing one requires an explicit demonstration that the retained test observes
  the same failure; similar names are insufficient.
- Current-root authorization, stale-worker ownership and record/tree disagreement
  remain current invariants. Their origin in a previous regression does not make
  them historical baggage. If merging, retain their distinct adversarial setup.
- Primitive/native/circuit parity and real application acceptance protect different
  implementations or boundaries even when they use the same vectors.
- Schema rejection guards against opening incompatible local state. It is a current
  safety requirement under the prototype policy, not a migration promise to delete
  merely because a test mentions an old version.

### Change the default from accumulating to curating

Before adding a regression, search the owning invariant's existing tests. Extend
an existing case matrix when the new example exercises the same setup and boundary;
use a separate test when it contributes a distinct failure or clearer diagnosis.
Do not build a giant parameterized test or generic fixture DSL simply to reduce
the test-function count.

When a feature or representation changes, inspect its tests as part of the same
change. Delete assertions about discarded behavior, remove unused test-only support,
and remove obsolete production helpers whose only remaining callers are those
tests. Reuse user-approved current requirements; tests are not an independent
source of product intent. Preserve the reason for a past decision in an existing
report only when useful, without retaining executable archaeology.

For consolidation, record a small old-case-to-retained-case mapping in the cleanup
review, not a permanent registry for every test. Where risk warrants it, compare
fault sensitivity before and after on material counterexamples. Mutants should
represent current contract violations: preserving the ability to catch changes
to a discarded feature would optimize for exactly the wrong thing.

A cleanup succeeds when it removes irrelevant obligations and duplicated fixtures
while retaining current, distinct failure detection. Do not impose minimum test
counts, blanket bans on regression tests, or automatic deletion from line-coverage
overlap. Start with this concrete deletion slice, then audit the next area by
current responsibility rather than undertaking an unbounded global rewrite.

## Smallest useful setup change

1. **Add one canonical `docs/testing.md`.** Own oracle choice, positive/negative
   controls, fault sensitivity, fakes, determinism and the layer matrix there.
   Link existing good tests instead of creating a generic fixture framework.
   Keep commands and resource policy in their existing owners.
2. **Add a focused `shieldd-test` skill.** Trigger for meaningful behavior tests,
   bug fixes, circuit/state changes and test-quality reviews. Its short workflow
   routes to that document and asks for requirement, counterexample, observation,
   oracle and executed evidence. Routine documentation or trivial forwarding edits
   need no new tests or written test plan.
3. **Add a few durable rules to AGENTS.md; link from plan/review skills.** Require
   behavioral red-before-green for fixes, independent expected results, and
   observation of relevant effects. Reject weakened assertions without a justified
   semantics change. Do not duplicate the full testing guide in every skill.
4. **Install the four experimentally validated artifact tests first.** Add the
   missing CLI output assertions and make cancellation wait for readiness. Then
   assess a small set of high-risk worker/circuit regressions rather than rewrite
   the whole suite. The latter changes still need their own focused validation.
5. **Pilot bounded mutation checking before making it a CI policy.** Use focused
   `cargo-mutants` runs for suitable small Rust modules and hand-authored fault
   variants where generic operators miss the real boundary. One heavy job at a
   time, explicit registry/features, no competing target directories, no changes
   to Commonware internals. Rust mutation checking was not run in this assessment.

Cargo-mutants distinguishes caught, missed, unviable and timed-out variants. Keep
those outcomes separate; do not count an unbuildable variant as a detected bug or
assume every survivor is a defect. Relevant equivalent/surviving variants need
reasoned disposition. There is no basis yet for a repository-wide percentage gate.
[Tool guidance](https://mutants.rs/using-results.html).

The review question should be: “Which plausible bad behavior still passes this
test, and does that behavior matter?” For high-risk work with independently
authorized reviewers, let a reviewer derive counterexamples from requirements
before reading the implementer's rationale. Then inspect the actual code and
executed results. Another model or agent is not an independent oracle by itself.
Do not add mandatory multi-agent orchestration or fresh approvals to normal work.

## How to tell whether the new guidance works

Evaluate behavior, not just skill discovery. Use a small pilot spanning the
artifact hash mistake, stale-worker ownership, wallet planning with a populated
compliance tree, circuit arithmetic boundaries, and transaction/disclosure
acceptance. Historical reproduction reports can supply task candidates; they are
not evidence of new trials.

Provide the requirements, API and necessary fixtures, and keep some fault variants
out of the test author's context. Include harmless refactors and changed intended
semantics as well as regressions. With independent agent trials explicitly
authorized, compare current guidance against the proposed workflow under comparable
task budgets and record the exact source/model/settings. Multiple tasks and runs
are needed before claiming a general agent-quality improvement.

Measure material faults detected, valid cases incorrectly rejected, false alarms
under refactors, flakiness, execution/review cost, assertion weakening, and duplicate
coverage. A useful change catches more relevant held-out defects without producing
an unmaintainable or impractically expensive suite. Test count and line coverage
are diagnostic data, not acceptance targets. Avoid a fixed “two tests per change”
rule, mutation-score quotas, giant snapshots, mandatory mocks, or automatic
regeneration of goldens.

## Verification limits

Executed: 16 isolated Python suite runs (original and strengthened suites on the
baseline plus seven mutants); all expected pass/fail outcomes confirmed from
assertion logs. Input hashes are retained. The workspace source inventory was
checked for preservation, and Markdown links were checked after writing the report.

Not executed: Rust tests/proofs, release gates, cargo-mutants, coverage collection,
live integration, independent agent trials or model comparisons. The prior turn's
passing proof/workspace checks were not repeated or represented as new evidence.
Formal tools, specifications and certification evidence remain in shieldd-security.
