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
7. Commit per completed task on the active FV branch (currently
   `optimization-loop-boundaries`). This file is
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
fingerprints + wiring cert must re-stamp clean (24/24). Note: T1-a changed the
`gadget-scalar-mul-step` and `gadget-dleq` leaf `.sr1cs` (shared fixed-base
helper), so those verdicts are genuinely new. Run the battery on an otherwise
idle machine — a concurrent Lean build starves the SMT queries into the 120 s
watchdog (observed 2026-07-07: 8 spurious timeouts incl. byte-identical
`gadget-iszero`).

### Q3 — post-boundary optimization queue (after Q1+Q2 green)
The 2026-07-07 audit ranked the candidates in
`docs/soundness/optimization-playbook.md` §2/§2t/§2x. Executor-startable, in
order: (1) **T1-d Go change** — the read-only blast-radius inventory is DONE
and the decaf-coset equivalence is frontier-confirmed (2026-07-07, recorded
under T1-d in the playbook: delete segments 34/36 + 45/47, rewire segment 16
to shared.div_gen, −12,658 rows; hard rule 8 applies to the entire downstream
wire range); (2) **TC-1** base-select in `DeriveSharedSecretsSpend`; (3)
**T1-h** ToBinary dedup; (4) **F-1** census tooling — PARTIALLY DONE, see
checkpoint below.

### Q3 checkpoint (2026-07-07, frontier session, mid-flight)
State of the wait-time work stream, resumable by executor:
- **fv-opt-loop diff phase now supports deletions** (commit 30cee42b9):
  alignment-aware differ in `scripts/fv-opt-loop-diff.py`,
  `--allow-remove`/`--allow-add` flags, red/green tested + end-to-end green
  on the unchanged tree. T1-d's mechanical prerequisite is met; invoke as
  `diff --circuit consolidate2x1 --allow-flips 16 --allow-remove 34,36,45,47`
  (indices from the T1-d inventory in the playbook).
- **F-1 census tool exists and works**: `scripts/fv-census.py <sr1cs>
  <manifest>` (committed this checkpoint). First consolidate2x1 run
  mechanically confirms the audit: cross-segment CSE misses across the three
  gadget-dtk instances, 141 dead-output rows per DTK instance, 44 CSE-miss
  rows total, ~30 exact-duplicate rows (two per compress/dtk instance —
  worth a look, they sit inside decaf isqrt), floor-ratio table matches M-1
  (quad-path 0.98, poseidon 1.00, compress 0.18 per CF-1). REMAINING: (i)
  wire it as a `census` mode into fv-opt-loop.sh, (ii) run on transfer
  (large .sr1cs, do off-peak), (iii) triage the exact-dup pairs and the
  net-balance x4 same-product rows into playbook candidates.
- **NOT started**: TC-1 and NB-1 read-only blast-radius inventories (same
  template as the T1-d one recorded under the playbook's T1-d section).
- Q1 wakeup armed (detached Statement build pid 28434 still running, ~4h,
  healthy); Q2 queued behind it.
Everything T2/T3/S-1/TC-3 waits for frontier design or Antoine. SnarkPack §8
candidates stay frozen behind S1 + security review (not yours).

### Q4 — VK↔`.sr1cs` derivation pinning — transfer run done, CI wiring BLOCKED on the open finding
`scripts/check-vk-derivation.sh <circuit> [--prove]` exists (note:
groth16.Setup is randomized, so the binding is hash pins + byte-identical
recompiled `.sr1cs` + a prove/verify round trip with the DEPLOYED keys —
not key regeneration). First run on consolidate2x1 found a FINDING, awaiting
human (below). 2026-07-07: ran transfer too — **same finding, same class**
(see below); of the three bindings, source (recompile byte-identical) and
keys (`--prove` round trip, run by hand since the script exits at step 1)
both hold for transfer, only the vk hash pin is stale.

L5 evidence pointer added (text-only): `docs/soundness/reference/
soundness-handoff.md` row `ZK-ASSUME-GNARK-FRONTEND-BACKEND` now cites
`scripts/check-vk-derivation.sh` as the plumbing-half evidence.

**CI wiring NOT done — contradiction found, stopped per hard rules.** This
section's own prior text said "wire it into CI tier 1... once the finding
is resolved," but consolidate2x1's vk-pin finding is still open (awaiting
human, unresolved). `check-vk-derivation.sh consolidate2x1` (no `--prove`)
currently exits RED at step 1 (verified 2026-07-07). Wiring it into CI now
as a new job would land a gate that is red on every PR from its first
commit, for a known-stale-stamp reason rather than a regression — that's a
design call (ship the new job already-red, or wait for the stamp refresh?)
not a mechanical task, so it was left undone pending Antoine's call. Once
the consolidate2x1 stamp refresh lands (PR97 policy), add a
`vk-derivation` job to `.github/workflows/soundness-formal.yml` (sibling to
`seam-and-pin`: Go-only, `lfs: true`, `bash scripts/check-vk-derivation.sh
consolidate2x1`, no `--prove` in CI — that leg needs the witness fixture
and is exercised by hand per the playbook). Transfer joins the CI job only
after its own stamp refresh; the TODO comment there should cite the PR97
transfer stamp-refresh policy.

