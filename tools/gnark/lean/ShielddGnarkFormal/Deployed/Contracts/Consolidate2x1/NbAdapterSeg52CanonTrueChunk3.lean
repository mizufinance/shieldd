import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52CanonTrueChunk2

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem seg52Canon_flag_step_chunk3 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ m, 48 ≤ m → m < 64 → seg52CanonFlag rho m = trueFactor (seg52CanonBits rho) m * seg52CanonFlag rho (m + 1) := by
  unfold Seg52.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, p7, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _
  ⟩
  unfold Seg52.relationPart7 at p7
  rcases p7 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r593, r594, r595, r596, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg52.relationRow593 at r593
  unfold Seg52.relationRow594 at r594
  unfold Seg52.relationRow595 at r595
  unfold Seg52.relationRow596 at r596
  intro m hmlo hmhi
  interval_cases m
  · rw [show seg52CanonFlag rho 48 = rho 45155 from rfl, show seg52CanonFlag rho 49 = rho 45154 from rfl]
    have hb : pmBit 48 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg52CanonBits_get rho 48 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r596
  · rw [show seg52CanonFlag rho 49 = rho 45154 from rfl, show seg52CanonFlag rho 50 = rho 45154 from rfl]
    have hb : pmBit 49 = false := by decide +kernel
    rw [show trueFactor (seg52CanonBits rho) 49 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg52CanonFlag rho 50 = rho 45154 from rfl, show seg52CanonFlag rho 51 = rho 45154 from rfl]
    have hb : pmBit 50 = false := by decide +kernel
    rw [show trueFactor (seg52CanonBits rho) 50 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg52CanonFlag rho 51 = rho 45154 from rfl, show seg52CanonFlag rho 52 = rho 45154 from rfl]
    have hb : pmBit 51 = false := by decide +kernel
    rw [show trueFactor (seg52CanonBits rho) 51 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg52CanonFlag rho 52 = rho 45154 from rfl, show seg52CanonFlag rho 53 = rho 45153 from rfl]
    have hb : pmBit 52 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg52CanonBits_get rho 52 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r595
  · rw [show seg52CanonFlag rho 53 = rho 45153 from rfl, show seg52CanonFlag rho 54 = rho 45153 from rfl]
    have hb : pmBit 53 = false := by decide +kernel
    rw [show trueFactor (seg52CanonBits rho) 53 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg52CanonFlag rho 54 = rho 45153 from rfl, show seg52CanonFlag rho 55 = rho 45153 from rfl]
    have hb : pmBit 54 = false := by decide +kernel
    rw [show trueFactor (seg52CanonBits rho) 54 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg52CanonFlag rho 55 = rho 45153 from rfl, show seg52CanonFlag rho 56 = rho 45153 from rfl]
    have hb : pmBit 55 = false := by decide +kernel
    rw [show trueFactor (seg52CanonBits rho) 55 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg52CanonFlag rho 56 = rho 45153 from rfl, show seg52CanonFlag rho 57 = rho 45153 from rfl]
    have hb : pmBit 56 = false := by decide +kernel
    rw [show trueFactor (seg52CanonBits rho) 56 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg52CanonFlag rho 57 = rho 45153 from rfl, show seg52CanonFlag rho 58 = rho 45152 from rfl]
    have hb : pmBit 57 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg52CanonBits_get rho 57 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r594
  · rw [show seg52CanonFlag rho 58 = rho 45152 from rfl, show seg52CanonFlag rho 59 = rho 45152 from rfl]
    have hb : pmBit 58 = false := by decide +kernel
    rw [show trueFactor (seg52CanonBits rho) 58 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg52CanonFlag rho 59 = rho 45152 from rfl, show seg52CanonFlag rho 60 = rho 45151 from rfl]
    have hb : pmBit 59 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg52CanonBits_get rho 59 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r593
  · rw [show seg52CanonFlag rho 60 = rho 45151 from rfl, show seg52CanonFlag rho 61 = rho 45151 from rfl]
    have hb : pmBit 60 = false := by decide +kernel
    rw [show trueFactor (seg52CanonBits rho) 60 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg52CanonFlag rho 61 = rho 45151 from rfl, show seg52CanonFlag rho 62 = rho 45151 from rfl]
    have hb : pmBit 61 = false := by decide +kernel
    rw [show trueFactor (seg52CanonBits rho) 61 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg52CanonFlag rho 62 = rho 45151 from rfl, show seg52CanonFlag rho 63 = rho 45151 from rfl]
    have hb : pmBit 62 = false := by decide +kernel
    rw [show trueFactor (seg52CanonBits rho) 62 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg52CanonFlag rho 63 = rho 45151 from rfl, show seg52CanonFlag rho 64 = rho 45151 from rfl]
    have hb : pmBit 63 = false := by decide +kernel
    rw [show trueFactor (seg52CanonBits rho) 63 = 1 from by simp [trueFactor, hb]]
    ring

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
