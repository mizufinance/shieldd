import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34LtRChunk153

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg34RStep154L (rho : Nat -> Seg34.F) (r2016 : Seg34.relationRow2016 rho) :
    rho 33291 = seg34RPe155 rho * (1 - rho 32918) := by
  unfold Seg34.relationRow2016 at r2016
  unfold seg34RPe155
  linear_combination -r2016

theorem seg34RStep154IlMul (rho : Nat -> Seg34.F) (r2017 : Seg34.relationRow2017 rho) :
    rho 33292 = seg34RIl155 rho * (rho 33291) := by
  unfold Seg34.relationRow2017 at r2017
  rw [seg34RStep154IlLc rho] at r2017
  linear_combination -r2017

theorem seg34RStep154Acc (rho : Nat -> Seg34.F) :
    seg34RIl154 rho = seg34RIl155 rho + (rho 33291) - (rho 33292) := by
  have hstate : seg34RIl154 rho = seg34RIl155 rho + seg34RIlAtom48 rho := by rfl
  rw [hstate]
  unfold seg34RIlAtom48
  ring

theorem seg34RStep154Pe (rho : Nat -> Seg34.F) (r2018 : Seg34.relationRow2018 rho) :
    seg34RPe154 rho = seg34RPe155 rho * rho 32918 := by
  unfold Seg34.relationRow2018 at r2018
  unfold seg34RPe154 seg34RPe155
  linear_combination -r2018

theorem seg34RStep154 (rho : Nat -> Seg34.F) (r2016 : Seg34.relationRow2016 rho) (r2017 : Seg34.relationRow2017 rho) (r2018 : Seg34.relationRow2018 rho) :
    seg34RPe154 rho = seg34RPe155 rho * rho 32918 ∧
    seg34RIl154 rho = seg34RIl155 rho + seg34RPe155 rho * (1 - rho 32918) -
      seg34RIl155 rho * (seg34RPe155 rho * (1 - rho 32918)) := by
  constructor
  · exact seg34RStep154Pe rho r2018
  · rw [seg34RStep154Acc rho, seg34RStep154L rho r2016, seg34RStep154IlMul rho r2017, seg34RStep154L rho r2016]

theorem seg34_r_chunk154 (rho : Nat -> Seg34.F) (h : Seg34.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg34.F) (0 : Seg34.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k) 155 (seg34RPeState rho 155) (seg34RIlState rho 155) := by
  have htail := seg34_r_chunk153 rho h k hq4
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart25 at p25
  rcases p25 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2016, r2017, r2018, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 154 ≤ n → n < 155 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg34RPeState rho n = seg34RPeState rho (n + 1) * rho (32764 + n) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) + seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) -
          seg34RIlState rho (n + 1) * (seg34RPeState rho (n + 1) * (1 - rho (32764 + n)))
      else
        seg34RPeState rho n = seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 154 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg34RStep154 rho r2016 r2017 r2018
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k)
    (seg34RPeState rho) (seg34RIlState rho) 154 1
    (by intro n hnlo hnhi; have key := seg34IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
