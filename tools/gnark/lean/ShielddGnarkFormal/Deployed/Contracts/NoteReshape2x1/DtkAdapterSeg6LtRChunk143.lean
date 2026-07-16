import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.DtkAdapterSeg6LtRChunk142

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg6RStep143L (rho : Nat -> Seg6.F) (r2039 : Seg6.relationRow2039 rho) :
    rho 2440 = seg6RPe144 rho * (1 - rho 2033) := by
  unfold Seg6.relationRow2039 at r2039
  unfold seg6RPe144
  linear_combination -r2039

theorem seg6RStep143IlMul (rho : Nat -> Seg6.F) (r2040 : Seg6.relationRow2040 rho) :
    rho 2441 = seg6RIl144 rho * (rho 2440) := by
  unfold Seg6.relationRow2040 at r2040
  rw [seg6RStep143IlLc rho] at r2040
  linear_combination -r2040

theorem seg6RStep143Acc (rho : Nat -> Seg6.F) :
    seg6RIl143 rho = seg6RIl144 rho + (rho 2440) - (rho 2441) := by
  have hstate : seg6RIl143 rho = seg6RIl144 rho + seg6RIlAtom55 rho := by rfl
  rw [hstate]
  unfold seg6RIlAtom55
  ring

theorem seg6RStep143Pe (rho : Nat -> Seg6.F) (r2041 : Seg6.relationRow2041 rho) :
    seg6RPe143 rho = seg6RPe144 rho * rho 2033 := by
  unfold Seg6.relationRow2041 at r2041
  unfold seg6RPe143 seg6RPe144
  linear_combination -r2041

theorem seg6RStep143 (rho : Nat -> Seg6.F) (r2039 : Seg6.relationRow2039 rho) (r2040 : Seg6.relationRow2040 rho) (r2041 : Seg6.relationRow2041 rho) :
    seg6RPe143 rho = seg6RPe144 rho * rho 2033 ∧
    seg6RIl143 rho = seg6RIl144 rho + seg6RPe144 rho * (1 - rho 2033) -
      seg6RIl144 rho * (seg6RPe144 rho * (1 - rho 2033)) := by
  constructor
  · exact seg6RStep143Pe rho r2041
  · rw [seg6RStep143Acc rho, seg6RStep143L rho r2039, seg6RStep143IlMul rho r2040, seg6RStep143L rho r2039]

theorem seg6_r_chunk143 (rho : Nat -> Seg6.F) (h : Seg6.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg6.F) (0 : Seg6.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k) 144 (seg6RPeState rho 144) (seg6RIlState rho 144) := by
  have htail := seg6_r_chunk142 rho h k hq4
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p25, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart25 at p25
  rcases p25 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2039, r2040, r2041, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 143 ≤ n → n < 144 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg6RPeState rho n = seg6RPeState rho (n + 1) * rho (1890 + n) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) + seg6RPeState rho (n + 1) * (1 - rho (1890 + n)) -
          seg6RIlState rho (n + 1) * (seg6RPeState rho (n + 1) * (1 - rho (1890 + n)))
      else
        seg6RPeState rho n = seg6RPeState rho (n + 1) * (1 - rho (1890 + n)) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 143 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg6RStep143 rho r2039 r2040 r2041
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k)
    (seg6RPeState rho) (seg6RIlState rho) 143 1
    (by intro n hnlo hnhi; have key := seg6IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
