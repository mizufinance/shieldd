import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg6LtRChunk152

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg6RStep153L (rho : Nat -> Seg6.F) (r2019 : Seg6.relationRow2019 rho) :
    rho 2420 = seg6RPe154 rho * (1 - rho 2043) := by
  unfold Seg6.relationRow2019 at r2019
  unfold seg6RPe154
  linear_combination -r2019

theorem seg6RStep153IlMul (rho : Nat -> Seg6.F) (r2020 : Seg6.relationRow2020 rho) :
    rho 2421 = seg6RIl154 rho * (rho 2420) := by
  unfold Seg6.relationRow2020 at r2020
  rw [seg6RStep153IlLc rho] at r2020
  linear_combination -r2020

theorem seg6RStep153Acc (rho : Nat -> Seg6.F) :
    seg6RIl153 rho = seg6RIl154 rho + (rho 2420) - (rho 2421) := by
  have hstate : seg6RIl153 rho = seg6RIl154 rho + seg6RIlAtom49 rho := by rfl
  rw [hstate]
  unfold seg6RIlAtom49
  ring

theorem seg6RStep153Pe (rho : Nat -> Seg6.F) (r2021 : Seg6.relationRow2021 rho) :
    seg6RPe153 rho = seg6RPe154 rho * rho 2043 := by
  unfold Seg6.relationRow2021 at r2021
  unfold seg6RPe153 seg6RPe154
  linear_combination -r2021

theorem seg6RStep153 (rho : Nat -> Seg6.F) (r2019 : Seg6.relationRow2019 rho) (r2020 : Seg6.relationRow2020 rho) (r2021 : Seg6.relationRow2021 rho) :
    seg6RPe153 rho = seg6RPe154 rho * rho 2043 ∧
    seg6RIl153 rho = seg6RIl154 rho + seg6RPe154 rho * (1 - rho 2043) -
      seg6RIl154 rho * (seg6RPe154 rho * (1 - rho 2043)) := by
  constructor
  · exact seg6RStep153Pe rho r2021
  · rw [seg6RStep153Acc rho, seg6RStep153L rho r2019, seg6RStep153IlMul rho r2020, seg6RStep153L rho r2019]

theorem seg6_r_chunk153 (rho : Nat -> Seg6.F) (h : Seg6.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg6.F) (0 : Seg6.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k) 154 (seg6RPeState rho 154) (seg6RIlState rho 154) := by
  have htail := seg6_r_chunk152 rho h k hq4
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
  rcases p25 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2019, r2020, r2021, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 153 ≤ n → n < 154 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg6RPeState rho n = seg6RPeState rho (n + 1) * rho (1890 + n) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) + seg6RPeState rho (n + 1) * (1 - rho (1890 + n)) -
          seg6RIlState rho (n + 1) * (seg6RPeState rho (n + 1) * (1 - rho (1890 + n)))
      else
        seg6RPeState rho n = seg6RPeState rho (n + 1) * (1 - rho (1890 + n)) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 153 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg6RStep153 rho r2019 r2020 r2021
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k)
    (seg6RPeState rho) (seg6RIlState rho) 153 1
    (by intro n hnlo hnhi; have key := seg6IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
