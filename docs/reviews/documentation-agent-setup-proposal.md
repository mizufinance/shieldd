# Documentation and agent setup proposal

Status: implementation recorded in [the setup verification report](documentation-agent-setup-implementation.md).
The user selected removal of CLAUDE.md instead of retaining its import.
The assessment below records the original proposal. Read pass: 2026-09-22.

**Keep the existing architecture and documentation map. Correct the misleading
claims, separate current contracts from historical evidence, and add three small
repository-owned skills for investigation, planning and review.** The objective
is reliable decisions with less context loading and less repeated instruction.

This assessment uses the working tree at HEAD
`1dc62a7a09480d966b29e7ecfbe8caa3c309c933`, including the preceding uncommitted
implementation. Its tracked `git diff HEAD --binary` SHA-256 before this report
was `0dfa10d21fa28f96034e84f4f3fd05113cb2caf7039f055e0b9a520e6dd91d84`.
That identifies the tracked patch, not the untracked evidence files.

## Read scope and limits

The inventory contained 48 first-party Markdown files, including 13 top-level
review reports, and 445 non-generated Rust files with 3,535 rustdoc comment lines.
I read the current architecture, protocol, compliance, disclosure, storage,
wallet, proving, deployment and development documentation; traversed the Rust
doc comments; inspected protobuf comments and the C header; and followed suspect
claims into implementations. Historical reports were checked for status,
decisions, verification scope and evidence location. This was not a re-audit of
every historical reproduction or every ordinary inline comment.

I also read the root instructions, tracked Claude entry point, ignored local
session commands and relay prompt, CI/just recipes, documentation tooling,
Commonware patch policy and Orbis adapter policy. Generated Rust documentation
and unchanged third-party documentation should be maintained through their
sources, not independently rewritten.

This is a documentation and workflow assessment, not a new security audit or a
claim that every implementation matches its specification. No runtime changes,
agent-rule changes, skill installations, builds or proof suites were performed.

## Findings to fix first

