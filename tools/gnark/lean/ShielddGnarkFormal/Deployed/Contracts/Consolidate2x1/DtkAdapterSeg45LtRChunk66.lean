import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45LtRChunk65

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg45RStep66L (rho : Nat -> Seg45.F) (r2190 : Seg45.relationRow2190 rho) :
    rho 40421 = seg45RPe67 rho * (1 - rho 39786) := by
  unfold Seg45.relationRow2190 at r2190
  unfold seg45RPe67
  linear_combination -r2190

theorem seg45RStep66IlMul (rho : Nat -> Seg45.F) (r2191 : Seg45.relationRow2191 rho) :
    rho 40422 = seg45RIl67 rho * (rho 40421) := by
  unfold Seg45.relationRow2191 at r2191
  rw [seg45RStep66IlLc rho] at r2191
  linear_combination -r2191

theorem seg45RStep66Acc (rho : Nat -> Seg45.F) :
    seg45RIl66 rho = seg45RIl67 rho + (rho 40421) - (rho 40422) := by
  have hstate : seg45RIl66 rho = seg45RIl67 rho + seg45RIlAtom94 rho := by rfl
  rw [hstate]
  unfold seg45RIlAtom94
  ring

theorem seg45RStep66Pe (rho : Nat -> Seg45.F) (r2192 : Seg45.relationRow2192 rho) :
    seg45RPe66 rho = seg45RPe67 rho * rho 39786 := by
  unfold Seg45.relationRow2192 at r2192
  unfold seg45RPe66 seg45RPe67
  linear_combination -r2192

theorem seg45RStep66 (rho : Nat -> Seg45.F) (r2190 : Seg45.relationRow2190 rho) (r2191 : Seg45.relationRow2191 rho) (r2192 : Seg45.relationRow2192 rho) :
    seg45RPe66 rho = seg45RPe67 rho * rho 39786 ∧
    seg45RIl66 rho = seg45RIl67 rho + seg45RPe67 rho * (1 - rho 39786) -
      seg45RIl67 rho * (seg45RPe67 rho * (1 - rho 39786)) := by
  constructor
  · exact seg45RStep66Pe rho r2192
  · rw [seg45RStep66Acc rho, seg45RStep66L rho r2190, seg45RStep66IlMul rho r2191, seg45RStep66L rho r2190]

theorem seg45_r_chunk66 (rho : Nat -> Seg45.F) (h : Seg45.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg45.F) (0 : Seg45.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k) 67 (seg45RPeState rho 67) (seg45RIlState rho 67) := by
  have htail := seg45_r_chunk65 rho h k hq4
  unfold Seg45.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, p27, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg45.relationPart27 at p27
  rcases p27 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2190, r2191, r2192, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 66 ≤ n → n < 67 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg45RPeState rho n = seg45RPeState rho (n + 1) * rho (39720 + n) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) + seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) -
          seg45RIlState rho (n + 1) * (seg45RPeState rho (n + 1) * (1 - rho (39720 + n)))
      else
        seg45RPeState rho n = seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 66 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg45RStep66 rho r2190 r2191 r2192
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k)
    (seg45RPeState rho) (seg45RIlState rho) 66 1
    (by intro n hnlo hnhi; have key := seg45IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
