import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34LtRChunk158

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg34RStep159L (rho : Nat -> Seg34.F) (r2007 : Seg34.relationRow2007 rho) :
    rho 33282 = seg34RPe160 rho * (1 - rho 32923) := by
  unfold Seg34.relationRow2007 at r2007
  unfold seg34RPe160
  linear_combination -r2007

theorem seg34RStep159IlMul (rho : Nat -> Seg34.F) (r2008 : Seg34.relationRow2008 rho) :
    rho 33283 = seg34RIl160 rho * (rho 33282) := by
  unfold Seg34.relationRow2008 at r2008
  rw [seg34RStep159IlLc rho] at r2008
  linear_combination -r2008

theorem seg34RStep159Acc (rho : Nat -> Seg34.F) :
    seg34RIl159 rho = seg34RIl160 rho + (rho 33282) - (rho 33283) := by
  have hstate : seg34RIl159 rho = seg34RIl160 rho + seg34RIlAtom46 rho := by rfl
  rw [hstate]
  unfold seg34RIlAtom46
  ring

theorem seg34RStep159Pe (rho : Nat -> Seg34.F) (r2009 : Seg34.relationRow2009 rho) :
    seg34RPe159 rho = seg34RPe160 rho * rho 32923 := by
  unfold Seg34.relationRow2009 at r2009
  unfold seg34RPe159 seg34RPe160
  linear_combination -r2009

theorem seg34RStep159 (rho : Nat -> Seg34.F) (r2007 : Seg34.relationRow2007 rho) (r2008 : Seg34.relationRow2008 rho) (r2009 : Seg34.relationRow2009 rho) :
    seg34RPe159 rho = seg34RPe160 rho * rho 32923 ∧
    seg34RIl159 rho = seg34RIl160 rho + seg34RPe160 rho * (1 - rho 32923) -
      seg34RIl160 rho * (seg34RPe160 rho * (1 - rho 32923)) := by
  constructor
  · exact seg34RStep159Pe rho r2009
  · rw [seg34RStep159Acc rho, seg34RStep159L rho r2007, seg34RStep159IlMul rho r2008, seg34RStep159L rho r2007]

theorem seg34_r_chunk159 (rho : Nat -> Seg34.F) (h : Seg34.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg34.F) (0 : Seg34.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k) 160 (seg34RPeState rho 160) (seg34RIlState rho 160) := by
  have htail := seg34_r_chunk158 rho h k hq4
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
  rcases p25 with ⟨_, _, _, _, _, _, _, r2007, r2008, r2009, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 159 ≤ n → n < 160 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg34RPeState rho n = seg34RPeState rho (n + 1) * rho (32764 + n) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) + seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) -
          seg34RIlState rho (n + 1) * (seg34RPeState rho (n + 1) * (1 - rho (32764 + n)))
      else
        seg34RPeState rho n = seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 159 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg34RStep159 rho r2007 r2008 r2009
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k)
    (seg34RPeState rho) (seg34RIlState rho) 159 1
    (by intro n hnlo hnhi; have key := seg34IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
