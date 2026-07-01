import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45LtQ4Chunk33

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg45Q4Step34L (rho : Nat -> Seg45.F) (r2656 : Seg45.relationRow2656 rho) :
    rho 40886 = seg45Q4Pe35 rho * (1 - rho 39754) := by
  unfold Seg45.relationRow2656 at r2656
  unfold seg45Q4Pe35
  linear_combination -r2656

theorem seg45Q4Step34IlMul (rho : Nat -> Seg45.F) (r2657 : Seg45.relationRow2657 rho) :
    rho 40887 = seg45Q4Il35 rho * (rho 40886) := by
  unfold Seg45.relationRow2657 at r2657
  rw [seg45Q4Step34IlLc rho] at r2657
  linear_combination -r2657

theorem seg45Q4Step34Acc (rho : Nat -> Seg45.F) :
    seg45Q4Il34 rho = seg45Q4Il35 rho + (rho 40886) - (rho 40887) := by
  have hstate : seg45Q4Il34 rho = seg45Q4Il35 rho + seg45Q4IlAtom49 rho := by rfl
  rw [hstate]
  unfold seg45Q4IlAtom49
  ring

theorem seg45Q4Step34Pe (rho : Nat -> Seg45.F) (r2658 : Seg45.relationRow2658 rho) :
    seg45Q4Pe34 rho = seg45Q4Pe35 rho * rho 39754 := by
  unfold Seg45.relationRow2658 at r2658
  unfold seg45Q4Pe34 seg45Q4Pe35
  linear_combination -r2658

theorem seg45Q4Step34 (rho : Nat -> Seg45.F) (r2656 : Seg45.relationRow2656 rho) (r2657 : Seg45.relationRow2657 rho) (r2658 : Seg45.relationRow2658 rho) :
    seg45Q4Pe34 rho = seg45Q4Pe35 rho * rho 39754 ∧
    seg45Q4Il34 rho = seg45Q4Il35 rho + seg45Q4Pe35 rho * (1 - rho 39754) -
      seg45Q4Il35 rho * (seg45Q4Pe35 rho * (1 - rho 39754)) := by
  constructor
  · exact seg45Q4Step34Pe rho r2658
  · rw [seg45Q4Step34Acc rho, seg45Q4Step34L rho r2656, seg45Q4Step34IlMul rho r2657, seg45Q4Step34L rho r2656]

theorem seg45_q4_chunk34 (rho : Nat -> Seg45.F) (h : Seg45.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 35 (seg45Q4PeState rho 35) (seg45Q4IlState rho 35) := by
  have htail := seg45_q4_chunk33 rho h k hk
  unfold Seg45.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, p33, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg45.relationPart33 at p33
  rcases p33 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2656, r2657, r2658, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 34 ≤ n → n < 35 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg45Q4PeState rho n = seg45Q4PeState rho (n + 1) * rho (39720 + n) ∧
        seg45Q4IlState rho n = seg45Q4IlState rho (n + 1) + seg45Q4PeState rho (n + 1) * (1 - rho (39720 + n)) -
          seg45Q4IlState rho (n + 1) * (seg45Q4PeState rho (n + 1) * (1 - rho (39720 + n)))
      else
        seg45Q4PeState rho n = seg45Q4PeState rho (n + 1) * (1 - rho (39720 + n)) ∧
        seg45Q4IlState rho n = seg45Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 34 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg45Q4Step34 rho r2656 r2657 r2658
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg45Q4PeState rho) (seg45Q4IlState rho) 34 1
    (by intro n hnlo hnhi; have key := seg45IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
