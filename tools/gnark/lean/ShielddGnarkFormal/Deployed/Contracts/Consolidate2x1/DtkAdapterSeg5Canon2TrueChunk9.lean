import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5Canon2TrueChunk8

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem seg5Canon2_flag_step_chunk9 (rho : Nat -> Seg5.F) (h : Seg5.relation rho) :
    ∀ m, 144 ≤ m → m < 160 → seg5Canon2Flag rho m = trueFactor (seg5Canon2Bits rho) m * seg5Canon2Flag rho (m + 1) := by
  unfold Seg5.relation at h
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
  unfold Seg5.relationPart10 at p10
  rcases p10 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r836, r837, r838, r839, r840, r841, r842, r843, r844, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg5.relationRow836 at r836
  unfold Seg5.relationRow837 at r837
  unfold Seg5.relationRow838 at r838
  unfold Seg5.relationRow839 at r839
  unfold Seg5.relationRow840 at r840
  unfold Seg5.relationRow841 at r841
  unfold Seg5.relationRow842 at r842
  unfold Seg5.relationRow843 at r843
  unfold Seg5.relationRow844 at r844
  intro m hmlo hmhi
  interval_cases m
  · rw [show seg5Canon2Flag rho 144 = rho 878 from rfl, show seg5Canon2Flag rho 145 = rho 877 from rfl]
    have hb : pmBit 144 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg5Canon2Bits_get rho 144 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r844
  · rw [show seg5Canon2Flag rho 145 = rho 877 from rfl, show seg5Canon2Flag rho 146 = rho 876 from rfl]
    have hb : pmBit 145 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg5Canon2Bits_get rho 145 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r843
  · rw [show seg5Canon2Flag rho 146 = rho 876 from rfl, show seg5Canon2Flag rho 147 = rho 875 from rfl]
    have hb : pmBit 146 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg5Canon2Bits_get rho 146 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r842
  · rw [show seg5Canon2Flag rho 147 = rho 875 from rfl, show seg5Canon2Flag rho 148 = rho 875 from rfl]
    have hb : pmBit 147 = false := by decide +kernel
    rw [show trueFactor (seg5Canon2Bits rho) 147 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg5Canon2Flag rho 148 = rho 875 from rfl, show seg5Canon2Flag rho 149 = rho 874 from rfl]
    have hb : pmBit 148 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg5Canon2Bits_get rho 148 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r841
  · rw [show seg5Canon2Flag rho 149 = rho 874 from rfl, show seg5Canon2Flag rho 150 = rho 873 from rfl]
    have hb : pmBit 149 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg5Canon2Bits_get rho 149 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r840
  · rw [show seg5Canon2Flag rho 150 = rho 873 from rfl, show seg5Canon2Flag rho 151 = rho 873 from rfl]
    have hb : pmBit 150 = false := by decide +kernel
    rw [show trueFactor (seg5Canon2Bits rho) 150 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg5Canon2Flag rho 151 = rho 873 from rfl, show seg5Canon2Flag rho 152 = rho 873 from rfl]
    have hb : pmBit 151 = false := by decide +kernel
    rw [show trueFactor (seg5Canon2Bits rho) 151 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg5Canon2Flag rho 152 = rho 873 from rfl, show seg5Canon2Flag rho 153 = rho 873 from rfl]
    have hb : pmBit 152 = false := by decide +kernel
    rw [show trueFactor (seg5Canon2Bits rho) 152 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg5Canon2Flag rho 153 = rho 873 from rfl, show seg5Canon2Flag rho 154 = rho 873 from rfl]
    have hb : pmBit 153 = false := by decide +kernel
    rw [show trueFactor (seg5Canon2Bits rho) 153 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg5Canon2Flag rho 154 = rho 873 from rfl, show seg5Canon2Flag rho 155 = rho 872 from rfl]
    have hb : pmBit 154 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg5Canon2Bits_get rho 154 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r839
  · rw [show seg5Canon2Flag rho 155 = rho 872 from rfl, show seg5Canon2Flag rho 156 = rho 871 from rfl]
    have hb : pmBit 155 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg5Canon2Bits_get rho 155 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r838
  · rw [show seg5Canon2Flag rho 156 = rho 871 from rfl, show seg5Canon2Flag rho 157 = rho 870 from rfl]
    have hb : pmBit 156 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg5Canon2Bits_get rho 156 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r837
  · rw [show seg5Canon2Flag rho 157 = rho 870 from rfl, show seg5Canon2Flag rho 158 = rho 870 from rfl]
    have hb : pmBit 157 = false := by decide +kernel
    rw [show trueFactor (seg5Canon2Bits rho) 157 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg5Canon2Flag rho 158 = rho 870 from rfl, show seg5Canon2Flag rho 159 = rho 869 from rfl]
    have hb : pmBit 158 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg5Canon2Bits_get rho 158 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r836
  · rw [show seg5Canon2Flag rho 159 = rho 869 from rfl, show seg5Canon2Flag rho 160 = rho 869 from rfl]
    have hb : pmBit 159 = false := by decide +kernel
    rw [show trueFactor (seg5Canon2Bits rho) 159 = 1 from by simp [trueFactor, hb]]
    ring

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
