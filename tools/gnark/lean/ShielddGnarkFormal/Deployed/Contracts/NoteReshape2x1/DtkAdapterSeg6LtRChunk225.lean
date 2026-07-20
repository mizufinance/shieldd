import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.DtkAdapterSeg6LtRChunk224

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg6RStep225L (rho : Nat -> Seg6.F) (r1879 : Seg6.relationRow1879 rho) :
    rho 2274 = seg6RPe226 rho * (1 - rho 2109) := by
  unfold Seg6.relationRow1879 at r1879
  unfold seg6RPe226
  linear_combination -r1879

theorem seg6RStep225IlMul (rho : Nat -> Seg6.F) (r1880 : Seg6.relationRow1880 rho) :
    rho 2275 = seg6RIl226 rho * (rho 2274) := by
  unfold Seg6.relationRow1880 at r1880
  rw [seg6RIl226Atoms rho]
  unfold seg6RIlAtom0 seg6RIlAtom1 seg6RIlAtom10 seg6RIlAtom11 seg6RIlAtom12 seg6RIlAtom2 seg6RIlAtom3 seg6RIlAtom4 seg6RIlAtom5 seg6RIlAtom6 seg6RIlAtom7 seg6RIlAtom8 seg6RIlAtom9
  linear_combination -r1880

theorem seg6RStep225Acc (rho : Nat -> Seg6.F) :
    seg6RIl225 rho = seg6RIl226 rho + (rho 2274) - (rho 2275) := by
  have hstate : seg6RIl225 rho = seg6RIl226 rho + seg6RIlAtom13 rho := by rfl
  rw [hstate]
  unfold seg6RIlAtom13
  ring

theorem seg6RStep225Pe (rho : Nat -> Seg6.F) (r1881 : Seg6.relationRow1881 rho) :
    seg6RPe225 rho = seg6RPe226 rho * rho 2109 := by
  unfold Seg6.relationRow1881 at r1881
  unfold seg6RPe225 seg6RPe226
  linear_combination -r1881

theorem seg6RStep225 (rho : Nat -> Seg6.F) (r1879 : Seg6.relationRow1879 rho) (r1880 : Seg6.relationRow1880 rho) (r1881 : Seg6.relationRow1881 rho) :
    seg6RPe225 rho = seg6RPe226 rho * rho 2109 ∧
    seg6RIl225 rho = seg6RIl226 rho + seg6RPe226 rho * (1 - rho 2109) -
      seg6RIl226 rho * (seg6RPe226 rho * (1 - rho 2109)) := by
  constructor
  · exact seg6RStep225Pe rho r1881
  · rw [seg6RStep225Acc rho, seg6RStep225L rho r1879, seg6RStep225IlMul rho r1880, seg6RStep225L rho r1879]

theorem seg6_r_chunk225 (rho : Nat -> Seg6.F) (h : Seg6.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg6.F) (0 : Seg6.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k) 226 (seg6RPeState rho 226) (seg6RIlState rho 226) := by
  have htail := seg6_r_chunk224 rho h k hq4
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
  rcases p23 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1879, r1880, r1881, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 225 ≤ n → n < 226 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg6RPeState rho n = seg6RPeState rho (n + 1) * rho (1884 + n) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) + seg6RPeState rho (n + 1) * (1 - rho (1884 + n)) -
          seg6RIlState rho (n + 1) * (seg6RPeState rho (n + 1) * (1 - rho (1884 + n)))
      else
        seg6RPeState rho n = seg6RPeState rho (n + 1) * (1 - rho (1884 + n)) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 225 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg6RStep225 rho r1879 r1880 r1881
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k)
    (seg6RPeState rho) (seg6RIlState rho) 225 1
    (by intro n hnlo hnhi; have key := seg6IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
