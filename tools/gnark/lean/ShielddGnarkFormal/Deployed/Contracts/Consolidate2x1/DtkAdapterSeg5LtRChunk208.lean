import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5LtRChunk207

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg5RStep208L (rho : Nat -> Seg5.F) (r1914 : Seg5.relationRow1914 rho) :
    rho 1612 = seg5RPe209 rho * (1 - rho 1395) := by
  unfold Seg5.relationRow1914 at r1914
  unfold seg5RPe209
  linear_combination -r1914

theorem seg5RStep208IlMul (rho : Nat -> Seg5.F) (r1915 : Seg5.relationRow1915 rho) :
    rho 1613 = seg5RIl209 rho * (rho 1612) := by
  unfold Seg5.relationRow1915 at r1915
  rw [seg5RStep208IlLc rho] at r1915
  linear_combination -r1915

theorem seg5RStep208Acc (rho : Nat -> Seg5.F) :
    seg5RIl208 rho = seg5RIl209 rho + (rho 1612) - (rho 1613) := by
  have hstate : seg5RIl208 rho = seg5RIl209 rho + seg5RIlAtom23 rho := by rfl
  rw [hstate]
  unfold seg5RIlAtom23
  ring

theorem seg5RStep208Pe (rho : Nat -> Seg5.F) (r1916 : Seg5.relationRow1916 rho) :
    seg5RPe208 rho = seg5RPe209 rho * rho 1395 := by
  unfold Seg5.relationRow1916 at r1916
  unfold seg5RPe208 seg5RPe209
  linear_combination -r1916

theorem seg5RStep208 (rho : Nat -> Seg5.F) (r1914 : Seg5.relationRow1914 rho) (r1915 : Seg5.relationRow1915 rho) (r1916 : Seg5.relationRow1916 rho) :
    seg5RPe208 rho = seg5RPe209 rho * rho 1395 ∧
    seg5RIl208 rho = seg5RIl209 rho + seg5RPe209 rho * (1 - rho 1395) -
      seg5RIl209 rho * (seg5RPe209 rho * (1 - rho 1395)) := by
  constructor
  · exact seg5RStep208Pe rho r1916
  · rw [seg5RStep208Acc rho, seg5RStep208L rho r1914, seg5RStep208IlMul rho r1915, seg5RStep208L rho r1914]

theorem seg5_r_chunk208 (rho : Nat -> Seg5.F) (h : Seg5.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg5.F) (0 : Seg5.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k) 209 (seg5RPeState rho 209) (seg5RIlState rho 209) := by
  have htail := seg5_r_chunk207 rho h k hq4
  unfold Seg5.relation at h
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
  unfold Seg5.relationPart23 at p23
  rcases p23 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1914, r1915, r1916, _, _, _⟩
  have hsteps : ∀ n, 208 ≤ n → n < 209 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg5RPeState rho n = seg5RPeState rho (n + 1) * rho (1187 + n) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) + seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) -
          seg5RIlState rho (n + 1) * (seg5RPeState rho (n + 1) * (1 - rho (1187 + n)))
      else
        seg5RPeState rho n = seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 208 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg5RStep208 rho r1914 r1915 r1916
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k)
    (seg5RPeState rho) (seg5RIlState rho) 208 1
    (by intro n hnlo hnhi; have key := seg5IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
