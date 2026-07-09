import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5Canon2TrueChunk10

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem seg5Canon2_flag_step_chunk11 (rho : Nat -> Seg5.F) (h : Seg5.relation rho) :
    ∀ m, 176 ≤ m → m < 192 → seg5Canon2Flag rho m = trueFactor (seg5Canon2Bits rho) m * seg5Canon2Flag rho (m + 1) := by
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
  rcases p10 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r822, r823, r824, r825, r826, r827, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg5.relationRow822 at r822
  unfold Seg5.relationRow823 at r823
  unfold Seg5.relationRow824 at r824
  unfold Seg5.relationRow825 at r825
  unfold Seg5.relationRow826 at r826
  unfold Seg5.relationRow827 at r827
  intro m hmlo hmhi
  interval_cases m
  · rw [show seg5Canon2Flag rho 176 = rho 861 from rfl, show seg5Canon2Flag rho 177 = rho 861 from rfl]
    have hb : pmBit 176 = false := by decide +kernel
    rw [show trueFactor (seg5Canon2Bits rho) 176 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg5Canon2Flag rho 177 = rho 861 from rfl, show seg5Canon2Flag rho 178 = rho 861 from rfl]
    have hb : pmBit 177 = false := by decide +kernel
    rw [show trueFactor (seg5Canon2Bits rho) 177 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg5Canon2Flag rho 178 = rho 861 from rfl, show seg5Canon2Flag rho 179 = rho 860 from rfl]
    have hb : pmBit 178 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg5Canon2Bits_get rho 178 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r827
  · rw [show seg5Canon2Flag rho 179 = rho 860 from rfl, show seg5Canon2Flag rho 180 = rho 860 from rfl]
    have hb : pmBit 179 = false := by decide +kernel
    rw [show trueFactor (seg5Canon2Bits rho) 179 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg5Canon2Flag rho 180 = rho 860 from rfl, show seg5Canon2Flag rho 181 = rho 859 from rfl]
    have hb : pmBit 180 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg5Canon2Bits_get rho 180 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r826
  · rw [show seg5Canon2Flag rho 181 = rho 859 from rfl, show seg5Canon2Flag rho 182 = rho 858 from rfl]
    have hb : pmBit 181 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg5Canon2Bits_get rho 181 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r825
  · rw [show seg5Canon2Flag rho 182 = rho 858 from rfl, show seg5Canon2Flag rho 183 = rho 858 from rfl]
    have hb : pmBit 182 = false := by decide +kernel
    rw [show trueFactor (seg5Canon2Bits rho) 182 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg5Canon2Flag rho 183 = rho 858 from rfl, show seg5Canon2Flag rho 184 = rho 857 from rfl]
    have hb : pmBit 183 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg5Canon2Bits_get rho 183 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r824
  · rw [show seg5Canon2Flag rho 184 = rho 857 from rfl, show seg5Canon2Flag rho 185 = rho 857 from rfl]
    have hb : pmBit 184 = false := by decide +kernel
    rw [show trueFactor (seg5Canon2Bits rho) 184 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg5Canon2Flag rho 185 = rho 857 from rfl, show seg5Canon2Flag rho 186 = rho 857 from rfl]
    have hb : pmBit 185 = false := by decide +kernel
    rw [show trueFactor (seg5Canon2Bits rho) 185 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg5Canon2Flag rho 186 = rho 857 from rfl, show seg5Canon2Flag rho 187 = rho 857 from rfl]
    have hb : pmBit 186 = false := by decide +kernel
    rw [show trueFactor (seg5Canon2Bits rho) 186 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg5Canon2Flag rho 187 = rho 857 from rfl, show seg5Canon2Flag rho 188 = rho 857 from rfl]
    have hb : pmBit 187 = false := by decide +kernel
    rw [show trueFactor (seg5Canon2Bits rho) 187 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg5Canon2Flag rho 188 = rho 857 from rfl, show seg5Canon2Flag rho 189 = rho 857 from rfl]
    have hb : pmBit 188 = false := by decide +kernel
    rw [show trueFactor (seg5Canon2Bits rho) 188 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg5Canon2Flag rho 189 = rho 857 from rfl, show seg5Canon2Flag rho 190 = rho 856 from rfl]
    have hb : pmBit 189 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg5Canon2Bits_get rho 189 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r823
  · rw [show seg5Canon2Flag rho 190 = rho 856 from rfl, show seg5Canon2Flag rho 191 = rho 855 from rfl]
    have hb : pmBit 190 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg5Canon2Bits_get rho 190 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r822
  · rw [show seg5Canon2Flag rho 191 = rho 855 from rfl, show seg5Canon2Flag rho 192 = rho 855 from rfl]
    have hb : pmBit 191 = false := by decide +kernel
    rw [show trueFactor (seg5Canon2Bits rho) 191 = 1 from by simp [trueFactor, hb]]
    ring

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
