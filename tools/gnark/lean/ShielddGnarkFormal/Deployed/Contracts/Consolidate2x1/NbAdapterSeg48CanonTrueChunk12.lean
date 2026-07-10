import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg48CanonTrueChunk11

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem seg48Canon_flag_step_chunk12 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ m, 192 ≤ m → m < 208 → seg48CanonFlag rho m = trueFactor (seg48CanonBits rho) m * seg48CanonFlag rho (m + 1) := by
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
  rcases p6 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r534, r535, r536, r537, r538, r539, r540, r541, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg48.relationRow534 at r534
  unfold Seg48.relationRow535 at r535
  unfold Seg48.relationRow536 at r536
  unfold Seg48.relationRow537 at r537
  unfold Seg48.relationRow538 at r538
  unfold Seg48.relationRow539 at r539
  unfold Seg48.relationRow540 at r540
  unfold Seg48.relationRow541 at r541
  intro m hmlo hmhi
  interval_cases m
  · rw [show seg48CanonFlag rho 192 = rho 33468 from rfl, show seg48CanonFlag rho 193 = rho 33468 from rfl]
    have hb : pmBit 192 = false := by decide +kernel
    rw [show trueFactor (seg48CanonBits rho) 192 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg48CanonFlag rho 193 = rho 33468 from rfl, show seg48CanonFlag rho 194 = rho 33467 from rfl]
    have hb : pmBit 193 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg48CanonBits_get rho 193 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r541
  · rw [show seg48CanonFlag rho 194 = rho 33467 from rfl, show seg48CanonFlag rho 195 = rho 33466 from rfl]
    have hb : pmBit 194 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg48CanonBits_get rho 194 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r540
  · rw [show seg48CanonFlag rho 195 = rho 33466 from rfl, show seg48CanonFlag rho 196 = rho 33466 from rfl]
    have hb : pmBit 195 = false := by decide +kernel
    rw [show trueFactor (seg48CanonBits rho) 195 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg48CanonFlag rho 196 = rho 33466 from rfl, show seg48CanonFlag rho 197 = rho 33465 from rfl]
    have hb : pmBit 196 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg48CanonBits_get rho 196 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r539
  · rw [show seg48CanonFlag rho 197 = rho 33465 from rfl, show seg48CanonFlag rho 198 = rho 33465 from rfl]
    have hb : pmBit 197 = false := by decide +kernel
    rw [show trueFactor (seg48CanonBits rho) 197 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg48CanonFlag rho 198 = rho 33465 from rfl, show seg48CanonFlag rho 199 = rho 33464 from rfl]
    have hb : pmBit 198 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg48CanonBits_get rho 198 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r538
  · rw [show seg48CanonFlag rho 199 = rho 33464 from rfl, show seg48CanonFlag rho 200 = rho 33464 from rfl]
    have hb : pmBit 199 = false := by decide +kernel
    rw [show trueFactor (seg48CanonBits rho) 199 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg48CanonFlag rho 200 = rho 33464 from rfl, show seg48CanonFlag rho 201 = rho 33463 from rfl]
    have hb : pmBit 200 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg48CanonBits_get rho 200 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r537
  · rw [show seg48CanonFlag rho 201 = rho 33463 from rfl, show seg48CanonFlag rho 202 = rho 33463 from rfl]
    have hb : pmBit 201 = false := by decide +kernel
    rw [show trueFactor (seg48CanonBits rho) 201 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg48CanonFlag rho 202 = rho 33463 from rfl, show seg48CanonFlag rho 203 = rho 33462 from rfl]
    have hb : pmBit 202 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg48CanonBits_get rho 202 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r536
  · rw [show seg48CanonFlag rho 203 = rho 33462 from rfl, show seg48CanonFlag rho 204 = rho 33462 from rfl]
    have hb : pmBit 203 = false := by decide +kernel
    rw [show trueFactor (seg48CanonBits rho) 203 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg48CanonFlag rho 204 = rho 33462 from rfl, show seg48CanonFlag rho 205 = rho 33462 from rfl]
    have hb : pmBit 204 = false := by decide +kernel
    rw [show trueFactor (seg48CanonBits rho) 204 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg48CanonFlag rho 205 = rho 33462 from rfl, show seg48CanonFlag rho 206 = rho 33461 from rfl]
    have hb : pmBit 205 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg48CanonBits_get rho 205 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r535
  · rw [show seg48CanonFlag rho 206 = rho 33461 from rfl, show seg48CanonFlag rho 207 = rho 33461 from rfl]
    have hb : pmBit 206 = false := by decide +kernel
    rw [show trueFactor (seg48CanonBits rho) 206 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg48CanonFlag rho 207 = rho 33461 from rfl, show seg48CanonFlag rho 208 = rho 33460 from rfl]
    have hb : pmBit 207 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg48CanonBits_get rho 207 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r534

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
