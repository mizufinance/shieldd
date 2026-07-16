import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.DtkAdapterSeg6LtRChunk217

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg6RStep218L (rho : Nat -> Seg6.F) (r1894 : Seg6.relationRow1894 rho) :
    rho 2295 = seg6RPe219 rho * (1 - rho 2108) := by
  unfold Seg6.relationRow1894 at r1894
  unfold seg6RPe219
  linear_combination -r1894

theorem seg6RStep218IlMul (rho : Nat -> Seg6.F) (r1895 : Seg6.relationRow1895 rho) :
    rho 2296 = seg6RIl219 rho * (rho 2295) := by
  unfold Seg6.relationRow1895 at r1895
  rw [seg6RStep218IlLc rho] at r1895
  linear_combination -r1895

theorem seg6RStep218Acc (rho : Nat -> Seg6.F) :
    seg6RIl218 rho = seg6RIl219 rho + (rho 2295) - (rho 2296) := by
  have hstate : seg6RIl218 rho = seg6RIl219 rho + seg6RIlAtom18 rho := by rfl
  rw [hstate]
  unfold seg6RIlAtom18
  ring

theorem seg6RStep218Pe (rho : Nat -> Seg6.F) (r1896 : Seg6.relationRow1896 rho) :
    seg6RPe218 rho = seg6RPe219 rho * rho 2108 := by
  unfold Seg6.relationRow1896 at r1896
  unfold seg6RPe218 seg6RPe219
  linear_combination -r1896

theorem seg6RStep218 (rho : Nat -> Seg6.F) (r1894 : Seg6.relationRow1894 rho) (r1895 : Seg6.relationRow1895 rho) (r1896 : Seg6.relationRow1896 rho) :
    seg6RPe218 rho = seg6RPe219 rho * rho 2108 ∧
    seg6RIl218 rho = seg6RIl219 rho + seg6RPe219 rho * (1 - rho 2108) -
      seg6RIl219 rho * (seg6RPe219 rho * (1 - rho 2108)) := by
  constructor
  · exact seg6RStep218Pe rho r1896
  · rw [seg6RStep218Acc rho, seg6RStep218L rho r1894, seg6RStep218IlMul rho r1895, seg6RStep218L rho r1894]

theorem seg6_r_chunk218 (rho : Nat -> Seg6.F) (h : Seg6.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg6.F) (0 : Seg6.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k) 219 (seg6RPeState rho 219) (seg6RIlState rho 219) := by
  have htail := seg6_r_chunk217 rho h k hq4
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
  rcases p23 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1894, r1895, r1896, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 218 ≤ n → n < 219 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg6RPeState rho n = seg6RPeState rho (n + 1) * rho (1890 + n) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) + seg6RPeState rho (n + 1) * (1 - rho (1890 + n)) -
          seg6RIlState rho (n + 1) * (seg6RPeState rho (n + 1) * (1 - rho (1890 + n)))
      else
        seg6RPeState rho n = seg6RPeState rho (n + 1) * (1 - rho (1890 + n)) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 218 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg6RStep218 rho r1894 r1895 r1896
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k)
    (seg6RPeState rho) (seg6RIlState rho) 218 1
    (by intro n hnlo hnhi; have key := seg6IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
