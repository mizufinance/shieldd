import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5LtRChunk204

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg5RStep205L (rho : Nat -> Seg5.F) (r1919 : Seg5.relationRow1919 rho) :
    rho 1617 = seg5RPe206 rho * (1 - rho 1392) := by
  unfold Seg5.relationRow1919 at r1919
  unfold seg5RPe206
  linear_combination -r1919

theorem seg5RStep205IlMul (rho : Nat -> Seg5.F) (r1920 : Seg5.relationRow1920 rho) :
    rho 1618 = seg5RIl206 rho * (rho 1617) := by
  unfold Seg5.relationRow1920 at r1920
  rw [seg5RStep205IlLc rho] at r1920
  linear_combination -r1920

theorem seg5RStep205Acc (rho : Nat -> Seg5.F) :
    seg5RIl205 rho = seg5RIl206 rho + (rho 1617) - (rho 1618) := by
  have hstate : seg5RIl205 rho = seg5RIl206 rho + seg5RIlAtom24 rho := by rfl
  rw [hstate]
  unfold seg5RIlAtom24
  ring

theorem seg5RStep205Pe (rho : Nat -> Seg5.F) (r1921 : Seg5.relationRow1921 rho) :
    seg5RPe205 rho = seg5RPe206 rho * rho 1392 := by
  unfold Seg5.relationRow1921 at r1921
  unfold seg5RPe205 seg5RPe206
  linear_combination -r1921

theorem seg5RStep205 (rho : Nat -> Seg5.F) (r1919 : Seg5.relationRow1919 rho) (r1920 : Seg5.relationRow1920 rho) (r1921 : Seg5.relationRow1921 rho) :
    seg5RPe205 rho = seg5RPe206 rho * rho 1392 ∧
    seg5RIl205 rho = seg5RIl206 rho + seg5RPe206 rho * (1 - rho 1392) -
      seg5RIl206 rho * (seg5RPe206 rho * (1 - rho 1392)) := by
  constructor
  · exact seg5RStep205Pe rho r1921
  · rw [seg5RStep205Acc rho, seg5RStep205L rho r1919, seg5RStep205IlMul rho r1920, seg5RStep205L rho r1919]

theorem seg5_r_chunk205 (rho : Nat -> Seg5.F) (h : Seg5.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg5.F) (0 : Seg5.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k) 206 (seg5RPeState rho 206) (seg5RIlState rho 206) := by
  have htail := seg5_r_chunk204 rho h k hq4
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, p23, p24, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg5.relationPart23 at p23
  rcases p23 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1919⟩
  unfold Seg5.relationPart24 at p24
  rcases p24 with ⟨r1920, r1921, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 205 ≤ n → n < 206 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg5RPeState rho n = seg5RPeState rho (n + 1) * rho (1187 + n) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) + seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) -
          seg5RIlState rho (n + 1) * (seg5RPeState rho (n + 1) * (1 - rho (1187 + n)))
      else
        seg5RPeState rho n = seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 205 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg5RStep205 rho r1919 r1920 r1921
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k)
    (seg5RPeState rho) (seg5RIlState rho) 205 1
    (by intro n hnlo hnhi; have key := seg5IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
