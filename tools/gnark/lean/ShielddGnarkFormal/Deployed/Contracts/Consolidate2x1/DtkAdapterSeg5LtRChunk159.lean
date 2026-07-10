import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5LtRChunk158

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg5RStep159L (rho : Nat -> Seg5.F) (r2007 : Seg5.relationRow2007 rho) :
    rho 1705 = seg5RPe160 rho * (1 - rho 1346) := by
  unfold Seg5.relationRow2007 at r2007
  unfold seg5RPe160
  linear_combination -r2007

theorem seg5RStep159IlMul (rho : Nat -> Seg5.F) (r2008 : Seg5.relationRow2008 rho) :
    rho 1706 = seg5RIl160 rho * (rho 1705) := by
  unfold Seg5.relationRow2008 at r2008
  rw [seg5RStep159IlLc rho] at r2008
  linear_combination -r2008

theorem seg5RStep159Acc (rho : Nat -> Seg5.F) :
    seg5RIl159 rho = seg5RIl160 rho + (rho 1705) - (rho 1706) := by
  have hstate : seg5RIl159 rho = seg5RIl160 rho + seg5RIlAtom46 rho := by rfl
  rw [hstate]
  unfold seg5RIlAtom46
  ring

theorem seg5RStep159Pe (rho : Nat -> Seg5.F) (r2009 : Seg5.relationRow2009 rho) :
    seg5RPe159 rho = seg5RPe160 rho * rho 1346 := by
  unfold Seg5.relationRow2009 at r2009
  unfold seg5RPe159 seg5RPe160
  linear_combination -r2009

theorem seg5RStep159 (rho : Nat -> Seg5.F) (r2007 : Seg5.relationRow2007 rho) (r2008 : Seg5.relationRow2008 rho) (r2009 : Seg5.relationRow2009 rho) :
    seg5RPe159 rho = seg5RPe160 rho * rho 1346 ∧
    seg5RIl159 rho = seg5RIl160 rho + seg5RPe160 rho * (1 - rho 1346) -
      seg5RIl160 rho * (seg5RPe160 rho * (1 - rho 1346)) := by
  constructor
  · exact seg5RStep159Pe rho r2009
  · rw [seg5RStep159Acc rho, seg5RStep159L rho r2007, seg5RStep159IlMul rho r2008, seg5RStep159L rho r2007]

theorem seg5_r_chunk159 (rho : Nat -> Seg5.F) (h : Seg5.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg5.F) (0 : Seg5.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k) 160 (seg5RPeState rho 160) (seg5RIlState rho 160) := by
  have htail := seg5_r_chunk158 rho h k hq4
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
  rcases p25 with ⟨_, _, _, _, _, _, _, r2007, r2008, r2009, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 159 ≤ n → n < 160 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg5RPeState rho n = seg5RPeState rho (n + 1) * rho (1187 + n) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) + seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) -
          seg5RIlState rho (n + 1) * (seg5RPeState rho (n + 1) * (1 - rho (1187 + n)))
      else
        seg5RPeState rho n = seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 159 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg5RStep159 rho r2007 r2008 r2009
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k)
    (seg5RPeState rho) (seg5RIlState rho) 159 1
    (by intro n hnlo hnhi; have key := seg5IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
