import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52CanonTrueChunk14

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem seg52Canon_flag_step_chunk15 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ m, 240 ≤ m → m < 253 → seg52CanonFlag rho m = trueFactor (seg52CanonBits rho) m * seg52CanonFlag rho (m + 1) := by
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
  rcases p6 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r512, r513, r514, r515, r516, r517, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg52.relationRow512 at r512
  unfold Seg52.relationRow513 at r513
  unfold Seg52.relationRow514 at r514
  unfold Seg52.relationRow515 at r515
  unfold Seg52.relationRow516 at r516
  unfold Seg52.relationRow517 at r517
  intro m hmlo hmhi
  interval_cases m
  · rw [show seg52CanonFlag rho 240 = rho 45076 from rfl, show seg52CanonFlag rho 241 = rho 45075 from rfl]
    have hb : pmBit 240 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg52CanonBits_get rho 240 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r517
  · rw [show seg52CanonFlag rho 241 = rho 45075 from rfl, show seg52CanonFlag rho 242 = rho 45074 from rfl]
    have hb : pmBit 241 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg52CanonBits_get rho 241 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r516
  · rw [show seg52CanonFlag rho 242 = rho 45074 from rfl, show seg52CanonFlag rho 243 = rho 45074 from rfl]
    have hb : pmBit 242 = false := by decide +kernel
    rw [show trueFactor (seg52CanonBits rho) 242 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg52CanonFlag rho 243 = rho 45074 from rfl, show seg52CanonFlag rho 244 = rho 45073 from rfl]
    have hb : pmBit 243 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg52CanonBits_get rho 243 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r515
  · rw [show seg52CanonFlag rho 244 = rho 45073 from rfl, show seg52CanonFlag rho 245 = rho 45073 from rfl]
    have hb : pmBit 244 = false := by decide +kernel
    rw [show trueFactor (seg52CanonBits rho) 244 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg52CanonFlag rho 245 = rho 45073 from rfl, show seg52CanonFlag rho 246 = rho 45072 from rfl]
    have hb : pmBit 245 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg52CanonBits_get rho 245 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r514
  · rw [show seg52CanonFlag rho 246 = rho 45072 from rfl, show seg52CanonFlag rho 247 = rho 45072 from rfl]
    have hb : pmBit 246 = false := by decide +kernel
    rw [show trueFactor (seg52CanonBits rho) 246 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg52CanonFlag rho 247 = rho 45072 from rfl, show seg52CanonFlag rho 248 = rho 45071 from rfl]
    have hb : pmBit 247 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg52CanonBits_get rho 247 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r513
  · rw [show seg52CanonFlag rho 248 = rho 45071 from rfl, show seg52CanonFlag rho 249 = rho 45071 from rfl]
    have hb : pmBit 248 = false := by decide +kernel
    rw [show trueFactor (seg52CanonBits rho) 248 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg52CanonFlag rho 249 = rho 45071 from rfl, show seg52CanonFlag rho 250 = rho 45070 from rfl]
    have hb : pmBit 249 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg52CanonBits_get rho 249 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r512
  · rw [show seg52CanonFlag rho 250 = rho 45070 from rfl, show seg52CanonFlag rho 251 = rho 45070 from rfl]
    have hb : pmBit 250 = false := by decide +kernel
    rw [show trueFactor (seg52CanonBits rho) 250 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg52CanonFlag rho 251 = rho 45070 from rfl, show seg52CanonFlag rho 252 = rho 45070 from rfl]
    have hb : pmBit 251 = false := by decide +kernel
    rw [show trueFactor (seg52CanonBits rho) 251 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg52CanonFlag rho 252 = rho 45070 from rfl, show seg52CanonFlag rho 253 = 1 from rfl]
    have hb : pmBit 252 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg52CanonBits_get rho 252 (by omega)]
    simp only [Nat.reduceAdd]
    ring

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
