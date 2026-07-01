import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45LtRChunk175

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg45RStep176L (rho : Nat -> Seg45.F) (r1974 : Seg45.relationRow1974 rho) :
    rho 40205 = seg45RPe177 rho * (1 - rho 39896) := by
  unfold Seg45.relationRow1974 at r1974
  unfold seg45RPe177
  linear_combination -r1974

theorem seg45RStep176IlMul (rho : Nat -> Seg45.F) (r1975 : Seg45.relationRow1975 rho) :
    rho 40206 = seg45RIl177 rho * (rho 40205) := by
  unfold Seg45.relationRow1975 at r1975
  rw [seg45RStep176IlLc rho] at r1975
  linear_combination -r1975

theorem seg45RStep176Acc (rho : Nat -> Seg45.F) :
    seg45RIl176 rho = seg45RIl177 rho + (rho 40205) - (rho 40206) := by
  have hstate : seg45RIl176 rho = seg45RIl177 rho + seg45RIlAtom38 rho := by rfl
  rw [hstate]
  unfold seg45RIlAtom38
  ring

theorem seg45RStep176Pe (rho : Nat -> Seg45.F) (r1976 : Seg45.relationRow1976 rho) :
    seg45RPe176 rho = seg45RPe177 rho * rho 39896 := by
  unfold Seg45.relationRow1976 at r1976
  unfold seg45RPe176 seg45RPe177
  linear_combination -r1976

theorem seg45RStep176 (rho : Nat -> Seg45.F) (r1974 : Seg45.relationRow1974 rho) (r1975 : Seg45.relationRow1975 rho) (r1976 : Seg45.relationRow1976 rho) :
    seg45RPe176 rho = seg45RPe177 rho * rho 39896 ∧
    seg45RIl176 rho = seg45RIl177 rho + seg45RPe177 rho * (1 - rho 39896) -
      seg45RIl177 rho * (seg45RPe177 rho * (1 - rho 39896)) := by
  constructor
  · exact seg45RStep176Pe rho r1976
  · rw [seg45RStep176Acc rho, seg45RStep176L rho r1974, seg45RStep176IlMul rho r1975, seg45RStep176L rho r1974]

theorem seg45_r_chunk176 (rho : Nat -> Seg45.F) (h : Seg45.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg45.F) (0 : Seg45.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k) 177 (seg45RPeState rho 177) (seg45RIlState rho 177) := by
  have htail := seg45_r_chunk175 rho h k hq4
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart24 at p24
  rcases p24 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1974, r1975, r1976, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 176 ≤ n → n < 177 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg45RPeState rho n = seg45RPeState rho (n + 1) * rho (39720 + n) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) + seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) -
          seg45RIlState rho (n + 1) * (seg45RPeState rho (n + 1) * (1 - rho (39720 + n)))
      else
        seg45RPeState rho n = seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 176 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg45RStep176 rho r1974 r1975 r1976
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k)
    (seg45RPeState rho) (seg45RIlState rho) 176 1
    (by intro n hnlo hnhi; have key := seg45IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
