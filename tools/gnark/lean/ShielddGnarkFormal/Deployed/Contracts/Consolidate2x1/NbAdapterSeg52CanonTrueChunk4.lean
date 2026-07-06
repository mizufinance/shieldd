import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52CanonTrueChunk3

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem seg52Canon_flag_step_chunk4 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ m, 64 ≤ m → m < 80 → seg52CanonFlag rho m = trueFactor (seg52CanonBits rho) m * seg52CanonFlag rho (m + 1) := by
  unfold Seg52.relation at h
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
  unfold Seg52.relationPart7 at p7
  rcases p7 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r592, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg52.relationRow592 at r592
  intro m hmlo hmhi
  interval_cases m
  · rw [show seg52CanonFlag rho 64 = rho 45151 from rfl, show seg52CanonFlag rho 65 = rho 45150 from rfl]
    have hb : pmBit 64 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg52CanonBits_get rho 64 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r592
  · rw [show seg52CanonFlag rho 65 = rho 45150 from rfl, show seg52CanonFlag rho 66 = rho 45150 from rfl]
    have hb : pmBit 65 = false := by decide +kernel
    rw [show trueFactor (seg52CanonBits rho) 65 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg52CanonFlag rho 66 = rho 45150 from rfl, show seg52CanonFlag rho 67 = rho 45150 from rfl]
    have hb : pmBit 66 = false := by decide +kernel
    rw [show trueFactor (seg52CanonBits rho) 66 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg52CanonFlag rho 67 = rho 45150 from rfl, show seg52CanonFlag rho 68 = rho 45150 from rfl]
    have hb : pmBit 67 = false := by decide +kernel
    rw [show trueFactor (seg52CanonBits rho) 67 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg52CanonFlag rho 68 = rho 45150 from rfl, show seg52CanonFlag rho 69 = rho 45150 from rfl]
    have hb : pmBit 68 = false := by decide +kernel
    rw [show trueFactor (seg52CanonBits rho) 68 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg52CanonFlag rho 69 = rho 45150 from rfl, show seg52CanonFlag rho 70 = rho 45150 from rfl]
    have hb : pmBit 69 = false := by decide +kernel
    rw [show trueFactor (seg52CanonBits rho) 69 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg52CanonFlag rho 70 = rho 45150 from rfl, show seg52CanonFlag rho 71 = rho 45150 from rfl]
    have hb : pmBit 70 = false := by decide +kernel
    rw [show trueFactor (seg52CanonBits rho) 70 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg52CanonFlag rho 71 = rho 45150 from rfl, show seg52CanonFlag rho 72 = rho 45150 from rfl]
    have hb : pmBit 71 = false := by decide +kernel
    rw [show trueFactor (seg52CanonBits rho) 71 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg52CanonFlag rho 72 = rho 45150 from rfl, show seg52CanonFlag rho 73 = rho 45150 from rfl]
    have hb : pmBit 72 = false := by decide +kernel
    rw [show trueFactor (seg52CanonBits rho) 72 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg52CanonFlag rho 73 = rho 45150 from rfl, show seg52CanonFlag rho 74 = rho 45150 from rfl]
    have hb : pmBit 73 = false := by decide +kernel
    rw [show trueFactor (seg52CanonBits rho) 73 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg52CanonFlag rho 74 = rho 45150 from rfl, show seg52CanonFlag rho 75 = rho 45150 from rfl]
    have hb : pmBit 74 = false := by decide +kernel
    rw [show trueFactor (seg52CanonBits rho) 74 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg52CanonFlag rho 75 = rho 45150 from rfl, show seg52CanonFlag rho 76 = rho 45150 from rfl]
    have hb : pmBit 75 = false := by decide +kernel
    rw [show trueFactor (seg52CanonBits rho) 75 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg52CanonFlag rho 76 = rho 45150 from rfl, show seg52CanonFlag rho 77 = rho 45150 from rfl]
    have hb : pmBit 76 = false := by decide +kernel
    rw [show trueFactor (seg52CanonBits rho) 76 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg52CanonFlag rho 77 = rho 45150 from rfl, show seg52CanonFlag rho 78 = rho 45150 from rfl]
    have hb : pmBit 77 = false := by decide +kernel
    rw [show trueFactor (seg52CanonBits rho) 77 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg52CanonFlag rho 78 = rho 45150 from rfl, show seg52CanonFlag rho 79 = rho 45150 from rfl]
    have hb : pmBit 78 = false := by decide +kernel
    rw [show trueFactor (seg52CanonBits rho) 78 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg52CanonFlag rho 79 = rho 45150 from rfl, show seg52CanonFlag rho 80 = rho 45150 from rfl]
    have hb : pmBit 79 = false := by decide +kernel
    rw [show trueFactor (seg52CanonBits rho) 79 = 1 from by simp [trueFactor, hb]]
    ring

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
