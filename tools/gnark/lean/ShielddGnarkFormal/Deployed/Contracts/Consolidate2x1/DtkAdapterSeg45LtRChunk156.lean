import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45LtRChunk155

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg45RStep156L (rho : Nat -> Seg45.F) (r2012 : Seg45.relationRow2012 rho) :
    rho 40243 = seg45RPe157 rho * (1 - rho 39876) := by
  unfold Seg45.relationRow2012 at r2012
  unfold seg45RPe157
  linear_combination -r2012

theorem seg45RStep156IlMul (rho : Nat -> Seg45.F) (r2013 : Seg45.relationRow2013 rho) :
    rho 40244 = seg45RIl157 rho * (rho 40243) := by
  unfold Seg45.relationRow2013 at r2013
  rw [seg45RStep156IlLc rho] at r2013
  linear_combination -r2013

theorem seg45RStep156Acc (rho : Nat -> Seg45.F) :
    seg45RIl156 rho = seg45RIl157 rho + (rho 40243) - (rho 40244) := by
  have hstate : seg45RIl156 rho = seg45RIl157 rho + seg45RIlAtom47 rho := by rfl
  rw [hstate]
  unfold seg45RIlAtom47
  ring

theorem seg45RStep156Pe (rho : Nat -> Seg45.F) (r2014 : Seg45.relationRow2014 rho) :
    seg45RPe156 rho = seg45RPe157 rho * rho 39876 := by
  unfold Seg45.relationRow2014 at r2014
  unfold seg45RPe156 seg45RPe157
  linear_combination -r2014

theorem seg45RStep156 (rho : Nat -> Seg45.F) (r2012 : Seg45.relationRow2012 rho) (r2013 : Seg45.relationRow2013 rho) (r2014 : Seg45.relationRow2014 rho) :
    seg45RPe156 rho = seg45RPe157 rho * rho 39876 ∧
    seg45RIl156 rho = seg45RIl157 rho + seg45RPe157 rho * (1 - rho 39876) -
      seg45RIl157 rho * (seg45RPe157 rho * (1 - rho 39876)) := by
  constructor
  · exact seg45RStep156Pe rho r2014
  · rw [seg45RStep156Acc rho, seg45RStep156L rho r2012, seg45RStep156IlMul rho r2013, seg45RStep156L rho r2012]

theorem seg45_r_chunk156 (rho : Nat -> Seg45.F) (h : Seg45.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg45.F) (0 : Seg45.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k) 157 (seg45RPeState rho 157) (seg45RIlState rho 157) := by
  have htail := seg45_r_chunk155 rho h k hq4
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart25 at p25
  rcases p25 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, r2012, r2013, r2014, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 156 ≤ n → n < 157 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg45RPeState rho n = seg45RPeState rho (n + 1) * rho (39720 + n) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) + seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) -
          seg45RIlState rho (n + 1) * (seg45RPeState rho (n + 1) * (1 - rho (39720 + n)))
      else
        seg45RPeState rho n = seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 156 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg45RStep156 rho r2012 r2013 r2014
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k)
    (seg45RPeState rho) (seg45RIlState rho) 156 1
    (by intro n hnlo hnhi; have key := seg45IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
