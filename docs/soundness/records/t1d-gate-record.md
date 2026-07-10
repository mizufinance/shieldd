### fv-opt-loop record — consolidate2x1 — 2026-07-10T05:34:40Z
- git: b30c5cf9f (optimization-loop-boundaries)
- nb_constraints (committed report): 44665 (was 57329 pre-T1-d, −12,664 / −22.1%)
- deployed obligations: 45/45 discharged, 0 pending
- gates: manifest-pin (1s); constraint-coverage(full-deployed) (49s); soundness-invariants (5s); snarkpack-invariants (2s); snarkpack-filecoin-shape (2s); wiring-transcript+parity-tests (3s); statement-seam (1s);
- lean tier: full-deployed; prover round-trip: NOT RUN
- fv-opt-loop diff (--allow-flips 16 --allow-remove 34,36,45,47): GREEN, no segment flips (compiled constraints identical to committed pins)
- check-vk-derivation.sh consolidate2x1: GREEN (pk/vk hashes match metadata, sr1cs byte-identical on recompile, Lean artifact vk cross-pin matches)
- check-soundness-invariants.sh: GREEN
- lint-emitted-lean.py: NullifierAdapters.lean has pre-existing R2 (2x wide rcases, lines 576/1225) and R5 (128 theorems) findings, confirmed identical to the pre-T1-d tree via `git show` diff — not regressions, tracked as known tech debt. NbAdapterSeg48.lean and Consolidate2x1WiringTranscript.lean are lint-clean.
- coverage-manifest `lean_theorem` names: not blanked — confirmed by the full-deployed coverage gate reporting 45/45 discharged, 0 theorem_missing.

## What T1-d landed

DTK-hoist: `DiversifiedTransmissionKey` is now computed once per `consolidate2x1`
call (bound to `shared`) instead of once per spend/output note, with each
note's transmission key checked equivalent to the shared value. This is the
change tracked as T1-d in `docs/soundness/optimization-playbook.md` §2.

## Builds run (serialized, one `lake` at a time, `LEAN_NUM_THREADS=1`)

1. `ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NullifierAdapters` — after fixing a stray `seg11`→`seg9` extracted-index clobber left over from an earlier blanket textual substitution (commit `531fb310a`).
2. `ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg48` — after fixing a stale `Specs.deployedSpec52` reference in `gen_nb_slice.py` (Specs/Nb.lean now defines `deployedSpec48`); regenerated via the fixed generator (commit `504adfd8d`).
3. `Bounds` root (incremental) — 8127/8127 green.
4. `Capstone` (`consolidate2x1_deployed_sound`) — 8128/8128 green.
5. `Statement` — 8130/8130 green.
6. `ShielddGnarkFormal.Consolidate2x1WiringTranscript` — after regenerating the hand-authored transcript from a fresh `gnarkctl export-wiring-transcript` run to match the DTK hoist (commit `b30c5cf9f`); no generator produces this file.

## Fixes made this pass (beyond the two Lean source bugs above)

- Re-stamped 3 `consolidate2x1-coverage-*.sha256` bookkeeping stamps after a prior WIP commit (`3b614893d`) regenerated coverage-report/manifest/IR content but left the stamps stale (commit `a1583f2d0`).
- Re-stamped 7 stale fields in `consolidate2x1-whole-circuit-lean-artifact.txt` (whole_circuit_sr1cs_sha256, manifest_sha256, coverage_report_sha256, nb_constraints, verifying_key_sha256_hex, go_define_source_sha256, constraint_coverage_main_source_sha256) — this artifact had never been touched by any T1-d commit and was still pinning pre-hoist values (commit `ff42a691a`).
- Found and fixed a genuine (not bookkeeping) divergence: the wiring-transcript-fidelity gate caught that Go's Define path had been hoisted (single shared DTK call) while the hand-authored Lean transcript still modeled the old per-note DTK calls — a real line-for-line reorder/removal, not a hash staleness. Regenerated the transcript from Go (ground truth) and re-stamped the 3 transcript-derived artifact fields (commit `b30c5cf9f`).

## Local CI equivalents

- `cargo fmt --check` (constraint-coverage crate touched this pass): clean.
- `cargo test -p shieldd-constraint-coverage`: 66/66 passing.
- `go test ./internal/circuits/ -count=1`: passing (also exercised inside the `wiring-transcript+parity-tests` gate above).
