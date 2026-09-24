---
name: shieldd-test
description: Design, improve or consolidate Shieldd behavior tests and bug regressions, especially across circuit, authorization, persistence or concurrency boundaries. Use for test-quality cleanup; routine documentation and trivial forwarding edits do not need new tests.
---

# Design and curate Shieldd tests

Read the affected contract and callers through the [task map](../../../docs/README.md),
then the relevant parts of [Testing](../../../docs/testing.md). Existing tests
describe assumptions to assess; they do not establish product intent or keep a
discarded feature alive.

Find the existing owner of the invariant before adding another regression. Choose
keep, extend, consolidate or delete based on current requirements and distinct
failure detection. Remove obsolete fixtures and test-supported APIs with their
discarded behavior. When consolidating, identify the retained home for each useful
case; avoid a permanent inventory or a generic fixture framework.

For meaningful new assertions, identify the requirement, plausible defect,
observable result and oracle. Use implementation knowledge to reach the failure,
while deriving expected behavior from the contract or independently justified
evidence. A round trip or two calls to the same helper may share the same mistake.

Establish a valid positive control and ensure negative inputs reach the intended
boundary. Observe promised durable effects, not just an error. Bug fixes require
a behavioral red result before green; selectively challenge important tests or
consolidations with relevant faults when practical. Never weaken expectations
solely to make a run pass, or preserve an obsolete expectation solely for history.

Select the smallest useful checks from [Development](../../../docs/development.md).
Honor the one-heavy-job limit, preserve the dirty baseline, and keep temporary
faults isolated. Distinguish constraint checks, real proving, host acceptance and
live external integration. Confirm the intended tests actually ran; report their
scope and any unrun checks. Test counts and coverage percentages are not quality
targets, and independent agents require existing delegation authorization.
