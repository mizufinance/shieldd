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

## Lean Circuit Proofs

- Never prove semantics of an extracted constraint chain in one monolithic
  tactic walk. Elaboration cost is quadratic in chain length: each
  `obtain`/destructuring step re-substitutes the entire remaining term.
-  Slice long
  circuits into segment predicates ending in an opaque continuation
  (`k : Prop` or `k : Vector F n → Prop`), prove each segment's semantics
  separately, and compose. Repeated rung patterns (ladders, lt-chains) get a
  fuel-recursive definition plus one induction lemma, never an unrolled walk.
- Monitor Lean compiles actively. A lot of them blowup in time or just hang.

### Lean build resource limits — follow these every time

> **INCIDENT LOG:** Unbounded, concurrent `lake build` invocations have
> force-rebooted this 48GB macOS machine **twice** (2025-06-23, 2025-06-29) by
> exhausting RAM and disk. A single OS crash loses unsaved work across every
> open application. Treat the rules below as load-bearing, not optional polish.

Heavyweight adapter elaborations (Rvk/Dtk/Compress adapters, `Bounds`, Seg
files) each hold hundreds of GF(p) witnesses; a single one can consume many GB
of RSS. The crashes came from *fan-out* — many builds running at once, and
whole-package builds spawning one heavy Lean worker per module.

These are guidelines you are expected to keep, not a script that polices you:

1. **One lake at a time.** Never run two `lake` builds concurrently — not in
   parallel tool calls, not in the background, not across subagents. Start a
   build only once the previous one has exited.

2. **Single-threaded.** Export `LEAN_NUM_THREADS=1` so a build elaborates one
   module at a time instead of fanning out one heavy worker per core (14 here).
   (macOS rejects `setrlimit(RLIMIT_AS)`, so `ulimit -v` does nothing; keeping
   builds serial and single-threaded is what actually bounds memory.)

3. **Build the narrowest target.** Name the specific module
   (`lake build Shieldd…Consolidate2x1.DtkAdapterSeg16`), never a bare
   `lake build` of the whole package.

4. **Bound elaboration.** Generated Lean files must set a finite `maxHeartbeats`
   (never `0`) so a runaway elaboration aborts with a diagnostic instead of
   grinding. See [[lean-gen-bounded-heartbeats]].

5. **Monitor actively.** Run builds in the background and watch them; if one
   hangs or balloons, kill it (`pkill -f 'lean --'`) rather than letting it run
   unbounded. Prefer a wall-clock cap on long builds.

**Canonical invocation:**
```
LEAN_NUM_THREADS=1 lake build <SPECIFIC.MODULE>     # build one module
LEAN_NUM_THREADS=1 lake env lean <FILE>             # type-check a file
```