# Test cleanup and testing workflow implementation

Status: implemented and verified, 2026-09-22. Implements the
[test-quality assessment and cleanup slice](agent-test-quality-assessment.md).

## Changes and retained coverage

| Removed or changed | Retained coverage |
| --- | --- |
| Four leaf-sharing/verification tests and the omnibus compliance integration test | Delete the unused JSON-sharing methods and verification wrapper together. Authenticated `get_user_leaf` remains covered, including full-record equality, missing records and corrupted record/tree disagreement. Multi-asset/address indexing now explicitly fetches all three records. |
| Separate custom-volume registration test | The registration transition test now uses a non-default limit and checks the complete stored policy. |
| Three asset-proof smoke tests | The direct-read parity table now uses unsorted insertion and explicit membership/predecessor/position expectations for six cases, while comparing complete returned paths with reconstruction. |
| Misnamed cold/keyed-read smoke test | Existing direct-read parity and random-trace tests retain the actual functional coverage. No claim of measured cold-read complexity is made. |
| Two obsolete storage-key absence assertions | Retain current record equality and authenticated corruption rejection; remove assertions about retired spellings. |
| Trivial string-hash determinism test | Existing primitive vectors and current policy/leaf behavior tests remain. |
| Four ignored proving-strategy timing experiments and two helpers | Completed experiments retired. Current benchmark tooling, native proof gates, shared-worker configuration and concurrent-prover liveness tests remain. Remove the benchmark-name exclusion from `just pari-proof-tests` and its current documentation. |
| Artifact tests | Four focused additions cover the demonstrated SHA-256 oracle, missing deliverable, path escape and failed-build gaps. Reuse one manifest fixture with independently computed checksums. |
| CLI tests | Parse both key values and verify their relationship in an empty configured home. Rename to the actual claim; no assertion of network isolation. Cancel the worker only after an atomically published readiness record identifies the running parent and child. |

The cleanup removes 15 test functions and adds four, with existing CLI tests
strengthened in place. This is a scope description, not a quality target. No
cryptographic relation, production storage layout, wire format or Commonware
source changed. The only runtime Rust code removed is the three unused methods.

[Testing](../testing.md) now owns test design and curation guidance. The new
[shieldd-test skill](../../.agents/skills/shieldd-test/SKILL.md) links to it;
AGENTS.md and the plan/review skills add concise rules about current requirements,
deletion, independent expectations and relevant failure observations. No new
coverage quota, mutation framework, mandatory delegation or approval flow was added.

## Verification

- Compliance baseline: **232 passed** before edits; **221 passed** after cleanup,
  using `cargo test --locked --profile ci -p shieldd-sdk-compliance --all-features --lib -- --test-threads=2`.
- CLI: **11 library and 4 process tests passed**, using
  `cargo test --locked --profile ci -p pcli --all-features --lib --test cli_surface -- --test-threads=2`.
- Artifact sensitivity: six current tests pass on the original script; all seven
  isolated fault variants fail with assertion evidence, including the dedicated
  SHA-256 known-answer assertion. These are selected faults, not a repository-wide
  mutation score or held-out agent evaluation.
- Skill metadata validates, and a fresh Codex app-server discovers all four enabled
  repository skills from the root and `crates/view`. No model task was created.
- `just check` passed: formatting, Markdown links, Commonware inventory, **25
  tooling tests** and all-target/all-feature workspace compilation.
- `just rustdocs-check` passed with broken first-party symbol links treated as
  errors. The preexisting dependency future-incompatibility notice remains.
- The updated `just pari-proof-tests` passed: **19 real proof gates**, including
  application admission, disclosure, registry integrity, transfer/withdrawal,
  note reshaping, concurrent workers and history failure/restart. The retired
  timing experiments are no longer selected or excluded by name.

Retained evidence: [compliance before](agent-test-cleanup/compliance-before.log),
[after](agent-test-cleanup/compliance-after.log), [CLI](agent-test-cleanup/pcli-tests.log),
[workspace](agent-test-cleanup/check.log), [rustdoc](agent-test-cleanup/rustdocs.log),
[proof gates](agent-test-cleanup/proof-gates.log),
[mutation outcomes](agent-test-cleanup/mutations/results.json),
[skill discovery](agent-test-cleanup/skill-discovery.json), and
[source identity](agent-test-cleanup/source-identity.json).

## Source identity and limits

Baseline is `codex/zkpari-migration` at HEAD
`1dc62a7a09480d966b29e7ecfbe8caa3c309c933` plus the preexisting dirty tree.
The initial inventory contains 1,383 files. Changed tracked files were reconstructed
from HEAD and the saved baseline patch and their hashes checked before reviewing
this task's delta. Unrelated files and all Commonware source/patch-policy files
are preserved.

One heavy job runs at a time with two build/Rayon workers. No new proof keys are
needed because no relation changed. The proof run used
`target/optimized-pari-keys-20260921`, whose manifest SHA-256 is
`f3e342c0c80da1b8122e749eb577fdd9e53360cbb5ac49b4da4749c3214d91ad`.
Verification uses the optimized `ci` profile,
not a separate `--release` run. This task does not establish live Bankd/Orbis
compatibility or independent skill behavior. The full workspace test suite and
isolated-feature/Wasm checks were not run. Broad cargo-mutants campaigns and
held-out agent comparisons remain optional follow-up work, not completed checks.
