import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34LtRChunk155

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg34RStep156L (rho : Nat -> Seg34.F) (r2012 : Seg34.relationRow2012 rho) :
    rho 33287 = seg34RPe157 rho * (1 - rho 32920) := by
  unfold Seg34.relationRow2012 at r2012
  unfold seg34RPe157
  linear_combination -r2012

theorem seg34RStep156IlMul (rho : Nat -> Seg34.F) (r2013 : Seg34.relationRow2013 rho) :
    rho 33288 = seg34RIl157 rho * (rho 33287) := by
  unfold Seg34.relationRow2013 at r2013
  rw [seg34RStep156IlLc rho] at r2013
  linear_combination -r2013

theorem seg34RStep156Acc (rho : Nat -> Seg34.F) :
    seg34RIl156 rho = seg34RIl157 rho + (rho 33287) - (rho 33288) := by
  have hstate : seg34RIl156 rho = seg34RIl157 rho + seg34RIlAtom47 rho := by rfl
  rw [hstate]
  unfold seg34RIlAtom47
  ring

theorem seg34RStep156Pe (rho : Nat -> Seg34.F) (r2014 : Seg34.relationRow2014 rho) :
    seg34RPe156 rho = seg34RPe157 rho * rho 32920 := by
  unfold Seg34.relationRow2014 at r2014
  unfold seg34RPe156 seg34RPe157
  linear_combination -r2014

theorem seg34RStep156 (rho : Nat -> Seg34.F) (r2012 : Seg34.relationRow2012 rho) (r2013 : Seg34.relationRow2013 rho) (r2014 : Seg34.relationRow2014 rho) :
    seg34RPe156 rho = seg34RPe157 rho * rho 32920 ∧
    seg34RIl156 rho = seg34RIl157 rho + seg34RPe157 rho * (1 - rho 32920) -
      seg34RIl157 rho * (seg34RPe157 rho * (1 - rho 32920)) := by
  constructor
  · exact seg34RStep156Pe rho r2014
  · rw [seg34RStep156Acc rho, seg34RStep156L rho r2012, seg34RStep156IlMul rho r2013, seg34RStep156L rho r2012]

theorem seg34_r_chunk156 (rho : Nat -> Seg34.F) (h : Seg34.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg34.F) (0 : Seg34.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k) 157 (seg34RPeState rho 157) (seg34RIlState rho 157) := by
  have htail := seg34_r_chunk155 rho h k hq4
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
  rcases p25 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, r2012, r2013, r2014, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 156 ≤ n → n < 157 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg34RPeState rho n = seg34RPeState rho (n + 1) * rho (32764 + n) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) + seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) -
          seg34RIlState rho (n + 1) * (seg34RPeState rho (n + 1) * (1 - rho (32764 + n)))
      else
        seg34RPeState rho n = seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 156 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg34RStep156 rho r2012 r2013 r2014
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k)
    (seg34RPeState rho) (seg34RIlState rho) 156 1
    (by intro n hnlo hnhi; have key := seg34IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
