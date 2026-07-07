import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45LtRChunk84

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg45RStep85L (rho : Nat -> Seg45.F) (r2147 : Seg45.relationRow2147 rho) :
    rho 40378 = seg45RPe86 rho * (1 - rho 39805) := by
  unfold Seg45.relationRow2147 at r2147
  unfold seg45RPe86
  linear_combination -r2147

theorem seg45RStep85IlMul (rho : Nat -> Seg45.F) (r2148 : Seg45.relationRow2148 rho) :
    rho 40379 = seg45RIl86 rho * (rho 40378) := by
  unfold Seg45.relationRow2148 at r2148
  rw [seg45RStep85IlLc rho] at r2148
  linear_combination -r2148

theorem seg45RStep85Acc (rho : Nat -> Seg45.F) :
    seg45RIl85 rho = seg45RIl86 rho + (rho 40378) - (rho 40379) := by
  have hstate : seg45RIl85 rho = seg45RIl86 rho + seg45RIlAtom81 rho := by rfl
  rw [hstate]
  unfold seg45RIlAtom81
  ring

theorem seg45RStep85Pe (rho : Nat -> Seg45.F) (r2149 : Seg45.relationRow2149 rho) :
    seg45RPe85 rho = seg45RPe86 rho * rho 39805 := by
  unfold Seg45.relationRow2149 at r2149
  unfold seg45RPe85 seg45RPe86
  linear_combination -r2149

theorem seg45RStep85 (rho : Nat -> Seg45.F) (r2147 : Seg45.relationRow2147 rho) (r2148 : Seg45.relationRow2148 rho) (r2149 : Seg45.relationRow2149 rho) :
    seg45RPe85 rho = seg45RPe86 rho * rho 39805 ∧
    seg45RIl85 rho = seg45RIl86 rho + seg45RPe86 rho * (1 - rho 39805) -
      seg45RIl86 rho * (seg45RPe86 rho * (1 - rho 39805)) := by
  constructor
  · exact seg45RStep85Pe rho r2149
  · rw [seg45RStep85Acc rho, seg45RStep85L rho r2147, seg45RStep85IlMul rho r2148, seg45RStep85L rho r2147]

theorem seg45_r_chunk85 (rho : Nat -> Seg45.F) (h : Seg45.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg45.F) (0 : Seg45.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k) 86 (seg45RPeState rho 86) (seg45RIlState rho 86) := by
  have htail := seg45_r_chunk84 rho h k hq4
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart26 at p26
  rcases p26 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2147, r2148, r2149, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 85 ≤ n → n < 86 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg45RPeState rho n = seg45RPeState rho (n + 1) * rho (39720 + n) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) + seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) -
          seg45RIlState rho (n + 1) * (seg45RPeState rho (n + 1) * (1 - rho (39720 + n)))
      else
        seg45RPeState rho n = seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 85 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg45RStep85 rho r2147 r2148 r2149
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k)
    (seg45RPeState rho) (seg45RIlState rho) 85 1
    (by intro n hnlo hnhi; have key := seg45IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
