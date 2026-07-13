import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg6LtRChunk151

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg6RStep152L (rho : Nat -> Seg6.F) (r2022 : Seg6.relationRow2022 rho) :
    rho 2423 = seg6RPe153 rho * (1 - rho 2042) := by
  unfold Seg6.relationRow2022 at r2022
  unfold seg6RPe153
  linear_combination -r2022

theorem seg6RStep152IlMul (rho : Nat -> Seg6.F) (r2023 : Seg6.relationRow2023 rho) :
    rho 2424 = seg6RIl153 rho * (rho 2423) := by
  unfold Seg6.relationRow2023 at r2023
  rw [seg6RStep152IlLc rho] at r2023
  linear_combination -r2023

theorem seg6RStep152Acc (rho : Nat -> Seg6.F) :
    seg6RIl152 rho = seg6RIl153 rho + (rho 2423) - (rho 2424) := by
  have hstate : seg6RIl152 rho = seg6RIl153 rho + seg6RIlAtom50 rho + (-1 : Seg6.F) * seg6RIlAtom51 rho := by rfl
  rw [hstate]
  unfold seg6RIlAtom50 seg6RIlAtom51
  ring

theorem seg6RStep152Pe (rho : Nat -> Seg6.F) (r2024 : Seg6.relationRow2024 rho) :
    seg6RPe152 rho = seg6RPe153 rho * rho 2042 := by
  unfold Seg6.relationRow2024 at r2024
  unfold seg6RPe152 seg6RPe153
  linear_combination -r2024

theorem seg6RStep152 (rho : Nat -> Seg6.F) (r2022 : Seg6.relationRow2022 rho) (r2023 : Seg6.relationRow2023 rho) (r2024 : Seg6.relationRow2024 rho) :
    seg6RPe152 rho = seg6RPe153 rho * rho 2042 ∧
    seg6RIl152 rho = seg6RIl153 rho + seg6RPe153 rho * (1 - rho 2042) -
      seg6RIl153 rho * (seg6RPe153 rho * (1 - rho 2042)) := by
  constructor
  · exact seg6RStep152Pe rho r2024
  · rw [seg6RStep152Acc rho, seg6RStep152L rho r2022, seg6RStep152IlMul rho r2023, seg6RStep152L rho r2022]

theorem seg6_r_chunk152 (rho : Nat -> Seg6.F) (h : Seg6.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg6.F) (0 : Seg6.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k) 153 (seg6RPeState rho 153) (seg6RIlState rho 153) := by
  have htail := seg6_r_chunk151 rho h k hq4
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p25, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart25 at p25
  rcases p25 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2022, r2023, r2024, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 152 ≤ n → n < 153 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg6RPeState rho n = seg6RPeState rho (n + 1) * rho (1890 + n) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) + seg6RPeState rho (n + 1) * (1 - rho (1890 + n)) -
          seg6RIlState rho (n + 1) * (seg6RPeState rho (n + 1) * (1 - rho (1890 + n)))
      else
        seg6RPeState rho n = seg6RPeState rho (n + 1) * (1 - rho (1890 + n)) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 152 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg6RStep152 rho r2022 r2023 r2024
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k)
    (seg6RPeState rho) (seg6RIlState rho) 152 1
    (by intro n hnlo hnhi; have key := seg6IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
