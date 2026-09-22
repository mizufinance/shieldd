# Documentation and agent setup implementation

Status: implemented and locally verified, 2026-09-22. Follows the
[proposal](documentation-agent-setup-proposal.md), with the user's explicit choice
to remove CLAUDE.md rather than retain its import.

## Implemented setup

- AGENTS.md retains engineering and resource invariants, distinguishes unknown
  facts from product intent, scopes planning by consequences, and permits labelled
  historical evidence without turning it into operating instructions.
- Three tracked repository skills cover investigation, planning and review.
  Each is about 50 lines and links to current source/documentation owners. No
  external workflow framework, model policy, automatic delegation or additional
  approval ceremony was installed.
- CLAUDE.md and its Git ignore exception are removed. The ignored relay template
  was deleted; the two ignored local session shortcuts now route through AGENTS.md
  and the task map. These local shortcuts are not part of a fresh checkout.
- The review index connects assessments to implementations. The benchmark landing
  page identifies current measurement coverage and links to historical variants.
- Comments and current documentation distinguish committed policy projections
  from host authority state, historical root lookup from current admission, and
  local Orbis adapters from external ACP/PET/PRE capabilities. C/protobuf/CLI and
  tree comments were corrected. Regulated identity uniqueness is documented as
  an external ACP requirement, not a fact enforced by the address-only registry.
- The unused MCK types, re-exports and three self-tests were removed after a
  workspace consumer search. Issuer DK, RNK derivation, circuit relations and
  authorization behavior are unchanged by this cleanup.
- `just pari-proof-tests` builds a Disclosure-prover CLI and includes app-tests
  with all features. `just check` runs formatting and documentation checks before
  expensive compilation. The renamed Markdown checker validates exact path casing.
- `just rustdocs-check` checks every first-party package with all features and
  treats broken symbol links as errors. Documentation CI and `ci-preflight` use
  this check; the optional nightly index build remains available as `just rustdocs`.
  Obsolete symbol references were corrected, including the action-handler phase
  descriptions while retaining their TOCTOU and caller-owned rollback invariants.

## Verification

All commands below completed successfully on the local working tree. Rust jobs
used the optimized `ci` profile, not `--release`.

| Check | Result and retained evidence |
| --- | --- |
| `just check` | Formatting, Markdown links/casing, Commonware provenance, tooling tests and all-target/all-feature workspace compilation passed. [Log](documentation-agent-setup/check.log) |
| `just tooling-test` | 21 tests passed, including five documentation-checker tests. The two new casing tests failed against the old checker before its fix. [Log](documentation-agent-setup/tooling-all.log) |
| `just pari-proof-tests` | All 19 selected ignored proof gates passed, including the two Disclosure app tests with the prover-enabled CLI. Existing nine-family registry reused. [Log](documentation-agent-setup/proof-gates.log) |
| `cargo test --locked --profile ci -p shieldd-sdk-compliance --all-features --lib issuer_keys::tests -- --test-threads=2` | Eight retained issuer-key tests passed after the unused MCK deletion. [Log](documentation-agent-setup/issuer-key-tests.log) |
| `python3 scripts/protobuf_codegen.py --check` | 28 schemas and 20 Rust packages regenerated without drift; generated Go packages compiled. [Log](documentation-agent-setup/protobuf-check.log) |
| `just rustdocs-check` | All-feature first-party API documentation passed with broken symbol links fatal. [Log](documentation-agent-setup/rustdocs-check.log) |
| Skill metadata and fresh-process discovery | All three bundled-validator checks passed; all three skills discovered as enabled repository skills from both root and nested crate. [Discovery](documentation-agent-setup/skill-discovery.json) |
| Task-baseline comparison | 40 changed Rust files contain only full-line comment/whitespace changes; two files delete the unused MCK API. All 359 Commonware source and patch-policy files are unchanged. [Comparison](documentation-agent-setup/source-comparison.json) |
| `python3 scripts/check_orbis_vendor.py` | Pinned Orbis source check passed at `0a0f935a85cc60e87561a9c7364fa80fdb3332df`. |

The proof run preceded the final Rust symbol-link corrections. Those later changes
were verified as documentation-only; the final workspace and strict rustdoc checks
include them. Rust tooling reports the existing `document-features` dependency
future-incompatibility notice and Commonware configuration warning; neither is a
first-party broken documentation link.

Not run: the full workspace test suite, a separate `--release` run, isolated
feature/Wasm checks, the optional nightly documentation index build, live
Bankd/Orbis integration, or independent skill behavior/automatic-selection trials.
The selected checks cover the command, checker and unused-API changes; this task
changes no cryptographic relation, runtime wire format or feature boundary.

## Skill evaluation scope

The installed Codex app-server discovered all three enabled skills from both the
repository root and `crates/view` using a fresh process and `skills/list` with
`forceReload`. No model task or external message was created. The bundled skill
validator accepted all three; its missing PyYAML dependency was installed only
in a temporary validation environment, not the project or global Python.

The implementation pass exercised the review workflow against pre-task source
versions reconstructed from HEAD and the saved dirty patch, checking their hashes
against the start-of-task inventory. The interpretation of this result is limited:
metadata and discovery are verified, and the author used the review guidance;
independent agent behavior and automatic skill selection were not tested.
No independent agents were requested for this update.

## Scope and reproducibility

The baseline is HEAD `1dc62a7a09480d966b29e7ecfbe8caa3c309c933` plus the
preexisting dirty tree identified in the proposal. Source hashes were captured
before editing. Commonware's 359 source and patch-policy files remain byte-for-byte
unchanged by this task, and its source inventory check passed. The pinned Orbis
source check also passed.

Verification uses two build/Rayon workers, one heavy job at a time and serial
proof tests. The existing nine-family `optimized-pari-keys-20260921` registry is
reused because this task changes no relation. Its manifest SHA-256 is
`f3e342c0c80da1b8122e749eb577fdd9e53360cbb5ac49b4da4749c3214d91ad`. Local disk space and swap are
monitored; no unrelated processes or Docker settings are changed.
