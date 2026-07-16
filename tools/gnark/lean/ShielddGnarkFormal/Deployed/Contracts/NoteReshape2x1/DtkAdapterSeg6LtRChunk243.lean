import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.DtkAdapterSeg6LtRChunk242

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg6RStep243L (rho : Nat -> Seg6.F) (r1841 : Seg6.relationRow1841 rho) :
    rho 2242 = seg6RPe244 rho * (1 - rho 2133) := by
  unfold Seg6.relationRow1841 at r1841
  unfold seg6RPe244
  linear_combination -r1841

theorem seg6RStep243IlMul (rho : Nat -> Seg6.F) (r1842 : Seg6.relationRow1842 rho) :
    rho 2243 = seg6RIl244 rho * (rho 2242) := by
  unfold Seg6.relationRow1842 at r1842
  rw [seg6RIl244Atoms rho]
  unfold seg6RIlAtom0 seg6RIlAtom1 seg6RIlAtom2
  linear_combination -r1842

theorem seg6RStep243Acc (rho : Nat -> Seg6.F) :
    seg6RIl243 rho = seg6RIl244 rho + (rho 2242) - (rho 2243) := by
  have hstate : seg6RIl243 rho = seg6RIl244 rho + seg6RIlAtom3 rho := by rfl
  rw [hstate]
  unfold seg6RIlAtom3
  ring

theorem seg6RStep243Pe (rho : Nat -> Seg6.F) (r1843 : Seg6.relationRow1843 rho) :
    seg6RPe243 rho = seg6RPe244 rho * rho 2133 := by
  unfold Seg6.relationRow1843 at r1843
  unfold seg6RPe243 seg6RPe244
  linear_combination -r1843

theorem seg6RStep243 (rho : Nat -> Seg6.F) (r1841 : Seg6.relationRow1841 rho) (r1842 : Seg6.relationRow1842 rho) (r1843 : Seg6.relationRow1843 rho) :
    seg6RPe243 rho = seg6RPe244 rho * rho 2133 ∧
    seg6RIl243 rho = seg6RIl244 rho + seg6RPe244 rho * (1 - rho 2133) -
      seg6RIl244 rho * (seg6RPe244 rho * (1 - rho 2133)) := by
  constructor
  · exact seg6RStep243Pe rho r1843
  · rw [seg6RStep243Acc rho, seg6RStep243L rho r1841, seg6RStep243IlMul rho r1842, seg6RStep243L rho r1841]

theorem seg6_r_chunk243 (rho : Nat -> Seg6.F) (h : Seg6.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg6.F) (0 : Seg6.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k) 244 (seg6RPeState rho 244) (seg6RIlState rho 244) := by
  have htail := seg6_r_chunk242 rho h k hq4
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
  rcases p23 with ⟨_, r1841, r1842, r1843, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 243 ≤ n → n < 244 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg6RPeState rho n = seg6RPeState rho (n + 1) * rho (1890 + n) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) + seg6RPeState rho (n + 1) * (1 - rho (1890 + n)) -
          seg6RIlState rho (n + 1) * (seg6RPeState rho (n + 1) * (1 - rho (1890 + n)))
      else
        seg6RPeState rho n = seg6RPeState rho (n + 1) * (1 - rho (1890 + n)) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 243 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg6RStep243 rho r1841 r1842 r1843
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k)
    (seg6RPeState rho) (seg6RIlState rho) 243 1
    (by intro n hnlo hnhi; have key := seg6IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
