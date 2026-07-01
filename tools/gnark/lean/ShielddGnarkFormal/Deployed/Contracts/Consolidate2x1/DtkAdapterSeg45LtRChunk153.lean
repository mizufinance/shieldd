import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45LtRChunk152

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg45RStep153L (rho : Nat -> Seg45.F) (r2019 : Seg45.relationRow2019 rho) :
    rho 40250 = seg45RPe154 rho * (1 - rho 39873) := by
  unfold Seg45.relationRow2019 at r2019
  unfold seg45RPe154
  linear_combination -r2019

theorem seg45RStep153IlMul (rho : Nat -> Seg45.F) (r2020 : Seg45.relationRow2020 rho) :
    rho 40251 = seg45RIl154 rho * (rho 40250) := by
  unfold Seg45.relationRow2020 at r2020
  rw [seg45RStep153IlLc rho] at r2020
  linear_combination -r2020

theorem seg45RStep153Acc (rho : Nat -> Seg45.F) :
    seg45RIl153 rho = seg45RIl154 rho + (rho 40250) - (rho 40251) := by
  have hstate : seg45RIl153 rho = seg45RIl154 rho + seg45RIlAtom49 rho := by rfl
  rw [hstate]
  unfold seg45RIlAtom49
  ring

theorem seg45RStep153Pe (rho : Nat -> Seg45.F) (r2021 : Seg45.relationRow2021 rho) :
    seg45RPe153 rho = seg45RPe154 rho * rho 39873 := by
  unfold Seg45.relationRow2021 at r2021
  unfold seg45RPe153 seg45RPe154
  linear_combination -r2021

theorem seg45RStep153 (rho : Nat -> Seg45.F) (r2019 : Seg45.relationRow2019 rho) (r2020 : Seg45.relationRow2020 rho) (r2021 : Seg45.relationRow2021 rho) :
    seg45RPe153 rho = seg45RPe154 rho * rho 39873 ∧
    seg45RIl153 rho = seg45RIl154 rho + seg45RPe154 rho * (1 - rho 39873) -
      seg45RIl154 rho * (seg45RPe154 rho * (1 - rho 39873)) := by
  constructor
  · exact seg45RStep153Pe rho r2021
  · rw [seg45RStep153Acc rho, seg45RStep153L rho r2019, seg45RStep153IlMul rho r2020, seg45RStep153L rho r2019]

theorem seg45_r_chunk153 (rho : Nat -> Seg45.F) (h : Seg45.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg45.F) (0 : Seg45.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k) 154 (seg45RPeState rho 154) (seg45RIlState rho 154) := by
  have htail := seg45_r_chunk152 rho h k hq4
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
  rcases p25 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2019, r2020, r2021, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 153 ≤ n → n < 154 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg45RPeState rho n = seg45RPeState rho (n + 1) * rho (39720 + n) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) + seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) -
          seg45RIlState rho (n + 1) * (seg45RPeState rho (n + 1) * (1 - rho (39720 + n)))
      else
        seg45RPeState rho n = seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 153 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg45RStep153 rho r2019 r2020 r2021
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k)
    (seg45RPeState rho) (seg45RIlState rho) 153 1
    (by intro n hnlo hnhi; have key := seg45IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
