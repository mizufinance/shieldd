import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34Canon2TrueChunk5

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem seg34Canon2_flag_step_chunk6 (rho : Nat -> Seg34.F) (h : Seg34.relation rho) :
    ∀ m, 96 ≤ m → m < 112 → seg34Canon2Flag rho m = trueFactor (seg34Canon2Bits rho) m * seg34Canon2Flag rho (m + 1) := by
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
  rcases p10 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r857, r858, r859, r860, r861, r862, r863, r864, r865, r866, r867, r868, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow857 at r857
  unfold Seg34.relationRow858 at r858
  unfold Seg34.relationRow859 at r859
  unfold Seg34.relationRow860 at r860
  unfold Seg34.relationRow861 at r861
  unfold Seg34.relationRow862 at r862
  unfold Seg34.relationRow863 at r863
  unfold Seg34.relationRow864 at r864
  unfold Seg34.relationRow865 at r865
  unfold Seg34.relationRow866 at r866
  unfold Seg34.relationRow867 at r867
  unfold Seg34.relationRow868 at r868
  intro m hmlo hmhi
  interval_cases m
  · rw [show seg34Canon2Flag rho 96 = rho 32479 from rfl, show seg34Canon2Flag rho 97 = rho 32479 from rfl]
    have hb : pmBit 96 = false := by decide +kernel
    rw [show trueFactor (seg34Canon2Bits rho) 96 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg34Canon2Flag rho 97 = rho 32479 from rfl, show seg34Canon2Flag rho 98 = rho 32478 from rfl]
    have hb : pmBit 97 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg34Canon2Bits_get rho 97 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r868
  · rw [show seg34Canon2Flag rho 98 = rho 32478 from rfl, show seg34Canon2Flag rho 99 = rho 32477 from rfl]
    have hb : pmBit 98 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg34Canon2Bits_get rho 98 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r867
  · rw [show seg34Canon2Flag rho 99 = rho 32477 from rfl, show seg34Canon2Flag rho 100 = rho 32476 from rfl]
    have hb : pmBit 99 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg34Canon2Bits_get rho 99 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r866
  · rw [show seg34Canon2Flag rho 100 = rho 32476 from rfl, show seg34Canon2Flag rho 101 = rho 32475 from rfl]
    have hb : pmBit 100 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg34Canon2Bits_get rho 100 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r865
  · rw [show seg34Canon2Flag rho 101 = rho 32475 from rfl, show seg34Canon2Flag rho 102 = rho 32474 from rfl]
    have hb : pmBit 101 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg34Canon2Bits_get rho 101 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r864
  · rw [show seg34Canon2Flag rho 102 = rho 32474 from rfl, show seg34Canon2Flag rho 103 = rho 32473 from rfl]
    have hb : pmBit 102 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg34Canon2Bits_get rho 102 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r863
  · rw [show seg34Canon2Flag rho 103 = rho 32473 from rfl, show seg34Canon2Flag rho 104 = rho 32472 from rfl]
    have hb : pmBit 103 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg34Canon2Bits_get rho 103 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r862
  · rw [show seg34Canon2Flag rho 104 = rho 32472 from rfl, show seg34Canon2Flag rho 105 = rho 32472 from rfl]
    have hb : pmBit 104 = false := by decide +kernel
    rw [show trueFactor (seg34Canon2Bits rho) 104 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg34Canon2Flag rho 105 = rho 32472 from rfl, show seg34Canon2Flag rho 106 = rho 32471 from rfl]
    have hb : pmBit 105 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg34Canon2Bits_get rho 105 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r861
  · rw [show seg34Canon2Flag rho 106 = rho 32471 from rfl, show seg34Canon2Flag rho 107 = rho 32470 from rfl]
    have hb : pmBit 106 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg34Canon2Bits_get rho 106 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r860
  · rw [show seg34Canon2Flag rho 107 = rho 32470 from rfl, show seg34Canon2Flag rho 108 = rho 32470 from rfl]
    have hb : pmBit 107 = false := by decide +kernel
    rw [show trueFactor (seg34Canon2Bits rho) 107 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg34Canon2Flag rho 108 = rho 32470 from rfl, show seg34Canon2Flag rho 109 = rho 32469 from rfl]
    have hb : pmBit 108 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg34Canon2Bits_get rho 108 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r859
  · rw [show seg34Canon2Flag rho 109 = rho 32469 from rfl, show seg34Canon2Flag rho 110 = rho 32468 from rfl]
    have hb : pmBit 109 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg34Canon2Bits_get rho 109 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r858
  · rw [show seg34Canon2Flag rho 110 = rho 32468 from rfl, show seg34Canon2Flag rho 111 = rho 32467 from rfl]
    have hb : pmBit 110 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg34Canon2Bits_get rho 110 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r857
  · rw [show seg34Canon2Flag rho 111 = rho 32467 from rfl, show seg34Canon2Flag rho 112 = rho 32467 from rfl]
    have hb : pmBit 111 = false := by decide +kernel
    rw [show trueFactor (seg34Canon2Bits rho) 111 = 1 from by simp [trueFactor, hb]]
    ring

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
