# Shieldd Engineering Instructions

New prototype product, no stable contracts unless explicitly identified.
Prefer the correct design over legacy shims.
Delete obsolete paths; do not keep aliases, flags, or half-finished abstractions.

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

## Workflow

- Discuss goal, risks, and shape before writing a detailed plan.
- Ask when design intent is unclear. Make scope explicit before refactors >5 files.
- Follow impact through every affected layer: circuits, domain, storage, services, CLI, tests, docs.
- If the same error hits twice, research 3-5 fixes and pick the best — do not flail.

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
- Bug fixes: reproducing test first, then fix.
- Run focused tests after each meaningful section; relevant full checks before final handoff.
- Say explicitly whether prover/release-gated tests were actually run.

## Style

- Modularity and simplicity over cleverness.
- Drop redundant module/crate names from function names.
- Standard crypto abbreviations fine: `ss`, `ct`, `pt`, `esk`, `epk`, `dk`, `fq`.
- Docs succinct and factual: module ≤8 lines, public type ≤3, function ≤2 unless real protocol nuance. Do not force docs, some things do not need it.
- Document ownership, invariants, inputs, outputs, failure modes. Do not restate names or history.
- Define docs once; reference elsewhere.

## Formal Verification Gates

When a formal gate is red, start at
`docs/soundness/README.md#gate-failure-routing`. If circuit semantics did not
change, repair the narrowest affected applicability rule, handwritten spec or
proof, or source generator. Do not change a circuit or hand-edit generated
Lean/artifacts merely to clear CI. Add a regression test only when routing
behavior changes or the failure exposes a reusable missing check, not for every
red run. Circuit changes and their regenerated evidence stay in one PR, with
handwritten and generated changes in separate commits when practical.

## Lean Circuit Proofs

All Lean-proof rules live in `tools/gnark/lean/AGENTS.md` — read it BEFORE any
work under `tools/gnark/lean/` or on the proof generators/extractor. Its
resource limits are load-bearing: unbounded concurrent `lake` builds have
OOM-rebooted this machine twice. Minimum recall: one `lake` at a time,
`LEAN_NUM_THREADS=1`, narrowest named module, monitored in the background.
