import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.DtkAdapterSeg6LtRChunk204

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg6RStep205L (rho : Nat -> Seg6.F) (r1919 : Seg6.relationRow1919 rho) :
    rho 2320 = seg6RPe206 rho * (1 - rho 2095) := by
  unfold Seg6.relationRow1919 at r1919
  unfold seg6RPe206
  linear_combination -r1919

theorem seg6RStep205IlMul (rho : Nat -> Seg6.F) (r1920 : Seg6.relationRow1920 rho) :
    rho 2321 = seg6RIl206 rho * (rho 2320) := by
  unfold Seg6.relationRow1920 at r1920
  rw [seg6RStep205IlLc rho] at r1920
  linear_combination -r1920

theorem seg6RStep205Acc (rho : Nat -> Seg6.F) :
    seg6RIl205 rho = seg6RIl206 rho + (rho 2320) - (rho 2321) := by
  have hstate : seg6RIl205 rho = seg6RIl206 rho + seg6RIlAtom24 rho := by rfl
  rw [hstate]
  unfold seg6RIlAtom24
  ring

theorem seg6RStep205Pe (rho : Nat -> Seg6.F) (r1921 : Seg6.relationRow1921 rho) :
    seg6RPe205 rho = seg6RPe206 rho * rho 2095 := by
  unfold Seg6.relationRow1921 at r1921
  unfold seg6RPe205 seg6RPe206
  linear_combination -r1921

theorem seg6RStep205 (rho : Nat -> Seg6.F) (r1919 : Seg6.relationRow1919 rho) (r1920 : Seg6.relationRow1920 rho) (r1921 : Seg6.relationRow1921 rho) :
    seg6RPe205 rho = seg6RPe206 rho * rho 2095 ∧
    seg6RIl205 rho = seg6RIl206 rho + seg6RPe206 rho * (1 - rho 2095) -
      seg6RIl206 rho * (seg6RPe206 rho * (1 - rho 2095)) := by
  constructor
  · exact seg6RStep205Pe rho r1921
  · rw [seg6RStep205Acc rho, seg6RStep205L rho r1919, seg6RStep205IlMul rho r1920, seg6RStep205L rho r1919]

theorem seg6_r_chunk205 (rho : Nat -> Seg6.F) (h : Seg6.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg6.F) (0 : Seg6.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k) 206 (seg6RPeState rho 206) (seg6RIlState rho 206) := by
  have htail := seg6_r_chunk204 rho h k hq4
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, p23, p24, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart23 at p23
  rcases p23 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1919⟩
  unfold Seg6.relationPart24 at p24
  rcases p24 with ⟨r1920, r1921, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 205 ≤ n → n < 206 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg6RPeState rho n = seg6RPeState rho (n + 1) * rho (1890 + n) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) + seg6RPeState rho (n + 1) * (1 - rho (1890 + n)) -
          seg6RIlState rho (n + 1) * (seg6RPeState rho (n + 1) * (1 - rho (1890 + n)))
      else
        seg6RPeState rho n = seg6RPeState rho (n + 1) * (1 - rho (1890 + n)) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 205 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg6RStep205 rho r1919 r1920 r1921
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k)
    (seg6RPeState rho) (seg6RIlState rho) 205 1
    (by intro n hnlo hnhi; have key := seg6IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
