import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg48CanonTrueChunk8

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem seg48Canon_flag_step_chunk9 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ m, 144 ≤ m → m < 160 → seg48CanonFlag rho m = trueFactor (seg48CanonBits rho) m * seg48CanonFlag rho (m + 1) := by
  unfold Seg48.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, p6, p7, _, _,
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
  rcases p6 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r556, r557, r558, r559⟩
  unfold Seg48.relationPart7 at p7
  rcases p7 with ⟨r560, r561, r562, r563, r564, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg48.relationRow556 at r556
  unfold Seg48.relationRow557 at r557
  unfold Seg48.relationRow558 at r558
  unfold Seg48.relationRow559 at r559
  unfold Seg48.relationRow560 at r560
  unfold Seg48.relationRow561 at r561
  unfold Seg48.relationRow562 at r562
  unfold Seg48.relationRow563 at r563
  unfold Seg48.relationRow564 at r564
  intro m hmlo hmhi
  interval_cases m
  · rw [show seg48CanonFlag rho 144 = rho 33491 from rfl, show seg48CanonFlag rho 145 = rho 33490 from rfl]
    have hb : pmBit 144 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg48CanonBits_get rho 144 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r564
  · rw [show seg48CanonFlag rho 145 = rho 33490 from rfl, show seg48CanonFlag rho 146 = rho 33489 from rfl]
    have hb : pmBit 145 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg48CanonBits_get rho 145 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r563
  · rw [show seg48CanonFlag rho 146 = rho 33489 from rfl, show seg48CanonFlag rho 147 = rho 33488 from rfl]
    have hb : pmBit 146 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg48CanonBits_get rho 146 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r562
  · rw [show seg48CanonFlag rho 147 = rho 33488 from rfl, show seg48CanonFlag rho 148 = rho 33488 from rfl]
    have hb : pmBit 147 = false := by decide +kernel
    rw [show trueFactor (seg48CanonBits rho) 147 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg48CanonFlag rho 148 = rho 33488 from rfl, show seg48CanonFlag rho 149 = rho 33487 from rfl]
    have hb : pmBit 148 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg48CanonBits_get rho 148 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r561
  · rw [show seg48CanonFlag rho 149 = rho 33487 from rfl, show seg48CanonFlag rho 150 = rho 33486 from rfl]
    have hb : pmBit 149 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg48CanonBits_get rho 149 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r560
  · rw [show seg48CanonFlag rho 150 = rho 33486 from rfl, show seg48CanonFlag rho 151 = rho 33486 from rfl]
    have hb : pmBit 150 = false := by decide +kernel
    rw [show trueFactor (seg48CanonBits rho) 150 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg48CanonFlag rho 151 = rho 33486 from rfl, show seg48CanonFlag rho 152 = rho 33486 from rfl]
    have hb : pmBit 151 = false := by decide +kernel
    rw [show trueFactor (seg48CanonBits rho) 151 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg48CanonFlag rho 152 = rho 33486 from rfl, show seg48CanonFlag rho 153 = rho 33486 from rfl]
    have hb : pmBit 152 = false := by decide +kernel
    rw [show trueFactor (seg48CanonBits rho) 152 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg48CanonFlag rho 153 = rho 33486 from rfl, show seg48CanonFlag rho 154 = rho 33486 from rfl]
    have hb : pmBit 153 = false := by decide +kernel
    rw [show trueFactor (seg48CanonBits rho) 153 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg48CanonFlag rho 154 = rho 33486 from rfl, show seg48CanonFlag rho 155 = rho 33485 from rfl]
    have hb : pmBit 154 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg48CanonBits_get rho 154 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r559
  · rw [show seg48CanonFlag rho 155 = rho 33485 from rfl, show seg48CanonFlag rho 156 = rho 33484 from rfl]
    have hb : pmBit 155 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg48CanonBits_get rho 155 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r558
  · rw [show seg48CanonFlag rho 156 = rho 33484 from rfl, show seg48CanonFlag rho 157 = rho 33483 from rfl]
    have hb : pmBit 156 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg48CanonBits_get rho 156 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r557
  · rw [show seg48CanonFlag rho 157 = rho 33483 from rfl, show seg48CanonFlag rho 158 = rho 33483 from rfl]
    have hb : pmBit 157 = false := by decide +kernel
    rw [show trueFactor (seg48CanonBits rho) 157 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg48CanonFlag rho 158 = rho 33483 from rfl, show seg48CanonFlag rho 159 = rho 33482 from rfl]
    have hb : pmBit 158 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg48CanonBits_get rho 158 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r556
  · rw [show seg48CanonFlag rho 159 = rho 33482 from rfl, show seg48CanonFlag rho 160 = rho 33482 from rfl]
    have hb : pmBit 159 = false := by decide +kernel
    rw [show trueFactor (seg48CanonBits rho) 159 = 1 from by simp [trueFactor, hb]]
    ring

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
