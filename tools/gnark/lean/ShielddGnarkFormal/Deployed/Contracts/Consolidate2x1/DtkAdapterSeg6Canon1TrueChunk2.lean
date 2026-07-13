import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg6Canon1TrueChunk1

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem seg6Canon1_flag_step_chunk2 (rho : Nat -> Seg6.F) (h : Seg6.relation rho) :
    ∀ m, 32 ≤ m → m < 48 → seg6Canon1Flag rho m = trueFactor (seg6Canon1Bits rho) m * seg6Canon1Flag rho (m + 1) := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, p4, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart4 at p4
  rcases p4 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r367, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg6.relationRow367 at r367
  intro m hmlo hmhi
  interval_cases m
  · rw [show seg6Canon1Flag rho 32 = rho 1272 from rfl, show seg6Canon1Flag rho 33 = rho 1272 from rfl]
    have hb : pmBit 32 = false := by decide +kernel
    rw [show trueFactor (seg6Canon1Bits rho) 32 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg6Canon1Flag rho 33 = rho 1272 from rfl, show seg6Canon1Flag rho 34 = rho 1272 from rfl]
    have hb : pmBit 33 = false := by decide +kernel
    rw [show trueFactor (seg6Canon1Bits rho) 33 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg6Canon1Flag rho 34 = rho 1272 from rfl, show seg6Canon1Flag rho 35 = rho 1272 from rfl]
    have hb : pmBit 34 = false := by decide +kernel
    rw [show trueFactor (seg6Canon1Bits rho) 34 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg6Canon1Flag rho 35 = rho 1272 from rfl, show seg6Canon1Flag rho 36 = rho 1272 from rfl]
    have hb : pmBit 35 = false := by decide +kernel
    rw [show trueFactor (seg6Canon1Bits rho) 35 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg6Canon1Flag rho 36 = rho 1272 from rfl, show seg6Canon1Flag rho 37 = rho 1272 from rfl]
    have hb : pmBit 36 = false := by decide +kernel
    rw [show trueFactor (seg6Canon1Bits rho) 36 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg6Canon1Flag rho 37 = rho 1272 from rfl, show seg6Canon1Flag rho 38 = rho 1272 from rfl]
    have hb : pmBit 37 = false := by decide +kernel
    rw [show trueFactor (seg6Canon1Bits rho) 37 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg6Canon1Flag rho 38 = rho 1272 from rfl, show seg6Canon1Flag rho 39 = rho 1272 from rfl]
    have hb : pmBit 38 = false := by decide +kernel
    rw [show trueFactor (seg6Canon1Bits rho) 38 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg6Canon1Flag rho 39 = rho 1272 from rfl, show seg6Canon1Flag rho 40 = rho 1272 from rfl]
    have hb : pmBit 39 = false := by decide +kernel
    rw [show trueFactor (seg6Canon1Bits rho) 39 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg6Canon1Flag rho 40 = rho 1272 from rfl, show seg6Canon1Flag rho 41 = rho 1272 from rfl]
    have hb : pmBit 40 = false := by decide +kernel
    rw [show trueFactor (seg6Canon1Bits rho) 40 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg6Canon1Flag rho 41 = rho 1272 from rfl, show seg6Canon1Flag rho 42 = rho 1272 from rfl]
    have hb : pmBit 41 = false := by decide +kernel
    rw [show trueFactor (seg6Canon1Bits rho) 41 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg6Canon1Flag rho 42 = rho 1272 from rfl, show seg6Canon1Flag rho 43 = rho 1272 from rfl]
    have hb : pmBit 42 = false := by decide +kernel
    rw [show trueFactor (seg6Canon1Bits rho) 42 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg6Canon1Flag rho 43 = rho 1272 from rfl, show seg6Canon1Flag rho 44 = rho 1272 from rfl]
    have hb : pmBit 43 = false := by decide +kernel
    rw [show trueFactor (seg6Canon1Bits rho) 43 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg6Canon1Flag rho 44 = rho 1272 from rfl, show seg6Canon1Flag rho 45 = rho 1272 from rfl]
    have hb : pmBit 44 = false := by decide +kernel
    rw [show trueFactor (seg6Canon1Bits rho) 44 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg6Canon1Flag rho 45 = rho 1272 from rfl, show seg6Canon1Flag rho 46 = rho 1272 from rfl]
    have hb : pmBit 45 = false := by decide +kernel
    rw [show trueFactor (seg6Canon1Bits rho) 45 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg6Canon1Flag rho 46 = rho 1272 from rfl, show seg6Canon1Flag rho 47 = rho 1272 from rfl]
    have hb : pmBit 46 = false := by decide +kernel
    rw [show trueFactor (seg6Canon1Bits rho) 46 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg6Canon1Flag rho 47 = rho 1272 from rfl, show seg6Canon1Flag rho 48 = rho 1271 from rfl]
    have hb : pmBit 47 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg6Canon1Bits_get rho 47 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r367

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
