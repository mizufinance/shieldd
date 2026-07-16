import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.DtkAdapterSeg6LtRDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg6RStep0L (rho : Nat -> Seg6.F) (r2342 : Seg6.relationRow2342 rho) :
    rho 2743 = seg6RPe1 rho * (1 - rho 1890) := by
  unfold Seg6.relationRow2342 at r2342
  unfold seg6RPe1
  linear_combination -r2342

theorem seg6RStep0IlMul (rho : Nat -> Seg6.F) (r2343 : Seg6.relationRow2343 rho) :
    rho 2744 = seg6RIl1 rho * (rho 2743) := by
  unfold Seg6.relationRow2343 at r2343
  rw [seg6RStep0IlLc rho] at r2343
  linear_combination -r2343

theorem seg6RStep0Acc (rho : Nat -> Seg6.F) :
    seg6RIl0 rho = seg6RIl1 rho + (rho 2743) - (rho 2744) := by
  have hstate : seg6RIl0 rho = seg6RIl1 rho + seg6RIlAtom140 rho := by rfl
  rw [hstate]
  unfold seg6RIlAtom140
  ring

theorem seg6RStep0Pe (rho : Nat -> Seg6.F) (r2344 : Seg6.relationRow2344 rho) :
    seg6RPe0 rho = seg6RPe1 rho * rho 1890 := by
  unfold Seg6.relationRow2344 at r2344
  unfold seg6RPe0 seg6RPe1
  linear_combination -r2344

theorem seg6RStep0 (rho : Nat -> Seg6.F) (r2342 : Seg6.relationRow2342 rho) (r2343 : Seg6.relationRow2343 rho) (r2344 : Seg6.relationRow2344 rho) :
    seg6RPe0 rho = seg6RPe1 rho * rho 1890 ∧
    seg6RIl0 rho = seg6RIl1 rho + seg6RPe1 rho * (1 - rho 1890) -
      seg6RIl1 rho * (seg6RPe1 rho * (1 - rho 1890)) := by
  constructor
  · exact seg6RStep0Pe rho r2344
  · rw [seg6RStep0Acc rho, seg6RStep0L rho r2342, seg6RStep0IlMul rho r2343, seg6RStep0L rho r2342]

theorem seg6RFinal (rho : Nat -> Seg6.F) (r2345 : Seg6.relationRow2345 rho) : seg6RIl0 rho = 1 := by
  unfold Seg6.relationRow2345 at r2345
  rw [seg6RTerminalIlLc rho] at r2345
  linear_combination r2345

theorem seg6_r_chunk0 (rho : Nat -> Seg6.F) (h : Seg6.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg6.F) (0 : Seg6.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k) 1 (seg6RPeState rho 1) (seg6RIlState rho 1) := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, p29,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart29 at p29
  rcases p29 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2342, r2343, r2344, r2345, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hfinal := seg6RFinal rho r2345
  have htailCont : Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k (seg6RIl0 rho) := ⟨hfinal, hq4⟩
  have htail : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k) 0 (seg6RPeState rho 0) (seg6RIlState rho 0) := by
    simpa only [Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec] using htailCont
  have hsteps : ∀ n, 0 ≤ n → n < 1 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg6RPeState rho n = seg6RPeState rho (n + 1) * rho (1890 + n) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) + seg6RPeState rho (n + 1) * (1 - rho (1890 + n)) -
          seg6RIlState rho (n + 1) * (seg6RPeState rho (n + 1) * (1 - rho (1890 + n)))
      else
        seg6RPeState rho n = seg6RPeState rho (n + 1) * (1 - rho (1890 + n)) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 0 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg6RStep0 rho r2342 r2343 r2344
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k)
    (seg6RPeState rho) (seg6RIlState rho) 0 1
    (by intro n hnlo hnhi; have key := seg6IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
