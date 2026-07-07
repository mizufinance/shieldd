import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34LtRChunk151

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg34RStep152L (rho : Nat -> Seg34.F) (r2022 : Seg34.relationRow2022 rho) :
    rho 33297 = seg34RPe153 rho * (1 - rho 32916) := by
  unfold Seg34.relationRow2022 at r2022
  unfold seg34RPe153
  linear_combination -r2022

theorem seg34RStep152IlMul (rho : Nat -> Seg34.F) (r2023 : Seg34.relationRow2023 rho) :
    rho 33298 = seg34RIl153 rho * (rho 33297) := by
  unfold Seg34.relationRow2023 at r2023
  rw [seg34RStep152IlLc rho] at r2023
  linear_combination -r2023

theorem seg34RStep152Acc (rho : Nat -> Seg34.F) :
    seg34RIl152 rho = seg34RIl153 rho + (rho 33297) - (rho 33298) := by
  have hstate : seg34RIl152 rho = seg34RIl153 rho + seg34RIlAtom50 rho + (-1 : Seg34.F) * seg34RIlAtom51 rho := by rfl
  rw [hstate]
  unfold seg34RIlAtom50 seg34RIlAtom51
  ring

theorem seg34RStep152Pe (rho : Nat -> Seg34.F) (r2024 : Seg34.relationRow2024 rho) :
    seg34RPe152 rho = seg34RPe153 rho * rho 32916 := by
  unfold Seg34.relationRow2024 at r2024
  unfold seg34RPe152 seg34RPe153
  linear_combination -r2024

theorem seg34RStep152 (rho : Nat -> Seg34.F) (r2022 : Seg34.relationRow2022 rho) (r2023 : Seg34.relationRow2023 rho) (r2024 : Seg34.relationRow2024 rho) :
    seg34RPe152 rho = seg34RPe153 rho * rho 32916 ∧
    seg34RIl152 rho = seg34RIl153 rho + seg34RPe153 rho * (1 - rho 32916) -
      seg34RIl153 rho * (seg34RPe153 rho * (1 - rho 32916)) := by
  constructor
  · exact seg34RStep152Pe rho r2024
  · rw [seg34RStep152Acc rho, seg34RStep152L rho r2022, seg34RStep152IlMul rho r2023, seg34RStep152L rho r2022]

theorem seg34_r_chunk152 (rho : Nat -> Seg34.F) (h : Seg34.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg34.F) (0 : Seg34.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k) 153 (seg34RPeState rho 153) (seg34RIlState rho 153) := by
  have htail := seg34_r_chunk151 rho h k hq4
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
  rcases p25 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2022, r2023, r2024, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 152 ≤ n → n < 153 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg34RPeState rho n = seg34RPeState rho (n + 1) * rho (32764 + n) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) + seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) -
          seg34RIlState rho (n + 1) * (seg34RPeState rho (n + 1) * (1 - rho (32764 + n)))
      else
        seg34RPeState rho n = seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 152 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg34RStep152 rho r2022 r2023 r2024
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k)
    (seg34RPeState rho) (seg34RIlState rho) 152 1
    (by intro n hnlo hnhi; have key := seg34IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
