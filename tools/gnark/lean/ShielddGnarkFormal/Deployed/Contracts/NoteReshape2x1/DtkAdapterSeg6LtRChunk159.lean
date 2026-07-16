import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.DtkAdapterSeg6LtRChunk158

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg6RStep159L (rho : Nat -> Seg6.F) (r2007 : Seg6.relationRow2007 rho) :
    rho 2408 = seg6RPe160 rho * (1 - rho 2049) := by
  unfold Seg6.relationRow2007 at r2007
  unfold seg6RPe160
  linear_combination -r2007

theorem seg6RStep159IlMul (rho : Nat -> Seg6.F) (r2008 : Seg6.relationRow2008 rho) :
    rho 2409 = seg6RIl160 rho * (rho 2408) := by
  unfold Seg6.relationRow2008 at r2008
  rw [seg6RStep159IlLc rho] at r2008
  linear_combination -r2008

theorem seg6RStep159Acc (rho : Nat -> Seg6.F) :
    seg6RIl159 rho = seg6RIl160 rho + (rho 2408) - (rho 2409) := by
  have hstate : seg6RIl159 rho = seg6RIl160 rho + seg6RIlAtom46 rho := by rfl
  rw [hstate]
  unfold seg6RIlAtom46
  ring

theorem seg6RStep159Pe (rho : Nat -> Seg6.F) (r2009 : Seg6.relationRow2009 rho) :
    seg6RPe159 rho = seg6RPe160 rho * rho 2049 := by
  unfold Seg6.relationRow2009 at r2009
  unfold seg6RPe159 seg6RPe160
  linear_combination -r2009

theorem seg6RStep159 (rho : Nat -> Seg6.F) (r2007 : Seg6.relationRow2007 rho) (r2008 : Seg6.relationRow2008 rho) (r2009 : Seg6.relationRow2009 rho) :
    seg6RPe159 rho = seg6RPe160 rho * rho 2049 ∧
    seg6RIl159 rho = seg6RIl160 rho + seg6RPe160 rho * (1 - rho 2049) -
      seg6RIl160 rho * (seg6RPe160 rho * (1 - rho 2049)) := by
  constructor
  · exact seg6RStep159Pe rho r2009
  · rw [seg6RStep159Acc rho, seg6RStep159L rho r2007, seg6RStep159IlMul rho r2008, seg6RStep159L rho r2007]

theorem seg6_r_chunk159 (rho : Nat -> Seg6.F) (h : Seg6.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg6.F) (0 : Seg6.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k) 160 (seg6RPeState rho 160) (seg6RIlState rho 160) := by
  have htail := seg6_r_chunk158 rho h k hq4
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
  rcases p25 with ⟨_, _, _, _, _, _, _, r2007, r2008, r2009, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 159 ≤ n → n < 160 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg6RPeState rho n = seg6RPeState rho (n + 1) * rho (1890 + n) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) + seg6RPeState rho (n + 1) * (1 - rho (1890 + n)) -
          seg6RIlState rho (n + 1) * (seg6RPeState rho (n + 1) * (1 - rho (1890 + n)))
      else
        seg6RPeState rho n = seg6RPeState rho (n + 1) * (1 - rho (1890 + n)) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 159 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg6RStep159 rho r2007 r2008 r2009
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k)
    (seg6RPeState rho) (seg6RIlState rho) 159 1
    (by intro n hnlo hnhi; have key := seg6IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
