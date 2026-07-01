import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16LtRChunk151

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg16RStep152L (rho : Nat -> Seg16.F) (r2022 : Seg16.relationRow2022 rho) :
    rho 14597 = seg16RPe153 rho * (1 - rho 14216) := by
  unfold Seg16.relationRow2022 at r2022
  unfold seg16RPe153
  linear_combination -r2022

theorem seg16RStep152IlMul (rho : Nat -> Seg16.F) (r2023 : Seg16.relationRow2023 rho) :
    rho 14598 = seg16RIl153 rho * (rho 14597) := by
  unfold Seg16.relationRow2023 at r2023
  rw [seg16RStep152IlLc rho] at r2023
  linear_combination -r2023

theorem seg16RStep152Acc (rho : Nat -> Seg16.F) :
    seg16RIl152 rho = seg16RIl153 rho + (rho 14597) - (rho 14598) := by
  have hstate : seg16RIl152 rho = seg16RIl153 rho + seg16RIlAtom50 rho + (-1 : Seg16.F) * seg16RIlAtom51 rho := by rfl
  rw [hstate]
  unfold seg16RIlAtom50 seg16RIlAtom51
  ring

theorem seg16RStep152Pe (rho : Nat -> Seg16.F) (r2024 : Seg16.relationRow2024 rho) :
    seg16RPe152 rho = seg16RPe153 rho * rho 14216 := by
  unfold Seg16.relationRow2024 at r2024
  unfold seg16RPe152 seg16RPe153
  linear_combination -r2024

theorem seg16RStep152 (rho : Nat -> Seg16.F) (r2022 : Seg16.relationRow2022 rho) (r2023 : Seg16.relationRow2023 rho) (r2024 : Seg16.relationRow2024 rho) :
    seg16RPe152 rho = seg16RPe153 rho * rho 14216 ∧
    seg16RIl152 rho = seg16RIl153 rho + seg16RPe153 rho * (1 - rho 14216) -
      seg16RIl153 rho * (seg16RPe153 rho * (1 - rho 14216)) := by
  constructor
  · exact seg16RStep152Pe rho r2024
  · rw [seg16RStep152Acc rho, seg16RStep152L rho r2022, seg16RStep152IlMul rho r2023, seg16RStep152L rho r2022]

theorem seg16_r_chunk152 (rho : Nat -> Seg16.F) (h : Seg16.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg16.F) (0 : Seg16.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k) 153 (seg16RPeState rho 153) (seg16RIlState rho 153) := by
  have htail := seg16_r_chunk151 rho h k hq4
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart25 at p25
  rcases p25 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2022, r2023, r2024, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 152 ≤ n → n < 153 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg16RPeState rho n = seg16RPeState rho (n + 1) * rho (14064 + n) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) + seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) -
          seg16RIlState rho (n + 1) * (seg16RPeState rho (n + 1) * (1 - rho (14064 + n)))
      else
        seg16RPeState rho n = seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 152 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg16RStep152 rho r2022 r2023 r2024
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k)
    (seg16RPeState rho) (seg16RIlState rho) 152 1
    (by intro n hnlo hnhi; have key := seg16IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
