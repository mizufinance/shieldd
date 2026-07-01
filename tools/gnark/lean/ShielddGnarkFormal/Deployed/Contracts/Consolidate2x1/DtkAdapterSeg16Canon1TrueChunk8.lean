import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16Canon1TrueChunk7

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem seg16Canon1_flag_step_chunk8 (rho : Nat -> Seg16.F) (h : Seg16.relation rho) :
    ∀ m, 128 ≤ m → m < 144 → seg16Canon1Flag rho m = trueFactor (seg16Canon1Bits rho) m * seg16Canon1Flag rho (m + 1) := by
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
  rcases p4 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r335, r336, r337, r338, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow335 at r335
  unfold Seg16.relationRow336 at r336
  unfold Seg16.relationRow337 at r337
  unfold Seg16.relationRow338 at r338
  intro m hmlo hmhi
  interval_cases m
  · rw [show seg16Canon1Flag rho 128 = rho 13417 from rfl, show seg16Canon1Flag rho 129 = rho 13416 from rfl]
    have hb : pmBit 128 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg16Canon1Bits_get rho 128 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r338
  · rw [show seg16Canon1Flag rho 129 = rho 13416 from rfl, show seg16Canon1Flag rho 130 = rho 13416 from rfl]
    have hb : pmBit 129 = false := by decide +kernel
    rw [show trueFactor (seg16Canon1Bits rho) 129 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg16Canon1Flag rho 130 = rho 13416 from rfl, show seg16Canon1Flag rho 131 = rho 13416 from rfl]
    have hb : pmBit 130 = false := by decide +kernel
    rw [show trueFactor (seg16Canon1Bits rho) 130 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg16Canon1Flag rho 131 = rho 13416 from rfl, show seg16Canon1Flag rho 132 = rho 13416 from rfl]
    have hb : pmBit 131 = false := by decide +kernel
    rw [show trueFactor (seg16Canon1Bits rho) 131 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg16Canon1Flag rho 132 = rho 13416 from rfl, show seg16Canon1Flag rho 133 = rho 13416 from rfl]
    have hb : pmBit 132 = false := by decide +kernel
    rw [show trueFactor (seg16Canon1Bits rho) 132 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg16Canon1Flag rho 133 = rho 13416 from rfl, show seg16Canon1Flag rho 134 = rho 13416 from rfl]
    have hb : pmBit 133 = false := by decide +kernel
    rw [show trueFactor (seg16Canon1Bits rho) 133 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg16Canon1Flag rho 134 = rho 13416 from rfl, show seg16Canon1Flag rho 135 = rho 13416 from rfl]
    have hb : pmBit 134 = false := by decide +kernel
    rw [show trueFactor (seg16Canon1Bits rho) 134 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg16Canon1Flag rho 135 = rho 13416 from rfl, show seg16Canon1Flag rho 136 = rho 13416 from rfl]
    have hb : pmBit 135 = false := by decide +kernel
    rw [show trueFactor (seg16Canon1Bits rho) 135 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg16Canon1Flag rho 136 = rho 13416 from rfl, show seg16Canon1Flag rho 137 = rho 13416 from rfl]
    have hb : pmBit 136 = false := by decide +kernel
    rw [show trueFactor (seg16Canon1Bits rho) 136 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg16Canon1Flag rho 137 = rho 13416 from rfl, show seg16Canon1Flag rho 138 = rho 13416 from rfl]
    have hb : pmBit 137 = false := by decide +kernel
    rw [show trueFactor (seg16Canon1Bits rho) 137 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg16Canon1Flag rho 138 = rho 13416 from rfl, show seg16Canon1Flag rho 139 = rho 13416 from rfl]
    have hb : pmBit 138 = false := by decide +kernel
    rw [show trueFactor (seg16Canon1Bits rho) 138 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg16Canon1Flag rho 139 = rho 13416 from rfl, show seg16Canon1Flag rho 140 = rho 13416 from rfl]
    have hb : pmBit 139 = false := by decide +kernel
    rw [show trueFactor (seg16Canon1Bits rho) 139 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg16Canon1Flag rho 140 = rho 13416 from rfl, show seg16Canon1Flag rho 141 = rho 13415 from rfl]
    have hb : pmBit 140 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg16Canon1Bits_get rho 140 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r337
  · rw [show seg16Canon1Flag rho 141 = rho 13415 from rfl, show seg16Canon1Flag rho 142 = rho 13414 from rfl]
    have hb : pmBit 141 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg16Canon1Bits_get rho 141 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r336
  · rw [show seg16Canon1Flag rho 142 = rho 13414 from rfl, show seg16Canon1Flag rho 143 = rho 13414 from rfl]
    have hb : pmBit 142 = false := by decide +kernel
    rw [show trueFactor (seg16Canon1Bits rho) 142 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg16Canon1Flag rho 143 = rho 13414 from rfl, show seg16Canon1Flag rho 144 = rho 13413 from rfl]
    have hb : pmBit 143 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg16Canon1Bits_get rho 143 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r335

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
