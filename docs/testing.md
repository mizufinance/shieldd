# Test design and suite maintenance

Tests protect current requirements. An old regression, snapshot or fixture does
not create a product contract. Use [Development](development.md) for commands and
[AGENTS.md](../AGENTS.md#local-resource-limits) for shared resource limits.

## Curate before adding

Find the tests that own the affected invariant. Extend an existing case matrix
when the setup and failure boundary are the same; keep a separate test when it
adds a distinct failure or clearer diagnosis. Similar fixtures do not establish
duplication across different boundaries, such as circuit verification and host
admission.

Inspect expensive setup and proof generation across crates and CI phases, not
just assertions within each file. Prefer relation evaluation for constraint cases;
reuse proofs already required by application tests for verification-only cases.
Before adding full proving, identify the distinct failure that existing native
proof and application gates cannot detect. Check actual CI selection and separate
compilation, key setup, fixture generation and test execution costs.

When removing or correcting a feature, delete tests for discarded behavior,
unused fixtures and helpers, and production APIs whose only remaining purpose is
supporting those tests. A regression has no special exemption. Retain its useful
counterexample in the owning test if the requirement still exists. Completed
experiments should leave the correctness suite; ongoing measurements belong in
benchmark tooling.

For substantial consolidation, explain retained coverage in the task or PR;
do not commit a review inventory. Preserve distinct inputs and observations, not test counts.
Avoid giant parameterized tests or fixture frameworks introduced merely to reduce
the number of functions. Do not add tests for trivial forwarding or reversible
documentation changes without a meaningful behavior to protect.

## Justify the expected result

Before building a substantial test, identify the requirement, a plausible defect,
the observable consequence, and the source of the expected result. Keep this in
working reasoning or the existing plan; it needs no separate document.

Derive expectations from the intended contract, known-answer vectors, explicit
examples, a simpler independently justified model, or a relevant property. Do not
use the disputed production calculation as its own expected result. Reusing
unrelated setup helpers is fine. Round trips and native/circuit parity are useful,
but cannot detect a mistake shared by both sides; retain independent vectors or
boundary examples where that matters.

Use implementation knowledge to choose adversarial inputs, not to decide what
the product ought to do. Investigate a failing test before changing its expected
output. When intended semantics change, update the expectation and state the
changed requirement rather than mechanically regenerating goldens.

## Demonstrate the failure that matters

Bug-fix regressions must fail on the faulty behavior and pass after the fix.
Compilation errors, missing keys and unrelated fixture failures do not establish
that red result. If an old revision cannot run the new test, use a compatible
behavioral revert or isolated fault variant and report that substitution.

For important new behavior or risky consolidation, selectively challenge tests
with plausible faults. A targeted mutation should produce the intended assertion
failure. Unbuildable, equivalent and timed-out variants are separate outcomes;
neither a mutation percentage nor line coverage establishes requirement coverage.
Use disposable copies or verified restoration, preserve the dirty baseline, and
keep mutations away from live services. Do not require a mutant for every test.

Negative tests should start from a valid accepted fixture and change the relevant
condition. Establish that they reach the intended check, using a typed error,
narrow diagnostic or direct relation/state observation. Rejection by an earlier
malformed signature does not test ownership. Assert promised side effects as well
as return values: rollback, retained ownership, no completed row, or no publication.

## Choose the boundary

| Area | Useful evidence |
| --- | --- |
| Arithmetic and codecs | Known-answer vectors, canonical rejection, boundary values and independent integer/group comparisons |
| Circuit relations | Valid baseline; adversarial witnesses reaching constraints; statement binding; relevant native proof and application gates |
| Trees and storage optimizations | Simple reference comparison, actual persistent reads and mixed operation sequences |
| Durable workers | Real temporary storage, controlled interleavings, injected failures, reopen and retry |
| CLI and external adapters | Actual process/protocol boundary, isolated configuration and parsed semantic output |
| Pure helpers | Small tables or properties covering meaningful caller-visible branches and boundaries |

For circuits, mutating input bytes is not a mutation test of the relation code.
Exercise invalid witnesses without a convenience constructor rejecting them first.
Distinguish changing a statement while retaining its old digest from presenting
invalid facts with a consistently recomputed digest. Do not run full proving for
every arithmetic case; preserve the native proof/admission gates for affected families.

Fake real external effects where necessary, while executing the behavior under
test. Prefer real temporary storage when testing transactions, restart or queries.
Wait for explicit readiness before cancellation or races; timeouts bound hangs,
not evidence that an event occurred. Preserve reproducible seeds and minimized
property-test failures. Do not claim exhaustive scheduling or crash coverage from
one chosen interleaving or a clean close/reopen.

Useful existing examples: [worker interleaving](../crates/view/src/storage/historical_worker_tests.rs),
[SQL failure/rollback](../crates/core/component/compliance/src/audit_tests.rs),
[tree reference comparisons](../crates/core/component/compliance/src/indexed_tree_tests.rs),
[field-wrap witness](../crates/crypto/circuits/src/scalar.rs), and
[proof envelope binding](../crates/crypto/circuits/tests/pari.rs).

Report the actual selected tests, features, profile, source/registry identity and
limits. A zero-test filtered run is not verification. Review important tests by
asking which plausible bad behavior still passes and whether it violates a current
requirement. Evaluate cleanup by retained fault detection, reduced irrelevant
obligations, runtime and maintenance cost; no coverage or deletion quota applies.
