import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg48CanonTrueChunk12

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem seg48Canon_flag_step_chunk13 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ m, 208 ≤ m → m < 224 → seg48CanonFlag rho m = trueFactor (seg48CanonBits rho) m * seg48CanonFlag rho (m + 1) := by
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
  rcases p6 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r527, r528, r529, r530, r531, r532, r533, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg48.relationRow527 at r527
  unfold Seg48.relationRow528 at r528
  unfold Seg48.relationRow529 at r529
  unfold Seg48.relationRow530 at r530
  unfold Seg48.relationRow531 at r531
  unfold Seg48.relationRow532 at r532
  unfold Seg48.relationRow533 at r533
  intro m hmlo hmhi
  interval_cases m
  · rw [show seg48CanonFlag rho 208 = rho 33460 from rfl, show seg48CanonFlag rho 209 = rho 33460 from rfl]
    have hb : pmBit 208 = false := by decide +kernel
    rw [show trueFactor (seg48CanonBits rho) 208 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg48CanonFlag rho 209 = rho 33460 from rfl, show seg48CanonFlag rho 210 = rho 33460 from rfl]
    have hb : pmBit 209 = false := by decide +kernel
    rw [show trueFactor (seg48CanonBits rho) 209 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg48CanonFlag rho 210 = rho 33460 from rfl, show seg48CanonFlag rho 211 = rho 33459 from rfl]
    have hb : pmBit 210 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg48CanonBits_get rho 210 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r533
  · rw [show seg48CanonFlag rho 211 = rho 33459 from rfl, show seg48CanonFlag rho 212 = rho 33458 from rfl]
    have hb : pmBit 211 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg48CanonBits_get rho 211 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r532
  · rw [show seg48CanonFlag rho 212 = rho 33458 from rfl, show seg48CanonFlag rho 213 = rho 33458 from rfl]
    have hb : pmBit 212 = false := by decide +kernel
    rw [show trueFactor (seg48CanonBits rho) 212 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg48CanonFlag rho 213 = rho 33458 from rfl, show seg48CanonFlag rho 214 = rho 33457 from rfl]
    have hb : pmBit 213 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg48CanonBits_get rho 213 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r531
  · rw [show seg48CanonFlag rho 214 = rho 33457 from rfl, show seg48CanonFlag rho 215 = rho 33457 from rfl]
    have hb : pmBit 214 = false := by decide +kernel
    rw [show trueFactor (seg48CanonBits rho) 214 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg48CanonFlag rho 215 = rho 33457 from rfl, show seg48CanonFlag rho 216 = rho 33457 from rfl]
    have hb : pmBit 215 = false := by decide +kernel
    rw [show trueFactor (seg48CanonBits rho) 215 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg48CanonFlag rho 216 = rho 33457 from rfl, show seg48CanonFlag rho 217 = rho 33457 from rfl]
    have hb : pmBit 216 = false := by decide +kernel
    rw [show trueFactor (seg48CanonBits rho) 216 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg48CanonFlag rho 217 = rho 33457 from rfl, show seg48CanonFlag rho 218 = rho 33456 from rfl]
    have hb : pmBit 217 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg48CanonBits_get rho 217 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r530
  · rw [show seg48CanonFlag rho 218 = rho 33456 from rfl, show seg48CanonFlag rho 219 = rho 33456 from rfl]
    have hb : pmBit 218 = false := by decide +kernel
    rw [show trueFactor (seg48CanonBits rho) 218 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg48CanonFlag rho 219 = rho 33456 from rfl, show seg48CanonFlag rho 220 = rho 33455 from rfl]
    have hb : pmBit 219 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg48CanonBits_get rho 219 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r529
  · rw [show seg48CanonFlag rho 220 = rho 33455 from rfl, show seg48CanonFlag rho 221 = rho 33454 from rfl]
    have hb : pmBit 220 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg48CanonBits_get rho 220 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r528
  · rw [show seg48CanonFlag rho 221 = rho 33454 from rfl, show seg48CanonFlag rho 222 = rho 33454 from rfl]
    have hb : pmBit 221 = false := by decide +kernel
    rw [show trueFactor (seg48CanonBits rho) 221 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg48CanonFlag rho 222 = rho 33454 from rfl, show seg48CanonFlag rho 223 = rho 33454 from rfl]
    have hb : pmBit 222 = false := by decide +kernel
    rw [show trueFactor (seg48CanonBits rho) 222 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg48CanonFlag rho 223 = rho 33454 from rfl, show seg48CanonFlag rho 224 = rho 33453 from rfl]
    have hb : pmBit 223 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg48CanonBits_get rho 223 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r527

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
