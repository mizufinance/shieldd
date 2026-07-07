import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45LtRChunk204

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg45RStep205L (rho : Nat -> Seg45.F) (r1919 : Seg45.relationRow1919 rho) :
    rho 40150 = seg45RPe206 rho * (1 - rho 39925) := by
  unfold Seg45.relationRow1919 at r1919
  unfold seg45RPe206
  linear_combination -r1919

theorem seg45RStep205IlMul (rho : Nat -> Seg45.F) (r1920 : Seg45.relationRow1920 rho) :
    rho 40151 = seg45RIl206 rho * (rho 40150) := by
  unfold Seg45.relationRow1920 at r1920
  rw [seg45RStep205IlLc rho] at r1920
  linear_combination -r1920

theorem seg45RStep205Acc (rho : Nat -> Seg45.F) :
    seg45RIl205 rho = seg45RIl206 rho + (rho 40150) - (rho 40151) := by
  have hstate : seg45RIl205 rho = seg45RIl206 rho + seg45RIlAtom24 rho := by rfl
  rw [hstate]
  unfold seg45RIlAtom24
  ring

theorem seg45RStep205Pe (rho : Nat -> Seg45.F) (r1921 : Seg45.relationRow1921 rho) :
    seg45RPe205 rho = seg45RPe206 rho * rho 39925 := by
  unfold Seg45.relationRow1921 at r1921
  unfold seg45RPe205 seg45RPe206
  linear_combination -r1921

theorem seg45RStep205 (rho : Nat -> Seg45.F) (r1919 : Seg45.relationRow1919 rho) (r1920 : Seg45.relationRow1920 rho) (r1921 : Seg45.relationRow1921 rho) :
    seg45RPe205 rho = seg45RPe206 rho * rho 39925 ∧
    seg45RIl205 rho = seg45RIl206 rho + seg45RPe206 rho * (1 - rho 39925) -
      seg45RIl206 rho * (seg45RPe206 rho * (1 - rho 39925)) := by
  constructor
  · exact seg45RStep205Pe rho r1921
  · rw [seg45RStep205Acc rho, seg45RStep205L rho r1919, seg45RStep205IlMul rho r1920, seg45RStep205L rho r1919]

theorem seg45_r_chunk205 (rho : Nat -> Seg45.F) (h : Seg45.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg45.F) (0 : Seg45.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k) 206 (seg45RPeState rho 206) (seg45RIlState rho 206) := by
  have htail := seg45_r_chunk204 rho h k hq4
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart23 at p23
  rcases p23 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1919⟩
  unfold Seg45.relationPart24 at p24
  rcases p24 with ⟨r1920, r1921, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 205 ≤ n → n < 206 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg45RPeState rho n = seg45RPeState rho (n + 1) * rho (39720 + n) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) + seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) -
          seg45RIlState rho (n + 1) * (seg45RPeState rho (n + 1) * (1 - rho (39720 + n)))
      else
        seg45RPeState rho n = seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 205 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg45RStep205 rho r1919 r1920 r1921
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k)
    (seg45RPeState rho) (seg45RIlState rho) 205 1
    (by intro n hnlo hnhi; have key := seg45IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
