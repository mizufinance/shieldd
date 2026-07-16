import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.DtkAdapterSeg6LtRChunk220

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg6RStep221L (rho : Nat -> Seg6.F) (r1889 : Seg6.relationRow1889 rho) :
    rho 2290 = seg6RPe222 rho * (1 - rho 2111) := by
  unfold Seg6.relationRow1889 at r1889
  unfold seg6RPe222
  linear_combination -r1889

theorem seg6RStep221IlMul (rho : Nat -> Seg6.F) (r1890 : Seg6.relationRow1890 rho) :
    rho 2291 = seg6RIl222 rho * (rho 2290) := by
  unfold Seg6.relationRow1890 at r1890
  rw [seg6RIl222Atoms rho]
  unfold seg6RIlAtom0 seg6RIlAtom1 seg6RIlAtom10 seg6RIlAtom11 seg6RIlAtom12 seg6RIlAtom13 seg6RIlAtom14 seg6RIlAtom15 seg6RIlAtom2 seg6RIlAtom3 seg6RIlAtom4 seg6RIlAtom5 seg6RIlAtom6 seg6RIlAtom7 seg6RIlAtom8 seg6RIlAtom9
  linear_combination -r1890

theorem seg6RStep221Acc (rho : Nat -> Seg6.F) :
    seg6RIl221 rho = seg6RIl222 rho + (rho 2290) - (rho 2291) := by
  have hstate : seg6RIl221 rho = seg6RIl222 rho + seg6RIlAtom16 rho + (-1 : Seg6.F) * seg6RIlAtom17 rho := by rfl
  rw [hstate]
  unfold seg6RIlAtom16 seg6RIlAtom17
  ring

theorem seg6RStep221Pe (rho : Nat -> Seg6.F) (r1891 : Seg6.relationRow1891 rho) :
    seg6RPe221 rho = seg6RPe222 rho * rho 2111 := by
  unfold Seg6.relationRow1891 at r1891
  unfold seg6RPe221 seg6RPe222
  linear_combination -r1891

theorem seg6RStep221 (rho : Nat -> Seg6.F) (r1889 : Seg6.relationRow1889 rho) (r1890 : Seg6.relationRow1890 rho) (r1891 : Seg6.relationRow1891 rho) :
    seg6RPe221 rho = seg6RPe222 rho * rho 2111 ∧
    seg6RIl221 rho = seg6RIl222 rho + seg6RPe222 rho * (1 - rho 2111) -
      seg6RIl222 rho * (seg6RPe222 rho * (1 - rho 2111)) := by
  constructor
  · exact seg6RStep221Pe rho r1891
  · rw [seg6RStep221Acc rho, seg6RStep221L rho r1889, seg6RStep221IlMul rho r1890, seg6RStep221L rho r1889]

theorem seg6_r_chunk221 (rho : Nat -> Seg6.F) (h : Seg6.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg6.F) (0 : Seg6.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k) 222 (seg6RPeState rho 222) (seg6RIlState rho 222) := by
  have htail := seg6_r_chunk220 rho h k hq4
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
  rcases p23 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1889, r1890, r1891, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 221 ≤ n → n < 222 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg6RPeState rho n = seg6RPeState rho (n + 1) * rho (1890 + n) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) + seg6RPeState rho (n + 1) * (1 - rho (1890 + n)) -
          seg6RIlState rho (n + 1) * (seg6RPeState rho (n + 1) * (1 - rho (1890 + n)))
      else
        seg6RPeState rho n = seg6RPeState rho (n + 1) * (1 - rho (1890 + n)) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 221 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg6RStep221 rho r1889 r1890 r1891
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k)
    (seg6RPeState rho) (seg6RIlState rho) 221 1
    (by intro n hnlo hnhi; have key := seg6IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
