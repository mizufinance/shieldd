import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16Canon2TrueChunk1

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem seg16Canon2_flag_step_chunk2 (rho : Nat -> Seg16.F) (h : Seg16.relation rho) :
    ∀ m, 32 ≤ m → m < 48 → seg16Canon2Flag rho m = trueFactor (seg16Canon2Bits rho) m * seg16Canon2Flag rho (m + 1) := by
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
  rcases p10 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r877, _, _⟩
  unfold Seg16.relationRow877 at r877
  intro m hmlo hmhi
  interval_cases m
  · rw [show seg16Canon2Flag rho 32 = rho 13788 from rfl, show seg16Canon2Flag rho 33 = rho 13788 from rfl]
    have hb : pmBit 32 = false := by decide +kernel
    rw [show trueFactor (seg16Canon2Bits rho) 32 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg16Canon2Flag rho 33 = rho 13788 from rfl, show seg16Canon2Flag rho 34 = rho 13788 from rfl]
    have hb : pmBit 33 = false := by decide +kernel
    rw [show trueFactor (seg16Canon2Bits rho) 33 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg16Canon2Flag rho 34 = rho 13788 from rfl, show seg16Canon2Flag rho 35 = rho 13788 from rfl]
    have hb : pmBit 34 = false := by decide +kernel
    rw [show trueFactor (seg16Canon2Bits rho) 34 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg16Canon2Flag rho 35 = rho 13788 from rfl, show seg16Canon2Flag rho 36 = rho 13788 from rfl]
    have hb : pmBit 35 = false := by decide +kernel
    rw [show trueFactor (seg16Canon2Bits rho) 35 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg16Canon2Flag rho 36 = rho 13788 from rfl, show seg16Canon2Flag rho 37 = rho 13788 from rfl]
    have hb : pmBit 36 = false := by decide +kernel
    rw [show trueFactor (seg16Canon2Bits rho) 36 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg16Canon2Flag rho 37 = rho 13788 from rfl, show seg16Canon2Flag rho 38 = rho 13788 from rfl]
    have hb : pmBit 37 = false := by decide +kernel
    rw [show trueFactor (seg16Canon2Bits rho) 37 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg16Canon2Flag rho 38 = rho 13788 from rfl, show seg16Canon2Flag rho 39 = rho 13788 from rfl]
    have hb : pmBit 38 = false := by decide +kernel
    rw [show trueFactor (seg16Canon2Bits rho) 38 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg16Canon2Flag rho 39 = rho 13788 from rfl, show seg16Canon2Flag rho 40 = rho 13788 from rfl]
    have hb : pmBit 39 = false := by decide +kernel
    rw [show trueFactor (seg16Canon2Bits rho) 39 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg16Canon2Flag rho 40 = rho 13788 from rfl, show seg16Canon2Flag rho 41 = rho 13788 from rfl]
    have hb : pmBit 40 = false := by decide +kernel
    rw [show trueFactor (seg16Canon2Bits rho) 40 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg16Canon2Flag rho 41 = rho 13788 from rfl, show seg16Canon2Flag rho 42 = rho 13788 from rfl]
    have hb : pmBit 41 = false := by decide +kernel
    rw [show trueFactor (seg16Canon2Bits rho) 41 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg16Canon2Flag rho 42 = rho 13788 from rfl, show seg16Canon2Flag rho 43 = rho 13788 from rfl]
    have hb : pmBit 42 = false := by decide +kernel
    rw [show trueFactor (seg16Canon2Bits rho) 42 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg16Canon2Flag rho 43 = rho 13788 from rfl, show seg16Canon2Flag rho 44 = rho 13788 from rfl]
    have hb : pmBit 43 = false := by decide +kernel
    rw [show trueFactor (seg16Canon2Bits rho) 43 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg16Canon2Flag rho 44 = rho 13788 from rfl, show seg16Canon2Flag rho 45 = rho 13788 from rfl]
    have hb : pmBit 44 = false := by decide +kernel
    rw [show trueFactor (seg16Canon2Bits rho) 44 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg16Canon2Flag rho 45 = rho 13788 from rfl, show seg16Canon2Flag rho 46 = rho 13788 from rfl]
    have hb : pmBit 45 = false := by decide +kernel
    rw [show trueFactor (seg16Canon2Bits rho) 45 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg16Canon2Flag rho 46 = rho 13788 from rfl, show seg16Canon2Flag rho 47 = rho 13788 from rfl]
    have hb : pmBit 46 = false := by decide +kernel
    rw [show trueFactor (seg16Canon2Bits rho) 46 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg16Canon2Flag rho 47 = rho 13788 from rfl, show seg16Canon2Flag rho 48 = rho 13787 from rfl]
    have hb : pmBit 47 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg16Canon2Bits_get rho 47 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r877

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
