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

## Addendum (2026-07-10) — CI-caught fallout: stale groth16 setups + transfer stamp refresh

CI on `c9edba2f8` flagged two follow-ups from the DTK hoist, both landed in this addendum pass:

### 1. Constraint-count drift audit across all deployed circuits

`NoteReshapeCircuit` (shared spend/output gadget code) backs every `consolidateN`
and `splitN` family member, not just `consolidate2x1` — the DTK hoist changed
constraint counts for all of them, but only consolidate2x1's groth16 setup had
been refreshed. `pcli`'s split1x4 flow died with `artifact mismatch: compiled
circuit has 39484 constraints but metadata says 64812` because `split1x4`'s
committed `proving_key.bin`/`circuit_metadata.json` still pinned the pre-hoist
count.

Audited all 7 deployed circuit families by running `go run ./cmd/gnarkctl
setup --circuit <c> --out-dir <tmp>` for each and diffing `nb_constraints`
against the committed `circuit_metadata.json`:

| Circuit | Committed (pre-hoist) | Fresh (post-hoist) | Delta | Status |
| --- | --- | --- | --- | --- |
| transfer | 251,973 | 251,973 | 0 | unaffected (does not route spend/output through NoteReshape's shared-DTK path the same way) |
| consolidate2x1 | 44,665 | 44,665 | 0 | already fixed (this record, main section above) |
| consolidate4x1 | 101,391 | 76,063 | −25,328 (−25.0%) | **stale, re-set-up** |
| consolidate8x1 | 189,075 | 138,419 | −50,656 (−26.8%) | **stale, re-set-up** |
| split1x4 | 64,812 | 39,484 | −25,328 (−39.1%) | **stale, re-set-up** |
| split1x8 | 103,284 | 52,628 | −50,656 (−49.0%) | **stale, re-set-up** |
| shielded_ics20_withdrawal | 90,718 | 90,718 | 0 | unaffected |

Ran full `groth16.Setup` (via `gnarkctl setup`) for the 4 stale circuits and
replaced their committed `proving_key.bin`, `verifying_key.bin`,
`verifying_key.json`, `<circuit>.sr1cs`, and `circuit_metadata.json` with the
freshly derived, internally-consistent set (all 5 files from the same setup
run, so pk/vk/sr1cs/metadata all agree with each other and with the recompiled
circuit). `crates/crypto/proof-params/src/gen/gnark/{consolidate,split}_registry.rs`
`include_bytes!` directly from these artifact paths, so no separate embed step
was needed.

Verified: `check-vk-derivation.sh` GREEN for all 4 (pk/vk/sr1cs mutually
consistent, sr1cs byte-identical on recompile); `go test ./internal/circuits/
-count=1` green; `cargo test -p shieldd-sdk-shielded-pool --features
bundled-proving-keys` 69/69 green, including
`gnark::artifacts::statement_parity_tests::committed_family_artifacts_carry_verified_hashes`
(the Rust-side parity gate that would have caught this same drift for the
other 3 circuits had it been run standalone against the committed artifacts).

### 2. transfer whole-circuit Lean artifact stamp refresh (PR97 pending item)

Per PR97 policy (stamp refresh only, no contract fan-out): diffed every one of
the ~40 hash fields in `transfer-whole-circuit-lean-artifact.txt` against a
freshly computed hash of each field's source file. Exactly 2 fields were
stale, both pure Go/Rust source-hash bookkeeping from earlier commits that
never touched this artifact:

- `scalar_mul_gadgets_go_source_sha256` — stale since Q2's `gadget-scalar-mul-step`
  Picus fix (`2ff6e5492`); transfer's own Lean model/wiring-transcript fields
  were unaffected (confirmed not-stale), so this is bookkeeping only, not a
  contract change.
- `constraint_coverage_main_source_sha256` — stale since the T1-d rustfmt fix
  (`f98cc12fb`), same source file already re-stamped for consolidate2x1's
  artifact in this record's main section.

No other field drifted — in particular `whole_circuit_sr1cs_sha256`,
`manifest_sha256`, `nb_constraints`, `verifying_key_sha256_hex`,
`wiring_transcript_source_sha256`, and all bridge/extracted Lean source
hashes matched committed values exactly, confirming **no contract drift**:
transfer's compiled circuit, Lean model, and wiring transcript are unchanged
by the DTK hoist. Re-stamped the 2 stale fields and the artifact's `.sha256`
sidecar. Verified `check-lean-circuit-fv.sh stamps --circuit transfer` and
`--circuit consolidate2x1` both GREEN, and `check-vk-derivation.sh transfer`
GREEN.

### Local CI equivalents (addendum)

- `go test ./internal/circuits/ -count=1`: green.
- `cargo fmt --check -p shieldd-sdk-shielded-pool -p shieldd-sdk-proof-params`: clean.
- `cargo test -p shieldd-sdk-shielded-pool --features bundled-proving-keys`: 69 passed, 0 failed, 3 ignored.
