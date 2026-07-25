### fv-opt-loop record — consolidate2x1 (Wave 2 batch) — 2026-07-12

- git: Lean re-stamp landed on top of `509c12d98` (optimization-loop-boundaries)
- nb_constraints (committed report): 36,553 (was 44,665 pre-Wave-2, −8,112 / −18.2%)
- deployed obligations: 43/43 discharged, 0 pending (was 45/45 on the old
  45-segment layout; 43 obligation-bearing segments post-batch)
- `consolidate2x1_circuit_sound` axioms: `[propext, Classical.choice, Quot.sound]` only
- `transfer_circuit_sound` axioms: `[propext, Classical.choice, Quot.sound]` only
  (rebuilt after the T1-h stamp refresh; wiring transcript hash unchanged)
- fv-opt-loop obligation diff (alignment-aware, `scripts/fv-opt-loop-diff.py`):
  37 FLIPPED (segment renumbering + relation-hash changes from the batch),
  2 REMOVED (deleted per-note divGen compress seg8; old NB value-ladder), 0 ADDED
  beyond the new seg5 shared compress / seg46 conservation relations — all
  accounted for by the §5b mapping table.
- check-vk-derivation.sh consolidate2x1: GREEN (recompiled sr1cs byte-identical,
  pk/vk/metadata consistent, Lean artifact vk cross-pin matches)
