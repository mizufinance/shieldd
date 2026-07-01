import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45LtQ4Chunk112

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg45Q4Step113L (rho : Nat -> Seg45.F) (r2497 : Seg45.relationRow2497 rho) :
    rho 40727 = seg45Q4Pe114 rho * (1 - rho 39833) := by
  unfold Seg45.relationRow2497 at r2497
  unfold seg45Q4Pe114
  linear_combination -r2497

theorem seg45Q4Step113IlMul (rho : Nat -> Seg45.F) (r2498 : Seg45.relationRow2498 rho) :
    rho 40728 = seg45Q4Il114 rho * (rho 40727) := by
  unfold Seg45.relationRow2498 at r2498
  rw [seg45Q4Il114Atoms rho]
  unfold seg45Q4IlAtom0 seg45Q4IlAtom1 seg45Q4IlAtom2 seg45Q4IlAtom3 seg45Q4IlAtom4 seg45Q4IlAtom5 seg45Q4IlAtom6
  linear_combination -r2498

theorem seg45Q4Step113Acc (rho : Nat -> Seg45.F) :
    seg45Q4Il113 rho = seg45Q4Il114 rho + (rho 40727) - (rho 40728) := by
  have hstate : seg45Q4Il113 rho = seg45Q4Il114 rho + seg45Q4IlAtom7 rho := by rfl
  rw [hstate]
  unfold seg45Q4IlAtom7
  ring

theorem seg45Q4Step113Pe (rho : Nat -> Seg45.F) (r2499 : Seg45.relationRow2499 rho) :
    seg45Q4Pe113 rho = seg45Q4Pe114 rho * rho 39833 := by
  unfold Seg45.relationRow2499 at r2499
  unfold seg45Q4Pe113 seg45Q4Pe114
  linear_combination -r2499

theorem seg45Q4Step113 (rho : Nat -> Seg45.F) (r2497 : Seg45.relationRow2497 rho) (r2498 : Seg45.relationRow2498 rho) (r2499 : Seg45.relationRow2499 rho) :
    seg45Q4Pe113 rho = seg45Q4Pe114 rho * rho 39833 ∧
    seg45Q4Il113 rho = seg45Q4Il114 rho + seg45Q4Pe114 rho * (1 - rho 39833) -
      seg45Q4Il114 rho * (seg45Q4Pe114 rho * (1 - rho 39833)) := by
  constructor
  · exact seg45Q4Step113Pe rho r2499
  · rw [seg45Q4Step113Acc rho, seg45Q4Step113L rho r2497, seg45Q4Step113IlMul rho r2498, seg45Q4Step113L rho r2497]

theorem seg45_q4_chunk113 (rho : Nat -> Seg45.F) (h : Seg45.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 114 (seg45Q4PeState rho 114) (seg45Q4IlState rho 114) := by
  have htail := seg45_q4_chunk112 rho h k hk
  unfold Seg45.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, p31, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg45.relationPart31 at p31
  rcases p31 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2497, r2498, r2499, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 113 ≤ n → n < 114 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg45Q4PeState rho n = seg45Q4PeState rho (n + 1) * rho (39720 + n) ∧
        seg45Q4IlState rho n = seg45Q4IlState rho (n + 1) + seg45Q4PeState rho (n + 1) * (1 - rho (39720 + n)) -
          seg45Q4IlState rho (n + 1) * (seg45Q4PeState rho (n + 1) * (1 - rho (39720 + n)))
      else
        seg45Q4PeState rho n = seg45Q4PeState rho (n + 1) * (1 - rho (39720 + n)) ∧
        seg45Q4IlState rho n = seg45Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 113 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg45Q4Step113 rho r2497 r2498 r2499
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg45Q4PeState rho) (seg45Q4IlState rho) 113 1
    (by intro n hnlo hnhi; have key := seg45IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
