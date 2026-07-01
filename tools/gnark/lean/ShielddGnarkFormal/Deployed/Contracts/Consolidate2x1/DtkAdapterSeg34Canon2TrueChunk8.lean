import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34Canon2TrueChunk7

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem seg34Canon2_flag_step_chunk8 (rho : Nat -> Seg34.F) (h : Seg34.relation rho) :
    ∀ m, 128 ≤ m → m < 144 → seg34Canon2Flag rho m = trueFactor (seg34Canon2Bits rho) m * seg34Canon2Flag rho (m + 1) := by
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
  rcases p10 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r845, r846, r847, r848, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow845 at r845
  unfold Seg34.relationRow846 at r846
  unfold Seg34.relationRow847 at r847
  unfold Seg34.relationRow848 at r848
  intro m hmlo hmhi
  interval_cases m
  · rw [show seg34Canon2Flag rho 128 = rho 32459 from rfl, show seg34Canon2Flag rho 129 = rho 32458 from rfl]
    have hb : pmBit 128 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg34Canon2Bits_get rho 128 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r848
  · rw [show seg34Canon2Flag rho 129 = rho 32458 from rfl, show seg34Canon2Flag rho 130 = rho 32458 from rfl]
    have hb : pmBit 129 = false := by decide +kernel
    rw [show trueFactor (seg34Canon2Bits rho) 129 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg34Canon2Flag rho 130 = rho 32458 from rfl, show seg34Canon2Flag rho 131 = rho 32458 from rfl]
    have hb : pmBit 130 = false := by decide +kernel
    rw [show trueFactor (seg34Canon2Bits rho) 130 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg34Canon2Flag rho 131 = rho 32458 from rfl, show seg34Canon2Flag rho 132 = rho 32458 from rfl]
    have hb : pmBit 131 = false := by decide +kernel
    rw [show trueFactor (seg34Canon2Bits rho) 131 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg34Canon2Flag rho 132 = rho 32458 from rfl, show seg34Canon2Flag rho 133 = rho 32458 from rfl]
    have hb : pmBit 132 = false := by decide +kernel
    rw [show trueFactor (seg34Canon2Bits rho) 132 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg34Canon2Flag rho 133 = rho 32458 from rfl, show seg34Canon2Flag rho 134 = rho 32458 from rfl]
    have hb : pmBit 133 = false := by decide +kernel
    rw [show trueFactor (seg34Canon2Bits rho) 133 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg34Canon2Flag rho 134 = rho 32458 from rfl, show seg34Canon2Flag rho 135 = rho 32458 from rfl]
    have hb : pmBit 134 = false := by decide +kernel
    rw [show trueFactor (seg34Canon2Bits rho) 134 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg34Canon2Flag rho 135 = rho 32458 from rfl, show seg34Canon2Flag rho 136 = rho 32458 from rfl]
    have hb : pmBit 135 = false := by decide +kernel
    rw [show trueFactor (seg34Canon2Bits rho) 135 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg34Canon2Flag rho 136 = rho 32458 from rfl, show seg34Canon2Flag rho 137 = rho 32458 from rfl]
    have hb : pmBit 136 = false := by decide +kernel
    rw [show trueFactor (seg34Canon2Bits rho) 136 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg34Canon2Flag rho 137 = rho 32458 from rfl, show seg34Canon2Flag rho 138 = rho 32458 from rfl]
    have hb : pmBit 137 = false := by decide +kernel
    rw [show trueFactor (seg34Canon2Bits rho) 137 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg34Canon2Flag rho 138 = rho 32458 from rfl, show seg34Canon2Flag rho 139 = rho 32458 from rfl]
    have hb : pmBit 138 = false := by decide +kernel
    rw [show trueFactor (seg34Canon2Bits rho) 138 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg34Canon2Flag rho 139 = rho 32458 from rfl, show seg34Canon2Flag rho 140 = rho 32458 from rfl]
    have hb : pmBit 139 = false := by decide +kernel
    rw [show trueFactor (seg34Canon2Bits rho) 139 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg34Canon2Flag rho 140 = rho 32458 from rfl, show seg34Canon2Flag rho 141 = rho 32457 from rfl]
    have hb : pmBit 140 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg34Canon2Bits_get rho 140 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r847
  · rw [show seg34Canon2Flag rho 141 = rho 32457 from rfl, show seg34Canon2Flag rho 142 = rho 32456 from rfl]
    have hb : pmBit 141 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg34Canon2Bits_get rho 141 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r846
  · rw [show seg34Canon2Flag rho 142 = rho 32456 from rfl, show seg34Canon2Flag rho 143 = rho 32456 from rfl]
    have hb : pmBit 142 = false := by decide +kernel
    rw [show trueFactor (seg34Canon2Bits rho) 142 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg34Canon2Flag rho 143 = rho 32456 from rfl, show seg34Canon2Flag rho 144 = rho 32455 from rfl]
    have hb : pmBit 143 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg34Canon2Bits_get rho 143 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r845

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
