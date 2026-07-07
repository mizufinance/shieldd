import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34LtRChunk159

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg34RStep160L (rho : Nat -> Seg34.F) (r2004 : Seg34.relationRow2004 rho) :
    rho 33279 = seg34RPe161 rho * (1 - rho 32924) := by
  unfold Seg34.relationRow2004 at r2004
  unfold seg34RPe161
  linear_combination -r2004

theorem seg34RStep160IlMul (rho : Nat -> Seg34.F) (r2005 : Seg34.relationRow2005 rho) :
    rho 33280 = seg34RIl161 rho * (rho 33279) := by
  unfold Seg34.relationRow2005 at r2005
  rw [seg34RStep160IlLc rho] at r2005
  linear_combination -r2005

theorem seg34RStep160Acc (rho : Nat -> Seg34.F) :
    seg34RIl160 rho = seg34RIl161 rho + (rho 33279) - (rho 33280) := by
  have hstate : seg34RIl160 rho = seg34RIl161 rho + seg34RIlAtom45 rho := by rfl
  rw [hstate]
  unfold seg34RIlAtom45
  ring

theorem seg34RStep160Pe (rho : Nat -> Seg34.F) (r2006 : Seg34.relationRow2006 rho) :
    seg34RPe160 rho = seg34RPe161 rho * rho 32924 := by
  unfold Seg34.relationRow2006 at r2006
  unfold seg34RPe160 seg34RPe161
  linear_combination -r2006

theorem seg34RStep160 (rho : Nat -> Seg34.F) (r2004 : Seg34.relationRow2004 rho) (r2005 : Seg34.relationRow2005 rho) (r2006 : Seg34.relationRow2006 rho) :
    seg34RPe160 rho = seg34RPe161 rho * rho 32924 ∧
    seg34RIl160 rho = seg34RIl161 rho + seg34RPe161 rho * (1 - rho 32924) -
      seg34RIl161 rho * (seg34RPe161 rho * (1 - rho 32924)) := by
  constructor
  · exact seg34RStep160Pe rho r2006
  · rw [seg34RStep160Acc rho, seg34RStep160L rho r2004, seg34RStep160IlMul rho r2005, seg34RStep160L rho r2004]

theorem seg34_r_chunk160 (rho : Nat -> Seg34.F) (h : Seg34.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg34.F) (0 : Seg34.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k) 161 (seg34RPeState rho 161) (seg34RIlState rho 161) := by
  have htail := seg34_r_chunk159 rho h k hq4
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
  rcases p25 with ⟨_, _, _, _, r2004, r2005, r2006, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 160 ≤ n → n < 161 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg34RPeState rho n = seg34RPeState rho (n + 1) * rho (32764 + n) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) + seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) -
          seg34RIlState rho (n + 1) * (seg34RPeState rho (n + 1) * (1 - rho (32764 + n)))
      else
        seg34RPeState rho n = seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 160 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg34RStep160 rho r2004 r2005 r2006
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k)
    (seg34RPeState rho) (seg34RIlState rho) 160 1
    (by intro n hnlo hnhi; have key := seg34IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
