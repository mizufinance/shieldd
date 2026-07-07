import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16LtRChunk155

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg16RStep156L (rho : Nat -> Seg16.F) (r2012 : Seg16.relationRow2012 rho) :
    rho 14587 = seg16RPe157 rho * (1 - rho 14220) := by
  unfold Seg16.relationRow2012 at r2012
  unfold seg16RPe157
  linear_combination -r2012

theorem seg16RStep156IlMul (rho : Nat -> Seg16.F) (r2013 : Seg16.relationRow2013 rho) :
    rho 14588 = seg16RIl157 rho * (rho 14587) := by
  unfold Seg16.relationRow2013 at r2013
  rw [seg16RStep156IlLc rho] at r2013
  linear_combination -r2013

theorem seg16RStep156Acc (rho : Nat -> Seg16.F) :
    seg16RIl156 rho = seg16RIl157 rho + (rho 14587) - (rho 14588) := by
  have hstate : seg16RIl156 rho = seg16RIl157 rho + seg16RIlAtom47 rho := by rfl
  rw [hstate]
  unfold seg16RIlAtom47
  ring

theorem seg16RStep156Pe (rho : Nat -> Seg16.F) (r2014 : Seg16.relationRow2014 rho) :
    seg16RPe156 rho = seg16RPe157 rho * rho 14220 := by
  unfold Seg16.relationRow2014 at r2014
  unfold seg16RPe156 seg16RPe157
  linear_combination -r2014

theorem seg16RStep156 (rho : Nat -> Seg16.F) (r2012 : Seg16.relationRow2012 rho) (r2013 : Seg16.relationRow2013 rho) (r2014 : Seg16.relationRow2014 rho) :
    seg16RPe156 rho = seg16RPe157 rho * rho 14220 ∧
    seg16RIl156 rho = seg16RIl157 rho + seg16RPe157 rho * (1 - rho 14220) -
      seg16RIl157 rho * (seg16RPe157 rho * (1 - rho 14220)) := by
  constructor
  · exact seg16RStep156Pe rho r2014
  · rw [seg16RStep156Acc rho, seg16RStep156L rho r2012, seg16RStep156IlMul rho r2013, seg16RStep156L rho r2012]

theorem seg16_r_chunk156 (rho : Nat -> Seg16.F) (h : Seg16.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg16.F) (0 : Seg16.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k) 157 (seg16RPeState rho 157) (seg16RIlState rho 157) := by
  have htail := seg16_r_chunk155 rho h k hq4
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart25 at p25
  rcases p25 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, r2012, r2013, r2014, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 156 ≤ n → n < 157 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg16RPeState rho n = seg16RPeState rho (n + 1) * rho (14064 + n) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) + seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) -
          seg16RIlState rho (n + 1) * (seg16RPeState rho (n + 1) * (1 - rho (14064 + n)))
      else
        seg16RPeState rho n = seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 156 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg16RStep156 rho r2012 r2013 r2014
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k)
    (seg16RPeState rho) (seg16RIlState rho) 156 1
    (by intro n hnlo hnhi; have key := seg16IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
