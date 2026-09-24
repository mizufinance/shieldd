# Shieldd Engineering Instructions

## Prototype Contract Policy

Assume there are no stable contracts in this repository unless the user names
one or the boundary is a standards/protocol interface. Existing code, files,
schemas, JSON shapes, CLI output, demo state, and tests are implementation
details, not compatibility obligations.

When improving the system, change or delete implementation details freely and
update all in-repo references to the new design. Do not infer consumers from
existing internal callers; update the callers. Do not add migrations, aliases,
compatibility shims, transitional fields, or dual paths unless the user asks for
them or there is clear evidence of an external protocol/client contract.

Schema versions are guardrails against accidentally opening stale local data.
They are not migration promises.

For task-specific code, ownership and commands, start at [docs/README.md](docs/README.md).
Read the area relevant to the user's task, not every document.
Repository skills for investigation, planning, testing and review are linked from that map.

## Workflow

- Discuss goal, risks, and shape before writing a detailed plan.
- Explain scope and affected boundaries before changing cryptographic relations, authorization, persistence semantics, concurrency or external interfaces. Scale planning to consequences rather than file count.
- Resolve unknown facts through code, tests, primary sources and bounded experiments. Ask a focused question when unresolved product intent changes the design; continue independent useful work while waiting.
- Preserve existing user authorization. A plan or skill does not introduce another approval stage for work already authorized, or authorize unrelated external actions.
- Follow impact through every affected layer: circuits, domain, storage, services, CLI, tests, docs.
- After a repeated failure, stop repeating the approach. Record the observation, form a new hypothesis and choose a check that distinguishes it; research alternatives when needed.
- Identify the branch and dirty baseline before editing or reviewing. Preserve unrelated work; distinguish current specifications from proposed changes.
- Delegate only when requested or otherwise explicitly authorized. When independent reviewers are requested, give them the requirements and exact artifact, not a desired verdict; the coordinator schedules heavy verification.

## Architecture

- **Typed domain records** carry facts and events across boundaries. No untyped tuples or maps for cross-boundary data.
- **Pure helpers** for parsing, validation, classification, projection — side-effect-free, unit-testable in isolation.
- **Durable state at the edge** via existing `StateRead` / `StateWrite` patterns. Core logic takes these as inputs; it does not own connections, files, or RPC clients.
- **Provider traits only for real external effects** (RPC, network, MPC, filesystem). Do not introduce traits for internal indirection or speculative future swaps.
- **Durable state is a spine, not a handoff.** Workers, validators, projectors, exporters communicate through replayable typed records on shared storage.
- **Canonical identifiers only.** Do not invent synthetic IDs or hashes in production paths; if code mirrors canonical logic, add a parity test.
- **Explicit state machines.** Define legal states, transitions, and terminal conditions in code and tests.
- **Validate before completing downstream work.** Rows, objects, proofs, and external responses must not reach a completed state until prerequisites are checked.
- **Persist useful failures, bound attacker-controlled growth.**
- **Delete replaced flows.** Do not preserve compatibility surfaces.

## Verification

- Never mark work complete without proving it.
- Bug fixes: reproduce the behavioral failure first, then fix. A compile or setup failure is not a regression reproduction.
- Curate tests against current requirements: extend existing coverage, consolidate overlap, and delete tests and unused helpers for discarded behavior. Historical regressions do not create product contracts.
- Justify expected results independently of the behavior under test; check the intended failure boundary and relevant side effects. Follow [Testing](docs/testing.md), including selective fault-sensitivity checks for important changes.
- Do not weaken assertions or regenerate expected outputs merely to make tests pass. Explain intentional changes in semantics.
- Run focused tests after each meaningful section; relevant full checks before final handoff.
- Choose commands using [Development](docs/development.md). Run cheap checks before expensive compilation; reuse verification unless changes or failures justify rerunning it.
- Report passed, failed, interrupted and unrun checks with relevant features, profile and source/registry identity. Say explicitly whether prover/release-gated tests were actually run; `ci` profile is not `--release`.

## Local Resource Limits

- Run only one heavy verification job at a time across all agents and tasks: Rust builds/checks, test suites, proof generation, or container builds. Do not queue competing Cargo commands behind the build lock.
- Default to `CARGO_BUILD_JOBS=2`, `RAYON_NUM_THREADS=2`, and `GOMAXPROCS=2`; use `go build/test -p 2`. Limit nextest to `-j 2` and Rust test harnesses to `--test-threads=2`; run expensive proof tests serially. These limits are starting bounds, not guarantees against memory pressure.
- Build container architectures sequentially. Prefer the native architecture; run emulated builds only when required. Confirm Docker CPU/memory limits and bound build-tool parallelism inside the container before starting. Do not increase Docker's global resource allocation without the user's approval.
- Check available memory, swap pressure, disk space, and existing workloads before heavy verification; monitor during it. If memory pressure, sustained swapping, severe slowdown, or Docker unresponsiveness appears, stop this task's heavy jobs immediately. Do not terminate unrelated user processes or restart Docker globally.
- Reuse build caches and completed verification. Repeat checks only for relevant changes, failures, or unresolved concerns; avoid concurrent builds with separate target directories to bypass Cargo's lock.
- Do not edit scripts while they are executing. Finish or stop the invocation before changing and rerunning them.
- After a crash or resource-related interruption, diagnose the cause before retrying. Report interrupted checks as incomplete, address the cause, and resume cautiously with reduced concurrency and resource monitoring. Do not blindly restart the same workload; stop again if pressure or instability returns.

## Style

- Modularity and simplicity over cleverness.
- Drop redundant module/crate names from function names.
- Standard crypto abbreviations fine: `ss`, `ct`, `pt`, `esk`, `epk`, `dk`, `fq`.
- Prefer clear code over comments. Document only non-obvious ownership, protocol or security invariants, and failure modes.
- Document the current design. Git preserves replaced designs and implementation history; do not maintain review histories, completed plans, agent transcripts, experiment snapshots or verification logs in the repository.
- Keep working plans, review notes and logs in the conversation or task-local scratch space outside the repository unless the user explicitly asks to commit them. Move lasting requirements into their existing documentation owner, not a new report.
- Keep docs concise without line quotas. Include non-obvious preconditions, trust sources, ownership, ordering, atomicity, cancellation and failure behavior; retain necessary cryptographic and storage invariants.
- Define each contract once and link to it. Consolidate overlapping specs and checklists; source code owns exact field order and generated inventories.

## Pull Request Descriptions

- Use `Goal` for a few sentences explaining the high-level purpose, then `What changed` for the major changes across the full branch.
- Keep bullets high-level. For a broad PR, group them under a few descriptive subsections. Omit minor fixes, symbol/field inventories, implementation chronology and exhaustive test counts.
- Link the related issue. Use a closing keyword only when the PR actually completes that issue's scope.
- State material integration requirements and verification limits briefly where relevant; put detailed execution evidence in task or CI logs outside the repository. Follow [the PR template](.github/pull_request_template.md).

## Formal Verification Boundary

Formal verification lives in `mizufinance/shieldd-security`, which pins an exact
Shieldd commit. Do not add formal tools, specifications, generated evidence, or
CI gates to this repository.
