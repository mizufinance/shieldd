import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45LtRChunk151

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg45RStep152L (rho : Nat -> Seg45.F) (r2022 : Seg45.relationRow2022 rho) :
    rho 40253 = seg45RPe153 rho * (1 - rho 39872) := by
  unfold Seg45.relationRow2022 at r2022
  unfold seg45RPe153
  linear_combination -r2022

theorem seg45RStep152IlMul (rho : Nat -> Seg45.F) (r2023 : Seg45.relationRow2023 rho) :
    rho 40254 = seg45RIl153 rho * (rho 40253) := by
  unfold Seg45.relationRow2023 at r2023
  rw [seg45RStep152IlLc rho] at r2023
  linear_combination -r2023

theorem seg45RStep152Acc (rho : Nat -> Seg45.F) :
    seg45RIl152 rho = seg45RIl153 rho + (rho 40253) - (rho 40254) := by
  have hstate : seg45RIl152 rho = seg45RIl153 rho + seg45RIlAtom50 rho + (-1 : Seg45.F) * seg45RIlAtom51 rho := by rfl
  rw [hstate]
  unfold seg45RIlAtom50 seg45RIlAtom51
  ring

theorem seg45RStep152Pe (rho : Nat -> Seg45.F) (r2024 : Seg45.relationRow2024 rho) :
    seg45RPe152 rho = seg45RPe153 rho * rho 39872 := by
  unfold Seg45.relationRow2024 at r2024
  unfold seg45RPe152 seg45RPe153
  linear_combination -r2024

theorem seg45RStep152 (rho : Nat -> Seg45.F) (r2022 : Seg45.relationRow2022 rho) (r2023 : Seg45.relationRow2023 rho) (r2024 : Seg45.relationRow2024 rho) :
    seg45RPe152 rho = seg45RPe153 rho * rho 39872 ∧
    seg45RIl152 rho = seg45RIl153 rho + seg45RPe153 rho * (1 - rho 39872) -
      seg45RIl153 rho * (seg45RPe153 rho * (1 - rho 39872)) := by
  constructor
  · exact seg45RStep152Pe rho r2024
  · rw [seg45RStep152Acc rho, seg45RStep152L rho r2022, seg45RStep152IlMul rho r2023, seg45RStep152L rho r2022]

theorem seg45_r_chunk152 (rho : Nat -> Seg45.F) (h : Seg45.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg45.F) (0 : Seg45.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k) 153 (seg45RPeState rho 153) (seg45RIlState rho 153) := by
  have htail := seg45_r_chunk151 rho h k hq4
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
  rcases p25 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2022, r2023, r2024, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 152 ≤ n → n < 153 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg45RPeState rho n = seg45RPeState rho (n + 1) * rho (39720 + n) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) + seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) -
          seg45RIlState rho (n + 1) * (seg45RPeState rho (n + 1) * (1 - rho (39720 + n)))
      else
        seg45RPeState rho n = seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 152 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg45RStep152 rho r2022 r2023 r2024
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k)
    (seg45RPeState rho) (seg45RIlState rho) 152 1
    (by intro n hnlo hnhi; have key := seg45IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
