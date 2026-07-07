import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45LtRChunk207

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg45RStep208L (rho : Nat -> Seg45.F) (r1914 : Seg45.relationRow1914 rho) :
    rho 40145 = seg45RPe209 rho * (1 - rho 39928) := by
  unfold Seg45.relationRow1914 at r1914
  unfold seg45RPe209
  linear_combination -r1914

theorem seg45RStep208IlMul (rho : Nat -> Seg45.F) (r1915 : Seg45.relationRow1915 rho) :
    rho 40146 = seg45RIl209 rho * (rho 40145) := by
  unfold Seg45.relationRow1915 at r1915
  rw [seg45RStep208IlLc rho] at r1915
  linear_combination -r1915

theorem seg45RStep208Acc (rho : Nat -> Seg45.F) :
    seg45RIl208 rho = seg45RIl209 rho + (rho 40145) - (rho 40146) := by
  have hstate : seg45RIl208 rho = seg45RIl209 rho + seg45RIlAtom23 rho := by rfl
  rw [hstate]
  unfold seg45RIlAtom23
  ring

theorem seg45RStep208Pe (rho : Nat -> Seg45.F) (r1916 : Seg45.relationRow1916 rho) :
    seg45RPe208 rho = seg45RPe209 rho * rho 39928 := by
  unfold Seg45.relationRow1916 at r1916
  unfold seg45RPe208 seg45RPe209
  linear_combination -r1916

theorem seg45RStep208 (rho : Nat -> Seg45.F) (r1914 : Seg45.relationRow1914 rho) (r1915 : Seg45.relationRow1915 rho) (r1916 : Seg45.relationRow1916 rho) :
    seg45RPe208 rho = seg45RPe209 rho * rho 39928 ∧
    seg45RIl208 rho = seg45RIl209 rho + seg45RPe209 rho * (1 - rho 39928) -
      seg45RIl209 rho * (seg45RPe209 rho * (1 - rho 39928)) := by
  constructor
  · exact seg45RStep208Pe rho r1916
  · rw [seg45RStep208Acc rho, seg45RStep208L rho r1914, seg45RStep208IlMul rho r1915, seg45RStep208L rho r1914]

theorem seg45_r_chunk208 (rho : Nat -> Seg45.F) (h : Seg45.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg45.F) (0 : Seg45.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k) 209 (seg45RPeState rho 209) (seg45RIlState rho 209) := by
  have htail := seg45_r_chunk207 rho h k hq4
  unfold Seg45.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, p23, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg45.relationPart23 at p23
  rcases p23 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1914, r1915, r1916, _, _, _⟩
  have hsteps : ∀ n, 208 ≤ n → n < 209 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg45RPeState rho n = seg45RPeState rho (n + 1) * rho (39720 + n) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) + seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) -
          seg45RIlState rho (n + 1) * (seg45RPeState rho (n + 1) * (1 - rho (39720 + n)))
      else
        seg45RPeState rho n = seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 208 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg45RStep208 rho r1914 r1915 r1916
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k)
    (seg45RPeState rho) (seg45RIlState rho) 208 1
    (by intro n hnlo hnhi; have key := seg45IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
