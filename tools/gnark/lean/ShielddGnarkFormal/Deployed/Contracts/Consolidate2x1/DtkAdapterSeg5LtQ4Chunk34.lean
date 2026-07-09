import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5LtQ4Chunk33

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg5Q4Step34L (rho : Nat -> Seg5.F) (r2656 : Seg5.relationRow2656 rho) :
    rho 2353 = seg5Q4Pe35 rho * (1 - rho 1221) := by
  unfold Seg5.relationRow2656 at r2656
  unfold seg5Q4Pe35
  linear_combination -r2656

theorem seg5Q4Step34IlMul (rho : Nat -> Seg5.F) (r2657 : Seg5.relationRow2657 rho) :
    rho 2354 = seg5Q4Il35 rho * (rho 2353) := by
  unfold Seg5.relationRow2657 at r2657
  rw [seg5Q4Step34IlLc rho] at r2657
  linear_combination -r2657

theorem seg5Q4Step34Acc (rho : Nat -> Seg5.F) :
    seg5Q4Il34 rho = seg5Q4Il35 rho + (rho 2353) - (rho 2354) := by
  have hstate : seg5Q4Il34 rho = seg5Q4Il35 rho + seg5Q4IlAtom49 rho := by rfl
  rw [hstate]
  unfold seg5Q4IlAtom49
  ring

theorem seg5Q4Step34Pe (rho : Nat -> Seg5.F) (r2658 : Seg5.relationRow2658 rho) :
    seg5Q4Pe34 rho = seg5Q4Pe35 rho * rho 1221 := by
  unfold Seg5.relationRow2658 at r2658
  unfold seg5Q4Pe34 seg5Q4Pe35
  linear_combination -r2658

theorem seg5Q4Step34 (rho : Nat -> Seg5.F) (r2656 : Seg5.relationRow2656 rho) (r2657 : Seg5.relationRow2657 rho) (r2658 : Seg5.relationRow2658 rho) :
    seg5Q4Pe34 rho = seg5Q4Pe35 rho * rho 1221 ∧
    seg5Q4Il34 rho = seg5Q4Il35 rho + seg5Q4Pe35 rho * (1 - rho 1221) -
      seg5Q4Il35 rho * (seg5Q4Pe35 rho * (1 - rho 1221)) := by
  constructor
  · exact seg5Q4Step34Pe rho r2658
  · rw [seg5Q4Step34Acc rho, seg5Q4Step34L rho r2656, seg5Q4Step34IlMul rho r2657, seg5Q4Step34L rho r2656]

theorem seg5_q4_chunk34 (rho : Nat -> Seg5.F) (h : Seg5.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 35 (seg5Q4PeState rho 35) (seg5Q4IlState rho 35) := by
  have htail := seg5_q4_chunk33 rho h k hk
  unfold Seg5.relation at h
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
  unfold Seg5.relationPart33 at p33
  rcases p33 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2656, r2657, r2658, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 34 ≤ n → n < 35 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg5Q4PeState rho n = seg5Q4PeState rho (n + 1) * rho (1187 + n) ∧
        seg5Q4IlState rho n = seg5Q4IlState rho (n + 1) + seg5Q4PeState rho (n + 1) * (1 - rho (1187 + n)) -
          seg5Q4IlState rho (n + 1) * (seg5Q4PeState rho (n + 1) * (1 - rho (1187 + n)))
      else
        seg5Q4PeState rho n = seg5Q4PeState rho (n + 1) * (1 - rho (1187 + n)) ∧
        seg5Q4IlState rho n = seg5Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 34 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg5Q4Step34 rho r2656 r2657 r2658
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg5Q4PeState rho) (seg5Q4IlState rho) 34 1
    (by intro n hnlo hnhi; have key := seg5IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
