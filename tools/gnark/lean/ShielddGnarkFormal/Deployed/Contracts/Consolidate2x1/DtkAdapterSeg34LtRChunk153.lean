import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34LtRChunk152

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg34RStep153L (rho : Nat -> Seg34.F) (r2019 : Seg34.relationRow2019 rho) :
    rho 33294 = seg34RPe154 rho * (1 - rho 32917) := by
  unfold Seg34.relationRow2019 at r2019
  unfold seg34RPe154
  linear_combination -r2019

theorem seg34RStep153IlMul (rho : Nat -> Seg34.F) (r2020 : Seg34.relationRow2020 rho) :
    rho 33295 = seg34RIl154 rho * (rho 33294) := by
  unfold Seg34.relationRow2020 at r2020
  rw [seg34RStep153IlLc rho] at r2020
  linear_combination -r2020

theorem seg34RStep153Acc (rho : Nat -> Seg34.F) :
    seg34RIl153 rho = seg34RIl154 rho + (rho 33294) - (rho 33295) := by
  have hstate : seg34RIl153 rho = seg34RIl154 rho + seg34RIlAtom49 rho := by rfl
  rw [hstate]
  unfold seg34RIlAtom49
  ring

theorem seg34RStep153Pe (rho : Nat -> Seg34.F) (r2021 : Seg34.relationRow2021 rho) :
    seg34RPe153 rho = seg34RPe154 rho * rho 32917 := by
  unfold Seg34.relationRow2021 at r2021
  unfold seg34RPe153 seg34RPe154
  linear_combination -r2021

theorem seg34RStep153 (rho : Nat -> Seg34.F) (r2019 : Seg34.relationRow2019 rho) (r2020 : Seg34.relationRow2020 rho) (r2021 : Seg34.relationRow2021 rho) :
    seg34RPe153 rho = seg34RPe154 rho * rho 32917 ∧
    seg34RIl153 rho = seg34RIl154 rho + seg34RPe154 rho * (1 - rho 32917) -
      seg34RIl154 rho * (seg34RPe154 rho * (1 - rho 32917)) := by
  constructor
  · exact seg34RStep153Pe rho r2021
  · rw [seg34RStep153Acc rho, seg34RStep153L rho r2019, seg34RStep153IlMul rho r2020, seg34RStep153L rho r2019]

theorem seg34_r_chunk153 (rho : Nat -> Seg34.F) (h : Seg34.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg34.F) (0 : Seg34.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k) 154 (seg34RPeState rho 154) (seg34RIlState rho 154) := by
  have htail := seg34_r_chunk152 rho h k hq4
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
  rcases p25 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2019, r2020, r2021, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 153 ≤ n → n < 154 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg34RPeState rho n = seg34RPeState rho (n + 1) * rho (32764 + n) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) + seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) -
          seg34RIlState rho (n + 1) * (seg34RPeState rho (n + 1) * (1 - rho (32764 + n)))
      else
        seg34RPeState rho n = seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 153 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg34RStep153 rho r2019 r2020 r2021
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k)
    (seg34RPeState rho) (seg34RIlState rho) 153 1
    (by intro n hnlo hnhi; have key := seg34IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
