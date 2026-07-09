import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5LtRChunk175

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg5RStep176L (rho : Nat -> Seg5.F) (r1974 : Seg5.relationRow1974 rho) :
    rho 1672 = seg5RPe177 rho * (1 - rho 1363) := by
  unfold Seg5.relationRow1974 at r1974
  unfold seg5RPe177
  linear_combination -r1974

theorem seg5RStep176IlMul (rho : Nat -> Seg5.F) (r1975 : Seg5.relationRow1975 rho) :
    rho 1673 = seg5RIl177 rho * (rho 1672) := by
  unfold Seg5.relationRow1975 at r1975
  rw [seg5RStep176IlLc rho] at r1975
  linear_combination -r1975

theorem seg5RStep176Acc (rho : Nat -> Seg5.F) :
    seg5RIl176 rho = seg5RIl177 rho + (rho 1672) - (rho 1673) := by
  have hstate : seg5RIl176 rho = seg5RIl177 rho + seg5RIlAtom38 rho := by rfl
  rw [hstate]
  unfold seg5RIlAtom38
  ring

theorem seg5RStep176Pe (rho : Nat -> Seg5.F) (r1976 : Seg5.relationRow1976 rho) :
    seg5RPe176 rho = seg5RPe177 rho * rho 1363 := by
  unfold Seg5.relationRow1976 at r1976
  unfold seg5RPe176 seg5RPe177
  linear_combination -r1976

theorem seg5RStep176 (rho : Nat -> Seg5.F) (r1974 : Seg5.relationRow1974 rho) (r1975 : Seg5.relationRow1975 rho) (r1976 : Seg5.relationRow1976 rho) :
    seg5RPe176 rho = seg5RPe177 rho * rho 1363 ∧
    seg5RIl176 rho = seg5RIl177 rho + seg5RPe177 rho * (1 - rho 1363) -
      seg5RIl177 rho * (seg5RPe177 rho * (1 - rho 1363)) := by
  constructor
  · exact seg5RStep176Pe rho r1976
  · rw [seg5RStep176Acc rho, seg5RStep176L rho r1974, seg5RStep176IlMul rho r1975, seg5RStep176L rho r1974]

theorem seg5_r_chunk176 (rho : Nat -> Seg5.F) (h : Seg5.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg5.F) (0 : Seg5.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k) 177 (seg5RPeState rho 177) (seg5RIlState rho 177) := by
  have htail := seg5_r_chunk175 rho h k hq4
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, p24, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg5.relationPart24 at p24
  rcases p24 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1974, r1975, r1976, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 176 ≤ n → n < 177 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg5RPeState rho n = seg5RPeState rho (n + 1) * rho (1187 + n) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) + seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) -
          seg5RIlState rho (n + 1) * (seg5RPeState rho (n + 1) * (1 - rho (1187 + n)))
      else
        seg5RPeState rho n = seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 176 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg5RStep176 rho r1974 r1975 r1976
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k)
    (seg5RPeState rho) (seg5RIlState rho) 176 1
    (by intro n hnlo hnhi; have key := seg5IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
