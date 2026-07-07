import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45Canon2TrueChunk2

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem seg45Canon2_flag_step_chunk3 (rho : Nat -> Seg45.F) (h : Seg45.relation rho) :
    ∀ m, 48 ≤ m → m < 64 → seg45Canon2Flag rho m = trueFactor (seg45Canon2Bits rho) m * seg45Canon2Flag rho (m + 1) := by
  unfold Seg45.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    p10, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg45.relationPart10 at p10
  rcases p10 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r873, r874, r875, r876, _, _, _⟩
  unfold Seg45.relationRow873 at r873
  unfold Seg45.relationRow874 at r874
  unfold Seg45.relationRow875 at r875
  unfold Seg45.relationRow876 at r876
  intro m hmlo hmhi
  interval_cases m
  · rw [show seg45Canon2Flag rho 48 = rho 39443 from rfl, show seg45Canon2Flag rho 49 = rho 39442 from rfl]
    have hb : pmBit 48 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg45Canon2Bits_get rho 48 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r876
  · rw [show seg45Canon2Flag rho 49 = rho 39442 from rfl, show seg45Canon2Flag rho 50 = rho 39442 from rfl]
    have hb : pmBit 49 = false := by decide +kernel
    rw [show trueFactor (seg45Canon2Bits rho) 49 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg45Canon2Flag rho 50 = rho 39442 from rfl, show seg45Canon2Flag rho 51 = rho 39442 from rfl]
    have hb : pmBit 50 = false := by decide +kernel
    rw [show trueFactor (seg45Canon2Bits rho) 50 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg45Canon2Flag rho 51 = rho 39442 from rfl, show seg45Canon2Flag rho 52 = rho 39442 from rfl]
    have hb : pmBit 51 = false := by decide +kernel
    rw [show trueFactor (seg45Canon2Bits rho) 51 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg45Canon2Flag rho 52 = rho 39442 from rfl, show seg45Canon2Flag rho 53 = rho 39441 from rfl]
    have hb : pmBit 52 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg45Canon2Bits_get rho 52 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r875
  · rw [show seg45Canon2Flag rho 53 = rho 39441 from rfl, show seg45Canon2Flag rho 54 = rho 39441 from rfl]
    have hb : pmBit 53 = false := by decide +kernel
    rw [show trueFactor (seg45Canon2Bits rho) 53 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg45Canon2Flag rho 54 = rho 39441 from rfl, show seg45Canon2Flag rho 55 = rho 39441 from rfl]
    have hb : pmBit 54 = false := by decide +kernel
    rw [show trueFactor (seg45Canon2Bits rho) 54 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg45Canon2Flag rho 55 = rho 39441 from rfl, show seg45Canon2Flag rho 56 = rho 39441 from rfl]
    have hb : pmBit 55 = false := by decide +kernel
    rw [show trueFactor (seg45Canon2Bits rho) 55 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg45Canon2Flag rho 56 = rho 39441 from rfl, show seg45Canon2Flag rho 57 = rho 39441 from rfl]
    have hb : pmBit 56 = false := by decide +kernel
    rw [show trueFactor (seg45Canon2Bits rho) 56 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg45Canon2Flag rho 57 = rho 39441 from rfl, show seg45Canon2Flag rho 58 = rho 39440 from rfl]
    have hb : pmBit 57 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg45Canon2Bits_get rho 57 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r874
  · rw [show seg45Canon2Flag rho 58 = rho 39440 from rfl, show seg45Canon2Flag rho 59 = rho 39440 from rfl]
    have hb : pmBit 58 = false := by decide +kernel
    rw [show trueFactor (seg45Canon2Bits rho) 58 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg45Canon2Flag rho 59 = rho 39440 from rfl, show seg45Canon2Flag rho 60 = rho 39439 from rfl]
    have hb : pmBit 59 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg45Canon2Bits_get rho 59 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r873
  · rw [show seg45Canon2Flag rho 60 = rho 39439 from rfl, show seg45Canon2Flag rho 61 = rho 39439 from rfl]
    have hb : pmBit 60 = false := by decide +kernel
    rw [show trueFactor (seg45Canon2Bits rho) 60 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg45Canon2Flag rho 61 = rho 39439 from rfl, show seg45Canon2Flag rho 62 = rho 39439 from rfl]
    have hb : pmBit 61 = false := by decide +kernel
    rw [show trueFactor (seg45Canon2Bits rho) 61 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg45Canon2Flag rho 62 = rho 39439 from rfl, show seg45Canon2Flag rho 63 = rho 39439 from rfl]
    have hb : pmBit 62 = false := by decide +kernel
    rw [show trueFactor (seg45Canon2Bits rho) 62 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg45Canon2Flag rho 63 = rho 39439 from rfl, show seg45Canon2Flag rho 64 = rho 39439 from rfl]
    have hb : pmBit 63 = false := by decide +kernel
    rw [show trueFactor (seg45Canon2Bits rho) 63 = 1 from by simp [trueFactor, hb]]
    ring

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