| Priority | Verified problem | Proposed correction |
| --- | --- | --- |
| High | [AssetPolicy rustdoc](../../crates/core/component/compliance/src/structs.rs) and [its protobuf comment](../../proto/shieldd/shieldd/core/component/compliance/v1/compliance.proto) say the policy is not in the Merkle commitment. [IndexedLeaf::from_policy and commit](../../crates/core/component/compliance/src/indexed_tree.rs) commit projections of the issuer and ring policy. | Describe precisely which fields enter the leaf and which authority facts are checked by the host. Neither “nothing is committed” nor “every AssetPolicy field is circuit-authenticated” is accurate. |
| High | [Anchor comments](../../crates/core/component/compliance/src/state_key.rs) and `record_compliance_anchors` in [registry.rs](../../crates/core/component/compliance/src/registry.rs) describe append-only user roots usable for historical compliance proofs. `validate_compliance_anchor_facts` requires both current mutable roots. | Distinguish stored historical roots from roots admissible for current authorization. Review the corresponding retention-parameter descriptions at the Rust/protobuf source together. |
| High | [Orbis runtime README](../../deployments/orbis/README.md) promises a wire-compatible pinned runtime. [The lock](../../deployments/orbis/images.lock.json) selects Decaf377; [startup validation](../../scripts/lib/common.sh) rejects it. [The external contract](../jubjub-external-contract.md) correctly records this limitation. | Put the blocked runtime status before operational instructions. Link the external contract for BLS PRE and Jubjub PET requirements; label future-compatible procedures as conditional. |
| High | [MasterComplianceKey docs](../../crates/core/component/compliance/src/issuer_keys.rs) describe an Orbis master secret and public key stored in the asset leaf for future policy signatures. The leaf has no such MCK field. Workspace references to these types are their definitions, self-tests and re-exports. | Propose deleting this unused API and its self-tests after a final consumer search, rather than documenting a speculative key hierarchy. Keep issuer DK and actual RNK/ring roles distinct. This is a small code cleanup, separate from comment-only edits. |
| Medium | [The standard proof gate](../../justfile) omits `shieldd-sdk-app-tests` and builds pcli without the Disclosure prover feature. [Disclosure app tests](../../crates/core/app-tests/tests/disclosure.rs) require a prover-enabled pcli. | Complete the canonical gate with the intended ignored app tests and matching CLI features. Document the exact coverage instead of relying on an agent to rediscover a bespoke command. |
| Medium | [Embedded artifact docs](../embedded-artifacts.md) describe ignored proof replay as manual; [Rust PR CI](../../.github/workflows/rust.yml) explicitly invokes `just pari-proof-tests`. | Distinguish ordinary Cargo tests, the selected ignored tests run by CI, remaining gates, and external integration. A release-gated test run under the optimized `ci` profile is not a `--release` run. |
| Medium | `CLAUDE.md` imports `Agents.md`, while the tracked file is `AGENTS.md`. | Correct the spelling and keep CLAUDE.md as an import only. Default macOS filesystem behavior can hide this portability issue. |
| Medium | [Recovery encryption](../../crates/crypto/circuits/src/recovery.rs) still calls its payload key a capability key. [Compliance structs](../../crates/core/component/compliance/src/structs.rs) and protobufs contain phrases such as “daily_volume_limit Orbis” and “DailyVolumeLimit-Orbis attestation.” | Correct terminology at source and regenerate derived files. Avoid search-and-replace of every occurrence of “threshold”: threshold cryptography is still real. |
| Medium | [The C header](../../crates/bin/shieldd/include/shieldd.h) names `penumbra.cnidarium.v1` for its key-value payload; [the protobuf package](../../proto/shieldd/shieldd/cnidarium/v1/cnidarium.proto) is `shieldd.cnidarium.v1`. [CLI help](../../crates/bin/pcli/src/command/view/address.rs) calls transparent encoding 32 bytes; [the encoder](../../crates/core/keys/src/address.rs) emits a suite byte plus a 32-byte key. | Correct external-interface comments and help text. Distinguish raw point, address payload, suite-tagged wire bytes and text encoding. The 48-byte address payload elsewhere is not itself a contradiction with 49-byte suite-tagged encoding. |
| Medium | [Benchmarks](../benchmarks.md) mixes historical variants and language such as “Current warm Transfer proving” or a regression that “must be addressed,” despite subsequent restoration reports. Some raw evidence is only in local `target/`, `/tmp` or a personal directory. | Keep current recipes and the latest applicable measured result on the landing page. Label each historical result with its relation/compiler identity and successor. Preserve available evidence; explicitly mark missing local evidence instead of implying checkout reproducibility. |
| Low | [ComplianceAssetTree](../../crates/view/src/compliance_tree.rs) says loading replays asset IDs, while the loader reconstructs full persisted leaves. [TCT is_full](../../crates/crypto/tct/src/internal/frontier/tier.rs) says insertion fails when it returns false. | Correct these descriptions against implementation. Remove obsolete Swap/SwapClaim explanations from current transaction docs only after checking the actual remaining API, rather than globally deleting inherited terminology. |

These are documentation defects and cleanup candidates, not demonstrations of
exploitable runtime bugs. In particular, stale comments do not override the
checks implemented by the circuits or host.

The ignored local files need a separate local cleanup:

- `.claude/commands/start-session.md` always loads compliance docs and infers work
  from recent commits. It should start from the user's task and the docs map.
- `.claude/commands/end-session.md` promotes session lessons into CLAUDE.md,
  creating a second policy source, and assumes compliance was the task.
- `RELAY-TASK.md` is an ignored placeholder referencing absent
  `tools/relay/README.md` and `EXECUTOR-HANDOFF.md`, with its own blanket no-push rule.
  Retire it rather than building infrastructure to support it.

The commands are ignored by the user's global Git ignore; the relay file is
excluded by `.git/info/exclude`. They do not ship with a fresh checkout. Shared
behavior must be in tracked repository files, with local shortcuts optional.

## Documentation structure

