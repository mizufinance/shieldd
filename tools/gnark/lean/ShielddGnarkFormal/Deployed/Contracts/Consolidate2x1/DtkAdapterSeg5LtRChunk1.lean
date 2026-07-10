import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5LtRChunk0

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg5RStep1L (rho : Nat -> Seg5.F) (r2339 : Seg5.relationRow2339 rho) :
    rho 2037 = seg5RPe2 rho * (1 - rho 1188) := by
  unfold Seg5.relationRow2339 at r2339
  unfold seg5RPe2
  linear_combination -r2339

theorem seg5RStep1IlMul (rho : Nat -> Seg5.F) (r2340 : Seg5.relationRow2340 rho) :
    rho 2038 = seg5RIl2 rho * (rho 2037) := by
  unfold Seg5.relationRow2340 at r2340
  rw [seg5RStep1IlLc rho] at r2340
  linear_combination -r2340

theorem seg5RStep1Acc (rho : Nat -> Seg5.F) :
    seg5RIl1 rho = seg5RIl2 rho + (rho 2037) - (rho 2038) := by
  have hstate : seg5RIl1 rho = seg5RIl2 rho + seg5RIlAtom139 rho := by rfl
  rw [hstate]
  unfold seg5RIlAtom139
  ring

theorem seg5RStep1Pe (rho : Nat -> Seg5.F) (r2341 : Seg5.relationRow2341 rho) :
    seg5RPe1 rho = seg5RPe2 rho * rho 1188 := by
  unfold Seg5.relationRow2341 at r2341
  unfold seg5RPe1 seg5RPe2
  linear_combination -r2341

theorem seg5RStep1 (rho : Nat -> Seg5.F) (r2339 : Seg5.relationRow2339 rho) (r2340 : Seg5.relationRow2340 rho) (r2341 : Seg5.relationRow2341 rho) :
    seg5RPe1 rho = seg5RPe2 rho * rho 1188 ∧
    seg5RIl1 rho = seg5RIl2 rho + seg5RPe2 rho * (1 - rho 1188) -
      seg5RIl2 rho * (seg5RPe2 rho * (1 - rho 1188)) := by
  constructor
  · exact seg5RStep1Pe rho r2341
  · rw [seg5RStep1Acc rho, seg5RStep1L rho r2339, seg5RStep1IlMul rho r2340, seg5RStep1L rho r2339]

theorem seg5_r_chunk1 (rho : Nat -> Seg5.F) (h : Seg5.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg5.F) (0 : Seg5.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k) 2 (seg5RPeState rho 2) (seg5RIlState rho 2) := by
  have htail := seg5_r_chunk0 rho h k hq4
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, p29,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg5.relationPart29 at p29
  rcases p29 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2339, r2340, r2341, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 1 ≤ n → n < 2 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg5RPeState rho n = seg5RPeState rho (n + 1) * rho (1187 + n) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) + seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) -
          seg5RIlState rho (n + 1) * (seg5RPeState rho (n + 1) * (1 - rho (1187 + n)))
      else
        seg5RPeState rho n = seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 1 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg5RStep1 rho r2339 r2340 r2341
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k)
    (seg5RPeState rho) (seg5RIlState rho) 1 1
    (by intro n hnlo hnhi; have key := seg5IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
