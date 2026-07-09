import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5LtRChunk152

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg5RStep153L (rho : Nat -> Seg5.F) (r2019 : Seg5.relationRow2019 rho) :
    rho 1717 = seg5RPe154 rho * (1 - rho 1340) := by
  unfold Seg5.relationRow2019 at r2019
  unfold seg5RPe154
  linear_combination -r2019

theorem seg5RStep153IlMul (rho : Nat -> Seg5.F) (r2020 : Seg5.relationRow2020 rho) :
    rho 1718 = seg5RIl154 rho * (rho 1717) := by
  unfold Seg5.relationRow2020 at r2020
  rw [seg5RStep153IlLc rho] at r2020
  linear_combination -r2020

theorem seg5RStep153Acc (rho : Nat -> Seg5.F) :
    seg5RIl153 rho = seg5RIl154 rho + (rho 1717) - (rho 1718) := by
  have hstate : seg5RIl153 rho = seg5RIl154 rho + seg5RIlAtom49 rho := by rfl
  rw [hstate]
  unfold seg5RIlAtom49
  ring

theorem seg5RStep153Pe (rho : Nat -> Seg5.F) (r2021 : Seg5.relationRow2021 rho) :
    seg5RPe153 rho = seg5RPe154 rho * rho 1340 := by
  unfold Seg5.relationRow2021 at r2021
  unfold seg5RPe153 seg5RPe154
  linear_combination -r2021

theorem seg5RStep153 (rho : Nat -> Seg5.F) (r2019 : Seg5.relationRow2019 rho) (r2020 : Seg5.relationRow2020 rho) (r2021 : Seg5.relationRow2021 rho) :
    seg5RPe153 rho = seg5RPe154 rho * rho 1340 ∧
    seg5RIl153 rho = seg5RIl154 rho + seg5RPe154 rho * (1 - rho 1340) -
      seg5RIl154 rho * (seg5RPe154 rho * (1 - rho 1340)) := by
  constructor
  · exact seg5RStep153Pe rho r2021
  · rw [seg5RStep153Acc rho, seg5RStep153L rho r2019, seg5RStep153IlMul rho r2020, seg5RStep153L rho r2019]

theorem seg5_r_chunk153 (rho : Nat -> Seg5.F) (h : Seg5.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg5.F) (0 : Seg5.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k) 154 (seg5RPeState rho 154) (seg5RIlState rho 154) := by
  have htail := seg5_r_chunk152 rho h k hq4
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
  rcases p25 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2019, r2020, r2021, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 153 ≤ n → n < 154 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg5RPeState rho n = seg5RPeState rho (n + 1) * rho (1187 + n) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) + seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) -
          seg5RIlState rho (n + 1) * (seg5RPeState rho (n + 1) * (1 - rho (1187 + n)))
      else
        seg5RPeState rho n = seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 153 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg5RStep153 rho r2019 r2020 r2021
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k)
    (seg5RPeState rho) (seg5RIlState rho) 153 1
    (by intro n hnlo hnhi; have key := seg5IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
