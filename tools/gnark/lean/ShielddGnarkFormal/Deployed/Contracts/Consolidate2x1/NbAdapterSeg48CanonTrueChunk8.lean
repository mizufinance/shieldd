import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg48CanonTrueChunk7

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem seg48Canon_flag_step_chunk8 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ m, 128 ≤ m → m < 144 → seg48CanonFlag rho m = trueFactor (seg48CanonBits rho) m * seg48CanonFlag rho (m + 1) := by
  unfold Seg48.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, p7, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg48.relationPart7 at p7
  rcases p7 with ⟨_, _, _, _, _, r565, r566, r567, r568, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg48.relationRow565 at r565
  unfold Seg48.relationRow566 at r566
  unfold Seg48.relationRow567 at r567
  unfold Seg48.relationRow568 at r568
  intro m hmlo hmhi
  interval_cases m
  · rw [show seg48CanonFlag rho 128 = rho 33495 from rfl, show seg48CanonFlag rho 129 = rho 33494 from rfl]
    have hb : pmBit 128 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg48CanonBits_get rho 128 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r568
  · rw [show seg48CanonFlag rho 129 = rho 33494 from rfl, show seg48CanonFlag rho 130 = rho 33494 from rfl]
    have hb : pmBit 129 = false := by decide +kernel
    rw [show trueFactor (seg48CanonBits rho) 129 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg48CanonFlag rho 130 = rho 33494 from rfl, show seg48CanonFlag rho 131 = rho 33494 from rfl]
    have hb : pmBit 130 = false := by decide +kernel
    rw [show trueFactor (seg48CanonBits rho) 130 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg48CanonFlag rho 131 = rho 33494 from rfl, show seg48CanonFlag rho 132 = rho 33494 from rfl]
    have hb : pmBit 131 = false := by decide +kernel
    rw [show trueFactor (seg48CanonBits rho) 131 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg48CanonFlag rho 132 = rho 33494 from rfl, show seg48CanonFlag rho 133 = rho 33494 from rfl]
    have hb : pmBit 132 = false := by decide +kernel
    rw [show trueFactor (seg48CanonBits rho) 132 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg48CanonFlag rho 133 = rho 33494 from rfl, show seg48CanonFlag rho 134 = rho 33494 from rfl]
    have hb : pmBit 133 = false := by decide +kernel
    rw [show trueFactor (seg48CanonBits rho) 133 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg48CanonFlag rho 134 = rho 33494 from rfl, show seg48CanonFlag rho 135 = rho 33494 from rfl]
    have hb : pmBit 134 = false := by decide +kernel
    rw [show trueFactor (seg48CanonBits rho) 134 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg48CanonFlag rho 135 = rho 33494 from rfl, show seg48CanonFlag rho 136 = rho 33494 from rfl]
    have hb : pmBit 135 = false := by decide +kernel
    rw [show trueFactor (seg48CanonBits rho) 135 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg48CanonFlag rho 136 = rho 33494 from rfl, show seg48CanonFlag rho 137 = rho 33494 from rfl]
    have hb : pmBit 136 = false := by decide +kernel
    rw [show trueFactor (seg48CanonBits rho) 136 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg48CanonFlag rho 137 = rho 33494 from rfl, show seg48CanonFlag rho 138 = rho 33494 from rfl]
    have hb : pmBit 137 = false := by decide +kernel
    rw [show trueFactor (seg48CanonBits rho) 137 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg48CanonFlag rho 138 = rho 33494 from rfl, show seg48CanonFlag rho 139 = rho 33494 from rfl]
    have hb : pmBit 138 = false := by decide +kernel
    rw [show trueFactor (seg48CanonBits rho) 138 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg48CanonFlag rho 139 = rho 33494 from rfl, show seg48CanonFlag rho 140 = rho 33494 from rfl]
    have hb : pmBit 139 = false := by decide +kernel
    rw [show trueFactor (seg48CanonBits rho) 139 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg48CanonFlag rho 140 = rho 33494 from rfl, show seg48CanonFlag rho 141 = rho 33493 from rfl]
    have hb : pmBit 140 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg48CanonBits_get rho 140 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r567
  · rw [show seg48CanonFlag rho 141 = rho 33493 from rfl, show seg48CanonFlag rho 142 = rho 33492 from rfl]
    have hb : pmBit 141 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg48CanonBits_get rho 141 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r566
  · rw [show seg48CanonFlag rho 142 = rho 33492 from rfl, show seg48CanonFlag rho 143 = rho 33492 from rfl]
    have hb : pmBit 142 = false := by decide +kernel
    rw [show trueFactor (seg48CanonBits rho) 142 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg48CanonFlag rho 143 = rho 33492 from rfl, show seg48CanonFlag rho 144 = rho 33491 from rfl]
    have hb : pmBit 143 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg48CanonBits_get rho 143 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r565

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
