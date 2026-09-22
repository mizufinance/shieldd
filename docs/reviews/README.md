# Review and experiment history

These reports record decisions and evidence at identified source states. Use the
[current documentation map](../README.md) for current contracts. A historical
recommendation or passing check does not establish the state of a later revision.

| Work | Status and successor | Evidence identity |
| --- | --- | --- |
| [Opus 5.5 branch review](opus-5.5-branch-review.md) | Partial; paused at usage reserve with 25 reports and 19 focused follow-ups saved | `57eb44e8ca..c4b8b6d28e` |
| [Remaining usage review](remaining-usage-review.md) | Complete; [remediation](remaining-usage-fixes.md) records fixes | Original review/reproduction baseline, 2026-09-21 |
| [Key and Commonware boundaries](key-and-commonware-boundaries.md) | Assessment implemented through the [plan](key-and-native-prover-implementation-plan.md) and [validation](key-native-implementation-validation.md) | `1dc62a7` plus the identified working-tree changes |
| Independent key/native plan reviews | [General](key-native-plan-general-review.md), [security](key-native-plan-security-review.md), [simplicity](key-native-plan-simplicity-review.md): revisions resolved; plan review only | Plan versions identified in each report |
| [Native verifier investigation](native-verifier-regression-investigation.md) | Historical regression; addressed by [constant outlining](constant-outline-validation.md) | Without-outlining versus restored compiler relations |
| [Proof benchmark history](proof-benchmark-history-20260921.md) | Historical variants; [current recipes and coverage](../benchmarks.md) | Each section identifies its relation/registry and measurement scope |
| [Circuit/state research](circuit-state-optimization-research.md) | Followed by [experiments](circuit-state-optimization-experiments.md), then [four implemented changes](circuit-state-optimization-implementation.md) | Working-tree fingerprints and [experiment evidence](circuit-state-experiments/README.md) / [implementation evidence](circuit-state-implementation/README.md) |
| [Documentation and agent proposal](documentation-agent-setup-proposal.md) | [Implementation and verification](documentation-agent-setup-implementation.md); CLAUDE.md removal selected by the user | 2026-09-22 baseline and scope recorded in the reports |
| [Agent test quality assessment](agent-test-quality-assessment.md) | Assessment and isolated experiments complete; [cleanup and workflow implementation](agent-test-cleanup-implementation.md) | 2026-09-22 dirty-tree identity and [experiment results](agent-test-quality/results.json) |
| [Full first-party test cleanup](full-test-suite-cleanup.md) | Full-suite review and implementation; verification recorded in report | 2026-09-22 dirty-tree hashes and [audit snapshot](full-test-suite-cleanup/audit.json) |

For substantial new work, keep one task report with scope, source identity,
selected design, unresolved choices and verification. Mark it complete or
superseded and link its successor. Move current behavior into the owning spec;
retain useful rationale and evidence here. Paths under `/tmp`, `target` or a
personal directory are local evidence, not artifacts provided by a checkout.