Keep [docs/README.md](../README.md) as the single task-to-code map. It already
does this well. Add a route to review history and the proposed skills; do not
make every agent read all documentation on startup.

| Location | Owns | Should not accumulate |
| --- | --- | --- |
| Root AGENTS.md | Durable engineering invariants, how to find context, authorization discipline and shared resource limits | Task status, benchmark numbers, long plans or incident-specific rules |
| Root CLAUDE.md | Exact import of AGENTS.md | A second engineering policy |
| docs/architecture.md | Shieldd/Bankd ownership and execution boundaries | Copies of wire formats or operational recipes |
| docs/protocol.md | Keys, notes, authorization and transaction semantics | Compiler internals or historical migration narrative |
| docs/compliance/flow.md | Registration and transfer lifecycle; who learns what and when | Another complete encoding reference |
| docs/compliance/reference.md | Canonical compliance records, key roles and encodings | Deployment readiness claims copied from another document |
| Compliance and Transfer constraint checklists | Security invariants, circuit/host responsibility, implementation and meaningful negative-test pointers | Generic tests or repeated narrative from the flow |
| docs/disclosure.md and enforcement-and-seizure.md | Their specific flows and authorization limits | Equating successful decryption with authorization or external PET execution |
| docs/state.md, nullifier-history.md, wallet.md | Persistence ownership, recovery, retention and wallet state transitions | Duplicated backend descriptions or unqualified storage-size claims |
| docs/proof-system.md | Family selection, one-public-digest construction, registry lifecycle and application/prover boundary | A second vendor patch ledger |
| third_party/commonware-patches/README.md | Exact upstream pin, retained patch boundaries, reproduction and upgrade/removal checks | General Shieldd circuit design |
| docs/jubjub-external-contract.md | External suite/encoding requirements and verified capability limits | An implication that an adapter unit test proves deployed compatibility |
| docs/development.md + justfile/scripts | Verification selection and executable commands | Copies of commands that silently differ from CI |
| docs/benchmarks.md | How to measure, latest applicable measured baseline, interpretation | An unlabelled chronology of incompatible relations |
| docs/reviews/README.md — new | Report index: subject, status, source identity and successor | A second specification or a manually copied list of every test |

Do not move every existing report merely to achieve a new directory layout.
Preserve existing links. Add status/successor banners where missing and index
the decision chains: original review → remediation; key/native plan → validation
→ constant outlining; optimization research → experiments → implementation.
The optimization experiment report should explicitly link its implementation.

For future substantial work, keep one task document in the existing review area.
It can contain the proposal, selected design, unresolved decisions and completion
evidence. Mark it completed or superseded when appropriate. Put the final current
contract in its owning documentation. A short rationale plus a condition for
revisiting the decision is useful history; a growing universal “lessons” file is not.

Current behavior, proposed behavior and external prerequisites must be explicit
where they meet. Use a short status sentence at the relevant boundary, not a
large capability database that itself needs synchronization.

## Agent instructions: keep the strong rules, remove unnecessary ceremony

Keep the prototype contract policy, typed domain boundaries, durable state at
the edge, canonical identifiers, explicit state machines, validation before
completion, bounded attacker-controlled growth and external formal-verification
boundary. Keep the single-heavy-job restriction visible in the root instructions.

Proposed changes to the governing wording:

1. **Scope by consequence.** Explain the intended behavior and affected layers
   before changing cryptographic relations, authorization, persistence semantics,
   concurrency or external interfaces. File count alone does not establish risk.
   A routine rename across ten files needs less discussion than an authorization
   change in one function.
2. **Separate unknown facts from unknown intent.** Read code/tests and use a
   bounded experiment for facts. Ask a focused question for an unresolved product
   tradeoff that changes the design. Continue independent useful work while an
   answer is pending. Do not re-ask for authorization already supplied.
3. **Respond to evidence, not a retry counter.** After a repeated failure, stop
   repeating the same approach, capture the observation, state a new hypothesis
   and choose a distinguishing check. Research alternatives when needed, without
   a mandatory quota of three to five fixes.
