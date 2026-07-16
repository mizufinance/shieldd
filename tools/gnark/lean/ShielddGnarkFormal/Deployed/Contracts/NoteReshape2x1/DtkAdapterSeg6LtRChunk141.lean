import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.DtkAdapterSeg6LtRChunk140

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg6RStep141L (rho : Nat -> Seg6.F) (r2045 : Seg6.relationRow2045 rho) :
    rho 2446 = seg6RPe142 rho * (1 - rho 2031) := by
  unfold Seg6.relationRow2045 at r2045
  unfold seg6RPe142
  linear_combination -r2045

theorem seg6RStep141IlMul (rho : Nat -> Seg6.F) (r2046 : Seg6.relationRow2046 rho) :
    rho 2447 = seg6RIl142 rho * (rho 2446) := by
  unfold Seg6.relationRow2046 at r2046
  rw [seg6RStep141IlLc rho] at r2046
  linear_combination -r2046

theorem seg6RStep141Acc (rho : Nat -> Seg6.F) :
    seg6RIl141 rho = seg6RIl142 rho + (rho 2446) - (rho 2447) := by
  have hstate : seg6RIl141 rho = seg6RIl142 rho + seg6RIlAtom57 rho := by rfl
  rw [hstate]
  unfold seg6RIlAtom57
  ring

theorem seg6RStep141Pe (rho : Nat -> Seg6.F) (r2047 : Seg6.relationRow2047 rho) :
    seg6RPe141 rho = seg6RPe142 rho * rho 2031 := by
  unfold Seg6.relationRow2047 at r2047
  unfold seg6RPe141 seg6RPe142
  linear_combination -r2047

theorem seg6RStep141 (rho : Nat -> Seg6.F) (r2045 : Seg6.relationRow2045 rho) (r2046 : Seg6.relationRow2046 rho) (r2047 : Seg6.relationRow2047 rho) :
    seg6RPe141 rho = seg6RPe142 rho * rho 2031 ∧
    seg6RIl141 rho = seg6RIl142 rho + seg6RPe142 rho * (1 - rho 2031) -
      seg6RIl142 rho * (seg6RPe142 rho * (1 - rho 2031)) := by
  constructor
  · exact seg6RStep141Pe rho r2047
  · rw [seg6RStep141Acc rho, seg6RStep141L rho r2045, seg6RStep141IlMul rho r2046, seg6RStep141L rho r2045]

theorem seg6_r_chunk141 (rho : Nat -> Seg6.F) (h : Seg6.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg6.F) (0 : Seg6.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k) 142 (seg6RPeState rho 142) (seg6RIlState rho 142) := by
  have htail := seg6_r_chunk140 rho h k hq4
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
  rcases p25 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2045, r2046, r2047, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 141 ≤ n → n < 142 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg6RPeState rho n = seg6RPeState rho (n + 1) * rho (1890 + n) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) + seg6RPeState rho (n + 1) * (1 - rho (1890 + n)) -
          seg6RIlState rho (n + 1) * (seg6RPeState rho (n + 1) * (1 - rho (1890 + n)))
      else
        seg6RPeState rho n = seg6RPeState rho (n + 1) * (1 - rho (1890 + n)) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 141 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg6RStep141 rho r2045 r2046 r2047
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k)
    (seg6RPeState rho) (seg6RIlState rho) 141 1
    (by intro n hnlo hnhi; have key := seg6IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
