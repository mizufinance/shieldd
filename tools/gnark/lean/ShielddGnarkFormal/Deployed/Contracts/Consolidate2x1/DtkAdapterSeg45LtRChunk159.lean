import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45LtRChunk158

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg45RStep159L (rho : Nat -> Seg45.F) (r2007 : Seg45.relationRow2007 rho) :
    rho 40238 = seg45RPe160 rho * (1 - rho 39879) := by
  unfold Seg45.relationRow2007 at r2007
  unfold seg45RPe160
  linear_combination -r2007

theorem seg45RStep159IlMul (rho : Nat -> Seg45.F) (r2008 : Seg45.relationRow2008 rho) :
    rho 40239 = seg45RIl160 rho * (rho 40238) := by
  unfold Seg45.relationRow2008 at r2008
  rw [seg45RStep159IlLc rho] at r2008
  linear_combination -r2008

theorem seg45RStep159Acc (rho : Nat -> Seg45.F) :
    seg45RIl159 rho = seg45RIl160 rho + (rho 40238) - (rho 40239) := by
  have hstate : seg45RIl159 rho = seg45RIl160 rho + seg45RIlAtom46 rho := by rfl
  rw [hstate]
  unfold seg45RIlAtom46
  ring

theorem seg45RStep159Pe (rho : Nat -> Seg45.F) (r2009 : Seg45.relationRow2009 rho) :
    seg45RPe159 rho = seg45RPe160 rho * rho 39879 := by
  unfold Seg45.relationRow2009 at r2009
  unfold seg45RPe159 seg45RPe160
  linear_combination -r2009

theorem seg45RStep159 (rho : Nat -> Seg45.F) (r2007 : Seg45.relationRow2007 rho) (r2008 : Seg45.relationRow2008 rho) (r2009 : Seg45.relationRow2009 rho) :
    seg45RPe159 rho = seg45RPe160 rho * rho 39879 ∧
    seg45RIl159 rho = seg45RIl160 rho + seg45RPe160 rho * (1 - rho 39879) -
      seg45RIl160 rho * (seg45RPe160 rho * (1 - rho 39879)) := by
  constructor
  · exact seg45RStep159Pe rho r2009
  · rw [seg45RStep159Acc rho, seg45RStep159L rho r2007, seg45RStep159IlMul rho r2008, seg45RStep159L rho r2007]

theorem seg45_r_chunk159 (rho : Nat -> Seg45.F) (h : Seg45.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg45.F) (0 : Seg45.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k) 160 (seg45RPeState rho 160) (seg45RIlState rho 160) := by
  have htail := seg45_r_chunk158 rho h k hq4
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
  rcases p25 with ⟨_, _, _, _, _, _, _, r2007, r2008, r2009, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 159 ≤ n → n < 160 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg45RPeState rho n = seg45RPeState rho (n + 1) * rho (39720 + n) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) + seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) -
          seg45RIlState rho (n + 1) * (seg45RPeState rho (n + 1) * (1 - rho (39720 + n)))
      else
        seg45RPeState rho n = seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 159 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg45RStep159 rho r2007 r2008 r2009
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k)
    (seg45RPeState rho) (seg45RIlState rho) 159 1
    (by intro n hnlo hnhi; have key := seg45IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
