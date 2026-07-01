import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34LtRChunk160

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg34RStep161L (rho : Nat -> Seg34.F) (r2001 : Seg34.relationRow2001 rho) :
    rho 33276 = seg34RPe162 rho * (1 - rho 32925) := by
  unfold Seg34.relationRow2001 at r2001
  unfold seg34RPe162
  linear_combination -r2001

theorem seg34RStep161IlMul (rho : Nat -> Seg34.F) (r2002 : Seg34.relationRow2002 rho) :
    rho 33277 = seg34RIl162 rho * (rho 33276) := by
  unfold Seg34.relationRow2002 at r2002
  rw [seg34RStep161IlLc rho] at r2002
  linear_combination -r2002

theorem seg34RStep161Acc (rho : Nat -> Seg34.F) :
    seg34RIl161 rho = seg34RIl162 rho + (rho 33276) - (rho 33277) := by
  have hstate : seg34RIl161 rho = seg34RIl162 rho + seg34RIlAtom44 rho := by rfl
  rw [hstate]
  unfold seg34RIlAtom44
  ring

theorem seg34RStep161Pe (rho : Nat -> Seg34.F) (r2003 : Seg34.relationRow2003 rho) :
    seg34RPe161 rho = seg34RPe162 rho * rho 32925 := by
  unfold Seg34.relationRow2003 at r2003
  unfold seg34RPe161 seg34RPe162
  linear_combination -r2003

theorem seg34RStep161 (rho : Nat -> Seg34.F) (r2001 : Seg34.relationRow2001 rho) (r2002 : Seg34.relationRow2002 rho) (r2003 : Seg34.relationRow2003 rho) :
    seg34RPe161 rho = seg34RPe162 rho * rho 32925 ∧
    seg34RIl161 rho = seg34RIl162 rho + seg34RPe162 rho * (1 - rho 32925) -
      seg34RIl162 rho * (seg34RPe162 rho * (1 - rho 32925)) := by
  constructor
  · exact seg34RStep161Pe rho r2003
  · rw [seg34RStep161Acc rho, seg34RStep161L rho r2001, seg34RStep161IlMul rho r2002, seg34RStep161L rho r2001]

theorem seg34_r_chunk161 (rho : Nat -> Seg34.F) (h : Seg34.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg34.F) (0 : Seg34.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k) 162 (seg34RPeState rho 162) (seg34RIlState rho 162) := by
  have htail := seg34_r_chunk160 rho h k hq4
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart25 at p25
  rcases p25 with ⟨_, r2001, r2002, r2003, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 161 ≤ n → n < 162 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg34RPeState rho n = seg34RPeState rho (n + 1) * rho (32764 + n) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) + seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) -
          seg34RIlState rho (n + 1) * (seg34RPeState rho (n + 1) * (1 - rho (32764 + n)))
      else
        seg34RPeState rho n = seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 161 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg34RStep161 rho r2001 r2002 r2003
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k)
    (seg34RPeState rho) (seg34RIlState rho) 161 1
    (by intro n hnlo hnhi; have key := seg34IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
