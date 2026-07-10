import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5LtRChunk160

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg5RStep161L (rho : Nat -> Seg5.F) (r2001 : Seg5.relationRow2001 rho) :
    rho 1699 = seg5RPe162 rho * (1 - rho 1348) := by
  unfold Seg5.relationRow2001 at r2001
  unfold seg5RPe162
  linear_combination -r2001

theorem seg5RStep161IlMul (rho : Nat -> Seg5.F) (r2002 : Seg5.relationRow2002 rho) :
    rho 1700 = seg5RIl162 rho * (rho 1699) := by
  unfold Seg5.relationRow2002 at r2002
  rw [seg5RStep161IlLc rho] at r2002
  linear_combination -r2002

theorem seg5RStep161Acc (rho : Nat -> Seg5.F) :
    seg5RIl161 rho = seg5RIl162 rho + (rho 1699) - (rho 1700) := by
  have hstate : seg5RIl161 rho = seg5RIl162 rho + seg5RIlAtom44 rho := by rfl
  rw [hstate]
  unfold seg5RIlAtom44
  ring

theorem seg5RStep161Pe (rho : Nat -> Seg5.F) (r2003 : Seg5.relationRow2003 rho) :
    seg5RPe161 rho = seg5RPe162 rho * rho 1348 := by
  unfold Seg5.relationRow2003 at r2003
  unfold seg5RPe161 seg5RPe162
  linear_combination -r2003

theorem seg5RStep161 (rho : Nat -> Seg5.F) (r2001 : Seg5.relationRow2001 rho) (r2002 : Seg5.relationRow2002 rho) (r2003 : Seg5.relationRow2003 rho) :
    seg5RPe161 rho = seg5RPe162 rho * rho 1348 ∧
    seg5RIl161 rho = seg5RIl162 rho + seg5RPe162 rho * (1 - rho 1348) -
      seg5RIl162 rho * (seg5RPe162 rho * (1 - rho 1348)) := by
  constructor
  · exact seg5RStep161Pe rho r2003
  · rw [seg5RStep161Acc rho, seg5RStep161L rho r2001, seg5RStep161IlMul rho r2002, seg5RStep161L rho r2001]

theorem seg5_r_chunk161 (rho : Nat -> Seg5.F) (h : Seg5.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg5.F) (0 : Seg5.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k) 162 (seg5RPeState rho 162) (seg5RIlState rho 162) := by
  have htail := seg5_r_chunk160 rho h k hq4
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p25, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg5.relationPart25 at p25
  rcases p25 with ⟨_, r2001, r2002, r2003, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 161 ≤ n → n < 162 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg5RPeState rho n = seg5RPeState rho (n + 1) * rho (1187 + n) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) + seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) -
          seg5RIlState rho (n + 1) * (seg5RPeState rho (n + 1) * (1 - rho (1187 + n)))
      else
        seg5RPeState rho n = seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 161 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg5RStep161 rho r2001 r2002 r2003
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k)
    (seg5RPeState rho) (seg5RIlState rho) 161 1
    (by intro n hnlo hnhi; have key := seg5IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
