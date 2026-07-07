import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16Canon1TrueChunk6

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem seg16Canon1_flag_step_chunk7 (rho : Nat -> Seg16.F) (h : Seg16.relation rho) :
    ∀ m, 112 ≤ m → m < 128 → seg16Canon1Flag rho m = trueFactor (seg16Canon1Bits rho) m * seg16Canon1Flag rho (m + 1) := by
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
  rcases p4 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r339, r340, r341, r342, r343, r344, r345, r346, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow339 at r339
  unfold Seg16.relationRow340 at r340
  unfold Seg16.relationRow341 at r341
  unfold Seg16.relationRow342 at r342
  unfold Seg16.relationRow343 at r343
  unfold Seg16.relationRow344 at r344
  unfold Seg16.relationRow345 at r345
  unfold Seg16.relationRow346 at r346
  intro m hmlo hmhi
  interval_cases m
  · rw [show seg16Canon1Flag rho 112 = rho 13425 from rfl, show seg16Canon1Flag rho 113 = rho 13425 from rfl]
    have hb : pmBit 112 = false := by decide +kernel
    rw [show trueFactor (seg16Canon1Bits rho) 112 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg16Canon1Flag rho 113 = rho 13425 from rfl, show seg16Canon1Flag rho 114 = rho 13424 from rfl]
    have hb : pmBit 113 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg16Canon1Bits_get rho 113 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r346
  · rw [show seg16Canon1Flag rho 114 = rho 13424 from rfl, show seg16Canon1Flag rho 115 = rho 13424 from rfl]
    have hb : pmBit 114 = false := by decide +kernel
    rw [show trueFactor (seg16Canon1Bits rho) 114 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg16Canon1Flag rho 115 = rho 13424 from rfl, show seg16Canon1Flag rho 116 = rho 13423 from rfl]
    have hb : pmBit 115 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg16Canon1Bits_get rho 115 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r345
  · rw [show seg16Canon1Flag rho 116 = rho 13423 from rfl, show seg16Canon1Flag rho 117 = rho 13423 from rfl]
    have hb : pmBit 116 = false := by decide +kernel
    rw [show trueFactor (seg16Canon1Bits rho) 116 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg16Canon1Flag rho 117 = rho 13423 from rfl, show seg16Canon1Flag rho 118 = rho 13422 from rfl]
    have hb : pmBit 117 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg16Canon1Bits_get rho 117 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r344
  · rw [show seg16Canon1Flag rho 118 = rho 13422 from rfl, show seg16Canon1Flag rho 119 = rho 13422 from rfl]
    have hb : pmBit 118 = false := by decide +kernel
    rw [show trueFactor (seg16Canon1Bits rho) 118 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg16Canon1Flag rho 119 = rho 13422 from rfl, show seg16Canon1Flag rho 120 = rho 13421 from rfl]
    have hb : pmBit 119 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg16Canon1Bits_get rho 119 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r343
  · rw [show seg16Canon1Flag rho 120 = rho 13421 from rfl, show seg16Canon1Flag rho 121 = rho 13420 from rfl]
    have hb : pmBit 120 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg16Canon1Bits_get rho 120 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r342
  · rw [show seg16Canon1Flag rho 121 = rho 13420 from rfl, show seg16Canon1Flag rho 122 = rho 13420 from rfl]
    have hb : pmBit 121 = false := by decide +kernel
    rw [show trueFactor (seg16Canon1Bits rho) 121 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg16Canon1Flag rho 122 = rho 13420 from rfl, show seg16Canon1Flag rho 123 = rho 13420 from rfl]
    have hb : pmBit 122 = false := by decide +kernel
    rw [show trueFactor (seg16Canon1Bits rho) 122 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg16Canon1Flag rho 123 = rho 13420 from rfl, show seg16Canon1Flag rho 124 = rho 13419 from rfl]
    have hb : pmBit 123 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg16Canon1Bits_get rho 123 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r341
  · rw [show seg16Canon1Flag rho 124 = rho 13419 from rfl, show seg16Canon1Flag rho 125 = rho 13418 from rfl]
    have hb : pmBit 124 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg16Canon1Bits_get rho 124 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r340
  · rw [show seg16Canon1Flag rho 125 = rho 13418 from rfl, show seg16Canon1Flag rho 126 = rho 13418 from rfl]
    have hb : pmBit 125 = false := by decide +kernel
    rw [show trueFactor (seg16Canon1Bits rho) 125 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg16Canon1Flag rho 126 = rho 13418 from rfl, show seg16Canon1Flag rho 127 = rho 13417 from rfl]
    have hb : pmBit 126 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg16Canon1Bits_get rho 126 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r339
  · rw [show seg16Canon1Flag rho 127 = rho 13417 from rfl, show seg16Canon1Flag rho 128 = rho 13417 from rfl]
    have hb : pmBit 127 = false := by decide +kernel
    rw [show trueFactor (seg16Canon1Bits rho) 127 = 1 from by simp [trueFactor, hb]]
    ring

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
