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

### Q3 — post-boundary optimization queue (after Q1+Q2 green)
The 2026-07-07 audit ranked the candidates in
`docs/soundness/optimization-playbook.md` §2/§2t/§2x. Executor-startable, in
order: (1) **T1-d Go change** — Go side DONE (commit 48aede47d on
`optimization-loop-boundaries`), Lean/manifest re-stamp still needed, see
"Q3 (1) T1-d" below; (2) **TC-1** base-select in `DeriveSharedSecretsSpend`;
(3) **T1-h** ToBinary dedup; (4) **F-1** census tooling — PARTIALLY DONE, see
checkpoint below.

### Q3 (1) T1-d — Go side done, Lean/manifest re-stamp PENDING (2026-07-08)
Commit `48aede47d`: hoisted `DiversifiedTransmissionKey` out of
`verifyNoteReshapeSpend`/`verifyNoteReshapeOutput` into `NoteReshapeCircuit.Define`
(computed once from `sharedDivGen`, asserted ≡ `sharedTransmission`), matching
the T1-d inventory exactly — compiled `consolidate2x1` segments 34/36 + 45/47
disappear, segment 16 renumbers to segment 5 (hoisted, same relation, input
still the same wire since spend0's div_gen == sharedDivGen). `go test
./internal/circuits/ -count=1` is green (golden wiring transcript and
consolidate2x1/4x1/8x1 + split1x4/8 constraint-count fixtures updated:
consolidate2x1 57,329 → 44,665, i.e. −12,664 rows, matching the inventoried
−12,658 within rounding of the two 3-row consumer asserts).

`scripts/fv-opt-loop.sh diff --circuit consolidate2x1 --allow-flips 16
--allow-remove 34,36,45,47` fails at the **recompile/re-extract step**, before
containment is even checked:
```
Error: deployed slice IR .sr1cs hash 1019bf22... != actual d47b0646...
```
This is expected and mechanical, not a design problem: the committed
`consolidate2x1-deployed-slice-ir.json` (+ `-coverage-manifest.json`,
`-constraint-coverage-report.json`, `-whole-circuit-lean-artifact.txt`, all
their `.sha256` stamps) still pin the pre-T1-d `.sr1cs`. The T1-a precedent
(commits `f118c7fcc`, `351cb8786`, `0b80c8109`, `04e62349a`) is the template,
but T1-d is the ~20x-larger case flagged in the playbook: the DTK manifest
class currently has 3 instances (segments 16/34/45,
`crates/core/component/shielded-pool/formal/consolidate2x1-coverage-manifest.json`,
class `decaf.diversified_transmission_key@42fa5fd...`) and needs to drop to 1;
its paired consumer-assert class similarly drops from 3 instances (18/36/47)
to 1; and — per hard rule 8 — every segment after 34 renumbers, so
`Bounds.lean`/`Wiring.lean`/`Statement.lean`/any hand-authored `Specs/` wire
indices downstream of seg34 need re-grepping for staleness before any Lean
proof reruns.

**Remaining steps (not started, do NOT rush under weak resource discipline —
follow `tools/gnark/lean/AGENTS.md` one-`lake`-at-a-time rules):**
1. `go run ./cmd/gnarkctl export-r1cs`/`export-manifest` into
   `tools/gnark/artifacts/consolidate2x1/` (refresh the committed
   `.sr1cs`/manifest/metadata the coverage tooling reads).
2. `cargo run -p shieldd-constraint-coverage -- --ir-out ...` to regenerate
   `consolidate2x1-deployed-slice-ir.json` against the new `.sr1cs`.
3. Regenerate `consolidate2x1-coverage-manifest.json`: drop the 34/45 DTK
   instances and 36/47 consumer-assert instances, re-pin segment 16's (now
   renumbered) instance and every instance whose `segment_index` shifted.
4. Regenerate/delete the corresponding Lean contracts under
   `tools/gnark/lean/ShielddGnarkFormal/Deployed/Contracts/Consolidate2x1/`
   (`Seg34`, `Seg36`, `Seg45`, `Seg47` deleted; `Seg16`'s renumbered sibling
   regenerated via `gen_dtk_slice.py`), re-grep `Specs/`/`Bounds.lean`/
   `Wiring.lean`/`Statement.lean` for stale indices, rebuild the capstone
   `consolidate2x1_deployed_sound` — one `lake build` at a time,
   `LEAN_NUM_THREADS=1`, narrowest module, detached + RSS-watched.
5. Re-stamp every `.sha256` sidecar (report, manifest, IR, whole-circuit
   artifact), re-run `scripts/fv-opt-loop.sh diff` then `gates` for
   consolidate2x1.
This is large enough (comparable to the still-in-flight T1-a `NbAdapterSeg52`
keystone build mentioned in "Current state" above) that it should get its own
session rather than be folded into a quick pass — flagging here rather than
attempting a rushed Lean regen.

**2026-07-08 follow-up session — mechanical scope confirmed, materially bigger
than "downstream shift after 34" (STOPPING here, do not rush the Lean layer):**

Ran step 1 (`go run ./cmd/gnarkctl export-r1cs`/`export-manifest`, from
`tools/gnark/`) — this is committed as **uncommitted working-tree changes**
(not yet committed, intentionally, since the Lean layer would be inconsistent
with them): `tools/gnark/artifacts/consolidate2x1/consolidate2x1.sr1cs` and
`consolidate2x1-manifest.json`, 44,665 constraints, matching commit `48aede47d`'s
Go fixtures exactly. Confirmed via
`cargo run -p shieldd-constraint-coverage -- --manifest ... --sr1cs ... --ir-out /tmp/...`
that the extractor's parity gate (round-trip independence check) passes clean
against the new `.sr1cs` — no relation-shape surprises in the new circuit.

**Critical correction to the inventory's assumption:** hoisting DTK into
`Define()` did not just delete segments 34/36/45/47 and shift everything
after — it changed gnark's constraint-emission ORDER, because the
once-per-circuit DTK computation now emits early (near the shared setup),
not interleaved with per-note processing where segment 16 used to sit. Ran
`cargo run -p shieldd-constraint-coverage -- --coverage-manifest-normalize
crates/core/component/shielded-pool/formal/consolidate2x1-coverage-manifest.json
--coverage-manifest-out /tmp/consolidate2x1-coverage-manifest.json` (plus the
same `--manifest`/`--sr1cs`/`--ir-out` flags) — this correctly collapses the
DTK class (3 instances -> 1) and its consumer-assert class (3 -> 1) by
`class_key` (a semantic shape hash, order-independent), confirming the T1-d
soundness argument mechanically. But `normalize_manifest` keys **within** a
class by literal `segment_index`, so for every OTHER class (all still proven,
all still needing every instance's `lean_theorem` non-empty per
`obligations.rs::check_obligations`), only instances whose new index happens
to numerically coincide with an old index keep their theorem name — the rest
got silently blanked to `""` (would fail `TheoremMissing` if committed as-is).
Full old->new mapping for all 17 obligation classes (all `proven`, all
consolidate2x1) confirmed by diffing old vs. normalized manifest instance
lists positionally (sorted ascending both sides — same count on both sides
except the two DTK-family classes which shrink 3->1):

| class (op) | old segs | new segs |
|---|---|---|
| assert.eq@06c76cb... | 8,26,44 | 10,26,42 |
| assert.eq@3c90b3a... | 10,28 | 12,28 |
| assert.eq@745c866... | 21 | 21 |
| assert.eq@798349... | 12,30 | 14,30 |
| assert.eq@944014b... | 39,50 | 37,46 |
| assert.eq@fcdce01... | 60 | 56 |
| decaf.assert_equivalent@33ce4e8... (DTK consumer) | 18,36,47 | 6 (only) |
| decaf.assert_equivalent@cddeba6... | 14,19,20,32,37,38,48,49,53 | 16,19,20,32,35,36,44,45,49 |
| decaf.assert_on_curve@e37c7dd... | 2,3,4,17,35,46 | 2,3,4,18,34,43 |
| decaf.compress_to_field@c7b7ae... | 6,15,24,33,42,54 | 8,17,24,33,40,50 |
| decaf.diversified_transmission_key | 16,34,45 | 5 (only) |
| decaf.net_balance_commitment | 52 | 48 |
| decaf.randomized_verification_key | 13,31 | 15,31 |
| gadget.note_commitment | 7,25,43 | 9,25,41 |
| gadget.nullifier | 9,27 | 11,27 |
| gadget.state_commitment_path | 11,29 | 13,29 |
| statement.hash | 59 | 55 |

This table only covers constraint-bearing (obligation) segments — it is NOT
a complete old->new map of all 60/56 segment slots (marker/glue segments with
0 constraints are excluded and still need mapping from the fresh IR before any
Lean file touches them).

**Why this is bigger than the inventory assumed:** every one of the ~9
per-family Lean generators under `tools/gnark/lean/gen/` (`gen_dtk_slice.py`,
`gen_consolidate_compress_adapters.py`, `gen_rvk_deployed_adapters.py`,
`gen_scp_adapters.py`, `gen_nb_slice.py`, `gen_consolidate_poseidon_adapters.py`,
`gen_note_commitment_semantic.py`, `gen_wiring.py`, `gen_capstone.py`) is keyed
by an explicit `INSTANCES` tuple of segment numbers (plus, for DTK, hand-picked
`internal_base`/`div_x`/`div_y`/`following_seg` wire offsets per instance) —
**every one of these needs its INSTANCES tuple (and DTK's per-instance wire
offsets, which must be re-derived from the fresh IR, not assumed unchanged)
updated to the new numbers**, then rerun, then the stale old-numbered files
(`DtkAdapterSeg34*`/`DtkAdapterSeg45*`, all 617 files each, plus every other
family's stale `Seg{old}`-named output) deleted, then the hand-authored
`Bounds.lean`/`Wiring.lean`/`Statement.lean`/`Specs/*.lean` re-pointed from
`Seg{old}`/`inst{old}_bound` to `Seg{new}`/`inst{new}_bound` per the table
above, then the capstone (`consolidate2x1_deployed_sound`) and Statement layer
rebuilt end to end. This is a full-circuit Lean re-derivation, not a
downstream-shift patch — **do not attempt without a dedicated session**,
one `lake` at a time, `LEAN_NUM_THREADS=1`, per `tools/gnark/lean/AGENTS.md`.

**State left for the next session:** `tools/gnark/artifacts/consolidate2x1/
consolidate2x1.sr1cs` and `consolidate2x1-manifest.json` are modified in the
working tree (verified correct/matching Go, NOT committed — the Lean layer is
not yet consistent with them, so committing now would leave the tree failing
gates with no compensating fix). No Lean files touched. No commit made this
session. Next session: start from the IR at `/tmp` this session left behind
is gone (scratch), but regenerating it is one `cargo run` (~seconds, see
command above) — re-run it first, then use the class table above as the
starting map, extract the full marker-segment mapping from the fresh IR, and
work generator-by-generator.

**2026-07-08 third session (interrupted by session limit) — WIP checkpoint
commit:** stage-1 artifacts regenerated and committed as WIP: `.sr1cs` +
gnark manifest (44,665), deployed-slice IR / coverage-manifest /
constraint-coverage-report JSONs, and an extractor fix that unpins the
hardcoded DTK row offset 13677 in `constraint-coverage/src/{contracts,ltchain,
main}.rs` (DTK segment now located from the IR by op; 6329-row fail-closed
parity gate unchanged). KNOWN RED at this checkpoint, by design: (a) 7
`shieldd-constraint-coverage` tests pin pre-T1-d row offsets against the real
`.sr1cs` (ltchain real-sr1cs recovery x3, rowmap rvk slice, rvkfixed emit x3
— e.g. index 54249 vs len 44,665) — retable them with the new offsets; (b)
the regenerated coverage-manifest has blanked `lean_theorem` names for
renumbered instances (normalize keys by literal segment_index) — the Lean
regen + manifest re-point must restore them; (c) entire Lean layer still
pre-T1-d. fv-opt-loop gates stay RED until the Lean stage lands. Remote is
NOT touched: origin sits at the fully-green Q2 stamp (2ff6e5492); do not push
until gates are green.

**2026-07-08 fourth session — constraint-coverage re-pinned green + committed;
2/9 Lean generators fixed with derived offsets; base contracts regenerated
(pushed to origin, still expected RED until Lean adapter/Bounds work lands):**

Commits `92e4b79a5` (constraint-coverage repin) and `de3a9ad2b` (base contract
regen + 2 generators) are pushed to `optimization-loop-boundaries`. Do NOT
treat the push as a green signal — it isn't; CI is expected to still show
Lean/formal jobs red. Pushed anyway per mission ("commit, push, watch CI"
applies per-stage, not only at final green).

**(a) constraint-coverage row/wire re-pins — DONE, 66/66 green, committed:**
- `ltchain.rs`: DTK `bit_base` 14064 -> **1187** (both occurrences + the
  `BIT_BASE` const). `DTK_OFFSET`(12)/`DTK_ROWS`(6329) needed no change —
  internal DTK row order within its segment is preserved, only its wire
  numbering shifted (hoisting changed absolute wire base, not row order).
- `rvkfixed.rs`: rvk inst0 `emit_tail` base 11813 -> **18145**; `emit_rvk_file`
  base 11068 -> **17400** (seg13 -> seg15, +5816 delta preserved in-segment,
  i.e. same relative offsets from segment start); NB fused-blinding-rung base
  47848 -> **35184** (seg52 -> seg48, offset `+6401` unchanged).
- `rowmap.rs`: rvk_inst0 slice `10816..12628` -> **17148..18960** (seg15 IR
  bounds); bit-wire span `10571..10821` -> **16387..16637** (251 wires,
  located from the fresh IR's segment-15 `wire_roles`, confirmed via actual
  test-failure output, not derivation guesses alone).
- Method used (reusable for the rest): for DTK/RVK, wrote a throwaway
  `#[cfg(test)]` scratch probe that dumps `parse_rows(&sr1cs)` at the
  *predicted* absolute row position, read the actual wire numbers back, then
  back-solved the base constant — cheaper than reconstructing full segment
  structure by hand. Removed the scratch probe before committing.

**(b) base Lean contracts — DONE, mechanically regenerated, committed:**
Ran `cargo run -q -p shieldd-constraint-coverage -- --manifest
tools/gnark/artifacts/consolidate2x1/consolidate2x1-manifest.json --sr1cs
tools/gnark/artifacts/consolidate2x1/consolidate2x1.sr1cs --lean-contract-out
/tmp/t1d-contracts-regen` — this is the automatic per-segment contract
generator (`contracts::generate` in `main.rs`), independent of the hand-picked
`gen/*.py` adapter generators. Produced all 45 correct `Seg{N}.lean` files
(2,3,4,5,6,8,9,10,11,12,13,14,15,16,17,18,19,20,21,24,25,26,27,28,29,30,31,32,
33,34,35,36,37,40,41,42,43,44,45,46,48,49,50,55,56). Copied over the real dir,
deleted the 9 truly-stale old-numbered leftovers (Seg7/38/39/47/52/53/54/59/60).
Directory now has exactly the 45 segments the manifest expects — verified by
count. **This significantly de-risks the remaining work**: the bulk of the
per-segment *structural relation* content is mechanically regeneratable, not
hand-traced. **`coverage-manifest.json`'s `lean_theorem` names were checked
and are NOT blanked** (contradicts item (b) in the prior checkpoint above —
apparently already resolved by an earlier normalize step, or the committed
manifest in this working tree is already the normalized one). Re-verify this
before assuming it at final gate time.

**(c) 2 of 9 `gen/*.py` generators fixed — DONE, committed (not yet re-run to
produce adapter output, and Lean build NOT attempted):**
- `gen_dtk_slice.py`: collapsed `INSTANCES` from 3-tuple to single
  `Instance(5, BASE_INTERNAL=210, 17, 18, 6)`. Added `DTK_GLOBAL_OFFSET = 12`
  const, replacing two `13677` literals. Converted every absolute-wire literal
  anchored on the old base (13087) to the new base (210): e.g.
  `seat_wire(cfg, 13449)` -> `seat_wire(cfg, 572)`, `13789` -> `912`, ladder
  bits `(15289,15290,15291)` -> `(2412,2413,2414)`, plus the matching
  sanity-check/JSON literals (`w13449`/`w13789` -> `w572`/`w912`).
- `gen_rvk_deployed_adapters.py`: `INSTANCES` key `13` -> `15` with every
  field shifted by the same `+5816`: `b0` 10571->16387, `prefix_x1/y1`
  10825/10826->16641/16642, `cont_x150/y150` 11573/11574->17389/17390, `out`
  (12380,12381)->(18196,18197), `i75..i79` 12375-12379->18191-18195.
  Segment-local (unchanged both instances): `vbase=247, split_row0=997,
  split_lc0=739, akX=6, akY=7, lcx=1448, lcy=1447, lc46=1446, r1805=1805,
  tail={pre:1806,x7:1807,y8:1808,d9:1809,outx:1810,outy:1811}`. Inst1 (seg31)
  verified zero shift, left untouched.
- **Neither generator has actually been re-run yet** to produce the real
  `DtkAdapterSeg5*.lean` / `RvkAdapterSeg15*.lean` output files, nor have the
  stale `DtkAdapterSeg16/34/45*` / `RvkAdapterSeg13*` files been deleted.

**(d) NOT started — 7 of 9 generators still hardcode pre-T1-d segments/wires,
untouched this session:**
- `gen_scp_adapters.py`: `INSTANCES = (11, 29)` -> needs `(13, 29)`
  (`gadget.state_commitment_path`, per table above). Likely segment-local
  offsets unchanged (analogous to RVK inst1) but NOT verified.
- `gen_nb_slice.py`: hardcodes segment "52" pervasively (`BLIND_BIT_BASE =
  50538`, `BLIND_BINARY_ROWS=(6149,6399)`, `BLIND_COPY_ROW=6400`,
  `FINAL_ADD_ROWS=range(7955,7961)`, `VALUE_LADDERS`, etc.) — needs full
  rename/re-derivation to segment 48 using the same probe-and-back-solve
  method as DTK/RVK above.
- `gen_consolidate_compress_adapters.py`: 6 segments, old
  `6,15,24,33,42,54` -> new `8,17,24,33,40,50` (only 2 of 6 numerically
  coincide — the other 4 need real wire-offset re-derivation, not just
  renumbering).
- `gen_consolidate_poseidon_adapters.py`: hardcoded wire literals like
  `w54128`/`w54133`/etc. — needs full re-derivation.
- `gen_note_commitment_semantic.py`: hardcoded `public_args =
  ["w14","w15","w16","w19","w22","w572","w912"]` — note `w572`/`w912`
  coincidentally match the new DTK offsets derived above; **verify this is a
  real shared-wire reference and not a coincidental literal collision** before
  reusing.
- `gen_wiring.py`, `gen_capstone.py`: only grepped for `INSTANCES`/`SEGMENTS`
  patterns, not fixed; suspected lower-risk (may be largely IR-driven) but not
  confirmed.

**(e) hand-authored `Bounds.lean`/`Wiring.lean`/`Statement.lean` — inspected,
NOT fixed:**
- `Bounds.lean` (411 lines): `grep -c "Seg[0-9]"` = 157 matches (imports +
  `inst{N}_bound : BoundDeployedSound Seg{N}.contract <relSha> <wireSha> :=
  ...` theorem definitions later in the file). Confirmed stale imports of
  now-deleted segments (Seg38/39/47/53/60 — the last should become Seg56 per
  the rename table) and stale adapter aggregator module names
  (`RvkAdapterSeg13` -> should be `RvkAdapterSeg15`, `DtkAdapterSeg16` +
  `DtkAdapterSeg34` + `DtkAdapterSeg45` -> should collapse to a single
  `DtkAdapterSeg5`, `NbAdapterSeg52` -> `NbAdapterSeg48`, `ScpAdapterSeg11` ->
  `ScpAdapterSeg13`). **This is proof-level, not pure renumbering** — the
  `inst{N}_bound` theorem bodies likely have per-shape proof tactics
  (`assert_on_curve` vs `compress_to_field` vs ladder-relation proofs differ),
  so this cannot be a blind search-replace; lines 61-411 (the actual
  `inst{N}_bound` bodies) were NOT read/inspected this session.
- `Wiring.lean` (40 lines) / `Statement.lean` (46 lines): `grep -c "Seg[0-9]"`
  = 0 for both — they do NOT reference segments via the literal `Seg{N}`
  pattern, so their staleness (if any) must be checked via a different
  pattern (`inst[0-9]+_bound`, `Adapter`, or literal wire indices). **Not yet
  actually inspected in detail** — this is the single most valuable next
  action for the next session (before touching Bounds.lean bodies, confirm
  what Wiring/Statement actually reference).

**Why this session stopped here rather than pushing into Bounds.lean:**
Rewriting `Bounds.lean`'s `inst{N}_bound` proof bodies blind (without
understanding each obligation class's specific proof tactic) risks producing
Lean that either doesn't compile or — worse — compiles but doesn't actually
discharge the intended proof obligation (a silent soundness regression, the
exact failure mode the hard rules exist to prevent). Given the fix-attempt
discipline and the effort/time remaining, this needed a dedicated session with
budget for iterative `lake build` failures, not a rushed pass. No `lake
build` has been attempted at all this session — the Lean layer remains
entirely unverified by the actual proof checker.

**Concrete next steps, in order:** (1) finish `gen_scp_adapters.py` (DONE,
commit `454f8f369`: seg11->seg13, wire delta re-derived directly by diffing
`Seg13.lean`/`Seg29.lean` positionally rather than raw-.sr1cs probing —
clean 2-way split, 74 shared wires +90 / 8,918 internal wires +12884, zero
conflicts, threshold 1653 unchanged) + `gen_nb_slice.py` +
`gen_consolidate_compress_adapters.py` +
`gen_consolidate_poseidon_adapters.py` + `gen_note_commitment_semantic.py`
using the probe-and-back-solve method demonstrated for DTK/RVK (or, per the
SCP result above, prefer diffing two already-regenerated base contracts
positionally when both segments in the pair already have a fresh
`Seg{N}.lean` — cheaper and more reliable than raw-.sr1cs row probing); (2)
re-run all 9 generators, delete every stale old-numbered adapter output
file; (3) read `Bounds.lean` lines 61-411 in full, read
`Wiring.lean`/`Statement.lean` in full, and re-point every stale reference
per the rename table above; (4) `scripts/lint-emitted-lean.py`; (5)
serialized `lake build`s (adapters -> capstone
`consolidate2x1_deployed_sound` -> `Statement`), one at a time,
`LEAN_NUM_THREADS=1`, narrowest module, detached + RSS-monitored per
`tools/gnark/lean/AGENTS.md`; (6) re-stamp every `.sha256` sidecar; (7)
`scripts/fv-opt-loop.sh diff --circuit consolidate2x1 --allow-flips 16
--allow-remove 34,36,45,47` then `gates`; (8) full gate battery +
`scripts/check-soundness-invariants.sh` + prover round-trip; (9) write
`docs/soundness/records/t1d-gate-record.md` + playbook §5 row.

**2026-07-08 session-4 continued — two more CI-surfaced bugs found and
fixed (both Rule 1, both pushed):**
- `lint` job was RED on unrelated formatting drift in
  `crates/crypto/constraint-coverage/src/main.rs`/`ltchain.rs` (a stray
  indentation from the prior WIP session's edit) — fixed with `cargo fmt`,
  commit `f98cc12fb`.
- `test` job was RED: `app_can_sweep_a_collection_of_small_notes` failed
  with `artifact mismatch: compiled circuit has 44665 constraints but
  metadata says 57329; rerun gnarkctl setup` — the committed
  `tools/gnark/artifacts/consolidate2x1/{proving_key.bin,verifying_key.bin,
  verifying_key.json,circuit_metadata.json}` were never refreshed after the
  T1-d `.sr1cs`/manifest regen landed. Ran `go run ./cmd/gnarkctl setup
  --circuit consolidate2x1 --out-dir ...` (44,665 constraints, matches),
  verified no other file pins the old pk/vk sha256 hashes, replaced the 4
  artifacts, commit `2be8e5c99`. `cargo test -p shieldd-sdk-app-tests --test
  app_can_sweep_a_collection_of_small_notes --release` now passes.

**IMPORTANT — expected new red after the pk/vk regen above:**
`vk-derivation (consolidate2x1)` now FAILS in CI (it was passing before,
misleadingly): `scripts/check-vk-derivation.sh consolidate2x1` reports "RED:
Lean artifact stamp .../consolidate2x1-whole-circuit-lean-artifact.txt pins
a DIFFERENT vk hash than metadata" and exits 1. This is NOT a new bug —
before the pk/vk regen, this check was a false-negative pass: the stale vk
happened to still match the stale Lean-artifact stamp, masking the real
divergence between the current circuit and the not-yet-regenerated Lean
layer. Now that the vk correctly reflects the 44,665-row circuit, the gate
correctly flags that the Lean whole-circuit artifact hasn't caught up yet.
This resolves itself as step (6) above ("re-stamp every `.sha256` sidecar")
completes — do not attempt to "fix" it by reverting the vk regen or
weakening the check.

**`gen_nb_slice.py` (seg52->seg48) — wire delta DERIVED, generator NOT yet
edited (2,078 lines, dozens of interdependent hardcoded literals — too large
to safely rush in a single pass):**

Using the same diff-two-contracts method as SCP: retrieved the pre-regen
`Seg52.lean` from git history (`git show de3a9ad2b~1:.../Seg52.lean`, since
the base-contract regen commit deleted it) and diffed it positionally
against the fresh `Seg48.lean` (both exactly 7961 rows, zero arity
mismatches). Clean two-value split, zero conflicts:
- **External/public wires — delta 0 (unchanged):** `{5, 15, 16, 105, 193}`
  = `BLIND_WIRE=5`, value-ladder `amount_wire`s `15/105/193` (in0/in1/out0),
  `ASSET_ID_WIRE=16`. These sit before the DTK hoist point so they don't
  shift, consistent with the DTK/RVK/SCP pattern above.
- **Internal wires — delta -11632 (i.e. `new = old - 11632`):** every wire
  in range `44566..52348` (7,783 wires). Confirmed `OUT_X_WIRE/OUT_Y_WIRE`
  `52347/52348` are in this set (they're the last-referenced wires).
- **Row indices are separately shifted by -12664** (`SEG_START` 47848 ->
  35184, matching the already-committed `rvkfixed.rs` finding above) — do
  NOT confuse the row-delta with the wire-delta, they are different numbers
  for different index spaces. All the file's `*_ROWS`/`*_ROW` constants
  (`BINARY_ROWS`, `COPY_ROW`, `FINAL_ADD_ROWS`, `POSEIDON_PREFIX_ROWS`,
  `ENCODE_BINARY_ROWS`, etc.) are **segment-relative** (0-indexed from
  `SEG_START`), confirmed unaffected by the zero-arity-mismatch diff above
  — only `SEG_START` itself needs the row-index update, none of the
  in-segment row offsets.

**Concrete literal-by-literal edit list for the next session** (apply
`new = old - 11632` to every wire constant, leave every row constant and
every external/public wire alone):
- `SEG_START, ROW_COUNT = 47848, 7961` -> `SEG_START = 35184` (ROW_COUNT
  unchanged)
- `OUT_X_WIRE, OUT_Y_WIRE = 52347, 52348` -> `40715, 40716`
- `VALUE_LADDERS` bit_base/acc_x_start columns: `45168->33536`,
  `46954->35322`, `48746->37114` (bit_base); `45296->33664`,
  `47082->35450`, `48874->37242` (acc_x_start); amount_wire (15/105/193)
  and all row-tuple fields unchanged
- `BLIND_BIT_BASE = 50538` -> `38906`; `BLIND_ACCS` formula bases
  `50792->39160`, `51540->39908` (stride/count unchanged); `BLIND_WIRE=5`
  and `BLIND_BINARY_ROWS`/`BLIND_COPY_ROW` unchanged
- `ENCODE_INPUT_WIRE = 44814` -> `33182`; `ENCODE_BIT_BASE = 44818` ->
  `33186`; `ENCODE_OUTPUT_X = 45162` -> `33530`; `ENCODE_OUTPUT_Y = 45164`
  -> `33532`; `ENCODE_BINARY_ROWS`/`ENCODE_COPY_ROW` unchanged
- Poseidon-adapter output wires `44790`/`44795` (appear 4x in the file,
  lines ~203/321/322/336/439 as of this session) -> `33158`/`33163`
- All `Seg52`/`seg52` string literals (module names, import paths like
  `NbAdapterSeg52Base`, theorem names `seg52_poseidon_eq`, doc references)
  -> `Seg48`/`seg48`; all output-file names (`NbAdapterSeg52*`) -> `Seg48`
- Re-run, then delete the ~617 stale `NbAdapterSeg52*.lean` files per the
  handoff's earlier count estimate.

**Why this session stopped before editing `gen_nb_slice.py` itself:** the
file has ~40+ distinct wire-literal occurrences interleaved with row
literals and string literals across 2,078 lines (compare: DTK needed ~8
edits, RVK ~15, SCP ~5) — a blind bulk find-replace risks silently
corrupting a row-literal that looks like a wire-literal (both are bare
integers) or missing a literal embedded in an f-string/comment. This needs
a careful line-by-line pass with the edit list above as a checklist, not a
regex sweep, and was deprioritized this session in favor of documenting the
now-fully-derived delta so the next session can execute the edit list
directly without any further forensic work.

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

- 2026-07-08: Q2 done — full 24/24 Picus battery `safe` post-T1-a, report +
  sidecar re-stamped. Two real fixes en route: (1) stale `safe` for
  `gadget-scalar-mul-step` (underconstrained at (0,0)) fixed via
  `assertDecafPointOnCurve` on Acc/Cur harness inputs + re-derived
  precondition wires (w19; w20/w33); (2) `gadget-dleq` reshaped to one
  response equation (s·B1 + c·B2 — both equations share the shape; shared
  s/c bits across two individually-deterministic equations add no free
  signal) after finding the true blocker was per-query timeout starvation:
  battery default now `PICUS_TIMEOUT_MS=30000` (leaf `safe` in 75 s).
- 2026-07-08: Q1 done — seg52 class flipped to proven (`inst52_bound`),
  coverage report 49/49 discharged, stamps refreshed, diff containment GREEN
  (57,329 identical to pins), full gate battery + prover round-trip GREEN;
  §5 T1-a row landed (record: `docs/soundness/records/t1a-gate-record.md`).
- 2026-07-07: Q3 F-1 checkpoint closed out — `census` mode confirmed
  byte-identical to standalone `fv-census.py` on consolidate2x1; exact-dup
  and net-balance x4 triage confirmed already recorded in the playbook
  (folded into T1-d / NB-2). Transfer census run remains open (off-peak).
- 2026-07-07: Q3 evidence gaps closed (repeated-nullifier handler test → R2.2;
  `ZK-ASSUME-SPEND-AUTH-RDSA` ledger row + mirror → R3.2).
- 2026-07-07: `scripts/fv-opt-loop.sh` orchestrator landed (diff containment +
  gate battery + measurement record); playbook gained leeway map (§2b),
  SnarkPack boundary (§3), results ledger (§5).

## Blocked

(none)
