import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg6LtRChunk160

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg6RStep161L (rho : Nat -> Seg6.F) (r2001 : Seg6.relationRow2001 rho) :
    rho 2402 = seg6RPe162 rho * (1 - rho 2051) := by
  unfold Seg6.relationRow2001 at r2001
  unfold seg6RPe162
  linear_combination -r2001

theorem seg6RStep161IlMul (rho : Nat -> Seg6.F) (r2002 : Seg6.relationRow2002 rho) :
    rho 2403 = seg6RIl162 rho * (rho 2402) := by
  unfold Seg6.relationRow2002 at r2002
  rw [seg6RStep161IlLc rho] at r2002
  linear_combination -r2002

theorem seg6RStep161Acc (rho : Nat -> Seg6.F) :
    seg6RIl161 rho = seg6RIl162 rho + (rho 2402) - (rho 2403) := by
  have hstate : seg6RIl161 rho = seg6RIl162 rho + seg6RIlAtom44 rho := by rfl
  rw [hstate]
  unfold seg6RIlAtom44
  ring

theorem seg6RStep161Pe (rho : Nat -> Seg6.F) (r2003 : Seg6.relationRow2003 rho) :
    seg6RPe161 rho = seg6RPe162 rho * rho 2051 := by
  unfold Seg6.relationRow2003 at r2003
  unfold seg6RPe161 seg6RPe162
  linear_combination -r2003

theorem seg6RStep161 (rho : Nat -> Seg6.F) (r2001 : Seg6.relationRow2001 rho) (r2002 : Seg6.relationRow2002 rho) (r2003 : Seg6.relationRow2003 rho) :
    seg6RPe161 rho = seg6RPe162 rho * rho 2051 ∧
    seg6RIl161 rho = seg6RIl162 rho + seg6RPe162 rho * (1 - rho 2051) -
      seg6RIl162 rho * (seg6RPe162 rho * (1 - rho 2051)) := by
  constructor
  · exact seg6RStep161Pe rho r2003
  · rw [seg6RStep161Acc rho, seg6RStep161L rho r2001, seg6RStep161IlMul rho r2002, seg6RStep161L rho r2001]

theorem seg6_r_chunk161 (rho : Nat -> Seg6.F) (h : Seg6.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg6.F) (0 : Seg6.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k) 162 (seg6RPeState rho 162) (seg6RIlState rho 162) := by
  have htail := seg6_r_chunk160 rho h k hq4
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
  rcases p25 with ⟨_, r2001, r2002, r2003, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 161 ≤ n → n < 162 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg6RPeState rho n = seg6RPeState rho (n + 1) * rho (1890 + n) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) + seg6RPeState rho (n + 1) * (1 - rho (1890 + n)) -
          seg6RIlState rho (n + 1) * (seg6RPeState rho (n + 1) * (1 - rho (1890 + n)))
      else
        seg6RPeState rho n = seg6RPeState rho (n + 1) * (1 - rho (1890 + n)) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 161 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg6RStep161 rho r2001 r2002 r2003
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k)
    (seg6RPeState rho) (seg6RIlState rho) 161 1
    (by intro n hnlo hnhi; have key := seg6IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
