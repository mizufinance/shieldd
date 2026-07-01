import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16LtRChunk207

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg16RStep208L (rho : Nat -> Seg16.F) (r1914 : Seg16.relationRow1914 rho) :
    rho 14489 = seg16RPe209 rho * (1 - rho 14272) := by
  unfold Seg16.relationRow1914 at r1914
  unfold seg16RPe209
  linear_combination -r1914

theorem seg16RStep208IlMul (rho : Nat -> Seg16.F) (r1915 : Seg16.relationRow1915 rho) :
    rho 14490 = seg16RIl209 rho * (rho 14489) := by
  unfold Seg16.relationRow1915 at r1915
  rw [seg16RStep208IlLc rho] at r1915
  linear_combination -r1915

theorem seg16RStep208Acc (rho : Nat -> Seg16.F) :
    seg16RIl208 rho = seg16RIl209 rho + (rho 14489) - (rho 14490) := by
  have hstate : seg16RIl208 rho = seg16RIl209 rho + seg16RIlAtom23 rho := by rfl
  rw [hstate]
  unfold seg16RIlAtom23
  ring

theorem seg16RStep208Pe (rho : Nat -> Seg16.F) (r1916 : Seg16.relationRow1916 rho) :
    seg16RPe208 rho = seg16RPe209 rho * rho 14272 := by
  unfold Seg16.relationRow1916 at r1916
  unfold seg16RPe208 seg16RPe209
  linear_combination -r1916

theorem seg16RStep208 (rho : Nat -> Seg16.F) (r1914 : Seg16.relationRow1914 rho) (r1915 : Seg16.relationRow1915 rho) (r1916 : Seg16.relationRow1916 rho) :
    seg16RPe208 rho = seg16RPe209 rho * rho 14272 ∧
    seg16RIl208 rho = seg16RIl209 rho + seg16RPe209 rho * (1 - rho 14272) -
      seg16RIl209 rho * (seg16RPe209 rho * (1 - rho 14272)) := by
  constructor
  · exact seg16RStep208Pe rho r1916
  · rw [seg16RStep208Acc rho, seg16RStep208L rho r1914, seg16RStep208IlMul rho r1915, seg16RStep208L rho r1914]

theorem seg16_r_chunk208 (rho : Nat -> Seg16.F) (h : Seg16.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg16.F) (0 : Seg16.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k) 209 (seg16RPeState rho 209) (seg16RIlState rho 209) := by
  have htail := seg16_r_chunk207 rho h k hq4
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart23 at p23
  rcases p23 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1914, r1915, r1916, _, _, _⟩
  have hsteps : ∀ n, 208 ≤ n → n < 209 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg16RPeState rho n = seg16RPeState rho (n + 1) * rho (14064 + n) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) + seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) -
          seg16RIlState rho (n + 1) * (seg16RPeState rho (n + 1) * (1 - rho (14064 + n)))
      else
        seg16RPeState rho n = seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 208 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg16RStep208 rho r1914 r1915 r1916
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k)
    (seg16RPeState rho) (seg16RIlState rho) 208 1
    (by intro n hnlo hnhi; have key := seg16IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
