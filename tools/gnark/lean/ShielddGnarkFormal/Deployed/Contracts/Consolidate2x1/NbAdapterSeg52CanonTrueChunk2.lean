import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52CanonTrueChunk1

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem seg52Canon_flag_step_chunk2 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ m, 32 ≤ m → m < 48 → seg52CanonFlag rho m = trueFactor (seg52CanonBits rho) m * seg52CanonFlag rho (m + 1) := by
  unfold Seg52.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, p7, _, _,
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
  unfold Seg52.relationPart7 at p7
  rcases p7 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r597, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg52.relationRow597 at r597
  intro m hmlo hmhi
  interval_cases m
  · rw [show seg52CanonFlag rho 32 = rho 45156 from rfl, show seg52CanonFlag rho 33 = rho 45156 from rfl]
    have hb : pmBit 32 = false := by decide +kernel
    rw [show trueFactor (seg52CanonBits rho) 32 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg52CanonFlag rho 33 = rho 45156 from rfl, show seg52CanonFlag rho 34 = rho 45156 from rfl]
    have hb : pmBit 33 = false := by decide +kernel
    rw [show trueFactor (seg52CanonBits rho) 33 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg52CanonFlag rho 34 = rho 45156 from rfl, show seg52CanonFlag rho 35 = rho 45156 from rfl]
    have hb : pmBit 34 = false := by decide +kernel
    rw [show trueFactor (seg52CanonBits rho) 34 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg52CanonFlag rho 35 = rho 45156 from rfl, show seg52CanonFlag rho 36 = rho 45156 from rfl]
    have hb : pmBit 35 = false := by decide +kernel
    rw [show trueFactor (seg52CanonBits rho) 35 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg52CanonFlag rho 36 = rho 45156 from rfl, show seg52CanonFlag rho 37 = rho 45156 from rfl]
    have hb : pmBit 36 = false := by decide +kernel
    rw [show trueFactor (seg52CanonBits rho) 36 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg52CanonFlag rho 37 = rho 45156 from rfl, show seg52CanonFlag rho 38 = rho 45156 from rfl]
    have hb : pmBit 37 = false := by decide +kernel
    rw [show trueFactor (seg52CanonBits rho) 37 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg52CanonFlag rho 38 = rho 45156 from rfl, show seg52CanonFlag rho 39 = rho 45156 from rfl]
    have hb : pmBit 38 = false := by decide +kernel
    rw [show trueFactor (seg52CanonBits rho) 38 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg52CanonFlag rho 39 = rho 45156 from rfl, show seg52CanonFlag rho 40 = rho 45156 from rfl]
    have hb : pmBit 39 = false := by decide +kernel
    rw [show trueFactor (seg52CanonBits rho) 39 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg52CanonFlag rho 40 = rho 45156 from rfl, show seg52CanonFlag rho 41 = rho 45156 from rfl]
    have hb : pmBit 40 = false := by decide +kernel
    rw [show trueFactor (seg52CanonBits rho) 40 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg52CanonFlag rho 41 = rho 45156 from rfl, show seg52CanonFlag rho 42 = rho 45156 from rfl]
    have hb : pmBit 41 = false := by decide +kernel
    rw [show trueFactor (seg52CanonBits rho) 41 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg52CanonFlag rho 42 = rho 45156 from rfl, show seg52CanonFlag rho 43 = rho 45156 from rfl]
    have hb : pmBit 42 = false := by decide +kernel
    rw [show trueFactor (seg52CanonBits rho) 42 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg52CanonFlag rho 43 = rho 45156 from rfl, show seg52CanonFlag rho 44 = rho 45156 from rfl]
    have hb : pmBit 43 = false := by decide +kernel
    rw [show trueFactor (seg52CanonBits rho) 43 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg52CanonFlag rho 44 = rho 45156 from rfl, show seg52CanonFlag rho 45 = rho 45156 from rfl]
    have hb : pmBit 44 = false := by decide +kernel
    rw [show trueFactor (seg52CanonBits rho) 44 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg52CanonFlag rho 45 = rho 45156 from rfl, show seg52CanonFlag rho 46 = rho 45156 from rfl]
    have hb : pmBit 45 = false := by decide +kernel
    rw [show trueFactor (seg52CanonBits rho) 45 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg52CanonFlag rho 46 = rho 45156 from rfl, show seg52CanonFlag rho 47 = rho 45156 from rfl]
    have hb : pmBit 46 = false := by decide +kernel
    rw [show trueFactor (seg52CanonBits rho) 46 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg52CanonFlag rho 47 = rho 45156 from rfl, show seg52CanonFlag rho 48 = rho 45155 from rfl]
    have hb : pmBit 47 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg52CanonBits_get rho 47 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r597

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
