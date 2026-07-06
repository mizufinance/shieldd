import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52CanonTrueChunk11

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem seg52Canon_flag_step_chunk12 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ m, 192 ≤ m → m < 208 → seg52CanonFlag rho m = trueFactor (seg52CanonBits rho) m * seg52CanonFlag rho (m + 1) := by
  unfold Seg52.relation at h
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
  unfold Seg52.relationPart6 at p6
  rcases p6 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r534, r535, r536, r537, r538, r539, r540, r541, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg52.relationRow534 at r534
  unfold Seg52.relationRow535 at r535
  unfold Seg52.relationRow536 at r536
  unfold Seg52.relationRow537 at r537
  unfold Seg52.relationRow538 at r538
  unfold Seg52.relationRow539 at r539
  unfold Seg52.relationRow540 at r540
  unfold Seg52.relationRow541 at r541
  intro m hmlo hmhi
  interval_cases m
  · rw [show seg52CanonFlag rho 192 = rho 45100 from rfl, show seg52CanonFlag rho 193 = rho 45100 from rfl]
    have hb : pmBit 192 = false := by decide +kernel
    rw [show trueFactor (seg52CanonBits rho) 192 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg52CanonFlag rho 193 = rho 45100 from rfl, show seg52CanonFlag rho 194 = rho 45099 from rfl]
    have hb : pmBit 193 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg52CanonBits_get rho 193 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r541
  · rw [show seg52CanonFlag rho 194 = rho 45099 from rfl, show seg52CanonFlag rho 195 = rho 45098 from rfl]
    have hb : pmBit 194 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg52CanonBits_get rho 194 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r540
  · rw [show seg52CanonFlag rho 195 = rho 45098 from rfl, show seg52CanonFlag rho 196 = rho 45098 from rfl]
    have hb : pmBit 195 = false := by decide +kernel
    rw [show trueFactor (seg52CanonBits rho) 195 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg52CanonFlag rho 196 = rho 45098 from rfl, show seg52CanonFlag rho 197 = rho 45097 from rfl]
    have hb : pmBit 196 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg52CanonBits_get rho 196 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r539
  · rw [show seg52CanonFlag rho 197 = rho 45097 from rfl, show seg52CanonFlag rho 198 = rho 45097 from rfl]
    have hb : pmBit 197 = false := by decide +kernel
    rw [show trueFactor (seg52CanonBits rho) 197 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg52CanonFlag rho 198 = rho 45097 from rfl, show seg52CanonFlag rho 199 = rho 45096 from rfl]
    have hb : pmBit 198 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg52CanonBits_get rho 198 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r538
  · rw [show seg52CanonFlag rho 199 = rho 45096 from rfl, show seg52CanonFlag rho 200 = rho 45096 from rfl]
    have hb : pmBit 199 = false := by decide +kernel
    rw [show trueFactor (seg52CanonBits rho) 199 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg52CanonFlag rho 200 = rho 45096 from rfl, show seg52CanonFlag rho 201 = rho 45095 from rfl]
    have hb : pmBit 200 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg52CanonBits_get rho 200 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r537
  · rw [show seg52CanonFlag rho 201 = rho 45095 from rfl, show seg52CanonFlag rho 202 = rho 45095 from rfl]
    have hb : pmBit 201 = false := by decide +kernel
    rw [show trueFactor (seg52CanonBits rho) 201 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg52CanonFlag rho 202 = rho 45095 from rfl, show seg52CanonFlag rho 203 = rho 45094 from rfl]
    have hb : pmBit 202 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg52CanonBits_get rho 202 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r536
  · rw [show seg52CanonFlag rho 203 = rho 45094 from rfl, show seg52CanonFlag rho 204 = rho 45094 from rfl]
    have hb : pmBit 203 = false := by decide +kernel
    rw [show trueFactor (seg52CanonBits rho) 203 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg52CanonFlag rho 204 = rho 45094 from rfl, show seg52CanonFlag rho 205 = rho 45094 from rfl]
    have hb : pmBit 204 = false := by decide +kernel
    rw [show trueFactor (seg52CanonBits rho) 204 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg52CanonFlag rho 205 = rho 45094 from rfl, show seg52CanonFlag rho 206 = rho 45093 from rfl]
    have hb : pmBit 205 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg52CanonBits_get rho 205 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r535
  · rw [show seg52CanonFlag rho 206 = rho 45093 from rfl, show seg52CanonFlag rho 207 = rho 45093 from rfl]
    have hb : pmBit 206 = false := by decide +kernel
    rw [show trueFactor (seg52CanonBits rho) 206 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg52CanonFlag rho 207 = rho 45093 from rfl, show seg52CanonFlag rho 208 = rho 45092 from rfl]
    have hb : pmBit 207 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg52CanonBits_get rho 207 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r534

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
