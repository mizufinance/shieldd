import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg48CanonTrueChunk13

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem seg48Canon_flag_step_chunk14 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ m, 224 ≤ m → m < 240 → seg48CanonFlag rho m = trueFactor (seg48CanonBits rho) m * seg48CanonFlag rho (m + 1) := by
  unfold Seg48.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, p6, _, _, _,
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
  unfold Seg48.relationPart6 at p6
  rcases p6 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r518, r519, r520, r521, r522, r523, r524, r525, r526, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg48.relationRow518 at r518
  unfold Seg48.relationRow519 at r519
  unfold Seg48.relationRow520 at r520
  unfold Seg48.relationRow521 at r521
  unfold Seg48.relationRow522 at r522
  unfold Seg48.relationRow523 at r523
  unfold Seg48.relationRow524 at r524
  unfold Seg48.relationRow525 at r525
  unfold Seg48.relationRow526 at r526
  intro m hmlo hmhi
  interval_cases m
  · rw [show seg48CanonFlag rho 224 = rho 33453 from rfl, show seg48CanonFlag rho 225 = rho 33453 from rfl]
    have hb : pmBit 224 = false := by decide +kernel
    rw [show trueFactor (seg48CanonBits rho) 224 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg48CanonFlag rho 225 = rho 33453 from rfl, show seg48CanonFlag rho 226 = rho 33452 from rfl]
    have hb : pmBit 225 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg48CanonBits_get rho 225 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r526
  · rw [show seg48CanonFlag rho 226 = rho 33452 from rfl, show seg48CanonFlag rho 227 = rho 33451 from rfl]
    have hb : pmBit 226 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg48CanonBits_get rho 226 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r525
  · rw [show seg48CanonFlag rho 227 = rho 33451 from rfl, show seg48CanonFlag rho 228 = rho 33450 from rfl]
    have hb : pmBit 227 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg48CanonBits_get rho 227 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r524
  · rw [show seg48CanonFlag rho 228 = rho 33450 from rfl, show seg48CanonFlag rho 229 = rho 33449 from rfl]
    have hb : pmBit 228 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg48CanonBits_get rho 228 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r523
  · rw [show seg48CanonFlag rho 229 = rho 33449 from rfl, show seg48CanonFlag rho 230 = rho 33449 from rfl]
    have hb : pmBit 229 = false := by decide +kernel
    rw [show trueFactor (seg48CanonBits rho) 229 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg48CanonFlag rho 230 = rho 33449 from rfl, show seg48CanonFlag rho 231 = rho 33448 from rfl]
    have hb : pmBit 230 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg48CanonBits_get rho 230 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r522
  · rw [show seg48CanonFlag rho 231 = rho 33448 from rfl, show seg48CanonFlag rho 232 = rho 33448 from rfl]
    have hb : pmBit 231 = false := by decide +kernel
    rw [show trueFactor (seg48CanonBits rho) 231 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg48CanonFlag rho 232 = rho 33448 from rfl, show seg48CanonFlag rho 233 = rho 33447 from rfl]
    have hb : pmBit 232 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg48CanonBits_get rho 232 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r521
  · rw [show seg48CanonFlag rho 233 = rho 33447 from rfl, show seg48CanonFlag rho 234 = rho 33447 from rfl]
    have hb : pmBit 233 = false := by decide +kernel
    rw [show trueFactor (seg48CanonBits rho) 233 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg48CanonFlag rho 234 = rho 33447 from rfl, show seg48CanonFlag rho 235 = rho 33446 from rfl]
    have hb : pmBit 234 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg48CanonBits_get rho 234 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r520
  · rw [show seg48CanonFlag rho 235 = rho 33446 from rfl, show seg48CanonFlag rho 236 = rho 33446 from rfl]
    have hb : pmBit 235 = false := by decide +kernel
    rw [show trueFactor (seg48CanonBits rho) 235 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg48CanonFlag rho 236 = rho 33446 from rfl, show seg48CanonFlag rho 237 = rho 33446 from rfl]
    have hb : pmBit 236 = false := by decide +kernel
    rw [show trueFactor (seg48CanonBits rho) 236 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg48CanonFlag rho 237 = rho 33446 from rfl, show seg48CanonFlag rho 238 = rho 33445 from rfl]
    have hb : pmBit 237 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg48CanonBits_get rho 237 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r519
  · rw [show seg48CanonFlag rho 238 = rho 33445 from rfl, show seg48CanonFlag rho 239 = rho 33444 from rfl]
    have hb : pmBit 238 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg48CanonBits_get rho 238 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r518
  · rw [show seg48CanonFlag rho 239 = rho 33444 from rfl, show seg48CanonFlag rho 240 = rho 33444 from rfl]
    have hb : pmBit 239 = false := by decide +kernel
    rw [show trueFactor (seg48CanonBits rho) 239 = 1 from by simp [trueFactor, hb]]
    ring

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
