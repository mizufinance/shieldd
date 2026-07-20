import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.DtkAdapterSeg6LtRChunk161

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg6RStep162L (rho : Nat -> Seg6.F) (r1998 : Seg6.relationRow1998 rho) :
    rho 2393 = seg6RPe163 rho * (1 - rho 2046) := by
  unfold Seg6.relationRow1998 at r1998
  unfold seg6RPe163
  linear_combination -r1998

theorem seg6RStep162IlMul (rho : Nat -> Seg6.F) (r1999 : Seg6.relationRow1999 rho) :
    rho 2394 = seg6RIl163 rho * (rho 2393) := by
  unfold Seg6.relationRow1999 at r1999
  rw [seg6RStep162IlLc rho] at r1999
  linear_combination -r1999

theorem seg6RStep162Acc (rho : Nat -> Seg6.F) :
    seg6RIl162 rho = seg6RIl163 rho + (rho 2393) - (rho 2394) := by
  have hstate : seg6RIl162 rho = seg6RIl163 rho + seg6RIlAtom43 rho := by rfl
  rw [hstate]
  unfold seg6RIlAtom43
  ring

theorem seg6RStep162Pe (rho : Nat -> Seg6.F) (r2000 : Seg6.relationRow2000 rho) :
    seg6RPe162 rho = seg6RPe163 rho * rho 2046 := by
  unfold Seg6.relationRow2000 at r2000
  unfold seg6RPe162 seg6RPe163
  linear_combination -r2000

theorem seg6RStep162 (rho : Nat -> Seg6.F) (r1998 : Seg6.relationRow1998 rho) (r1999 : Seg6.relationRow1999 rho) (r2000 : Seg6.relationRow2000 rho) :
    seg6RPe162 rho = seg6RPe163 rho * rho 2046 ∧
    seg6RIl162 rho = seg6RIl163 rho + seg6RPe163 rho * (1 - rho 2046) -
      seg6RIl163 rho * (seg6RPe163 rho * (1 - rho 2046)) := by
  constructor
  · exact seg6RStep162Pe rho r2000
  · rw [seg6RStep162Acc rho, seg6RStep162L rho r1998, seg6RStep162IlMul rho r1999, seg6RStep162L rho r1998]

theorem seg6_r_chunk162 (rho : Nat -> Seg6.F) (h : Seg6.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg6.F) (0 : Seg6.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k) 163 (seg6RPeState rho 163) (seg6RIlState rho 163) := by
  have htail := seg6_r_chunk161 rho h k hq4
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, p24, p25, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart24 at p24
  rcases p24 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1998, r1999⟩
  unfold Seg6.relationPart25 at p25
  rcases p25 with ⟨r2000, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 162 ≤ n → n < 163 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg6RPeState rho n = seg6RPeState rho (n + 1) * rho (1884 + n) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) + seg6RPeState rho (n + 1) * (1 - rho (1884 + n)) -
          seg6RIlState rho (n + 1) * (seg6RPeState rho (n + 1) * (1 - rho (1884 + n)))
      else
        seg6RPeState rho n = seg6RPeState rho (n + 1) * (1 - rho (1884 + n)) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 162 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg6RStep162 rho r1998 r1999 r2000
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k)
    (seg6RPeState rho) (seg6RIlState rho) 162 1
    (by intro n hnlo hnhi; have key := seg6IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
