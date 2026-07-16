import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.DtkAdapterSeg6LtRChunk223

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg6RStep224L (rho : Nat -> Seg6.F) (r1882 : Seg6.relationRow1882 rho) :
    rho 2283 = seg6RPe225 rho * (1 - rho 2114) := by
  unfold Seg6.relationRow1882 at r1882
  unfold seg6RPe225
  linear_combination -r1882

theorem seg6RStep224IlMul (rho : Nat -> Seg6.F) (r1883 : Seg6.relationRow1883 rho) :
    rho 2284 = seg6RIl225 rho * (rho 2283) := by
  unfold Seg6.relationRow1883 at r1883
  rw [seg6RIl225Atoms rho]
  unfold seg6RIlAtom0 seg6RIlAtom1 seg6RIlAtom10 seg6RIlAtom11 seg6RIlAtom12 seg6RIlAtom13 seg6RIlAtom2 seg6RIlAtom3 seg6RIlAtom4 seg6RIlAtom5 seg6RIlAtom6 seg6RIlAtom7 seg6RIlAtom8 seg6RIlAtom9
  linear_combination -r1883

theorem seg6RStep224Acc (rho : Nat -> Seg6.F) :
    seg6RIl224 rho = seg6RIl225 rho + (rho 2283) - (rho 2284) := by
  have hstate : seg6RIl224 rho = seg6RIl225 rho + seg6RIlAtom14 rho := by rfl
  rw [hstate]
  unfold seg6RIlAtom14
  ring

theorem seg6RStep224Pe (rho : Nat -> Seg6.F) (r1884 : Seg6.relationRow1884 rho) :
    seg6RPe224 rho = seg6RPe225 rho * rho 2114 := by
  unfold Seg6.relationRow1884 at r1884
  unfold seg6RPe224 seg6RPe225
  linear_combination -r1884

theorem seg6RStep224 (rho : Nat -> Seg6.F) (r1882 : Seg6.relationRow1882 rho) (r1883 : Seg6.relationRow1883 rho) (r1884 : Seg6.relationRow1884 rho) :
    seg6RPe224 rho = seg6RPe225 rho * rho 2114 ∧
    seg6RIl224 rho = seg6RIl225 rho + seg6RPe225 rho * (1 - rho 2114) -
      seg6RIl225 rho * (seg6RPe225 rho * (1 - rho 2114)) := by
  constructor
  · exact seg6RStep224Pe rho r1884
  · rw [seg6RStep224Acc rho, seg6RStep224L rho r1882, seg6RStep224IlMul rho r1883, seg6RStep224L rho r1882]

theorem seg6_r_chunk224 (rho : Nat -> Seg6.F) (h : Seg6.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg6.F) (0 : Seg6.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k) 225 (seg6RPeState rho 225) (seg6RIlState rho 225) := by
  have htail := seg6_r_chunk223 rho h k hq4
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
  rcases p23 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1882, r1883, r1884, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 224 ≤ n → n < 225 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg6RPeState rho n = seg6RPeState rho (n + 1) * rho (1890 + n) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) + seg6RPeState rho (n + 1) * (1 - rho (1890 + n)) -
          seg6RIlState rho (n + 1) * (seg6RPeState rho (n + 1) * (1 - rho (1890 + n)))
      else
        seg6RPeState rho n = seg6RPeState rho (n + 1) * (1 - rho (1890 + n)) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 224 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg6RStep224 rho r1882 r1883 r1884
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k)
    (seg6RPeState rho) (seg6RIlState rho) 224 1
    (by intro n hnlo hnhi; have key := seg6IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
