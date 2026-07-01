import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16Canon2TrueChunk9

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem seg16Canon2_flag_step_chunk10 (rho : Nat -> Seg16.F) (h : Seg16.relation rho) :
    ∀ m, 160 ≤ m → m < 176 → seg16Canon2Flag rho m = trueFactor (seg16Canon2Bits rho) m * seg16Canon2Flag rho (m + 1) := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart10 at p10
  rcases p10 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r828, r829, r830, r831, r832, r833, r834, r835, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow828 at r828
  unfold Seg16.relationRow829 at r829
  unfold Seg16.relationRow830 at r830
  unfold Seg16.relationRow831 at r831
  unfold Seg16.relationRow832 at r832
  unfold Seg16.relationRow833 at r833
  unfold Seg16.relationRow834 at r834
  unfold Seg16.relationRow835 at r835
  intro m hmlo hmhi
  interval_cases m
  · rw [show seg16Canon2Flag rho 160 = rho 13746 from rfl, show seg16Canon2Flag rho 161 = rho 13746 from rfl]
    have hb : pmBit 160 = false := by decide +kernel
    rw [show trueFactor (seg16Canon2Bits rho) 160 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg16Canon2Flag rho 161 = rho 13746 from rfl, show seg16Canon2Flag rho 162 = rho 13745 from rfl]
    have hb : pmBit 161 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg16Canon2Bits_get rho 161 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r835
  · rw [show seg16Canon2Flag rho 162 = rho 13745 from rfl, show seg16Canon2Flag rho 163 = rho 13744 from rfl]
    have hb : pmBit 162 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg16Canon2Bits_get rho 162 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r834
  · rw [show seg16Canon2Flag rho 163 = rho 13744 from rfl, show seg16Canon2Flag rho 164 = rho 13743 from rfl]
    have hb : pmBit 163 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg16Canon2Bits_get rho 163 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r833
  · rw [show seg16Canon2Flag rho 164 = rho 13743 from rfl, show seg16Canon2Flag rho 165 = rho 13742 from rfl]
    have hb : pmBit 164 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg16Canon2Bits_get rho 164 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r832
  · rw [show seg16Canon2Flag rho 165 = rho 13742 from rfl, show seg16Canon2Flag rho 166 = rho 13742 from rfl]
    have hb : pmBit 165 = false := by decide +kernel
    rw [show trueFactor (seg16Canon2Bits rho) 165 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg16Canon2Flag rho 166 = rho 13742 from rfl, show seg16Canon2Flag rho 167 = rho 13742 from rfl]
    have hb : pmBit 166 = false := by decide +kernel
    rw [show trueFactor (seg16Canon2Bits rho) 166 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg16Canon2Flag rho 167 = rho 13742 from rfl, show seg16Canon2Flag rho 168 = rho 13742 from rfl]
    have hb : pmBit 167 = false := by decide +kernel
    rw [show trueFactor (seg16Canon2Bits rho) 167 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg16Canon2Flag rho 168 = rho 13742 from rfl, show seg16Canon2Flag rho 169 = rho 13741 from rfl]
    have hb : pmBit 168 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg16Canon2Bits_get rho 168 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r831
  · rw [show seg16Canon2Flag rho 169 = rho 13741 from rfl, show seg16Canon2Flag rho 170 = rho 13741 from rfl]
    have hb : pmBit 169 = false := by decide +kernel
    rw [show trueFactor (seg16Canon2Bits rho) 169 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg16Canon2Flag rho 170 = rho 13741 from rfl, show seg16Canon2Flag rho 171 = rho 13740 from rfl]
    have hb : pmBit 170 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg16Canon2Bits_get rho 170 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r830
  · rw [show seg16Canon2Flag rho 171 = rho 13740 from rfl, show seg16Canon2Flag rho 172 = rho 13739 from rfl]
    have hb : pmBit 171 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg16Canon2Bits_get rho 171 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r829
  · rw [show seg16Canon2Flag rho 172 = rho 13739 from rfl, show seg16Canon2Flag rho 173 = rho 13739 from rfl]
    have hb : pmBit 172 = false := by decide +kernel
    rw [show trueFactor (seg16Canon2Bits rho) 172 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg16Canon2Flag rho 173 = rho 13739 from rfl, show seg16Canon2Flag rho 174 = rho 13739 from rfl]
    have hb : pmBit 173 = false := by decide +kernel
    rw [show trueFactor (seg16Canon2Bits rho) 173 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg16Canon2Flag rho 174 = rho 13739 from rfl, show seg16Canon2Flag rho 175 = rho 13738 from rfl]
    have hb : pmBit 174 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg16Canon2Bits_get rho 174 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r828
  · rw [show seg16Canon2Flag rho 175 = rho 13738 from rfl, show seg16Canon2Flag rho 176 = rho 13738 from rfl]
    have hb : pmBit 175 = false := by decide +kernel
    rw [show trueFactor (seg16Canon2Bits rho) 175 = 1 from by simp [trueFactor, hb]]
    ring

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
