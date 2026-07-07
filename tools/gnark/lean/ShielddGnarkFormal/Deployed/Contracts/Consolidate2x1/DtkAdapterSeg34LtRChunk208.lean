import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34LtRChunk207

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg34RStep208L (rho : Nat -> Seg34.F) (r1914 : Seg34.relationRow1914 rho) :
    rho 33189 = seg34RPe209 rho * (1 - rho 32972) := by
  unfold Seg34.relationRow1914 at r1914
  unfold seg34RPe209
  linear_combination -r1914

theorem seg34RStep208IlMul (rho : Nat -> Seg34.F) (r1915 : Seg34.relationRow1915 rho) :
    rho 33190 = seg34RIl209 rho * (rho 33189) := by
  unfold Seg34.relationRow1915 at r1915
  rw [seg34RStep208IlLc rho] at r1915
  linear_combination -r1915

theorem seg34RStep208Acc (rho : Nat -> Seg34.F) :
    seg34RIl208 rho = seg34RIl209 rho + (rho 33189) - (rho 33190) := by
  have hstate : seg34RIl208 rho = seg34RIl209 rho + seg34RIlAtom23 rho := by rfl
  rw [hstate]
  unfold seg34RIlAtom23
  ring

theorem seg34RStep208Pe (rho : Nat -> Seg34.F) (r1916 : Seg34.relationRow1916 rho) :
    seg34RPe208 rho = seg34RPe209 rho * rho 32972 := by
  unfold Seg34.relationRow1916 at r1916
  unfold seg34RPe208 seg34RPe209
  linear_combination -r1916

theorem seg34RStep208 (rho : Nat -> Seg34.F) (r1914 : Seg34.relationRow1914 rho) (r1915 : Seg34.relationRow1915 rho) (r1916 : Seg34.relationRow1916 rho) :
    seg34RPe208 rho = seg34RPe209 rho * rho 32972 ∧
    seg34RIl208 rho = seg34RIl209 rho + seg34RPe209 rho * (1 - rho 32972) -
      seg34RIl209 rho * (seg34RPe209 rho * (1 - rho 32972)) := by
  constructor
  · exact seg34RStep208Pe rho r1916
  · rw [seg34RStep208Acc rho, seg34RStep208L rho r1914, seg34RStep208IlMul rho r1915, seg34RStep208L rho r1914]

theorem seg34_r_chunk208 (rho : Nat -> Seg34.F) (h : Seg34.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg34.F) (0 : Seg34.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k) 209 (seg34RPeState rho 209) (seg34RIlState rho 209) := by
  have htail := seg34_r_chunk207 rho h k hq4
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart23 at p23
  rcases p23 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1914, r1915, r1916, _, _, _⟩
  have hsteps : ∀ n, 208 ≤ n → n < 209 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg34RPeState rho n = seg34RPeState rho (n + 1) * rho (32764 + n) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) + seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) -
          seg34RIlState rho (n + 1) * (seg34RPeState rho (n + 1) * (1 - rho (32764 + n)))
      else
        seg34RPeState rho n = seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 208 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg34RStep208 rho r1914 r1915 r1916
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k)
    (seg34RPeState rho) (seg34RIlState rho) 208 1
    (by intro n hnlo hnhi; have key := seg34IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
