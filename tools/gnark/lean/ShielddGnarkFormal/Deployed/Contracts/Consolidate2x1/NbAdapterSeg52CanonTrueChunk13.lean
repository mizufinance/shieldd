import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52CanonTrueChunk12

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem seg52Canon_flag_step_chunk13 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ m, 208 ≤ m → m < 224 → seg52CanonFlag rho m = trueFactor (seg52CanonBits rho) m * seg52CanonFlag rho (m + 1) := by
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
  rcases p6 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r527, r528, r529, r530, r531, r532, r533, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg52.relationRow527 at r527
  unfold Seg52.relationRow528 at r528
  unfold Seg52.relationRow529 at r529
  unfold Seg52.relationRow530 at r530
  unfold Seg52.relationRow531 at r531
  unfold Seg52.relationRow532 at r532
  unfold Seg52.relationRow533 at r533
  intro m hmlo hmhi
  interval_cases m
  · rw [show seg52CanonFlag rho 208 = rho 45092 from rfl, show seg52CanonFlag rho 209 = rho 45092 from rfl]
    have hb : pmBit 208 = false := by decide +kernel
    rw [show trueFactor (seg52CanonBits rho) 208 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg52CanonFlag rho 209 = rho 45092 from rfl, show seg52CanonFlag rho 210 = rho 45092 from rfl]
    have hb : pmBit 209 = false := by decide +kernel
    rw [show trueFactor (seg52CanonBits rho) 209 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg52CanonFlag rho 210 = rho 45092 from rfl, show seg52CanonFlag rho 211 = rho 45091 from rfl]
    have hb : pmBit 210 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg52CanonBits_get rho 210 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r533
  · rw [show seg52CanonFlag rho 211 = rho 45091 from rfl, show seg52CanonFlag rho 212 = rho 45090 from rfl]
    have hb : pmBit 211 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg52CanonBits_get rho 211 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r532
  · rw [show seg52CanonFlag rho 212 = rho 45090 from rfl, show seg52CanonFlag rho 213 = rho 45090 from rfl]
    have hb : pmBit 212 = false := by decide +kernel
    rw [show trueFactor (seg52CanonBits rho) 212 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg52CanonFlag rho 213 = rho 45090 from rfl, show seg52CanonFlag rho 214 = rho 45089 from rfl]
    have hb : pmBit 213 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg52CanonBits_get rho 213 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r531
  · rw [show seg52CanonFlag rho 214 = rho 45089 from rfl, show seg52CanonFlag rho 215 = rho 45089 from rfl]
    have hb : pmBit 214 = false := by decide +kernel
    rw [show trueFactor (seg52CanonBits rho) 214 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg52CanonFlag rho 215 = rho 45089 from rfl, show seg52CanonFlag rho 216 = rho 45089 from rfl]
    have hb : pmBit 215 = false := by decide +kernel
    rw [show trueFactor (seg52CanonBits rho) 215 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg52CanonFlag rho 216 = rho 45089 from rfl, show seg52CanonFlag rho 217 = rho 45089 from rfl]
    have hb : pmBit 216 = false := by decide +kernel
    rw [show trueFactor (seg52CanonBits rho) 216 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg52CanonFlag rho 217 = rho 45089 from rfl, show seg52CanonFlag rho 218 = rho 45088 from rfl]
    have hb : pmBit 217 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg52CanonBits_get rho 217 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r530
  · rw [show seg52CanonFlag rho 218 = rho 45088 from rfl, show seg52CanonFlag rho 219 = rho 45088 from rfl]
    have hb : pmBit 218 = false := by decide +kernel
    rw [show trueFactor (seg52CanonBits rho) 218 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg52CanonFlag rho 219 = rho 45088 from rfl, show seg52CanonFlag rho 220 = rho 45087 from rfl]
    have hb : pmBit 219 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg52CanonBits_get rho 219 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r529
  · rw [show seg52CanonFlag rho 220 = rho 45087 from rfl, show seg52CanonFlag rho 221 = rho 45086 from rfl]
    have hb : pmBit 220 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg52CanonBits_get rho 220 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r528
  · rw [show seg52CanonFlag rho 221 = rho 45086 from rfl, show seg52CanonFlag rho 222 = rho 45086 from rfl]
    have hb : pmBit 221 = false := by decide +kernel
    rw [show trueFactor (seg52CanonBits rho) 221 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg52CanonFlag rho 222 = rho 45086 from rfl, show seg52CanonFlag rho 223 = rho 45086 from rfl]
    have hb : pmBit 222 = false := by decide +kernel
    rw [show trueFactor (seg52CanonBits rho) 222 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg52CanonFlag rho 223 = rho 45086 from rfl, show seg52CanonFlag rho 224 = rho 45085 from rfl]
    have hb : pmBit 223 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg52CanonBits_get rho 223 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r527

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
