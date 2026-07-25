import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg6Canon1TrueChunk2

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem seg6Canon1_flag_step_chunk3 (rho : Nat -> Seg6.F) (h : Seg6.relation rho) :
    ∀ m, 48 ≤ m → m < 64 → seg6Canon1Flag rho m = trueFactor (seg6Canon1Bits rho) m * seg6Canon1Flag rho (m + 1) := by
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
  rcases p4 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r363, r364, r365, r366, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg6.relationRow363 at r363
  unfold Seg6.relationRow364 at r364
  unfold Seg6.relationRow365 at r365
  unfold Seg6.relationRow366 at r366
  intro m hmlo hmhi
  interval_cases m
  · rw [show seg6Canon1Flag rho 48 = rho 1271 from rfl, show seg6Canon1Flag rho 49 = rho 1270 from rfl]
    have hb : pmBit 48 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg6Canon1Bits_get rho 48 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r366
  · rw [show seg6Canon1Flag rho 49 = rho 1270 from rfl, show seg6Canon1Flag rho 50 = rho 1270 from rfl]
    have hb : pmBit 49 = false := by decide +kernel
    rw [show trueFactor (seg6Canon1Bits rho) 49 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg6Canon1Flag rho 50 = rho 1270 from rfl, show seg6Canon1Flag rho 51 = rho 1270 from rfl]
    have hb : pmBit 50 = false := by decide +kernel
    rw [show trueFactor (seg6Canon1Bits rho) 50 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg6Canon1Flag rho 51 = rho 1270 from rfl, show seg6Canon1Flag rho 52 = rho 1270 from rfl]
    have hb : pmBit 51 = false := by decide +kernel
    rw [show trueFactor (seg6Canon1Bits rho) 51 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg6Canon1Flag rho 52 = rho 1270 from rfl, show seg6Canon1Flag rho 53 = rho 1269 from rfl]
    have hb : pmBit 52 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg6Canon1Bits_get rho 52 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r365
  · rw [show seg6Canon1Flag rho 53 = rho 1269 from rfl, show seg6Canon1Flag rho 54 = rho 1269 from rfl]
    have hb : pmBit 53 = false := by decide +kernel
    rw [show trueFactor (seg6Canon1Bits rho) 53 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg6Canon1Flag rho 54 = rho 1269 from rfl, show seg6Canon1Flag rho 55 = rho 1269 from rfl]
    have hb : pmBit 54 = false := by decide +kernel
    rw [show trueFactor (seg6Canon1Bits rho) 54 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg6Canon1Flag rho 55 = rho 1269 from rfl, show seg6Canon1Flag rho 56 = rho 1269 from rfl]
    have hb : pmBit 55 = false := by decide +kernel
    rw [show trueFactor (seg6Canon1Bits rho) 55 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg6Canon1Flag rho 56 = rho 1269 from rfl, show seg6Canon1Flag rho 57 = rho 1269 from rfl]
    have hb : pmBit 56 = false := by decide +kernel
    rw [show trueFactor (seg6Canon1Bits rho) 56 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg6Canon1Flag rho 57 = rho 1269 from rfl, show seg6Canon1Flag rho 58 = rho 1268 from rfl]
    have hb : pmBit 57 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg6Canon1Bits_get rho 57 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r364
  · rw [show seg6Canon1Flag rho 58 = rho 1268 from rfl, show seg6Canon1Flag rho 59 = rho 1268 from rfl]
    have hb : pmBit 58 = false := by decide +kernel
    rw [show trueFactor (seg6Canon1Bits rho) 58 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg6Canon1Flag rho 59 = rho 1268 from rfl, show seg6Canon1Flag rho 60 = rho 1267 from rfl]
    have hb : pmBit 59 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg6Canon1Bits_get rho 59 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r363
  · rw [show seg6Canon1Flag rho 60 = rho 1267 from rfl, show seg6Canon1Flag rho 61 = rho 1267 from rfl]
    have hb : pmBit 60 = false := by decide +kernel
    rw [show trueFactor (seg6Canon1Bits rho) 60 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg6Canon1Flag rho 61 = rho 1267 from rfl, show seg6Canon1Flag rho 62 = rho 1267 from rfl]
    have hb : pmBit 61 = false := by decide +kernel
    rw [show trueFactor (seg6Canon1Bits rho) 61 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg6Canon1Flag rho 62 = rho 1267 from rfl, show seg6Canon1Flag rho 63 = rho 1267 from rfl]
    have hb : pmBit 62 = false := by decide +kernel
    rw [show trueFactor (seg6Canon1Bits rho) 62 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg6Canon1Flag rho 63 = rho 1267 from rfl, show seg6Canon1Flag rho 64 = rho 1267 from rfl]
    have hb : pmBit 63 = false := by decide +kernel
    rw [show trueFactor (seg6Canon1Bits rho) 63 = 1 from by simp [trueFactor, hb]]
    ring

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
