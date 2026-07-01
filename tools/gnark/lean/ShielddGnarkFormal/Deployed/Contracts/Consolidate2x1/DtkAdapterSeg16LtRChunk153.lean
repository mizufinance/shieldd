import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16LtRChunk152

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg16RStep153L (rho : Nat -> Seg16.F) (r2019 : Seg16.relationRow2019 rho) :
    rho 14594 = seg16RPe154 rho * (1 - rho 14217) := by
  unfold Seg16.relationRow2019 at r2019
  unfold seg16RPe154
  linear_combination -r2019

theorem seg16RStep153IlMul (rho : Nat -> Seg16.F) (r2020 : Seg16.relationRow2020 rho) :
    rho 14595 = seg16RIl154 rho * (rho 14594) := by
  unfold Seg16.relationRow2020 at r2020
  rw [seg16RStep153IlLc rho] at r2020
  linear_combination -r2020

theorem seg16RStep153Acc (rho : Nat -> Seg16.F) :
    seg16RIl153 rho = seg16RIl154 rho + (rho 14594) - (rho 14595) := by
  have hstate : seg16RIl153 rho = seg16RIl154 rho + seg16RIlAtom49 rho := by rfl
  rw [hstate]
  unfold seg16RIlAtom49
  ring

theorem seg16RStep153Pe (rho : Nat -> Seg16.F) (r2021 : Seg16.relationRow2021 rho) :
    seg16RPe153 rho = seg16RPe154 rho * rho 14217 := by
  unfold Seg16.relationRow2021 at r2021
  unfold seg16RPe153 seg16RPe154
  linear_combination -r2021

theorem seg16RStep153 (rho : Nat -> Seg16.F) (r2019 : Seg16.relationRow2019 rho) (r2020 : Seg16.relationRow2020 rho) (r2021 : Seg16.relationRow2021 rho) :
    seg16RPe153 rho = seg16RPe154 rho * rho 14217 ∧
    seg16RIl153 rho = seg16RIl154 rho + seg16RPe154 rho * (1 - rho 14217) -
      seg16RIl154 rho * (seg16RPe154 rho * (1 - rho 14217)) := by
  constructor
  · exact seg16RStep153Pe rho r2021
  · rw [seg16RStep153Acc rho, seg16RStep153L rho r2019, seg16RStep153IlMul rho r2020, seg16RStep153L rho r2019]

theorem seg16_r_chunk153 (rho : Nat -> Seg16.F) (h : Seg16.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg16.F) (0 : Seg16.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k) 154 (seg16RPeState rho 154) (seg16RIlState rho 154) := by
  have htail := seg16_r_chunk152 rho h k hq4
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
  rcases p25 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2019, r2020, r2021, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 153 ≤ n → n < 154 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg16RPeState rho n = seg16RPeState rho (n + 1) * rho (14064 + n) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) + seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) -
          seg16RIlState rho (n + 1) * (seg16RPeState rho (n + 1) * (1 - rho (14064 + n)))
      else
        seg16RPeState rho n = seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 153 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg16RStep153 rho r2019 r2020 r2021
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k)
    (seg16RPeState rho) (seg16RIlState rho) 153 1
    (by intro n hnlo hnhi; have key := seg16IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