4. **Document contracts, not line counts.** Keep docs concise, but include
   non-obvious preconditions, trust sources, ownership, ordering, atomicity,
   cancellation and error behavior. Preserve valuable TCT storage contracts and
   FROST nonce/channel requirements even when they exceed two lines.
5. **Keep current specifications current and history labelled.** Allow dated
   review, design and measurement evidence. Historical recommendations are not
   current instructions; current code also does not automatically define intended
   security behavior when it conflicts with an agreed invariant.
6. **Finish with traceable verification.** State relevant commands, features,
   profile and source/registry identity; distinguish passed, failed, interrupted
   and not run. Fixes need a meaningful failing reproduction before the change.
   Documentation-only changes do not need an expensive proof run.

Root AGENTS.md should remain approximately its current size or become shorter.
Do not scatter AGENTS.md files through every crate. Add a nested file only for
actual additional constraints. Codex discovers instructions along the path from
the project root to its working directory; a root-launched session must not rely
on automatically loading every descendant instruction file. See the official
[AGENTS.md discovery rules](https://learn.chatgpt.com/docs/agent-configuration/agents-md).

## Skills: three small, portable workflows

I recommend tracked `.agents/skills/` directories. The current official Codex
layout scans repository skills from the working directory up to the repository
root, initially loads metadata, and reads the full skill when selected. This
supports a small startup context. Descriptions must be narrow and tested; merely
creating files does not prove reliable invocation. See
[the skill documentation](https://learn.chatgpt.com/docs/build-skills).

The current machine has system/plugin skills under `.codex`, and an empty global
AGENTS.md, but no repository `.agents/skills` directory. Do not depend on a
personal plugin-cache path. A fresh-session discovery test is part of adopting
the proposed layout. Claude-specific discovery should likewise be tested rather
than inferred from Codex behavior; its import can point agents to the shared map.

### shieldd-investigate

**Trigger:** a substantial code-behavior question, cross-repository dependency
claim, ambiguous failure or performance hypothesis. Not every file lookup.

**Workflow:** resolve branch, dirty state and relevant dependency pin; follow the
docs map to definitions, callers and tests; form specific competing explanations;
read primary upstream sources at identified revisions; run the smallest useful
reproduction; report facts, inference and remaining uncertainty separately.

For “what will Commonware deliver,” distinguish the current pinned code, a
published prototype and an upstream maintainer's stated plan. Do not convert a
plausible integration path into a promised roadmap. For “can Orbis do this,”
separate codecs/local adapters, proof verification, authorization and live service
support. For performance, identify relation, registry, build profile, hardware,
workload and concurrency before comparing measurements.

**Output:** answer, supporting code/source references, experiment result if any,
and the smallest next step that would settle what remains unknown. A short
discussion belongs in chat; substantial experiments retain reproducible evidence.

### shieldd-plan

**Trigger:** an explicit implementation-plan request or a change crossing an
important circuit/domain/host/storage/external boundary. Routine edits use normal
task planning without a written design ceremony.

**Workflow:** establish outcome and existing authorization; read affected code;
identify invariants and real unresolved choices; compare materially different
options; choose the simplest sufficient design; trace every affected layer;
group work into buildable stages; name existing checks and missing regressions.

**Output:** scope, chosen design and rationale, affected paths, implementation
stages, required verification and external prerequisites. Include what is deleted.
For Commonware changes, explicitly classify delete, maintain at a clear boundary,
or defer; never quietly reintroduce a private prover behind an adapter name.

The skill must not require plan approval after an already authorized implementation
request, a full code listing before implementation, artificial five-minute tasks,
or an automatic worktree for every change.

### shieldd-review

**Trigger:** a requested plan or patch review, or review included in the agreed
scope of significant work. It does not launch other agents on its own.

**Workflow:** identify the exact artifact and baseline; read the actual change
plus callers, tests and contracts; assess correctness, security boundaries and
unnecessary complexity as separate questions; reproduce plausible defects where
proportionate; distinguish introduced issues from inherited debt; identify missing
verification without calling it a demonstrated bug.

For a plan, check missing layers, circular sequencing, external dependencies,
testability and scope. For a patch, require a concrete trigger, consequence and
source location for each finding. Review suggestions are evidence to evaluate,
not instructions to apply automatically.

When independent agents are requested, provide the task requirements, immutable
plan/diff identity, relevant paths and resource constraints. Give each reviewer
its own remit and avoid priming it with the desired verdict. The coordinator
alone schedules heavy verification; code reading can proceed in parallel.
Do not impose a fixed model, three reviewers or repeated review loops on every
change. Preserve the user's requested models and delegation scope.

**Output:** actionable findings with evidence, scope/verification limits and
remaining uncertainty. The proposer/implementer resolves and validates findings.

Each skill should fit in roughly one or two pages and link to canonical repository
facts. Share a reference only when genuine repeated material emerges. Start with
no new helper scripts, framework, skills router or generic provider abstraction.
Search remains `rg`, Git and primary-source browsing; it does not need its own
skill, vector database or indexing service.

## Existing skills assessed

| Existing capability | Recommendation |
| --- | --- |
| Installed skill-creator and openai-docs | Reuse for authoring/testing skill scope and checking actual Codex behavior. Do not duplicate them in this repo. |
| Local system review-agent | Its defect-first, read-only review approach is useful. The file exists locally but is not advertised in this session's available-skill list, so it is not a portable repo dependency. Use it when actually available; keep Shieldd's review-specific invariants independently accessible. |
| Installed Codex Security skills | Reuse the appropriate diff or repository review workflow when a security review is requested. Do not turn every ordinary code review into a full repository security scan. |
| Official gh-fix-ci | Useful check/log retrieval, but its current workflow requires an additional explicit plan approval. Do not adopt that extra gate as Shieldd's default. [Source](https://github.com/openai/skills/blob/main/skills/.curated/gh-fix-ci/SKILL.md). |
| Official gh-address-comments | Useful PR discussion retrieval, but its default asks the user to select comments, and its permission instructions assume a different execution environment. Existing task authorization and actual tool permissions must govern. [Source](https://github.com/openai/skills/blob/main/skills/.curated/gh-address-comments/SKILL.md). |
| Superpowers systematic-debugging | Useful emphasis on reproduction, tracing boundaries and testing a hypothesis. Adapt the ideas selectively: no universal retry-count gate, and never copy diagnostic examples that print secret-bearing environment values into this cryptographic repository. [Source](https://github.com/obra/superpowers/blob/main/skills/systematic-debugging/SKILL.md). |
| Superpowers brainstorming | Its current source imposes approval gates even on bounded changes and multiple separate approvals on architectural work. That conflicts with the requested working style. Do not install the entire framework as the default process. [Source](https://github.com/obra/superpowers/blob/main/skills/brainstorming/SKILL.md). |
| Notion planning/research skills and other connector workflows | No demonstrated need: the authoritative material already belongs in Git. Avoid adding an external knowledge store merely to organize these docs. |

The official curated skill catalog was queried read-only and relevant skill bodies
were inspected. Its installer-local “installed” annotation does not enumerate all
system/plugin skills, so it was not treated as a complete runtime inventory.
No plugin or skill was installed. These observations describe sources checked on
2026-09-22; evaluate the actual revision again before adopting third-party skills.

## Verification setup

Keep commands executable in justfile/scripts and document how to select them in
development.md. Order cheap checks before expensive compilation. The current
`check` recipe performs formatting validation after Cargo check; put formatting
validation earlier to catch it before expensive work. Local profiling commands
should identify why they use `ci` or `release` rather than unintentionally building
both caches.

The development page should contain this coverage map, linked to actual recipes:

| Change | Required evidence |
| --- | --- |
| Documentation/instructions/skills | Local link and case checks; actual referenced symbols/commands; skill-discovery and behavior checks for changed skills |
| Domain or wallet behavior | Focused regression, affected integration tests, broader checks justified by the impact |
| Circuits, statement layout or registry | Constraint/negative tests, full family census, fresh registry when relations change, native proof gates, application acceptance and identity binding |
| Native/Wasm feature boundary | Existing isolated feature and Wasm checks; an all-features workspace check does not substitute for them |
| Persistence/concurrency | Legal transitions, stale-worker behavior, crash/restart or cancellation behavior relevant to the change, and bounded-growth behavior |
| Protobuf or C ABI | Source/codegen parity and relevant consumer/artifact tests; identify required Bankd follow-up |
| Vendor patch | Pinned-source reproduction/inventory, upstream-specific regressions, downstream proof checks and documented upgrade/removal condition |
| Orbis integration | Separate local contract tests from live external tests; keep incompatible-runtime rejection explicit |

Improve the existing documentation checker, rather than introducing a second
checker: rename `check_compliance_docs.py` to reflect its repository-wide role;
update callers; check exact filename casing and the root Claude import; test
those cases. Its current passing result checks Markdown links, not semantic
truth, rustdoc links, code-fenced commands or ignored local files. The workflow
step should not claim terminology checking that it does not perform.

Use rustdoc's broken-link validation for first-party API docs. Establish its
baseline and feature coverage before making warnings fatal; do not fail builds
on all missing docs or enforce mechanical comment-length quotas. The existing
rustdoc recipe uses default features and explicitly selected packages, so its
coverage must be stated rather than assumed to cover every optional API.

Do not add an LLM documentation gate, a general-purpose workflow daemon, a
distributed build scheduler or formal-verification tooling here. Existing tests,
small deterministic checks and clear ownership address the demonstrated gaps.

## Implementation sequence and acceptance

1. **Correct trust and readiness claims.** Update the identified Rust/protobuf/C
   comments and current docs together. Regenerate protobuf outputs from source.
   Keep the optional unused-MCK deletion a separately reviewable code change.
2. **Unify instructions and navigation.** Tighten AGENTS.md, fix its Claude import,
   add the review index/status links and clarify current benchmark coverage.
   Retire or rewrite the ignored local shortcuts separately; do not force-track
   the user's entire `.claude` directory.
3. **Make verification discoverable and accurate.** Complete the proof gate,
   update its CI/documentation references and improve the existing link checker.
   Prove the new test selection actually executes the intended gates with the
   correct CLI, features and registry.
4. **Add and evaluate the three skills.** Validate their metadata and references,
   then test them in fresh sessions. Do not declare them useful solely because
   their YAML parses. Independent agent trials require explicit delegation
   authorization; this proposal does not silently enable it.

Use realistic acceptance scenarios:

- A new agent asked to fix a wallet query finds wallet/state code and relevant
  tests without reading all compliance docs or historical reports.
- Asked whether the pinned Orbis image supports the current system, it identifies
  the incompatible lock and external prerequisites before suggesting deployment.
- Asked to optimize a circuit, it preserves the one-public-digest contract,
  checks all current families from the registry, identifies key regeneration
  needs and retains the Commonware boundary.
- Asked to review a small patch on this dirty branch, it identifies the actual
  review artifact and does not attribute unrelated preexisting changes to it.
- Faced with a repeated build failure, it changes a hypothesis based on evidence
  without blindly retrying, spawning competing Cargo jobs or demanding arbitrary
  architectural approval.
- Asked an unresolved product-policy question, it explains the material tradeoff
  and asks for intent. Asked a factual question, it researches and verifies it.
- After a completed task, it updates the owning current document and task status,
  preserves useful evidence, and does not turn every user correction into a
  permanent global instruction.

Success is a fresh agent reaching the right source, boundary and verification
with fewer assumptions. A lower word count or more installed skills is not
sufficient evidence of improvement.

Checks on this proposal: the existing local Markdown-link checker passed;
`git diff --check` passed; the tracked patch fingerprint remained unchanged.
These checks do not validate the proposed skill behavior. No prover,
release-gated, rustdoc-build or live integration tests were run in this pass.
