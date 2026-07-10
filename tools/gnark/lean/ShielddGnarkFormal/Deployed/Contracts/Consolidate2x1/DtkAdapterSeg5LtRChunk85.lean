import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5LtRChunk84

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg5RStep85L (rho : Nat -> Seg5.F) (r2147 : Seg5.relationRow2147 rho) :
    rho 1845 = seg5RPe86 rho * (1 - rho 1272) := by
  unfold Seg5.relationRow2147 at r2147
  unfold seg5RPe86
  linear_combination -r2147

theorem seg5RStep85IlMul (rho : Nat -> Seg5.F) (r2148 : Seg5.relationRow2148 rho) :
    rho 1846 = seg5RIl86 rho * (rho 1845) := by
  unfold Seg5.relationRow2148 at r2148
  rw [seg5RStep85IlLc rho] at r2148
  linear_combination -r2148

theorem seg5RStep85Acc (rho : Nat -> Seg5.F) :
    seg5RIl85 rho = seg5RIl86 rho + (rho 1845) - (rho 1846) := by
  have hstate : seg5RIl85 rho = seg5RIl86 rho + seg5RIlAtom81 rho := by rfl
  rw [hstate]
  unfold seg5RIlAtom81
  ring

theorem seg5RStep85Pe (rho : Nat -> Seg5.F) (r2149 : Seg5.relationRow2149 rho) :
    seg5RPe85 rho = seg5RPe86 rho * rho 1272 := by
  unfold Seg5.relationRow2149 at r2149
  unfold seg5RPe85 seg5RPe86
  linear_combination -r2149

theorem seg5RStep85 (rho : Nat -> Seg5.F) (r2147 : Seg5.relationRow2147 rho) (r2148 : Seg5.relationRow2148 rho) (r2149 : Seg5.relationRow2149 rho) :
    seg5RPe85 rho = seg5RPe86 rho * rho 1272 ∧
    seg5RIl85 rho = seg5RIl86 rho + seg5RPe86 rho * (1 - rho 1272) -
      seg5RIl86 rho * (seg5RPe86 rho * (1 - rho 1272)) := by
  constructor
  · exact seg5RStep85Pe rho r2149
  · rw [seg5RStep85Acc rho, seg5RStep85L rho r2147, seg5RStep85IlMul rho r2148, seg5RStep85L rho r2147]

theorem seg5_r_chunk85 (rho : Nat -> Seg5.F) (h : Seg5.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg5.F) (0 : Seg5.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k) 86 (seg5RPeState rho 86) (seg5RIlState rho 86) := by
  have htail := seg5_r_chunk84 rho h k hq4
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, p26, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg5.relationPart26 at p26
  rcases p26 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2147, r2148, r2149, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 85 ≤ n → n < 86 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg5RPeState rho n = seg5RPeState rho (n + 1) * rho (1187 + n) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) + seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) -
          seg5RIlState rho (n + 1) * (seg5RPeState rho (n + 1) * (1 - rho (1187 + n)))
      else
        seg5RPeState rho n = seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 85 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg5RStep85 rho r2147 r2148 r2149
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k)
    (seg5RPeState rho) (seg5RIlState rho) 85 1
    (by intro n hnlo hnhi; have key := seg5IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
