import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg48CanonTrueChunk4

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem seg48Canon_flag_step_chunk5 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ m, 80 ≤ m → m < 96 → seg48CanonFlag rho m = trueFactor (seg48CanonBits rho) m * seg48CanonFlag rho (m + 1) := by
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
  rcases p7 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r589, r590, r591, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg48.relationRow589 at r589
  unfold Seg48.relationRow590 at r590
  unfold Seg48.relationRow591 at r591
  intro m hmlo hmhi
  interval_cases m
  · rw [show seg48CanonFlag rho 80 = rho 33518 from rfl, show seg48CanonFlag rho 81 = rho 33518 from rfl]
    have hb : pmBit 80 = false := by decide +kernel
    rw [show trueFactor (seg48CanonBits rho) 80 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg48CanonFlag rho 81 = rho 33518 from rfl, show seg48CanonFlag rho 82 = rho 33518 from rfl]
    have hb : pmBit 81 = false := by decide +kernel
    rw [show trueFactor (seg48CanonBits rho) 81 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg48CanonFlag rho 82 = rho 33518 from rfl, show seg48CanonFlag rho 83 = rho 33518 from rfl]
    have hb : pmBit 82 = false := by decide +kernel
    rw [show trueFactor (seg48CanonBits rho) 82 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg48CanonFlag rho 83 = rho 33518 from rfl, show seg48CanonFlag rho 84 = rho 33518 from rfl]
    have hb : pmBit 83 = false := by decide +kernel
    rw [show trueFactor (seg48CanonBits rho) 83 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg48CanonFlag rho 84 = rho 33518 from rfl, show seg48CanonFlag rho 85 = rho 33518 from rfl]
    have hb : pmBit 84 = false := by decide +kernel
    rw [show trueFactor (seg48CanonBits rho) 84 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg48CanonFlag rho 85 = rho 33518 from rfl, show seg48CanonFlag rho 86 = rho 33518 from rfl]
    have hb : pmBit 85 = false := by decide +kernel
    rw [show trueFactor (seg48CanonBits rho) 85 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg48CanonFlag rho 86 = rho 33518 from rfl, show seg48CanonFlag rho 87 = rho 33518 from rfl]
    have hb : pmBit 86 = false := by decide +kernel
    rw [show trueFactor (seg48CanonBits rho) 86 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg48CanonFlag rho 87 = rho 33518 from rfl, show seg48CanonFlag rho 88 = rho 33518 from rfl]
    have hb : pmBit 87 = false := by decide +kernel
    rw [show trueFactor (seg48CanonBits rho) 87 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg48CanonFlag rho 88 = rho 33518 from rfl, show seg48CanonFlag rho 89 = rho 33518 from rfl]
    have hb : pmBit 88 = false := by decide +kernel
    rw [show trueFactor (seg48CanonBits rho) 88 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg48CanonFlag rho 89 = rho 33518 from rfl, show seg48CanonFlag rho 90 = rho 33518 from rfl]
    have hb : pmBit 89 = false := by decide +kernel
    rw [show trueFactor (seg48CanonBits rho) 89 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg48CanonFlag rho 90 = rho 33518 from rfl, show seg48CanonFlag rho 91 = rho 33518 from rfl]
    have hb : pmBit 90 = false := by decide +kernel
    rw [show trueFactor (seg48CanonBits rho) 90 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg48CanonFlag rho 91 = rho 33518 from rfl, show seg48CanonFlag rho 92 = rho 33518 from rfl]
    have hb : pmBit 91 = false := by decide +kernel
    rw [show trueFactor (seg48CanonBits rho) 91 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg48CanonFlag rho 92 = rho 33518 from rfl, show seg48CanonFlag rho 93 = rho 33517 from rfl]
    have hb : pmBit 92 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg48CanonBits_get rho 92 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r591
  · rw [show seg48CanonFlag rho 93 = rho 33517 from rfl, show seg48CanonFlag rho 94 = rho 33517 from rfl]
    have hb : pmBit 93 = false := by decide +kernel
    rw [show trueFactor (seg48CanonBits rho) 93 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg48CanonFlag rho 94 = rho 33517 from rfl, show seg48CanonFlag rho 95 = rho 33516 from rfl]
    have hb : pmBit 94 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg48CanonBits_get rho 94 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r590
  · rw [show seg48CanonFlag rho 95 = rho 33516 from rfl, show seg48CanonFlag rho 96 = rho 33515 from rfl]
    have hb : pmBit 95 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg48CanonBits_get rho 95 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r589

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
