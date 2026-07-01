import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45LtRChunk153

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg45RStep154L (rho : Nat -> Seg45.F) (r2016 : Seg45.relationRow2016 rho) :
    rho 40247 = seg45RPe155 rho * (1 - rho 39874) := by
  unfold Seg45.relationRow2016 at r2016
  unfold seg45RPe155
  linear_combination -r2016

theorem seg45RStep154IlMul (rho : Nat -> Seg45.F) (r2017 : Seg45.relationRow2017 rho) :
    rho 40248 = seg45RIl155 rho * (rho 40247) := by
  unfold Seg45.relationRow2017 at r2017
  rw [seg45RStep154IlLc rho] at r2017
  linear_combination -r2017

theorem seg45RStep154Acc (rho : Nat -> Seg45.F) :
    seg45RIl154 rho = seg45RIl155 rho + (rho 40247) - (rho 40248) := by
  have hstate : seg45RIl154 rho = seg45RIl155 rho + seg45RIlAtom48 rho := by rfl
  rw [hstate]
  unfold seg45RIlAtom48
  ring

theorem seg45RStep154Pe (rho : Nat -> Seg45.F) (r2018 : Seg45.relationRow2018 rho) :
    seg45RPe154 rho = seg45RPe155 rho * rho 39874 := by
  unfold Seg45.relationRow2018 at r2018
  unfold seg45RPe154 seg45RPe155
  linear_combination -r2018

theorem seg45RStep154 (rho : Nat -> Seg45.F) (r2016 : Seg45.relationRow2016 rho) (r2017 : Seg45.relationRow2017 rho) (r2018 : Seg45.relationRow2018 rho) :
    seg45RPe154 rho = seg45RPe155 rho * rho 39874 ∧
    seg45RIl154 rho = seg45RIl155 rho + seg45RPe155 rho * (1 - rho 39874) -
      seg45RIl155 rho * (seg45RPe155 rho * (1 - rho 39874)) := by
  constructor
  · exact seg45RStep154Pe rho r2018
  · rw [seg45RStep154Acc rho, seg45RStep154L rho r2016, seg45RStep154IlMul rho r2017, seg45RStep154L rho r2016]

theorem seg45_r_chunk154 (rho : Nat -> Seg45.F) (h : Seg45.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg45.F) (0 : Seg45.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k) 155 (seg45RPeState rho 155) (seg45RIlState rho 155) := by
  have htail := seg45_r_chunk153 rho h k hq4
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart25 at p25
  rcases p25 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2016, r2017, r2018, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 154 ≤ n → n < 155 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg45RPeState rho n = seg45RPeState rho (n + 1) * rho (39720 + n) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) + seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) -
          seg45RIlState rho (n + 1) * (seg45RPeState rho (n + 1) * (1 - rho (39720 + n)))
      else
        seg45RPeState rho n = seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 154 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg45RStep154 rho r2016 r2017 r2018
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k)
    (seg45RPeState rho) (seg45RIlState rho) 154 1
    (by intro n hnlo hnhi; have key := seg45IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
