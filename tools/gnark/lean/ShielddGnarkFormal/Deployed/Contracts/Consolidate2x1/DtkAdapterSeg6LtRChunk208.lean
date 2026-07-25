import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg6LtRChunk207

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg6RStep208L (rho : Nat -> Seg6.F) (r1914 : Seg6.relationRow1914 rho) :
    rho 2315 = seg6RPe209 rho * (1 - rho 2098) := by
  unfold Seg6.relationRow1914 at r1914
  unfold seg6RPe209
  linear_combination -r1914

theorem seg6RStep208IlMul (rho : Nat -> Seg6.F) (r1915 : Seg6.relationRow1915 rho) :
    rho 2316 = seg6RIl209 rho * (rho 2315) := by
  unfold Seg6.relationRow1915 at r1915
  rw [seg6RStep208IlLc rho] at r1915
  linear_combination -r1915

theorem seg6RStep208Acc (rho : Nat -> Seg6.F) :
    seg6RIl208 rho = seg6RIl209 rho + (rho 2315) - (rho 2316) := by
  have hstate : seg6RIl208 rho = seg6RIl209 rho + seg6RIlAtom23 rho := by rfl
  rw [hstate]
  unfold seg6RIlAtom23
  ring

theorem seg6RStep208Pe (rho : Nat -> Seg6.F) (r1916 : Seg6.relationRow1916 rho) :
    seg6RPe208 rho = seg6RPe209 rho * rho 2098 := by
  unfold Seg6.relationRow1916 at r1916
  unfold seg6RPe208 seg6RPe209
  linear_combination -r1916

theorem seg6RStep208 (rho : Nat -> Seg6.F) (r1914 : Seg6.relationRow1914 rho) (r1915 : Seg6.relationRow1915 rho) (r1916 : Seg6.relationRow1916 rho) :
    seg6RPe208 rho = seg6RPe209 rho * rho 2098 ∧
    seg6RIl208 rho = seg6RIl209 rho + seg6RPe209 rho * (1 - rho 2098) -
      seg6RIl209 rho * (seg6RPe209 rho * (1 - rho 2098)) := by
  constructor
  · exact seg6RStep208Pe rho r1916
  · rw [seg6RStep208Acc rho, seg6RStep208L rho r1914, seg6RStep208IlMul rho r1915, seg6RStep208L rho r1914]

theorem seg6_r_chunk208 (rho : Nat -> Seg6.F) (h : Seg6.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg6.F) (0 : Seg6.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k) 209 (seg6RPeState rho 209) (seg6RIlState rho 209) := by
  have htail := seg6_r_chunk207 rho h k hq4
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, p23, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart23 at p23
  rcases p23 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1914, r1915, r1916, _, _, _⟩
  have hsteps : ∀ n, 208 ≤ n → n < 209 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg6RPeState rho n = seg6RPeState rho (n + 1) * rho (1890 + n) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) + seg6RPeState rho (n + 1) * (1 - rho (1890 + n)) -
          seg6RIlState rho (n + 1) * (seg6RPeState rho (n + 1) * (1 - rho (1890 + n)))
      else
        seg6RPeState rho n = seg6RPeState rho (n + 1) * (1 - rho (1890 + n)) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 208 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg6RStep208 rho r1914 r1915 r1916
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k)
    (seg6RPeState rho) (seg6RIlState rho) 208 1
    (by intro n hnlo hnhi; have key := seg6IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
