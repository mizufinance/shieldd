---
name: shieldd-plan
description: Plan requested Shieldd implementations or changes crossing cryptographic, authorization, persistence, concurrency or external-interface boundaries. Scale the plan to consequences; routine edits do not require a written design.
---

# Plan a Shieldd change

Read the relevant code through the [task map](../../../docs/README.md), then
identify the intended behavior, existing authorization and material unresolved
choices. A plan supports the task; it does not add approval stages for work the
user already authorized. Ask for design intent only when the choice affects the outcome.

## Shape the change

Trace impact through the affected layers: circuits and statement layout, domain
records and codecs, host admission, storage and workers, wallet/services, CLI,
fixtures, generated artifacts and current documentation. Include only affected
layers, but do not defer consumers of a deleted field to a later unbuildable stage.

Make cryptographic and state invariants explicit where they matter:

- Preserve the single public digest and its constrained opening unless the user
  explicitly changes that architecture. Circuit changes require family and key
  identity checks, not just successful compilation of a gadget.
- Separate decryption evidence from authorization, authentic chain data from
  uploaded claims, and current admissible roots from historical lookup data.
- Identify transaction atomicity, stale-worker ownership, restart/cancellation
  and growth bounds for changed durable workflows.
- Keep provider traits for real external effects and durable state at the edge.
  Prototype schema versions reject stale local state; they do not require migrations.

Compare materially different options when a real tradeoff exists. Prefer deleting
obsolete paths to maintaining dual implementations. For Commonware work, classify
changes as delete, maintain at a clear boundary, or defer, using the
[source policy](../../../third_party/commonware-patches/README.md). Do not move
private prover internals into Shieldd and call that an upgrade-safe adapter.

## Make the plan executable

Group work into buildable stages with affected paths, intended behavior and
acceptance criteria. Name existing regressions to reuse and missing reproductions;
select commands from [Development](../../../docs/development.md). Identify fresh
registry/codegen needs, external prerequisites and what cannot be verified locally.
Schedule only one heavy verification job at a time.

Apply [Testing](../../../docs/testing.md): identify the current invariant and oracle,
existing tests to extend, and obsolete tests/helpers to remove. Preserve distinct
failure cases when consolidating; do not plan a new regression for every edit.

Use a short in-chat plan for bounded changes. For substantial work, maintain one
task document indexed in [reviews](../../../docs/reviews/README.md): scope, chosen
design and rationale, stages, verification and unresolved decisions. Do not expand
it into full code listings, artificial five-minute tasks, or a mandatory worktree.

If independent review is requested, supply the requirements and exact plan version
without a desired verdict. Evaluate findings and revise the plan before dependent
work. Keep completed evidence and current specifications in their respective owners.
