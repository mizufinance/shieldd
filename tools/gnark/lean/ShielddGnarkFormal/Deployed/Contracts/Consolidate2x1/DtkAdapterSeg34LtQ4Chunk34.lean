import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34LtQ4Chunk33

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg34Q4Step34L (rho : Nat -> Seg34.F) (r2656 : Seg34.relationRow2656 rho) :
    rho 33930 = seg34Q4Pe35 rho * (1 - rho 32798) := by
  unfold Seg34.relationRow2656 at r2656
  unfold seg34Q4Pe35
  linear_combination -r2656

theorem seg34Q4Step34IlMul (rho : Nat -> Seg34.F) (r2657 : Seg34.relationRow2657 rho) :
    rho 33931 = seg34Q4Il35 rho * (rho 33930) := by
  unfold Seg34.relationRow2657 at r2657
  rw [seg34Q4Step34IlLc rho] at r2657
  linear_combination -r2657

theorem seg34Q4Step34Acc (rho : Nat -> Seg34.F) :
    seg34Q4Il34 rho = seg34Q4Il35 rho + (rho 33930) - (rho 33931) := by
  have hstate : seg34Q4Il34 rho = seg34Q4Il35 rho + seg34Q4IlAtom49 rho := by rfl
  rw [hstate]
  unfold seg34Q4IlAtom49
  ring

theorem seg34Q4Step34Pe (rho : Nat -> Seg34.F) (r2658 : Seg34.relationRow2658 rho) :
    seg34Q4Pe34 rho = seg34Q4Pe35 rho * rho 32798 := by
  unfold Seg34.relationRow2658 at r2658
  unfold seg34Q4Pe34 seg34Q4Pe35
  linear_combination -r2658

theorem seg34Q4Step34 (rho : Nat -> Seg34.F) (r2656 : Seg34.relationRow2656 rho) (r2657 : Seg34.relationRow2657 rho) (r2658 : Seg34.relationRow2658 rho) :
    seg34Q4Pe34 rho = seg34Q4Pe35 rho * rho 32798 ∧
    seg34Q4Il34 rho = seg34Q4Il35 rho + seg34Q4Pe35 rho * (1 - rho 32798) -
      seg34Q4Il35 rho * (seg34Q4Pe35 rho * (1 - rho 32798)) := by
  constructor
  · exact seg34Q4Step34Pe rho r2658
  · rw [seg34Q4Step34Acc rho, seg34Q4Step34L rho r2656, seg34Q4Step34IlMul rho r2657, seg34Q4Step34L rho r2656]

theorem seg34_q4_chunk34 (rho : Nat -> Seg34.F) (h : Seg34.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 35 (seg34Q4PeState rho 35) (seg34Q4IlState rho 35) := by
  have htail := seg34_q4_chunk33 rho h k hk
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart33 at p33
  rcases p33 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2656, r2657, r2658, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 34 ≤ n → n < 35 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg34Q4PeState rho n = seg34Q4PeState rho (n + 1) * rho (32764 + n) ∧
        seg34Q4IlState rho n = seg34Q4IlState rho (n + 1) + seg34Q4PeState rho (n + 1) * (1 - rho (32764 + n)) -
          seg34Q4IlState rho (n + 1) * (seg34Q4PeState rho (n + 1) * (1 - rho (32764 + n)))
      else
        seg34Q4PeState rho n = seg34Q4PeState rho (n + 1) * (1 - rho (32764 + n)) ∧
        seg34Q4IlState rho n = seg34Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 34 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg34Q4Step34 rho r2656 r2657 r2658
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg34Q4PeState rho) (seg34Q4IlState rho) 34 1
    (by intro n hnlo hnhi; have key := seg34IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
