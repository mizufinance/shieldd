import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5LtRChunk153

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg5RStep154L (rho : Nat -> Seg5.F) (r2016 : Seg5.relationRow2016 rho) :
    rho 1714 = seg5RPe155 rho * (1 - rho 1341) := by
  unfold Seg5.relationRow2016 at r2016
  unfold seg5RPe155
  linear_combination -r2016

theorem seg5RStep154IlMul (rho : Nat -> Seg5.F) (r2017 : Seg5.relationRow2017 rho) :
    rho 1715 = seg5RIl155 rho * (rho 1714) := by
  unfold Seg5.relationRow2017 at r2017
  rw [seg5RStep154IlLc rho] at r2017
  linear_combination -r2017

theorem seg5RStep154Acc (rho : Nat -> Seg5.F) :
    seg5RIl154 rho = seg5RIl155 rho + (rho 1714) - (rho 1715) := by
  have hstate : seg5RIl154 rho = seg5RIl155 rho + seg5RIlAtom48 rho := by rfl
  rw [hstate]
  unfold seg5RIlAtom48
  ring

theorem seg5RStep154Pe (rho : Nat -> Seg5.F) (r2018 : Seg5.relationRow2018 rho) :
    seg5RPe154 rho = seg5RPe155 rho * rho 1341 := by
  unfold Seg5.relationRow2018 at r2018
  unfold seg5RPe154 seg5RPe155
  linear_combination -r2018

theorem seg5RStep154 (rho : Nat -> Seg5.F) (r2016 : Seg5.relationRow2016 rho) (r2017 : Seg5.relationRow2017 rho) (r2018 : Seg5.relationRow2018 rho) :
    seg5RPe154 rho = seg5RPe155 rho * rho 1341 ∧
    seg5RIl154 rho = seg5RIl155 rho + seg5RPe155 rho * (1 - rho 1341) -
      seg5RIl155 rho * (seg5RPe155 rho * (1 - rho 1341)) := by
  constructor
  · exact seg5RStep154Pe rho r2018
  · rw [seg5RStep154Acc rho, seg5RStep154L rho r2016, seg5RStep154IlMul rho r2017, seg5RStep154L rho r2016]

theorem seg5_r_chunk154 (rho : Nat -> Seg5.F) (h : Seg5.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg5.F) (0 : Seg5.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k) 155 (seg5RPeState rho 155) (seg5RIlState rho 155) := by
  have htail := seg5_r_chunk153 rho h k hq4
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p25, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg5.relationPart25 at p25
  rcases p25 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2016, r2017, r2018, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 154 ≤ n → n < 155 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg5RPeState rho n = seg5RPeState rho (n + 1) * rho (1187 + n) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) + seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) -
          seg5RIlState rho (n + 1) * (seg5RPeState rho (n + 1) * (1 - rho (1187 + n)))
      else
        seg5RPeState rho n = seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 154 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg5RStep154 rho r2016 r2017 r2018
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k)
    (seg5RPeState rho) (seg5RIlState rho) 154 1
    (by intro n hnlo hnhi; have key := seg5IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
