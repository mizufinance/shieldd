import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg48CanonTrueChunk1

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem seg48Canon_flag_step_chunk2 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ m, 32 ≤ m → m < 48 → seg48CanonFlag rho m = trueFactor (seg48CanonBits rho) m * seg48CanonFlag rho (m + 1) := by
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
  rcases p7 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r597, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg48.relationRow597 at r597
  intro m hmlo hmhi
  interval_cases m
  · rw [show seg48CanonFlag rho 32 = rho 33524 from rfl, show seg48CanonFlag rho 33 = rho 33524 from rfl]
    have hb : pmBit 32 = false := by decide +kernel
    rw [show trueFactor (seg48CanonBits rho) 32 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg48CanonFlag rho 33 = rho 33524 from rfl, show seg48CanonFlag rho 34 = rho 33524 from rfl]
    have hb : pmBit 33 = false := by decide +kernel
    rw [show trueFactor (seg48CanonBits rho) 33 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg48CanonFlag rho 34 = rho 33524 from rfl, show seg48CanonFlag rho 35 = rho 33524 from rfl]
    have hb : pmBit 34 = false := by decide +kernel
    rw [show trueFactor (seg48CanonBits rho) 34 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg48CanonFlag rho 35 = rho 33524 from rfl, show seg48CanonFlag rho 36 = rho 33524 from rfl]
    have hb : pmBit 35 = false := by decide +kernel
    rw [show trueFactor (seg48CanonBits rho) 35 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg48CanonFlag rho 36 = rho 33524 from rfl, show seg48CanonFlag rho 37 = rho 33524 from rfl]
    have hb : pmBit 36 = false := by decide +kernel
    rw [show trueFactor (seg48CanonBits rho) 36 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg48CanonFlag rho 37 = rho 33524 from rfl, show seg48CanonFlag rho 38 = rho 33524 from rfl]
    have hb : pmBit 37 = false := by decide +kernel
    rw [show trueFactor (seg48CanonBits rho) 37 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg48CanonFlag rho 38 = rho 33524 from rfl, show seg48CanonFlag rho 39 = rho 33524 from rfl]
    have hb : pmBit 38 = false := by decide +kernel
    rw [show trueFactor (seg48CanonBits rho) 38 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg48CanonFlag rho 39 = rho 33524 from rfl, show seg48CanonFlag rho 40 = rho 33524 from rfl]
    have hb : pmBit 39 = false := by decide +kernel
    rw [show trueFactor (seg48CanonBits rho) 39 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg48CanonFlag rho 40 = rho 33524 from rfl, show seg48CanonFlag rho 41 = rho 33524 from rfl]
    have hb : pmBit 40 = false := by decide +kernel
    rw [show trueFactor (seg48CanonBits rho) 40 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg48CanonFlag rho 41 = rho 33524 from rfl, show seg48CanonFlag rho 42 = rho 33524 from rfl]
    have hb : pmBit 41 = false := by decide +kernel
    rw [show trueFactor (seg48CanonBits rho) 41 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg48CanonFlag rho 42 = rho 33524 from rfl, show seg48CanonFlag rho 43 = rho 33524 from rfl]
    have hb : pmBit 42 = false := by decide +kernel
    rw [show trueFactor (seg48CanonBits rho) 42 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg48CanonFlag rho 43 = rho 33524 from rfl, show seg48CanonFlag rho 44 = rho 33524 from rfl]
    have hb : pmBit 43 = false := by decide +kernel
    rw [show trueFactor (seg48CanonBits rho) 43 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg48CanonFlag rho 44 = rho 33524 from rfl, show seg48CanonFlag rho 45 = rho 33524 from rfl]
    have hb : pmBit 44 = false := by decide +kernel
    rw [show trueFactor (seg48CanonBits rho) 44 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg48CanonFlag rho 45 = rho 33524 from rfl, show seg48CanonFlag rho 46 = rho 33524 from rfl]
    have hb : pmBit 45 = false := by decide +kernel
    rw [show trueFactor (seg48CanonBits rho) 45 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg48CanonFlag rho 46 = rho 33524 from rfl, show seg48CanonFlag rho 47 = rho 33524 from rfl]
    have hb : pmBit 46 = false := by decide +kernel
    rw [show trueFactor (seg48CanonBits rho) 46 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg48CanonFlag rho 47 = rho 33524 from rfl, show seg48CanonFlag rho 48 = rho 33523 from rfl]
    have hb : pmBit 47 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg48CanonBits_get rho 47 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r597

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
