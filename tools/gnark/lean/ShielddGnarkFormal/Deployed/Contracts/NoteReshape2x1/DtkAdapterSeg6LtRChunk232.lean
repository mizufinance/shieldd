import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.DtkAdapterSeg6LtRChunk231

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg6RStep232L (rho : Nat -> Seg6.F) (r1864 : Seg6.relationRow1864 rho) :
    rho 2259 = seg6RPe233 rho * (1 - rho 2116) := by
  unfold Seg6.relationRow1864 at r1864
  unfold seg6RPe233
  linear_combination -r1864

theorem seg6RStep232IlMul (rho : Nat -> Seg6.F) (r1865 : Seg6.relationRow1865 rho) :
    rho 2260 = seg6RIl233 rho * (rho 2259) := by
  unfold Seg6.relationRow1865 at r1865
  rw [seg6RIl233Atoms rho]
  unfold seg6RIlAtom0 seg6RIlAtom1 seg6RIlAtom2 seg6RIlAtom3 seg6RIlAtom4 seg6RIlAtom5 seg6RIlAtom6 seg6RIlAtom7 seg6RIlAtom8
  linear_combination -r1865

theorem seg6RStep232Acc (rho : Nat -> Seg6.F) :
    seg6RIl232 rho = seg6RIl233 rho + (rho 2259) - (rho 2260) := by
  have hstate : seg6RIl232 rho = seg6RIl233 rho + seg6RIlAtom9 rho := by rfl
  rw [hstate]
  unfold seg6RIlAtom9
  ring

theorem seg6RStep232Pe (rho : Nat -> Seg6.F) (r1866 : Seg6.relationRow1866 rho) :
    seg6RPe232 rho = seg6RPe233 rho * rho 2116 := by
  unfold Seg6.relationRow1866 at r1866
  unfold seg6RPe232 seg6RPe233
  linear_combination -r1866

theorem seg6RStep232 (rho : Nat -> Seg6.F) (r1864 : Seg6.relationRow1864 rho) (r1865 : Seg6.relationRow1865 rho) (r1866 : Seg6.relationRow1866 rho) :
    seg6RPe232 rho = seg6RPe233 rho * rho 2116 ∧
    seg6RIl232 rho = seg6RIl233 rho + seg6RPe233 rho * (1 - rho 2116) -
      seg6RIl233 rho * (seg6RPe233 rho * (1 - rho 2116)) := by
  constructor
  · exact seg6RStep232Pe rho r1866
  · rw [seg6RStep232Acc rho, seg6RStep232L rho r1864, seg6RStep232IlMul rho r1865, seg6RStep232L rho r1864]

theorem seg6_r_chunk232 (rho : Nat -> Seg6.F) (h : Seg6.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg6.F) (0 : Seg6.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k) 233 (seg6RPeState rho 233) (seg6RIlState rho 233) := by
  have htail := seg6_r_chunk231 rho h k hq4
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
  rcases p23 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1864, r1865, r1866, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 232 ≤ n → n < 233 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg6RPeState rho n = seg6RPeState rho (n + 1) * rho (1884 + n) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) + seg6RPeState rho (n + 1) * (1 - rho (1884 + n)) -
          seg6RIlState rho (n + 1) * (seg6RPeState rho (n + 1) * (1 - rho (1884 + n)))
      else
        seg6RPeState rho n = seg6RPeState rho (n + 1) * (1 - rho (1884 + n)) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 232 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg6RStep232 rho r1864 r1865 r1866
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k)
    (seg6RPeState rho) (seg6RIlState rho) 232 1
    (by intro n hnlo hnhi; have key := seg6IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
