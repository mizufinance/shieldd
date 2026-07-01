import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34LtRChunk204

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg34RStep205L (rho : Nat -> Seg34.F) (r1919 : Seg34.relationRow1919 rho) :
    rho 33194 = seg34RPe206 rho * (1 - rho 32969) := by
  unfold Seg34.relationRow1919 at r1919
  unfold seg34RPe206
  linear_combination -r1919

theorem seg34RStep205IlMul (rho : Nat -> Seg34.F) (r1920 : Seg34.relationRow1920 rho) :
    rho 33195 = seg34RIl206 rho * (rho 33194) := by
  unfold Seg34.relationRow1920 at r1920
  rw [seg34RStep205IlLc rho] at r1920
  linear_combination -r1920

theorem seg34RStep205Acc (rho : Nat -> Seg34.F) :
    seg34RIl205 rho = seg34RIl206 rho + (rho 33194) - (rho 33195) := by
  have hstate : seg34RIl205 rho = seg34RIl206 rho + seg34RIlAtom24 rho := by rfl
  rw [hstate]
  unfold seg34RIlAtom24
  ring

theorem seg34RStep205Pe (rho : Nat -> Seg34.F) (r1921 : Seg34.relationRow1921 rho) :
    seg34RPe205 rho = seg34RPe206 rho * rho 32969 := by
  unfold Seg34.relationRow1921 at r1921
  unfold seg34RPe205 seg34RPe206
  linear_combination -r1921

theorem seg34RStep205 (rho : Nat -> Seg34.F) (r1919 : Seg34.relationRow1919 rho) (r1920 : Seg34.relationRow1920 rho) (r1921 : Seg34.relationRow1921 rho) :
    seg34RPe205 rho = seg34RPe206 rho * rho 32969 ∧
    seg34RIl205 rho = seg34RIl206 rho + seg34RPe206 rho * (1 - rho 32969) -
      seg34RIl206 rho * (seg34RPe206 rho * (1 - rho 32969)) := by
  constructor
  · exact seg34RStep205Pe rho r1921
  · rw [seg34RStep205Acc rho, seg34RStep205L rho r1919, seg34RStep205IlMul rho r1920, seg34RStep205L rho r1919]

theorem seg34_r_chunk205 (rho : Nat -> Seg34.F) (h : Seg34.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg34.F) (0 : Seg34.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k) 206 (seg34RPeState rho 206) (seg34RIlState rho 206) := by
  have htail := seg34_r_chunk204 rho h k hq4
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart23 at p23
  rcases p23 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1919⟩
  unfold Seg34.relationPart24 at p24
  rcases p24 with ⟨r1920, r1921, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 205 ≤ n → n < 206 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg34RPeState rho n = seg34RPeState rho (n + 1) * rho (32764 + n) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) + seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) -
          seg34RIlState rho (n + 1) * (seg34RPeState rho (n + 1) * (1 - rho (32764 + n)))
      else
        seg34RPeState rho n = seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 205 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg34RStep205 rho r1919 r1920 r1921
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k)
    (seg34RPeState rho) (seg34RIlState rho) 205 1
    (by intro n hnlo hnhi; have key := seg34IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
