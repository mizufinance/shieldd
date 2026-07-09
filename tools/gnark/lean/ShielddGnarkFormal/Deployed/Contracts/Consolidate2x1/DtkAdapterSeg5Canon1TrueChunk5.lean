import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5Canon1TrueChunk4

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem seg5Canon1_flag_step_chunk5 (rho : Nat -> Seg5.F) (h : Seg5.relation rho) :
    ∀ m, 80 ≤ m → m < 96 → seg5Canon1Flag rho m = trueFactor (seg5Canon1Bits rho) m * seg5Canon1Flag rho (m + 1) := by
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, p4, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg5.relationPart4 at p4
  rcases p4 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r359, r360, r361, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg5.relationRow359 at r359
  unfold Seg5.relationRow360 at r360
  unfold Seg5.relationRow361 at r361
  intro m hmlo hmhi
  interval_cases m
  · rw [show seg5Canon1Flag rho 80 = rho 563 from rfl, show seg5Canon1Flag rho 81 = rho 563 from rfl]
    have hb : pmBit 80 = false := by decide +kernel
    rw [show trueFactor (seg5Canon1Bits rho) 80 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg5Canon1Flag rho 81 = rho 563 from rfl, show seg5Canon1Flag rho 82 = rho 563 from rfl]
    have hb : pmBit 81 = false := by decide +kernel
    rw [show trueFactor (seg5Canon1Bits rho) 81 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg5Canon1Flag rho 82 = rho 563 from rfl, show seg5Canon1Flag rho 83 = rho 563 from rfl]
    have hb : pmBit 82 = false := by decide +kernel
    rw [show trueFactor (seg5Canon1Bits rho) 82 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg5Canon1Flag rho 83 = rho 563 from rfl, show seg5Canon1Flag rho 84 = rho 563 from rfl]
    have hb : pmBit 83 = false := by decide +kernel
    rw [show trueFactor (seg5Canon1Bits rho) 83 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg5Canon1Flag rho 84 = rho 563 from rfl, show seg5Canon1Flag rho 85 = rho 563 from rfl]
    have hb : pmBit 84 = false := by decide +kernel
    rw [show trueFactor (seg5Canon1Bits rho) 84 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg5Canon1Flag rho 85 = rho 563 from rfl, show seg5Canon1Flag rho 86 = rho 563 from rfl]
    have hb : pmBit 85 = false := by decide +kernel
    rw [show trueFactor (seg5Canon1Bits rho) 85 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg5Canon1Flag rho 86 = rho 563 from rfl, show seg5Canon1Flag rho 87 = rho 563 from rfl]
    have hb : pmBit 86 = false := by decide +kernel
    rw [show trueFactor (seg5Canon1Bits rho) 86 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg5Canon1Flag rho 87 = rho 563 from rfl, show seg5Canon1Flag rho 88 = rho 563 from rfl]
    have hb : pmBit 87 = false := by decide +kernel
    rw [show trueFactor (seg5Canon1Bits rho) 87 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg5Canon1Flag rho 88 = rho 563 from rfl, show seg5Canon1Flag rho 89 = rho 563 from rfl]
    have hb : pmBit 88 = false := by decide +kernel
    rw [show trueFactor (seg5Canon1Bits rho) 88 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg5Canon1Flag rho 89 = rho 563 from rfl, show seg5Canon1Flag rho 90 = rho 563 from rfl]
    have hb : pmBit 89 = false := by decide +kernel
    rw [show trueFactor (seg5Canon1Bits rho) 89 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg5Canon1Flag rho 90 = rho 563 from rfl, show seg5Canon1Flag rho 91 = rho 563 from rfl]
    have hb : pmBit 90 = false := by decide +kernel
    rw [show trueFactor (seg5Canon1Bits rho) 90 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg5Canon1Flag rho 91 = rho 563 from rfl, show seg5Canon1Flag rho 92 = rho 563 from rfl]
    have hb : pmBit 91 = false := by decide +kernel
    rw [show trueFactor (seg5Canon1Bits rho) 91 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg5Canon1Flag rho 92 = rho 563 from rfl, show seg5Canon1Flag rho 93 = rho 562 from rfl]
    have hb : pmBit 92 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg5Canon1Bits_get rho 92 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r361
  · rw [show seg5Canon1Flag rho 93 = rho 562 from rfl, show seg5Canon1Flag rho 94 = rho 562 from rfl]
    have hb : pmBit 93 = false := by decide +kernel
    rw [show trueFactor (seg5Canon1Bits rho) 93 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg5Canon1Flag rho 94 = rho 562 from rfl, show seg5Canon1Flag rho 95 = rho 561 from rfl]
    have hb : pmBit 94 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg5Canon1Bits_get rho 94 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r360
  · rw [show seg5Canon1Flag rho 95 = rho 561 from rfl, show seg5Canon1Flag rho 96 = rho 560 from rfl]
    have hb : pmBit 95 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg5Canon1Bits_get rho 95 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r359

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
