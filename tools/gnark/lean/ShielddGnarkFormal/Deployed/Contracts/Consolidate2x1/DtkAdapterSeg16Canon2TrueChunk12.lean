import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16Canon2TrueChunk11

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem seg16Canon2_flag_step_chunk12 (rho : Nat -> Seg16.F) (h : Seg16.relation rho) :
    ∀ m, 192 ≤ m → m < 208 → seg16Canon2Flag rho m = trueFactor (seg16Canon2Bits rho) m * seg16Canon2Flag rho (m + 1) := by
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
  rcases p10 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, r814, r815, r816, r817, r818, r819, r820, r821, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow814 at r814
  unfold Seg16.relationRow815 at r815
  unfold Seg16.relationRow816 at r816
  unfold Seg16.relationRow817 at r817
  unfold Seg16.relationRow818 at r818
  unfold Seg16.relationRow819 at r819
  unfold Seg16.relationRow820 at r820
  unfold Seg16.relationRow821 at r821
  intro m hmlo hmhi
  interval_cases m
  · rw [show seg16Canon2Flag rho 192 = rho 13732 from rfl, show seg16Canon2Flag rho 193 = rho 13732 from rfl]
    have hb : pmBit 192 = false := by decide +kernel
    rw [show trueFactor (seg16Canon2Bits rho) 192 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg16Canon2Flag rho 193 = rho 13732 from rfl, show seg16Canon2Flag rho 194 = rho 13731 from rfl]
    have hb : pmBit 193 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg16Canon2Bits_get rho 193 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r821
  · rw [show seg16Canon2Flag rho 194 = rho 13731 from rfl, show seg16Canon2Flag rho 195 = rho 13730 from rfl]
    have hb : pmBit 194 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg16Canon2Bits_get rho 194 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r820
  · rw [show seg16Canon2Flag rho 195 = rho 13730 from rfl, show seg16Canon2Flag rho 196 = rho 13730 from rfl]
    have hb : pmBit 195 = false := by decide +kernel
    rw [show trueFactor (seg16Canon2Bits rho) 195 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg16Canon2Flag rho 196 = rho 13730 from rfl, show seg16Canon2Flag rho 197 = rho 13729 from rfl]
    have hb : pmBit 196 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg16Canon2Bits_get rho 196 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r819
  · rw [show seg16Canon2Flag rho 197 = rho 13729 from rfl, show seg16Canon2Flag rho 198 = rho 13729 from rfl]
    have hb : pmBit 197 = false := by decide +kernel
    rw [show trueFactor (seg16Canon2Bits rho) 197 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg16Canon2Flag rho 198 = rho 13729 from rfl, show seg16Canon2Flag rho 199 = rho 13728 from rfl]
    have hb : pmBit 198 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg16Canon2Bits_get rho 198 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r818
  · rw [show seg16Canon2Flag rho 199 = rho 13728 from rfl, show seg16Canon2Flag rho 200 = rho 13728 from rfl]
    have hb : pmBit 199 = false := by decide +kernel
    rw [show trueFactor (seg16Canon2Bits rho) 199 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg16Canon2Flag rho 200 = rho 13728 from rfl, show seg16Canon2Flag rho 201 = rho 13727 from rfl]
    have hb : pmBit 200 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg16Canon2Bits_get rho 200 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r817
  · rw [show seg16Canon2Flag rho 201 = rho 13727 from rfl, show seg16Canon2Flag rho 202 = rho 13727 from rfl]
    have hb : pmBit 201 = false := by decide +kernel
    rw [show trueFactor (seg16Canon2Bits rho) 201 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg16Canon2Flag rho 202 = rho 13727 from rfl, show seg16Canon2Flag rho 203 = rho 13726 from rfl]
    have hb : pmBit 202 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg16Canon2Bits_get rho 202 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r816
  · rw [show seg16Canon2Flag rho 203 = rho 13726 from rfl, show seg16Canon2Flag rho 204 = rho 13726 from rfl]
    have hb : pmBit 203 = false := by decide +kernel
    rw [show trueFactor (seg16Canon2Bits rho) 203 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg16Canon2Flag rho 204 = rho 13726 from rfl, show seg16Canon2Flag rho 205 = rho 13726 from rfl]
    have hb : pmBit 204 = false := by decide +kernel
    rw [show trueFactor (seg16Canon2Bits rho) 204 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg16Canon2Flag rho 205 = rho 13726 from rfl, show seg16Canon2Flag rho 206 = rho 13725 from rfl]
    have hb : pmBit 205 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg16Canon2Bits_get rho 205 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r815
  · rw [show seg16Canon2Flag rho 206 = rho 13725 from rfl, show seg16Canon2Flag rho 207 = rho 13725 from rfl]
    have hb : pmBit 206 = false := by decide +kernel
    rw [show trueFactor (seg16Canon2Bits rho) 206 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg16Canon2Flag rho 207 = rho 13725 from rfl, show seg16Canon2Flag rho 208 = rho 13724 from rfl]
    have hb : pmBit 207 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg16Canon2Bits_get rho 207 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r814

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
