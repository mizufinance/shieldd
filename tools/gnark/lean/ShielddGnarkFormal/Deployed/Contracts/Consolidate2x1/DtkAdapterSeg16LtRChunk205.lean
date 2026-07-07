import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16LtRChunk204

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg16RStep205L (rho : Nat -> Seg16.F) (r1919 : Seg16.relationRow1919 rho) :
    rho 14494 = seg16RPe206 rho * (1 - rho 14269) := by
  unfold Seg16.relationRow1919 at r1919
  unfold seg16RPe206
  linear_combination -r1919

theorem seg16RStep205IlMul (rho : Nat -> Seg16.F) (r1920 : Seg16.relationRow1920 rho) :
    rho 14495 = seg16RIl206 rho * (rho 14494) := by
  unfold Seg16.relationRow1920 at r1920
  rw [seg16RStep205IlLc rho] at r1920
  linear_combination -r1920

theorem seg16RStep205Acc (rho : Nat -> Seg16.F) :
    seg16RIl205 rho = seg16RIl206 rho + (rho 14494) - (rho 14495) := by
  have hstate : seg16RIl205 rho = seg16RIl206 rho + seg16RIlAtom24 rho := by rfl
  rw [hstate]
  unfold seg16RIlAtom24
  ring

theorem seg16RStep205Pe (rho : Nat -> Seg16.F) (r1921 : Seg16.relationRow1921 rho) :
    seg16RPe205 rho = seg16RPe206 rho * rho 14269 := by
  unfold Seg16.relationRow1921 at r1921
  unfold seg16RPe205 seg16RPe206
  linear_combination -r1921

theorem seg16RStep205 (rho : Nat -> Seg16.F) (r1919 : Seg16.relationRow1919 rho) (r1920 : Seg16.relationRow1920 rho) (r1921 : Seg16.relationRow1921 rho) :
    seg16RPe205 rho = seg16RPe206 rho * rho 14269 ∧
    seg16RIl205 rho = seg16RIl206 rho + seg16RPe206 rho * (1 - rho 14269) -
      seg16RIl206 rho * (seg16RPe206 rho * (1 - rho 14269)) := by
  constructor
  · exact seg16RStep205Pe rho r1921
  · rw [seg16RStep205Acc rho, seg16RStep205L rho r1919, seg16RStep205IlMul rho r1920, seg16RStep205L rho r1919]

theorem seg16_r_chunk205 (rho : Nat -> Seg16.F) (h : Seg16.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg16.F) (0 : Seg16.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k) 206 (seg16RPeState rho 206) (seg16RIlState rho 206) := by
  have htail := seg16_r_chunk204 rho h k hq4
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart23 at p23
  rcases p23 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1919⟩
  unfold Seg16.relationPart24 at p24
  rcases p24 with ⟨r1920, r1921, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 205 ≤ n → n < 206 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg16RPeState rho n = seg16RPeState rho (n + 1) * rho (14064 + n) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) + seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) -
          seg16RIlState rho (n + 1) * (seg16RPeState rho (n + 1) * (1 - rho (14064 + n)))
      else
        seg16RPeState rho n = seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 205 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg16RStep205 rho r1919 r1920 r1921
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k)
    (seg16RPeState rho) (seg16RIlState rho) 205 1
    (by intro n hnlo hnhi; have key := seg16IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
