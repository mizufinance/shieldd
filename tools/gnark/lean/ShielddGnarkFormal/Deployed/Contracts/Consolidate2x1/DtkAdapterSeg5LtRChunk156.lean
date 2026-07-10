import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5LtRChunk155

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg5RStep156L (rho : Nat -> Seg5.F) (r2012 : Seg5.relationRow2012 rho) :
    rho 1710 = seg5RPe157 rho * (1 - rho 1343) := by
  unfold Seg5.relationRow2012 at r2012
  unfold seg5RPe157
  linear_combination -r2012

theorem seg5RStep156IlMul (rho : Nat -> Seg5.F) (r2013 : Seg5.relationRow2013 rho) :
    rho 1711 = seg5RIl157 rho * (rho 1710) := by
  unfold Seg5.relationRow2013 at r2013
  rw [seg5RStep156IlLc rho] at r2013
  linear_combination -r2013

theorem seg5RStep156Acc (rho : Nat -> Seg5.F) :
    seg5RIl156 rho = seg5RIl157 rho + (rho 1710) - (rho 1711) := by
  have hstate : seg5RIl156 rho = seg5RIl157 rho + seg5RIlAtom47 rho := by rfl
  rw [hstate]
  unfold seg5RIlAtom47
  ring

theorem seg5RStep156Pe (rho : Nat -> Seg5.F) (r2014 : Seg5.relationRow2014 rho) :
    seg5RPe156 rho = seg5RPe157 rho * rho 1343 := by
  unfold Seg5.relationRow2014 at r2014
  unfold seg5RPe156 seg5RPe157
  linear_combination -r2014

theorem seg5RStep156 (rho : Nat -> Seg5.F) (r2012 : Seg5.relationRow2012 rho) (r2013 : Seg5.relationRow2013 rho) (r2014 : Seg5.relationRow2014 rho) :
    seg5RPe156 rho = seg5RPe157 rho * rho 1343 ∧
    seg5RIl156 rho = seg5RIl157 rho + seg5RPe157 rho * (1 - rho 1343) -
      seg5RIl157 rho * (seg5RPe157 rho * (1 - rho 1343)) := by
  constructor
  · exact seg5RStep156Pe rho r2014
  · rw [seg5RStep156Acc rho, seg5RStep156L rho r2012, seg5RStep156IlMul rho r2013, seg5RStep156L rho r2012]

theorem seg5_r_chunk156 (rho : Nat -> Seg5.F) (h : Seg5.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg5.F) (0 : Seg5.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k) 157 (seg5RPeState rho 157) (seg5RIlState rho 157) := by
  have htail := seg5_r_chunk155 rho h k hq4
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
  rcases p25 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, r2012, r2013, r2014, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 156 ≤ n → n < 157 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg5RPeState rho n = seg5RPeState rho (n + 1) * rho (1187 + n) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) + seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) -
          seg5RIlState rho (n + 1) * (seg5RPeState rho (n + 1) * (1 - rho (1187 + n)))
      else
        seg5RPeState rho n = seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 156 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg5RStep156 rho r2012 r2013 r2014
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k)
    (seg5RPeState rho) (seg5RIlState rho) 156 1
    (by intro n hnlo hnhi; have key := seg5IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
