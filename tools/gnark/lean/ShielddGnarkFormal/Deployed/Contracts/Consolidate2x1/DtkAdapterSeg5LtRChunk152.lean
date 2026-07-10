import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5LtRChunk151

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg5RStep152L (rho : Nat -> Seg5.F) (r2022 : Seg5.relationRow2022 rho) :
    rho 1720 = seg5RPe153 rho * (1 - rho 1339) := by
  unfold Seg5.relationRow2022 at r2022
  unfold seg5RPe153
  linear_combination -r2022

theorem seg5RStep152IlMul (rho : Nat -> Seg5.F) (r2023 : Seg5.relationRow2023 rho) :
    rho 1721 = seg5RIl153 rho * (rho 1720) := by
  unfold Seg5.relationRow2023 at r2023
  rw [seg5RStep152IlLc rho] at r2023
  linear_combination -r2023

theorem seg5RStep152Acc (rho : Nat -> Seg5.F) :
    seg5RIl152 rho = seg5RIl153 rho + (rho 1720) - (rho 1721) := by
  have hstate : seg5RIl152 rho = seg5RIl153 rho + seg5RIlAtom50 rho + (-1 : Seg5.F) * seg5RIlAtom51 rho := by rfl
  rw [hstate]
  unfold seg5RIlAtom50 seg5RIlAtom51
  ring

theorem seg5RStep152Pe (rho : Nat -> Seg5.F) (r2024 : Seg5.relationRow2024 rho) :
    seg5RPe152 rho = seg5RPe153 rho * rho 1339 := by
  unfold Seg5.relationRow2024 at r2024
  unfold seg5RPe152 seg5RPe153
  linear_combination -r2024

theorem seg5RStep152 (rho : Nat -> Seg5.F) (r2022 : Seg5.relationRow2022 rho) (r2023 : Seg5.relationRow2023 rho) (r2024 : Seg5.relationRow2024 rho) :
    seg5RPe152 rho = seg5RPe153 rho * rho 1339 ∧
    seg5RIl152 rho = seg5RIl153 rho + seg5RPe153 rho * (1 - rho 1339) -
      seg5RIl153 rho * (seg5RPe153 rho * (1 - rho 1339)) := by
  constructor
  · exact seg5RStep152Pe rho r2024
  · rw [seg5RStep152Acc rho, seg5RStep152L rho r2022, seg5RStep152IlMul rho r2023, seg5RStep152L rho r2022]

theorem seg5_r_chunk152 (rho : Nat -> Seg5.F) (h : Seg5.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg5.F) (0 : Seg5.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k) 153 (seg5RPeState rho 153) (seg5RIlState rho 153) := by
  have htail := seg5_r_chunk151 rho h k hq4
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
  rcases p25 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2022, r2023, r2024, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 152 ≤ n → n < 153 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg5RPeState rho n = seg5RPeState rho (n + 1) * rho (1187 + n) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) + seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) -
          seg5RIlState rho (n + 1) * (seg5RPeState rho (n + 1) * (1 - rho (1187 + n)))
      else
        seg5RPeState rho n = seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 152 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg5RStep152 rho r2022 r2023 r2024
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k)
    (seg5RPeState rho) (seg5RIlState rho) 152 1
    (by intro n hnlo hnhi; have key := seg5IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