- check-vk-derivation.sh transfer: GREEN after fresh setup + manifest re-export
  (T1-h changed transfer's compiled circuit: 251,973 → 251,469)
- check-lean-circuit-fv.sh (circuits=consolidate2x1,transfer): FULL GREEN,
  including the `lake env lean --stdin` wiring-transcript #eval cross-checks
- check-constraint-coverage.sh: GREEN both circuits (generated-contract
  subset fidelity included)
- check-soundness-invariants.sh: GREEN
- check-structured-lc-lint / lint-emitted-lean.py: GREEN (no new findings;
  NullifierAdapters pre-existing R2/R5 debt unchanged)

## What Wave 2 landed (batch frozen in playbook §5b)

- **T1-f** — compress `sharedDivGen` once in `Define`; per-note compress (and
  its internal on-curve) deleted, notes bound via cross-ratio equivalence to
  the shared compressed fq. −2,092 rows.
- **T1-h** — thread the 253-bit ivk decomposition into the DTK ladder
  (`ScalarMulLEBits`, bits[0:251]); no internal re-`ToBinary`. −252 rows in
  consolidate2x1, −504 in transfer, −756 in ics20.
- **T1-h fallout fix** — DTK LT-ladder re-seat (bit_base 1187→1890, commit
  `509c12d98`) plus a generator fix: `gen_dtk_slice.py` hardcoded Q4-guard
  is-zero hint wires (2412,2413,2414) that shifted to (3115,3116,3117) in the
  new layout — verified against Seg6.lean rows 2715–2718 before patching.
- **NB-1** — conservation short-circuit: `Σin = Σout` as one linear row,
  explicit `ToBinary(amount,128)` per amount (ZK-ASSUME-AMOUNT-RANGE stays
  load-bearing), commitment collapses to `blinding·G_b`. New segment 46
  (`decaf.conservation_net_balance_commitment`, 2,193 rows) with new
  `ConservationNetBalanceCommitmentBridge`. −5,768 rows.
- **Phase 0** (prior commit `a157b18b8`): consolidate4x1 + split1x4 families
  deleted outright; survivors keep canonical IDs.

New layout (obligation-bearing): on_curve 2,3,4,18,33,41; compress 5,17,32,48;
DTK 6; note 9,24,39; nullifier 11,26; scp 13,28; rvk 15,30; NB conservation 46;
statement.hash 53.

## Builds run (serialized, one `lake`, `LEAN_NUM_THREADS=1`, nohup+log)

Campaign: `NbAdapterSeg46 → CompressAdapters → Bounds → Capstone → Statement →
Consolidate2x1WiringTranscript → Consolidate2x1` — final run GREEN end to end
("CAMPAIGN OK"). Failures fixed along the way (each caught by the campaign,
root-caused, single-file or generator fix, relaunch):

1. `NullifierAdapters.lean:1306` — stale `Specs.deployedSpec27` after
   renumbering; Seg26 seats `deployedSpec26`. Followed by a full sweep for
   dangling `deployedSpecNN` references (none remained).
2. `Specs/Dtk.lean` — `dtkOutX5/Y5` → `dtkOutX6/Y6` (DTK moved seg5→seg6).
3. `Specs/Scp.lean` — stale spec expected SCP position bits at the old base
   wire; adapters prove 7448 (seg13) / 19629 (seg28). Regenerated snippet
   (`gen/scp_specs_snippet.txt`) spliced in; ground truth confirmed from
   Seg13.lean booleanity/recomposition rows.
4. `DtkAdapterSeg6LtQ4Chunk0.lean` — four `ring failed`: generator's
   hardcoded Q4-guard wires (see T1-h fallout above); fixed in
   `gen_dtk_slice.py`, regenerated (single file changed).

## Artifact/stamp closure (Phase 4)

- Fresh `gnarkctl setup` for all surviving families (consolidate2x1,
  consolidate8x1, split1x8, transfer); setup confirmed deterministic
  (post-setup hashes match the coverage-report pins the Lean layer was
  stamped against). transfer-manifest.json re-exported (setup does not
  write it; the stale one caused an ir.rs slice-bounds panic).
- transfer coverage manifest refreshed via `--coverage-manifest-normalize`
  (machine pins re-derived from fresh IR, curated triage verdicts preserved:
  118 pending, 16 functional-assumption obligations; stamped instance segment
  numbers unchanged: 10, 72, 94, 104–112, 125–128).
- 16 committed Transfer Seg contracts regenerated (pure wire-index shifts,
  e.g. `rho 77832→77330` in Seg72). **PR97 STOP-condition evaluated: not
  contract drift** — transfer's Go wiring transcript hash is byte-identical
  pre/post Wave 2 (`298359fa…8028`), bridge theorems are abstract (no Lean
  import of the contracts), and the compose model needed no changes.
- Both whole-circuit Lean artifact stamps fully refreshed (consolidate2x1:
  10 lines; transfer: 12 lines) + `.sha256` sidecars.

## Local CI equivalents

- `cargo fmt --check`: clean.
- `cargo test -p shieldd-constraint-coverage`: 66/66.
- `cargo test -p shieldd-sdk-shielded-pool --features bundled-proving-keys`:
  69 passed, 0 failed, 3 ignored.
- `go test ./internal/circuits/`: ok (90s).
- `scripts/circuit-constraint-check.sh`: GREEN after fixing a local tooling
  regression — the `~/.local/opt/picus/solvers/cvc5` wrapper resolved `cvc5`
  via PATH lookup and fork-recursed onto itself, driving every Picus leaf to
  "Cannot determine" (all gadget sr1cs were byte-identical to their committed
  "safe" pins, so this was solver-environment, not circuit drift). Wrapper now
  execs the real binary by absolute path; all gadget leaves discharge again
  (iszero in 2.6 s). Report refreshed: only delta is the dropped split1x4
  family line (the report is gadget-scoped).
- `scripts/run-whole-circuit-picus.sh` (consolidate2x1 + transfer,
  `PICUS_WHOLE_BUDGET_SECONDS=180` matching the prior report's convention;
  the 6 h default got the racket process OOM-SIGKILLed on the 70 MB sr1cs):
  report refreshed, both families `undischarged-timeout` as expected
  (nightly-only, non-gating); sr1cs hashes match the coverage-report pins.
- Prover round-trip bench: NOT RUN this pass.

## Addendum (2026-07-12) — PR #103 CI-caught fallout (commit db05c2b74)

Two failures on the first CI run, both fixed in one follow-up commit; all FV
gates (lean-circuit-fv, vk-derivation, formal, alloy, seam-and-pin) were green
on the first run. A third surfaced on the second run (CI nextest cancels at
first failure, so it was masked in round 1) — see item 3.

1. **Stale ics20 groth16 setup** — T1-h changed `shielded_ics20_withdrawal`
   (90,718 → 89,962) but only the four shielded-pool families were re-set-up;
   the app-tests `ics20_transfer_no_timeouts` died on `artifact mismatch:
   compiled circuit has 89962 constraints but metadata says 90718`. Same drift
   class as the T1-d addendum — the drift-audit lesson there ("shared gadget
   code backs every family, audit ALL deployed circuits after a shared-path
   change") applies verbatim and should be a pre-push checklist item for every
   wave. Fixed with a fresh `gnarkctl setup`; `check-vk-derivation.sh
   shielded_ics20_withdrawal` GREEN, sdk parity tests 69/69.
2. **Orbis flow still split 4 ways** — `orbis-integration` issued a 4-output
   `tx split`; split1x4 was deleted in Phase 0 and family selection now
   requires an exact match ("split output count 4 must exactly match an active
   split family"). Padded the flow to the surviving 1x8 family, keeping the
   same 400/300/600 notes the downstream transfers consume.
3. **Stale ShielddByte trace baseline** —
   `shieldd_byte_trace_matches_committed_baseline`
   (proof-aggregation-reference) locks the transcript trace to a committed
   fixture whose vector inventory enumerates `parity_families()`; deleting
   split1x4 renumbered the surviving split family's rows to SplitFamilyId(2).
   Diff audit before regenerating: 71 changed lines, ALL in Split vectors,
   Transfer/Consolidate/ICS20 rows byte-identical — a family-inventory change,
   not a transcript-protocol change, so the baseline was regenerated at the
   same `AGGREGATE_PROTOCOL_VERSION=1` (sanctioned path via the ignored
   `regenerate_shieldd_byte_trace_baseline` test). The sibling
   `aggregate_byte_baseline` fixture in proof-aggregation did not drift.
   Both crates green locally (17/17 + 61/61).