## Awaiting human (Antoine)

- **FINDING (2026-07-07, check-vk-derivation first run): stale VK pins for
  consolidate2x1.** Committed `verifying_key.bin` (LFS oid `dece3b17…`) does
  NOT match the vk hash pinned by `circuit_metadata.json` and by
  `consolidate2x1-whole-circuit-lean-artifact.txt` (both pin `35620e95…`,
  an earlier setup run); the pk pin matches. The deployed pk/vk pair itself
  is sound: prove+verify against the recompiled circuit passes (run
  2026-07-07). So keys↔circuit binding holds; the metadata/Lean-stamp vk
  pins are stale bookkeeping from PR97. Fix is a stamp refresh (regenerate
  metadata + restamp the Lean artifact via the playbook flow) — same class
  as the pending PR97 transfer stamp refresh; not hand-edited per rules.

- **FINDING (2026-07-07, check-vk-derivation on transfer): stale VK pins for
  transfer, same class as consolidate2x1 above.** Committed
  `verifying_key.bin` (sha256 `6aaff992d5cdae24b5438b84a0343e4770e44bdccd7395f8364ffb738d9b2804`)
  does NOT match the vk hash pinned by `circuit_metadata.json` and by
  `transfer-whole-circuit-lean-artifact.txt` (both pin
  `70418046b5e926d4a02ef74397948e8197636d0997e0b55fe3c52b3aec12198f`); the pk
  pin matches (`834a5ff9…`). Source binding holds (recompiled `.sr1cs`
  byte-identical to `tools/gnark/artifacts/transfer/transfer.sr1cs`). Keys
  binding holds too: `gnarkctl replay --mode prove` with the deployed
  proving/verifying keys against the recompiled circuit and
  `transfer_witness_v1.bin` succeeds (prover done, verifier done, exit 0,
  run 2026-07-07). Fix is the same PR97 transfer stamp refresh already
  tracked; rides with the consolidate2x1 refresh, not hand-edited per rules.

- **H4 memo review**: accept (or reject)
  `docs/soundness/reference/poseidon-parameter-provenance.md` as the
  discharge evidence for `CC-ASSUME-POSEIDON-PARAM-PROVENANCE`. The memo is
  draft; the ledger row stays `assumed` until you accept. Fork-delta check
  already done inside it (mizufinance/poseidon377 is packaging-only vs
  upstream: arkworks 0.4→0.5 bumps, crypto sources byte-identical).
- Confirm `MODEL-ASSUME-CONSOLIDATE-COMPLIANCE-EXEMPT` (consolidate2x1's
  absent compliance surface: intended design or oversight?).
- Playbook T2/T3, S1 removal path, gate-semantics changes.
- Plan §8: turnstile feasibility (G2), privacy-axis scoping decision,
  verifier FV program (§8a) sequencing/approval.

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

- 2026-07-07: Q3 evidence gaps closed (repeated-nullifier handler test → R2.2;
  `ZK-ASSUME-SPEND-AUTH-RDSA` ledger row + mirror → R3.2).
- 2026-07-07: `scripts/fv-opt-loop.sh` orchestrator landed (diff containment +
  gate battery + measurement record); playbook gained leeway map (§2b),
  SnarkPack boundary (§3), results ledger (§5).
- 2026-07-06: Tasks 13–17 (assurance-case citations, SnarkPack S1 row,
  fidelity rows, CI workflow, release checklist); Tasks 11/12 Picus input
  fingerprints + wiring cert; Alloy H2 transfer instantiation; T1-b VOID /
  T1-c no-dead-output verdicts.
- 2026-07-06: seg52 keystone root cause fixed by frontier (−640 hand-authored
  wire shift; lesson = hard rule 8).

## Blocked

(none)
