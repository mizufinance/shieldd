import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45LtRChunk146

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg45RStep147L (rho : Nat -> Seg45.F) (r2029 : Seg45.relationRow2029 rho) :
    rho 40260 = seg45RPe148 rho * (1 - rho 39867) := by
  unfold Seg45.relationRow2029 at r2029
  unfold seg45RPe148
  linear_combination -r2029

theorem seg45RStep147IlMul (rho : Nat -> Seg45.F) (r2030 : Seg45.relationRow2030 rho) :
    rho 40261 = seg45RIl148 rho * (rho 40260) := by
  unfold Seg45.relationRow2030 at r2030
  rw [seg45RStep147IlLc rho] at r2030
  linear_combination -r2030

theorem seg45RStep147Acc (rho : Nat -> Seg45.F) :
    seg45RIl147 rho = seg45RIl148 rho + (rho 40260) - (rho 40261) := by
  have hstate : seg45RIl147 rho = seg45RIl148 rho + seg45RIlAtom52 rho := by rfl
  rw [hstate]
  unfold seg45RIlAtom52
  ring

theorem seg45RStep147Pe (rho : Nat -> Seg45.F) (r2031 : Seg45.relationRow2031 rho) :
    seg45RPe147 rho = seg45RPe148 rho * rho 39867 := by
  unfold Seg45.relationRow2031 at r2031
  unfold seg45RPe147 seg45RPe148
  linear_combination -r2031

theorem seg45RStep147 (rho : Nat -> Seg45.F) (r2029 : Seg45.relationRow2029 rho) (r2030 : Seg45.relationRow2030 rho) (r2031 : Seg45.relationRow2031 rho) :
    seg45RPe147 rho = seg45RPe148 rho * rho 39867 ∧
    seg45RIl147 rho = seg45RIl148 rho + seg45RPe148 rho * (1 - rho 39867) -
      seg45RIl148 rho * (seg45RPe148 rho * (1 - rho 39867)) := by
  constructor
  · exact seg45RStep147Pe rho r2031
  · rw [seg45RStep147Acc rho, seg45RStep147L rho r2029, seg45RStep147IlMul rho r2030, seg45RStep147L rho r2029]

theorem seg45_r_chunk147 (rho : Nat -> Seg45.F) (h : Seg45.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg45.F) (0 : Seg45.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k) 148 (seg45RPeState rho 148) (seg45RIlState rho 148) := by
  have htail := seg45_r_chunk146 rho h k hq4
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
  rcases p25 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2029, r2030, r2031, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 147 ≤ n → n < 148 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg45RPeState rho n = seg45RPeState rho (n + 1) * rho (39720 + n) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) + seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) -
          seg45RIlState rho (n + 1) * (seg45RPeState rho (n + 1) * (1 - rho (39720 + n)))
      else
        seg45RPeState rho n = seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 147 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg45RStep147 rho r2029 r2030 r2031
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k)
    (seg45RPeState rho) (seg45RIlState rho) 147 1
    (by intro n hnlo hnhi; have key := seg45IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
