# Executor handoff — full-verification plan, delegated work stream

You are an executor model working inside the bounds set by
`docs/soundness/full-verification-plan.md` (Sections 6 and 7 are binding) and
the Lean rules in `tools/gnark/lean/AGENTS.md`. The frontier model does design and first
exemplars; your job is fan-out. Everything you produce is verified by
fail-closed gates — if a gate is red, the work is not done, and you may not
modify the gate.

This file holds ONLY the active queue. Completed tasks, logs, and resolved
blockers live in git history of this file and in
`docs/soundness/reference/history.md`; do not re-append them here. When you
finish a task: commit, delete its section here, and add one dated line under
"Recently completed" (keep that list ≤5 lines, oldest falls off).

## Hard rules (violations invalidate the work)

1. Never modify: `scripts/check-constraint-coverage.sh` semantics, any
   generator parity assertion, `consolidate2x1-coverage-manifest.json`
   verdicts, the assumption ledger's meaning, or any `*.sha256` stamp by hand.
2. Lean builds: exactly one `lake` at a time, `LEAN_NUM_THREADS=1`, build the
   narrowest named module, run long builds detached with an RSS watcher (kill
   `lean --` above ~34 GB), bounded `maxHeartbeats` (never 0), no
   `native_decide`, no `sorry`/`axiom`.
3. Never hand-edit generated `.lean` (files with a GENERATED header) — fix the
   generator and regenerate. Hand-authored files you may edit: `Specs/`,
   `Bounds.lean`, `Projection.lean`, `Statement.lean`, `Wiring.lean`.
4. Debug tactics in a scratch leaf probe via `lake env lean <file>`, never by
   rebuilding adapter trees. `scripts/lean-leaf-bench.sh` budgets: leaf
   <60s/<2GB, aggregator <120s/<4GB.
5. Editing anything under `Specs/` invalidates the adapter forest — batch
   Specs edits, verify with probes first, then run one full gate build.
6. If the same gate fails twice for the same reason: STOP, write what you
   tried and the exact log under "Blocked", and hand back.
7. Commit per completed task on `fv/circuit-soundness-hardening`. This file is
   tracked; commit its updates with the task they describe.
8. After a regeneration that changes constraint counts, grep the hand-authored
   layer (`Specs/`, `Wiring.lean`, `Statement.lean`, `Bounds.lean`,
   `Projection.lean`) for stale wire indices — deleted rows shift every
   downstream wire; only hand-authored files can go stale.

## Current state (verify, do not redo)

- consolidate2x1: 49/49 deployed obligations proven; capstone
  `consolidate2x1_deployed_sound` + `Statement.lean` wired into
  `scripts/check-constraint-coverage.sh consolidate2x1` (run from
  `tools/gnark/lean`).
- T1-a seed-0 ladder elimination landed in Go + regenerated slice; the −640
  wire shift in the hand-authored layer is fixed (see history.md); frontier is
  verifying the `NbAdapterSeg52` keystone build now.
- Canon-chain rfl fix proven at forest scale (40.5 min / 5.8 GB).
- Tasks 1–17 complete; see git history of this file for their definitions.

## Active queue (in order)

### Q1 — seg52 downstream rebuild + Task 10 gate battery
Once frontier reports keystone + capstone green: run the full gate battery for
T1-a (manifest diff must show ONLY seg52-family flips), prover round-trip,
record before/after constraint counts and wall-time-per-tier in
`docs/soundness/optimization-playbook.md` §5. Usual lake discipline.

### Q2 — Task 11 clean Picus regen
Re-run the 24-leaf Picus battery against the post-T1-a `.sr1cs` inputs; input
fingerprints + wiring cert must re-stamp clean (24/24).

### Q3 — assurance-case evidence gaps
- Gap #1 (R2.2): add a handler test asserting a repeated nullifier is
  rejected; cite it in `docs/soundness/assurance-case.md`.
- Gap #2 (R3.2): add the spend-auth-rdsa assumption row (ledger + mirror) and
  cite it.

## Awaiting human (Antoine)

- Confirm `MODEL-ASSUME-CONSOLIDATE-COMPLIANCE-EXEMPT` (consolidate2x1's
  absent compliance surface: intended design or oversight?).
- Playbook T2/T3, S1 removal path, gate-semantics changes.

## Standing mission (post-frontier)

You drive the plan per full-verification-plan §6 "Post-frontier operation".
Session-end routine: audit `docs/soundness/assurance-case.md` edges against
what your session changed. Escalation target is the human: hand back with
exact logs. Findings always stop the line.

## Not yours (do not attempt)

Canon-chain re-architecture design; anything under
`crates/crypto/proof-aggregation/formal/snarkpack/`; RIPP mechanization;
changing what any gate checks.

## Recently completed

- 2026-07-06: Tasks 13–17 (assurance-case citations, SnarkPack S1 row,
  fidelity rows, CI workflow, release checklist); Tasks 11/12 Picus input
  fingerprints + wiring cert; Alloy H2 transfer instantiation; T1-b VOID /
  T1-c no-dead-output verdicts.
- 2026-07-06: seg52 keystone root cause fixed by frontier (−640 hand-authored
  wire shift; lesson = hard rule 8).

## Blocked

(none)
