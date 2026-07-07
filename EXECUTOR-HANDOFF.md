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
  (quad-path 0.98, poseidon 1.00, compress 0.18 per CF-1). (i) DONE:
  `census` mode wired into `fv-opt-loop.sh` (`census --circuit <c>`,
  commit 76a33ae2f), confirmed byte-identical to standalone `fv-census.py`
  on consolidate2x1. (iii) DONE: the exact-dup pairs and net-balance x4
  same-product rows are triaged in the playbook's T1-h "Consolidate2x1
  triage" paragraph (folded into T1-d / NB-2, not separate candidates).
  REMAINING: (ii) run census on transfer (large .sr1cs, do off-peak).
- **DONE**: TC-1 and NB-1/NB-2 read-only blast-radius inventories landed in
  the playbook (commit d8a2c6e9a), matching the T1-d template.
- Q1 wakeup armed (detached Statement build pid 28434 still running, ~4h,
  healthy); Q2 queued behind it.
Everything T2/T3/S-1/TC-3 waits for frontier design or Antoine. SnarkPack §8
candidates stay frozen behind S1 + security review (not yours).

### Q4 — VK↔`.sr1cs` derivation pinning — DONE (findings were false positives)
`scripts/check-vk-derivation.sh <circuit> [--prove]` exists (note:
groth16.Setup is randomized, so the binding is hash pins + byte-identical
recompiled `.sr1cs` + a prove/verify round trip with the DEPLOYED keys —
not key regeneration). The 2026-07-07 "stale VK pin" findings were a bug in
the script itself: `gnarkctl setup` pins `verifying_key_sha256_hex` over
`verifying_key.json` (main.go, `SHA256HexFile(vkJSONPath)`), while the pk
pin is over `proving_key.bin`; the script compared the vk pin to the `.bin`
bytes. Fixed: step 1 now checks the pin against `verifying_key.json` and a
new `gnarkctl check-vk-json` subcommand binds the JSON encoding to the
`.bin` bytes the verifier loads. Both circuits GREEN with no artifact edits
— no stamp refresh was ever needed.

L5 evidence pointer added (text-only): `docs/soundness/reference/
soundness-handoff.md` row `ZK-ASSUME-GNARK-FRONTEND-BACKEND` now cites
`scripts/check-vk-derivation.sh` as the plumbing-half evidence.

**CI wiring done (2026-07-07):** `vk-derivation` job in
`.github/workflows/soundness-formal.yml` (sibling to `seam-and-pin`,
Go-only, `lfs: true`, matrix over consolidate2x1 + transfer, no `--prove`
in CI — that leg needs the witness fixture and is exercised by hand per
the playbook). Both legs verified green locally before wiring.

## Awaiting human (Antoine)

- **RESOLVED (2026-07-07): the two "stale VK pin" findings (consolidate2x1,
  transfer) were false positives.** The vk metadata pin is over
  `verifying_key.json` by construction (`gnarkctl setup`); the first version
  of `check-vk-derivation.sh` compared it to `verifying_key.bin`. Script
  fixed (json pin + `gnarkctl check-vk-json` json↔bin binding); both
  circuits GREEN, no artifacts touched. The "PR97 transfer stamp refresh"
  is therefore moot — no stamps were ever stale.

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

- 2026-07-07: Q3 F-1 checkpoint closed out — `census` mode confirmed
  byte-identical to standalone `fv-census.py` on consolidate2x1; exact-dup
  and net-balance x4 triage confirmed already recorded in the playbook
  (folded into T1-d / NB-2). Transfer census run remains open (off-peak).
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
