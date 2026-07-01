import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16Canon1TrueChunk4

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem seg16Canon1_flag_step_chunk5 (rho : Nat -> Seg16.F) (h : Seg16.relation rho) :
    ∀ m, 80 ≤ m → m < 96 → seg16Canon1Flag rho m = trueFactor (seg16Canon1Bits rho) m * seg16Canon1Flag rho (m + 1) := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart4 at p4
  rcases p4 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r359, r360, r361, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow359 at r359
  unfold Seg16.relationRow360 at r360
  unfold Seg16.relationRow361 at r361
  intro m hmlo hmhi
  interval_cases m
  · rw [show seg16Canon1Flag rho 80 = rho 13440 from rfl, show seg16Canon1Flag rho 81 = rho 13440 from rfl]
    have hb : pmBit 80 = false := by decide +kernel
    rw [show trueFactor (seg16Canon1Bits rho) 80 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg16Canon1Flag rho 81 = rho 13440 from rfl, show seg16Canon1Flag rho 82 = rho 13440 from rfl]
    have hb : pmBit 81 = false := by decide +kernel
    rw [show trueFactor (seg16Canon1Bits rho) 81 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg16Canon1Flag rho 82 = rho 13440 from rfl, show seg16Canon1Flag rho 83 = rho 13440 from rfl]
    have hb : pmBit 82 = false := by decide +kernel
    rw [show trueFactor (seg16Canon1Bits rho) 82 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg16Canon1Flag rho 83 = rho 13440 from rfl, show seg16Canon1Flag rho 84 = rho 13440 from rfl]
    have hb : pmBit 83 = false := by decide +kernel
    rw [show trueFactor (seg16Canon1Bits rho) 83 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg16Canon1Flag rho 84 = rho 13440 from rfl, show seg16Canon1Flag rho 85 = rho 13440 from rfl]
    have hb : pmBit 84 = false := by decide +kernel
    rw [show trueFactor (seg16Canon1Bits rho) 84 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg16Canon1Flag rho 85 = rho 13440 from rfl, show seg16Canon1Flag rho 86 = rho 13440 from rfl]
    have hb : pmBit 85 = false := by decide +kernel
    rw [show trueFactor (seg16Canon1Bits rho) 85 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg16Canon1Flag rho 86 = rho 13440 from rfl, show seg16Canon1Flag rho 87 = rho 13440 from rfl]
    have hb : pmBit 86 = false := by decide +kernel
    rw [show trueFactor (seg16Canon1Bits rho) 86 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg16Canon1Flag rho 87 = rho 13440 from rfl, show seg16Canon1Flag rho 88 = rho 13440 from rfl]
    have hb : pmBit 87 = false := by decide +kernel
    rw [show trueFactor (seg16Canon1Bits rho) 87 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg16Canon1Flag rho 88 = rho 13440 from rfl, show seg16Canon1Flag rho 89 = rho 13440 from rfl]
    have hb : pmBit 88 = false := by decide +kernel
    rw [show trueFactor (seg16Canon1Bits rho) 88 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg16Canon1Flag rho 89 = rho 13440 from rfl, show seg16Canon1Flag rho 90 = rho 13440 from rfl]
    have hb : pmBit 89 = false := by decide +kernel
    rw [show trueFactor (seg16Canon1Bits rho) 89 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg16Canon1Flag rho 90 = rho 13440 from rfl, show seg16Canon1Flag rho 91 = rho 13440 from rfl]
    have hb : pmBit 90 = false := by decide +kernel
    rw [show trueFactor (seg16Canon1Bits rho) 90 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg16Canon1Flag rho 91 = rho 13440 from rfl, show seg16Canon1Flag rho 92 = rho 13440 from rfl]
    have hb : pmBit 91 = false := by decide +kernel
    rw [show trueFactor (seg16Canon1Bits rho) 91 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg16Canon1Flag rho 92 = rho 13440 from rfl, show seg16Canon1Flag rho 93 = rho 13439 from rfl]
    have hb : pmBit 92 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg16Canon1Bits_get rho 92 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r361
  · rw [show seg16Canon1Flag rho 93 = rho 13439 from rfl, show seg16Canon1Flag rho 94 = rho 13439 from rfl]
    have hb : pmBit 93 = false := by decide +kernel
    rw [show trueFactor (seg16Canon1Bits rho) 93 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg16Canon1Flag rho 94 = rho 13439 from rfl, show seg16Canon1Flag rho 95 = rho 13438 from rfl]
    have hb : pmBit 94 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg16Canon1Bits_get rho 94 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r360
  · rw [show seg16Canon1Flag rho 95 = rho 13438 from rfl, show seg16Canon1Flag rho 96 = rho 13437 from rfl]
    have hb : pmBit 95 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg16Canon1Bits_get rho 95 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r359

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
