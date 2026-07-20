import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.DtkAdapterSeg6LtRChunk155

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg6RStep156L (rho : Nat -> Seg6.F) (r2012 : Seg6.relationRow2012 rho) :
    rho 2407 = seg6RPe157 rho * (1 - rho 2040) := by
  unfold Seg6.relationRow2012 at r2012
  unfold seg6RPe157
  linear_combination -r2012

theorem seg6RStep156IlMul (rho : Nat -> Seg6.F) (r2013 : Seg6.relationRow2013 rho) :
    rho 2408 = seg6RIl157 rho * (rho 2407) := by
  unfold Seg6.relationRow2013 at r2013
  rw [seg6RStep156IlLc rho] at r2013
  linear_combination -r2013

theorem seg6RStep156Acc (rho : Nat -> Seg6.F) :
    seg6RIl156 rho = seg6RIl157 rho + (rho 2407) - (rho 2408) := by
  have hstate : seg6RIl156 rho = seg6RIl157 rho + seg6RIlAtom47 rho := by rfl
  rw [hstate]
  unfold seg6RIlAtom47
  ring

theorem seg6RStep156Pe (rho : Nat -> Seg6.F) (r2014 : Seg6.relationRow2014 rho) :
    seg6RPe156 rho = seg6RPe157 rho * rho 2040 := by
  unfold Seg6.relationRow2014 at r2014
  unfold seg6RPe156 seg6RPe157
  linear_combination -r2014

theorem seg6RStep156 (rho : Nat -> Seg6.F) (r2012 : Seg6.relationRow2012 rho) (r2013 : Seg6.relationRow2013 rho) (r2014 : Seg6.relationRow2014 rho) :
    seg6RPe156 rho = seg6RPe157 rho * rho 2040 ∧
    seg6RIl156 rho = seg6RIl157 rho + seg6RPe157 rho * (1 - rho 2040) -
      seg6RIl157 rho * (seg6RPe157 rho * (1 - rho 2040)) := by
  constructor
  · exact seg6RStep156Pe rho r2014
  · rw [seg6RStep156Acc rho, seg6RStep156L rho r2012, seg6RStep156IlMul rho r2013, seg6RStep156L rho r2012]

theorem seg6_r_chunk156 (rho : Nat -> Seg6.F) (h : Seg6.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg6.F) (0 : Seg6.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k) 157 (seg6RPeState rho 157) (seg6RIlState rho 157) := by
  have htail := seg6_r_chunk155 rho h k hq4
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
  rcases p25 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, r2012, r2013, r2014, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 156 ≤ n → n < 157 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg6RPeState rho n = seg6RPeState rho (n + 1) * rho (1884 + n) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) + seg6RPeState rho (n + 1) * (1 - rho (1884 + n)) -
          seg6RIlState rho (n + 1) * (seg6RPeState rho (n + 1) * (1 - rho (1884 + n)))
      else
        seg6RPeState rho n = seg6RPeState rho (n + 1) * (1 - rho (1884 + n)) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 156 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg6RStep156 rho r2012 r2013 r2014
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k)
    (seg6RPeState rho) (seg6RIlState rho) 156 1
    (by intro n hnlo hnhi; have key := seg6IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
