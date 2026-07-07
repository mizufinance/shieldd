import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45LtRChunk0

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg45RStep1L (rho : Nat -> Seg45.F) (r2339 : Seg45.relationRow2339 rho) :
    rho 40570 = seg45RPe2 rho * (1 - rho 39721) := by
  unfold Seg45.relationRow2339 at r2339
  unfold seg45RPe2
  linear_combination -r2339

theorem seg45RStep1IlMul (rho : Nat -> Seg45.F) (r2340 : Seg45.relationRow2340 rho) :
    rho 40571 = seg45RIl2 rho * (rho 40570) := by
  unfold Seg45.relationRow2340 at r2340
  rw [seg45RStep1IlLc rho] at r2340
  linear_combination -r2340

theorem seg45RStep1Acc (rho : Nat -> Seg45.F) :
    seg45RIl1 rho = seg45RIl2 rho + (rho 40570) - (rho 40571) := by
  have hstate : seg45RIl1 rho = seg45RIl2 rho + seg45RIlAtom139 rho := by rfl
  rw [hstate]
  unfold seg45RIlAtom139
  ring

theorem seg45RStep1Pe (rho : Nat -> Seg45.F) (r2341 : Seg45.relationRow2341 rho) :
    seg45RPe1 rho = seg45RPe2 rho * rho 39721 := by
  unfold Seg45.relationRow2341 at r2341
  unfold seg45RPe1 seg45RPe2
  linear_combination -r2341

theorem seg45RStep1 (rho : Nat -> Seg45.F) (r2339 : Seg45.relationRow2339 rho) (r2340 : Seg45.relationRow2340 rho) (r2341 : Seg45.relationRow2341 rho) :
    seg45RPe1 rho = seg45RPe2 rho * rho 39721 ∧
    seg45RIl1 rho = seg45RIl2 rho + seg45RPe2 rho * (1 - rho 39721) -
      seg45RIl2 rho * (seg45RPe2 rho * (1 - rho 39721)) := by
  constructor
  · exact seg45RStep1Pe rho r2341
  · rw [seg45RStep1Acc rho, seg45RStep1L rho r2339, seg45RStep1IlMul rho r2340, seg45RStep1L rho r2339]

theorem seg45_r_chunk1 (rho : Nat -> Seg45.F) (h : Seg45.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg45.F) (0 : Seg45.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k) 2 (seg45RPeState rho 2) (seg45RIlState rho 2) := by
  have htail := seg45_r_chunk0 rho h k hq4
  unfold Seg45.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, p29,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg45.relationPart29 at p29
  rcases p29 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2339, r2340, r2341, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 1 ≤ n → n < 2 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg45RPeState rho n = seg45RPeState rho (n + 1) * rho (39720 + n) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) + seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) -
          seg45RIlState rho (n + 1) * (seg45RPeState rho (n + 1) * (1 - rho (39720 + n)))
      else
        seg45RPeState rho n = seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 1 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg45RStep1 rho r2339 r2340 r2341
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k)
    (seg45RPeState rho) (seg45RIlState rho) 1 1
    (by intro n hnlo hnhi; have key := seg45IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
