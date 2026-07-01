import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34Canon2TrueChunk6

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem seg34Canon2_flag_step_chunk7 (rho : Nat -> Seg34.F) (h : Seg34.relation rho) :
    ∀ m, 112 ≤ m → m < 128 → seg34Canon2Flag rho m = trueFactor (seg34Canon2Bits rho) m * seg34Canon2Flag rho (m + 1) := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart10 at p10
  rcases p10 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r849, r850, r851, r852, r853, r854, r855, r856, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow849 at r849
  unfold Seg34.relationRow850 at r850
  unfold Seg34.relationRow851 at r851
  unfold Seg34.relationRow852 at r852
  unfold Seg34.relationRow853 at r853
  unfold Seg34.relationRow854 at r854
  unfold Seg34.relationRow855 at r855
  unfold Seg34.relationRow856 at r856
  intro m hmlo hmhi
  interval_cases m
  · rw [show seg34Canon2Flag rho 112 = rho 32467 from rfl, show seg34Canon2Flag rho 113 = rho 32467 from rfl]
    have hb : pmBit 112 = false := by decide +kernel
    rw [show trueFactor (seg34Canon2Bits rho) 112 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg34Canon2Flag rho 113 = rho 32467 from rfl, show seg34Canon2Flag rho 114 = rho 32466 from rfl]
    have hb : pmBit 113 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg34Canon2Bits_get rho 113 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r856
  · rw [show seg34Canon2Flag rho 114 = rho 32466 from rfl, show seg34Canon2Flag rho 115 = rho 32466 from rfl]
    have hb : pmBit 114 = false := by decide +kernel
    rw [show trueFactor (seg34Canon2Bits rho) 114 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg34Canon2Flag rho 115 = rho 32466 from rfl, show seg34Canon2Flag rho 116 = rho 32465 from rfl]
    have hb : pmBit 115 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg34Canon2Bits_get rho 115 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r855
  · rw [show seg34Canon2Flag rho 116 = rho 32465 from rfl, show seg34Canon2Flag rho 117 = rho 32465 from rfl]
    have hb : pmBit 116 = false := by decide +kernel
    rw [show trueFactor (seg34Canon2Bits rho) 116 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg34Canon2Flag rho 117 = rho 32465 from rfl, show seg34Canon2Flag rho 118 = rho 32464 from rfl]
    have hb : pmBit 117 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg34Canon2Bits_get rho 117 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r854
  · rw [show seg34Canon2Flag rho 118 = rho 32464 from rfl, show seg34Canon2Flag rho 119 = rho 32464 from rfl]
    have hb : pmBit 118 = false := by decide +kernel
    rw [show trueFactor (seg34Canon2Bits rho) 118 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg34Canon2Flag rho 119 = rho 32464 from rfl, show seg34Canon2Flag rho 120 = rho 32463 from rfl]
    have hb : pmBit 119 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg34Canon2Bits_get rho 119 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r853
  · rw [show seg34Canon2Flag rho 120 = rho 32463 from rfl, show seg34Canon2Flag rho 121 = rho 32462 from rfl]
    have hb : pmBit 120 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg34Canon2Bits_get rho 120 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r852
  · rw [show seg34Canon2Flag rho 121 = rho 32462 from rfl, show seg34Canon2Flag rho 122 = rho 32462 from rfl]
    have hb : pmBit 121 = false := by decide +kernel
    rw [show trueFactor (seg34Canon2Bits rho) 121 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg34Canon2Flag rho 122 = rho 32462 from rfl, show seg34Canon2Flag rho 123 = rho 32462 from rfl]
    have hb : pmBit 122 = false := by decide +kernel
    rw [show trueFactor (seg34Canon2Bits rho) 122 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg34Canon2Flag rho 123 = rho 32462 from rfl, show seg34Canon2Flag rho 124 = rho 32461 from rfl]
    have hb : pmBit 123 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg34Canon2Bits_get rho 123 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r851
  · rw [show seg34Canon2Flag rho 124 = rho 32461 from rfl, show seg34Canon2Flag rho 125 = rho 32460 from rfl]
    have hb : pmBit 124 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg34Canon2Bits_get rho 124 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r850
  · rw [show seg34Canon2Flag rho 125 = rho 32460 from rfl, show seg34Canon2Flag rho 126 = rho 32460 from rfl]
    have hb : pmBit 125 = false := by decide +kernel
    rw [show trueFactor (seg34Canon2Bits rho) 125 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg34Canon2Flag rho 126 = rho 32460 from rfl, show seg34Canon2Flag rho 127 = rho 32459 from rfl]
    have hb : pmBit 126 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg34Canon2Bits_get rho 126 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r849
  · rw [show seg34Canon2Flag rho 127 = rho 32459 from rfl, show seg34Canon2Flag rho 128 = rho 32459 from rfl]
    have hb : pmBit 127 = false := by decide +kernel
    rw [show trueFactor (seg34Canon2Bits rho) 127 = 1 from by simp [trueFactor, hb]]
    ring

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
