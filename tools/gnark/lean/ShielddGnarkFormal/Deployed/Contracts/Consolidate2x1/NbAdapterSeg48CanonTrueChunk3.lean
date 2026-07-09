import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg48CanonTrueChunk2

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem seg48Canon_flag_step_chunk3 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ m, 48 ≤ m → m < 64 → seg48CanonFlag rho m = trueFactor (seg48CanonBits rho) m * seg48CanonFlag rho (m + 1) := by
  unfold Seg48.relation at h
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
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg48.relationPart7 at p7
  rcases p7 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r593, r594, r595, r596, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg48.relationRow593 at r593
  unfold Seg48.relationRow594 at r594
  unfold Seg48.relationRow595 at r595
  unfold Seg48.relationRow596 at r596
  intro m hmlo hmhi
  interval_cases m
  · rw [show seg48CanonFlag rho 48 = rho 33523 from rfl, show seg48CanonFlag rho 49 = rho 33522 from rfl]
    have hb : pmBit 48 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg48CanonBits_get rho 48 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r596
  · rw [show seg48CanonFlag rho 49 = rho 33522 from rfl, show seg48CanonFlag rho 50 = rho 33522 from rfl]
    have hb : pmBit 49 = false := by decide +kernel
    rw [show trueFactor (seg48CanonBits rho) 49 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg48CanonFlag rho 50 = rho 33522 from rfl, show seg48CanonFlag rho 51 = rho 33522 from rfl]
    have hb : pmBit 50 = false := by decide +kernel
    rw [show trueFactor (seg48CanonBits rho) 50 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg48CanonFlag rho 51 = rho 33522 from rfl, show seg48CanonFlag rho 52 = rho 33522 from rfl]
    have hb : pmBit 51 = false := by decide +kernel
    rw [show trueFactor (seg48CanonBits rho) 51 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg48CanonFlag rho 52 = rho 33522 from rfl, show seg48CanonFlag rho 53 = rho 33521 from rfl]
    have hb : pmBit 52 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg48CanonBits_get rho 52 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r595
  · rw [show seg48CanonFlag rho 53 = rho 33521 from rfl, show seg48CanonFlag rho 54 = rho 33521 from rfl]
    have hb : pmBit 53 = false := by decide +kernel
    rw [show trueFactor (seg48CanonBits rho) 53 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg48CanonFlag rho 54 = rho 33521 from rfl, show seg48CanonFlag rho 55 = rho 33521 from rfl]
    have hb : pmBit 54 = false := by decide +kernel
    rw [show trueFactor (seg48CanonBits rho) 54 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg48CanonFlag rho 55 = rho 33521 from rfl, show seg48CanonFlag rho 56 = rho 33521 from rfl]
    have hb : pmBit 55 = false := by decide +kernel
    rw [show trueFactor (seg48CanonBits rho) 55 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg48CanonFlag rho 56 = rho 33521 from rfl, show seg48CanonFlag rho 57 = rho 33521 from rfl]
    have hb : pmBit 56 = false := by decide +kernel
    rw [show trueFactor (seg48CanonBits rho) 56 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg48CanonFlag rho 57 = rho 33521 from rfl, show seg48CanonFlag rho 58 = rho 33520 from rfl]
    have hb : pmBit 57 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg48CanonBits_get rho 57 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r594
  · rw [show seg48CanonFlag rho 58 = rho 33520 from rfl, show seg48CanonFlag rho 59 = rho 33520 from rfl]
    have hb : pmBit 58 = false := by decide +kernel
    rw [show trueFactor (seg48CanonBits rho) 58 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg48CanonFlag rho 59 = rho 33520 from rfl, show seg48CanonFlag rho 60 = rho 33519 from rfl]
    have hb : pmBit 59 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg48CanonBits_get rho 59 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r593
  · rw [show seg48CanonFlag rho 60 = rho 33519 from rfl, show seg48CanonFlag rho 61 = rho 33519 from rfl]
    have hb : pmBit 60 = false := by decide +kernel
    rw [show trueFactor (seg48CanonBits rho) 60 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg48CanonFlag rho 61 = rho 33519 from rfl, show seg48CanonFlag rho 62 = rho 33519 from rfl]
    have hb : pmBit 61 = false := by decide +kernel
    rw [show trueFactor (seg48CanonBits rho) 61 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg48CanonFlag rho 62 = rho 33519 from rfl, show seg48CanonFlag rho 63 = rho 33519 from rfl]
    have hb : pmBit 62 = false := by decide +kernel
    rw [show trueFactor (seg48CanonBits rho) 62 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg48CanonFlag rho 63 = rho 33519 from rfl, show seg48CanonFlag rho 64 = rho 33519 from rfl]
    have hb : pmBit 63 = false := by decide +kernel
    rw [show trueFactor (seg48CanonBits rho) 63 = 1 from by simp [trueFactor, hb]]
    ring

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
