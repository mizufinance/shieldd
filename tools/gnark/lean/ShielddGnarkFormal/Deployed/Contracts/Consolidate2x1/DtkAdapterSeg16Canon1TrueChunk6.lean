import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16Canon1TrueChunk5

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem seg16Canon1_flag_step_chunk6 (rho : Nat -> Seg16.F) (h : Seg16.relation rho) :
    ∀ m, 96 ≤ m → m < 112 → seg16Canon1Flag rho m = trueFactor (seg16Canon1Bits rho) m * seg16Canon1Flag rho (m + 1) := by
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
  rcases p4 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r347, r348, r349, r350, r351, r352, r353, r354, r355, r356, r357, r358, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow347 at r347
  unfold Seg16.relationRow348 at r348
  unfold Seg16.relationRow349 at r349
  unfold Seg16.relationRow350 at r350
  unfold Seg16.relationRow351 at r351
  unfold Seg16.relationRow352 at r352
  unfold Seg16.relationRow353 at r353
  unfold Seg16.relationRow354 at r354
  unfold Seg16.relationRow355 at r355
  unfold Seg16.relationRow356 at r356
  unfold Seg16.relationRow357 at r357
  unfold Seg16.relationRow358 at r358
  intro m hmlo hmhi
  interval_cases m
  · rw [show seg16Canon1Flag rho 96 = rho 13437 from rfl, show seg16Canon1Flag rho 97 = rho 13437 from rfl]
    have hb : pmBit 96 = false := by decide +kernel
    rw [show trueFactor (seg16Canon1Bits rho) 96 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg16Canon1Flag rho 97 = rho 13437 from rfl, show seg16Canon1Flag rho 98 = rho 13436 from rfl]
    have hb : pmBit 97 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg16Canon1Bits_get rho 97 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r358
  · rw [show seg16Canon1Flag rho 98 = rho 13436 from rfl, show seg16Canon1Flag rho 99 = rho 13435 from rfl]
    have hb : pmBit 98 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg16Canon1Bits_get rho 98 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r357
  · rw [show seg16Canon1Flag rho 99 = rho 13435 from rfl, show seg16Canon1Flag rho 100 = rho 13434 from rfl]
    have hb : pmBit 99 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg16Canon1Bits_get rho 99 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r356
  · rw [show seg16Canon1Flag rho 100 = rho 13434 from rfl, show seg16Canon1Flag rho 101 = rho 13433 from rfl]
    have hb : pmBit 100 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg16Canon1Bits_get rho 100 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r355
  · rw [show seg16Canon1Flag rho 101 = rho 13433 from rfl, show seg16Canon1Flag rho 102 = rho 13432 from rfl]
    have hb : pmBit 101 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg16Canon1Bits_get rho 101 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r354
  · rw [show seg16Canon1Flag rho 102 = rho 13432 from rfl, show seg16Canon1Flag rho 103 = rho 13431 from rfl]
    have hb : pmBit 102 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg16Canon1Bits_get rho 102 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r353
  · rw [show seg16Canon1Flag rho 103 = rho 13431 from rfl, show seg16Canon1Flag rho 104 = rho 13430 from rfl]
    have hb : pmBit 103 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg16Canon1Bits_get rho 103 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r352
  · rw [show seg16Canon1Flag rho 104 = rho 13430 from rfl, show seg16Canon1Flag rho 105 = rho 13430 from rfl]
    have hb : pmBit 104 = false := by decide +kernel
    rw [show trueFactor (seg16Canon1Bits rho) 104 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg16Canon1Flag rho 105 = rho 13430 from rfl, show seg16Canon1Flag rho 106 = rho 13429 from rfl]
    have hb : pmBit 105 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg16Canon1Bits_get rho 105 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r351
  · rw [show seg16Canon1Flag rho 106 = rho 13429 from rfl, show seg16Canon1Flag rho 107 = rho 13428 from rfl]
    have hb : pmBit 106 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg16Canon1Bits_get rho 106 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r350
  · rw [show seg16Canon1Flag rho 107 = rho 13428 from rfl, show seg16Canon1Flag rho 108 = rho 13428 from rfl]
    have hb : pmBit 107 = false := by decide +kernel
    rw [show trueFactor (seg16Canon1Bits rho) 107 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg16Canon1Flag rho 108 = rho 13428 from rfl, show seg16Canon1Flag rho 109 = rho 13427 from rfl]
    have hb : pmBit 108 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg16Canon1Bits_get rho 108 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r349
  · rw [show seg16Canon1Flag rho 109 = rho 13427 from rfl, show seg16Canon1Flag rho 110 = rho 13426 from rfl]
    have hb : pmBit 109 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg16Canon1Bits_get rho 109 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r348
  · rw [show seg16Canon1Flag rho 110 = rho 13426 from rfl, show seg16Canon1Flag rho 111 = rho 13425 from rfl]
    have hb : pmBit 110 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg16Canon1Bits_get rho 110 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r347
  · rw [show seg16Canon1Flag rho 111 = rho 13425 from rfl, show seg16Canon1Flag rho 112 = rho 13425 from rfl]
    have hb : pmBit 111 = false := by decide +kernel
    rw [show trueFactor (seg16Canon1Bits rho) 111 = 1 from by simp [trueFactor, hb]]
    ring

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
