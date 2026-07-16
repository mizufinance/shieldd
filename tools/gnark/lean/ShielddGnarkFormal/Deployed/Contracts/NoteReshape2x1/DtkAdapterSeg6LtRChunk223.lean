import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.DtkAdapterSeg6LtRChunk222

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg6RStep223L (rho : Nat -> Seg6.F) (r1885 : Seg6.relationRow1885 rho) :
    rho 2286 = seg6RPe224 rho * (1 - rho 2113) := by
  unfold Seg6.relationRow1885 at r1885
  unfold seg6RPe224
  linear_combination -r1885

theorem seg6RStep223IlMul (rho : Nat -> Seg6.F) (r1886 : Seg6.relationRow1886 rho) :
    rho 2287 = seg6RIl224 rho * (rho 2286) := by
  unfold Seg6.relationRow1886 at r1886
  rw [seg6RIl224Atoms rho]
  unfold seg6RIlAtom0 seg6RIlAtom1 seg6RIlAtom10 seg6RIlAtom11 seg6RIlAtom12 seg6RIlAtom13 seg6RIlAtom14 seg6RIlAtom2 seg6RIlAtom3 seg6RIlAtom4 seg6RIlAtom5 seg6RIlAtom6 seg6RIlAtom7 seg6RIlAtom8 seg6RIlAtom9
  linear_combination -r1886

theorem seg6RStep223Acc (rho : Nat -> Seg6.F) :
    seg6RIl223 rho = seg6RIl224 rho + (rho 2286) - (rho 2287) := by
  have hstate : seg6RIl223 rho = seg6RIl224 rho + seg6RIlAtom15 rho := by rfl
  rw [hstate]
  unfold seg6RIlAtom15
  ring

theorem seg6RStep223Pe (rho : Nat -> Seg6.F) (r1887 : Seg6.relationRow1887 rho) :
    seg6RPe223 rho = seg6RPe224 rho * rho 2113 := by
  unfold Seg6.relationRow1887 at r1887
  unfold seg6RPe223 seg6RPe224
  linear_combination -r1887

theorem seg6RStep223 (rho : Nat -> Seg6.F) (r1885 : Seg6.relationRow1885 rho) (r1886 : Seg6.relationRow1886 rho) (r1887 : Seg6.relationRow1887 rho) :
    seg6RPe223 rho = seg6RPe224 rho * rho 2113 ∧
    seg6RIl223 rho = seg6RIl224 rho + seg6RPe224 rho * (1 - rho 2113) -
      seg6RIl224 rho * (seg6RPe224 rho * (1 - rho 2113)) := by
  constructor
  · exact seg6RStep223Pe rho r1887
  · rw [seg6RStep223Acc rho, seg6RStep223L rho r1885, seg6RStep223IlMul rho r1886, seg6RStep223L rho r1885]

theorem seg6_r_chunk223 (rho : Nat -> Seg6.F) (h : Seg6.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg6.F) (0 : Seg6.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k) 224 (seg6RPeState rho 224) (seg6RIlState rho 224) := by
  have htail := seg6_r_chunk222 rho h k hq4
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
  rcases p23 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1885, r1886, r1887, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 223 ≤ n → n < 224 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg6RPeState rho n = seg6RPeState rho (n + 1) * rho (1890 + n) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) + seg6RPeState rho (n + 1) * (1 - rho (1890 + n)) -
          seg6RIlState rho (n + 1) * (seg6RPeState rho (n + 1) * (1 - rho (1890 + n)))
      else
        seg6RPeState rho n = seg6RPeState rho (n + 1) * (1 - rho (1890 + n)) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 223 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg6RStep223 rho r1885 r1886 r1887
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k)
    (seg6RPeState rho) (seg6RIlState rho) 223 1
    (by intro n hnlo hnhi; have key := seg6IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
