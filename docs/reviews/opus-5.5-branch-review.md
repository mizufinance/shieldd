# Opus 5.5 branch review

Review paused at the usage reserve, **incomplete**. All 19 broad sectors have an
initial report; 25 bounded invocations are saved and 19 focused follow-ups remain.
Branch `codex/zkpari-migration`; exact reviewed artifact
`57eb44e8cae809c68974ed5d6723bdb904b2f8c1..c4b8b6d28e54b5e1d50769ee12209b56d613a60d`.
The implementation snapshot was committed and pushed before review.

Claude Code 2.1.280 runs `claude-opus-5-5` with fresh context for one sector at a
time, read-only Read/Grep/Glob tools, no nested agents or builds, and a $1.50
CLI accounting cap per invocation. This accounting is not a billing statement or
an exact subscription quota measure. Checkpoints and final reports are persisted
before the next sector starts. Partial reports require explicit follow-up;
process success does not establish full coverage or correctness.

All 1,409 changed paths (without rename folding) are assigned in
the [file assignments](opus-5.5-branch-review/file-assignments.json), with status in
the [manifest](opus-5.5-branch-review/manifest.json). Imported Commonware is reviewed
through pinned provenance, local patches and used API boundaries, not an
exhaustive upstream audit. Removed backends and archived experiment data are
reviewed for replacement/reference/provenance correctness rather than consuming
all deleted code and raw logs. Generated fixtures are checked through their
owning codec/generator and representative data. These limits are not claims of
line-by-line review of every imported or historical byte.

The account reached 84% of its five-hour allowance; no more Opus calls were started.
See [usage checkpoint](opus-5.5-branch-review/usage-checkpoint.json) and
[resume instructions](opus-5.5-branch-review/resume.md). No continuation is scheduled.

## Saved reviews

| Sector | Status | Report |
| --- | --- | --- |
| 01-native-prover-boundary | partial | [01-native-prover-boundary](opus-5.5-branch-review/01-native-prover-boundary.md) |
| 01b-native-provenance-followup | reviewed | [01b-native-provenance-followup](opus-5.5-branch-review/01b-native-provenance-followup.md) |
| 02-crypto-primitives | reviewed | [02-crypto-primitives](opus-5.5-branch-review/02-crypto-primitives.md) |
| 03-circuit-gadgets-catalogue | partial | [03-circuit-gadgets-catalogue](opus-5.5-branch-review/03-circuit-gadgets-catalogue.md) |
| 03b-catalogue-encryption-tests-followup | partial | [03b-catalogue-encryption-tests-followup](opus-5.5-branch-review/03b-catalogue-encryption-tests-followup.md) |
| 04-transaction-circuits | partial | [04-transaction-circuits](opus-5.5-branch-review/04-transaction-circuits.md) |
| 05-audit-history-circuits | partial | [05-audit-history-circuits](opus-5.5-branch-review/05-audit-history-circuits.md) |
| 06-compliance-registration-registry | partial | [06-compliance-registration-registry](opus-5.5-branch-review/06-compliance-registration-registry.md) |
| 07-scanner-audit | partial | [07-scanner-audit](opus-5.5-branch-review/07-scanner-audit.md) |
| 08-shielded-pool-actions | partial | [08-shielded-pool-actions](opus-5.5-branch-review/08-shielded-pool-actions.md) |
| 09-app-proof-admission | partial | [09-app-proof-admission](opus-5.5-branch-review/09-app-proof-admission.md) |
| 10-host-lifecycle-persistence | partial | [10-host-lifecycle-persistence](opus-5.5-branch-review/10-host-lifecycle-persistence.md) |
| 11-wallet-history-workers | partial | [11-wallet-history-workers](opus-5.5-branch-review/11-wallet-history-workers.md) |
| 12-wallet-storage-sync | reviewed | [12-wallet-storage-sync](opus-5.5-branch-review/12-wallet-storage-sync.md) |
| 13-wallet-planning | partial | [13-wallet-planning](opus-5.5-branch-review/13-wallet-planning.md) |
| 14-keys-assets-signing | partial | [14-keys-assets-signing](opus-5.5-branch-review/14-keys-assets-signing.md) |
| 15-transactions-custody | partial | [15-transactions-custody](opus-5.5-branch-review/15-transactions-custody.md) |
| 16-disclosure-packages | partial | [16-disclosure-packages](opus-5.5-branch-review/16-disclosure-packages.md) |
| 17-cli-protobuf-external-contracts | partial | [17-cli-protobuf-external-contracts](opus-5.5-branch-review/17-cli-protobuf-external-contracts.md) |
| 18-build-dependency-removal | partial | [18-build-dependency-removal](opus-5.5-branch-review/18-build-dependency-removal.md) |
| 19-docs-guidance-evidence | partial | [19-docs-guidance-evidence](opus-5.5-branch-review/19-docs-guidance-evidence.md) |
| 20a-shared-circuit-test-fixtures | pending | Pending |
| 20b-transaction-circuit-tests | pending | Pending |
| 20c-audit-history-circuit-tests | pending | Pending |
| 06b-compliance-encryption-codecs | partial | [06b-compliance-encryption-codecs](opus-5.5-branch-review/06b-compliance-encryption-codecs.md) |
| 06c-compliance-trees-lifecycle-tests | pending | Pending |
| 08b-proof-adapters-capsules | partial | [08b-proof-adapters-capsules](opus-5.5-branch-review/08b-proof-adapters-capsules.md) |
| 08c-proof-plans-families | pending | Pending |
| 08d-action-plumbing-tests | pending | Pending |
| 09b-admission-runtime-residual | pending | Pending |
| 09c-admission-tests | pending | Pending |
| 10b-host-service-residual | pending | Pending |
| 10c-nullifier-pack-residual | pending | Pending |
| 10d-tct-residual | pending | Pending |
| 11b-history-cache-tests-residual | pending | Pending |
| 13b-planning-test-residual | pending | Pending |
| 14b-frost-keys-test-residual | reviewed | [14b-frost-keys-test-residual](opus-5.5-branch-review/14b-frost-keys-test-residual.md) |
| 15b-transaction-custody-residual | pending | Pending |
| 16b-disclosure-residual | pending | Pending |
| 17b-cli-builders-test-residual | pending | Pending |
| 18b-build-scripts-test-residual | pending | Pending |
| 19b-current-doc-residual | pending | Pending |
| 08e-statement-encoding-residual | reviewed | [08e-statement-encoding-residual](opus-5.5-branch-review/08e-statement-encoding-residual.md) |
| 06d-compliance-test-residual | pending | Pending |

## Coordinator assessment

See [confirmed findings](opus-5.5-branch-review/findings.md) and
[coordinator triage](opus-5.5-branch-review/coordinator-notes.md).

Reviewer findings are proposals until checked against callers, requirements and
reproductions where useful. The existing verification results are recorded in
[the test cleanup report](full-test-suite-cleanup.md); these read-only reviews
do not independently rerun that verification. The linked findings and triage distinguish accepted issues from unsupported
hypotheses; no runtime fixes were applied during this review.
