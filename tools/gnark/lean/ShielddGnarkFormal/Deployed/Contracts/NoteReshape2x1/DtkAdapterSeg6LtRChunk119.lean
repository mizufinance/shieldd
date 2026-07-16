import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.DtkAdapterSeg6LtRChunk118

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg6RStep119L (rho : Nat -> Seg6.F) (r2079 : Seg6.relationRow2079 rho) :
    rho 2480 = seg6RPe120 rho * (1 - rho 2009) := by
  unfold Seg6.relationRow2079 at r2079
  unfold seg6RPe120
  linear_combination -r2079

theorem seg6RStep119IlMul (rho : Nat -> Seg6.F) (r2080 : Seg6.relationRow2080 rho) :
    rho 2481 = seg6RIl120 rho * (rho 2480) := by
  unfold Seg6.relationRow2080 at r2080
  rw [seg6RStep119IlLc rho] at r2080
  linear_combination -r2080

theorem seg6RStep119Acc (rho : Nat -> Seg6.F) :
    seg6RIl119 rho = seg6RIl120 rho + (rho 2480) - (rho 2481) := by
  have hstate : seg6RIl119 rho = seg6RIl120 rho + seg6RIlAtom63 rho := by rfl
  rw [hstate]
  unfold seg6RIlAtom63
  ring

theorem seg6RStep119Pe (rho : Nat -> Seg6.F) (r2081 : Seg6.relationRow2081 rho) :
    seg6RPe119 rho = seg6RPe120 rho * rho 2009 := by
  unfold Seg6.relationRow2081 at r2081
  unfold seg6RPe119 seg6RPe120
  linear_combination -r2081

theorem seg6RStep119 (rho : Nat -> Seg6.F) (r2079 : Seg6.relationRow2079 rho) (r2080 : Seg6.relationRow2080 rho) (r2081 : Seg6.relationRow2081 rho) :
    seg6RPe119 rho = seg6RPe120 rho * rho 2009 ∧
    seg6RIl119 rho = seg6RIl120 rho + seg6RPe120 rho * (1 - rho 2009) -
      seg6RIl120 rho * (seg6RPe120 rho * (1 - rho 2009)) := by
  constructor
  · exact seg6RStep119Pe rho r2081
  · rw [seg6RStep119Acc rho, seg6RStep119L rho r2079, seg6RStep119IlMul rho r2080, seg6RStep119L rho r2079]

theorem seg6_r_chunk119 (rho : Nat -> Seg6.F) (h : Seg6.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg6.F) (0 : Seg6.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k) 120 (seg6RPeState rho 120) (seg6RIlState rho 120) := by
  have htail := seg6_r_chunk118 rho h k hq4
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p25, p26, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart25 at p25
  rcases p25 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2079⟩
  unfold Seg6.relationPart26 at p26
  rcases p26 with ⟨r2080, r2081, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 119 ≤ n → n < 120 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg6RPeState rho n = seg6RPeState rho (n + 1) * rho (1890 + n) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) + seg6RPeState rho (n + 1) * (1 - rho (1890 + n)) -
          seg6RIlState rho (n + 1) * (seg6RPeState rho (n + 1) * (1 - rho (1890 + n)))
      else
        seg6RPeState rho n = seg6RPeState rho (n + 1) * (1 - rho (1890 + n)) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 119 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg6RStep119 rho r2079 r2080 r2081
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k)
    (seg6RPeState rho) (seg6RIlState rho) 119 1
    (by intro n hnlo hnhi; have key := seg6IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
