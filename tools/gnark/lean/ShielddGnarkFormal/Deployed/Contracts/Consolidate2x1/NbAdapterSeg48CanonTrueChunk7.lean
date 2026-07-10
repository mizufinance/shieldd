import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg48CanonTrueChunk6

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem seg48Canon_flag_step_chunk7 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ m, 112 ≤ m → m < 128 → seg48CanonFlag rho m = trueFactor (seg48CanonBits rho) m * seg48CanonFlag rho (m + 1) := by
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
  rcases p7 with ⟨_, _, _, _, _, _, _, _, _, r569, r570, r571, r572, r573, r574, r575, r576, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg48.relationRow569 at r569
  unfold Seg48.relationRow570 at r570
  unfold Seg48.relationRow571 at r571
  unfold Seg48.relationRow572 at r572
  unfold Seg48.relationRow573 at r573
  unfold Seg48.relationRow574 at r574
  unfold Seg48.relationRow575 at r575
  unfold Seg48.relationRow576 at r576
  intro m hmlo hmhi
  interval_cases m
  · rw [show seg48CanonFlag rho 112 = rho 33503 from rfl, show seg48CanonFlag rho 113 = rho 33503 from rfl]
    have hb : pmBit 112 = false := by decide +kernel
    rw [show trueFactor (seg48CanonBits rho) 112 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg48CanonFlag rho 113 = rho 33503 from rfl, show seg48CanonFlag rho 114 = rho 33502 from rfl]
    have hb : pmBit 113 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg48CanonBits_get rho 113 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r576
  · rw [show seg48CanonFlag rho 114 = rho 33502 from rfl, show seg48CanonFlag rho 115 = rho 33502 from rfl]
    have hb : pmBit 114 = false := by decide +kernel
    rw [show trueFactor (seg48CanonBits rho) 114 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg48CanonFlag rho 115 = rho 33502 from rfl, show seg48CanonFlag rho 116 = rho 33501 from rfl]
    have hb : pmBit 115 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg48CanonBits_get rho 115 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r575
  · rw [show seg48CanonFlag rho 116 = rho 33501 from rfl, show seg48CanonFlag rho 117 = rho 33501 from rfl]
    have hb : pmBit 116 = false := by decide +kernel
    rw [show trueFactor (seg48CanonBits rho) 116 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg48CanonFlag rho 117 = rho 33501 from rfl, show seg48CanonFlag rho 118 = rho 33500 from rfl]
    have hb : pmBit 117 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg48CanonBits_get rho 117 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r574
  · rw [show seg48CanonFlag rho 118 = rho 33500 from rfl, show seg48CanonFlag rho 119 = rho 33500 from rfl]
    have hb : pmBit 118 = false := by decide +kernel
    rw [show trueFactor (seg48CanonBits rho) 118 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg48CanonFlag rho 119 = rho 33500 from rfl, show seg48CanonFlag rho 120 = rho 33499 from rfl]
    have hb : pmBit 119 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg48CanonBits_get rho 119 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r573
  · rw [show seg48CanonFlag rho 120 = rho 33499 from rfl, show seg48CanonFlag rho 121 = rho 33498 from rfl]
    have hb : pmBit 120 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg48CanonBits_get rho 120 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r572
  · rw [show seg48CanonFlag rho 121 = rho 33498 from rfl, show seg48CanonFlag rho 122 = rho 33498 from rfl]
    have hb : pmBit 121 = false := by decide +kernel
    rw [show trueFactor (seg48CanonBits rho) 121 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg48CanonFlag rho 122 = rho 33498 from rfl, show seg48CanonFlag rho 123 = rho 33498 from rfl]
    have hb : pmBit 122 = false := by decide +kernel
    rw [show trueFactor (seg48CanonBits rho) 122 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg48CanonFlag rho 123 = rho 33498 from rfl, show seg48CanonFlag rho 124 = rho 33497 from rfl]
    have hb : pmBit 123 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg48CanonBits_get rho 123 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r571
  · rw [show seg48CanonFlag rho 124 = rho 33497 from rfl, show seg48CanonFlag rho 125 = rho 33496 from rfl]
    have hb : pmBit 124 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg48CanonBits_get rho 124 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r570
  · rw [show seg48CanonFlag rho 125 = rho 33496 from rfl, show seg48CanonFlag rho 126 = rho 33496 from rfl]
    have hb : pmBit 125 = false := by decide +kernel
    rw [show trueFactor (seg48CanonBits rho) 125 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg48CanonFlag rho 126 = rho 33496 from rfl, show seg48CanonFlag rho 127 = rho 33495 from rfl]
    have hb : pmBit 126 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg48CanonBits_get rho 126 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r569
  · rw [show seg48CanonFlag rho 127 = rho 33495 from rfl, show seg48CanonFlag rho 128 = rho 33495 from rfl]
    have hb : pmBit 127 = false := by decide +kernel
    rw [show trueFactor (seg48CanonBits rho) 127 = 1 from by simp [trueFactor, hb]]
    ring

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
