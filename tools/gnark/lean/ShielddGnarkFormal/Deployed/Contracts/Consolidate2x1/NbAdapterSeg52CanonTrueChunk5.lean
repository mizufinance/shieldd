import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52CanonTrueChunk4

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem seg52Canon_flag_step_chunk5 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ m, 80 ≤ m → m < 96 → seg52CanonFlag rho m = trueFactor (seg52CanonBits rho) m * seg52CanonFlag rho (m + 1) := by
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
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _
  ⟩
  unfold Seg52.relationPart7 at p7
  rcases p7 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r589, r590, r591, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg52.relationRow589 at r589
  unfold Seg52.relationRow590 at r590
  unfold Seg52.relationRow591 at r591
  intro m hmlo hmhi
  interval_cases m
  · rw [show seg52CanonFlag rho 80 = rho 45150 from rfl, show seg52CanonFlag rho 81 = rho 45150 from rfl]
    have hb : pmBit 80 = false := by decide +kernel
    rw [show trueFactor (seg52CanonBits rho) 80 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg52CanonFlag rho 81 = rho 45150 from rfl, show seg52CanonFlag rho 82 = rho 45150 from rfl]
    have hb : pmBit 81 = false := by decide +kernel
    rw [show trueFactor (seg52CanonBits rho) 81 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg52CanonFlag rho 82 = rho 45150 from rfl, show seg52CanonFlag rho 83 = rho 45150 from rfl]
    have hb : pmBit 82 = false := by decide +kernel
    rw [show trueFactor (seg52CanonBits rho) 82 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg52CanonFlag rho 83 = rho 45150 from rfl, show seg52CanonFlag rho 84 = rho 45150 from rfl]
    have hb : pmBit 83 = false := by decide +kernel
    rw [show trueFactor (seg52CanonBits rho) 83 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg52CanonFlag rho 84 = rho 45150 from rfl, show seg52CanonFlag rho 85 = rho 45150 from rfl]
    have hb : pmBit 84 = false := by decide +kernel
    rw [show trueFactor (seg52CanonBits rho) 84 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg52CanonFlag rho 85 = rho 45150 from rfl, show seg52CanonFlag rho 86 = rho 45150 from rfl]
    have hb : pmBit 85 = false := by decide +kernel
    rw [show trueFactor (seg52CanonBits rho) 85 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg52CanonFlag rho 86 = rho 45150 from rfl, show seg52CanonFlag rho 87 = rho 45150 from rfl]
    have hb : pmBit 86 = false := by decide +kernel
    rw [show trueFactor (seg52CanonBits rho) 86 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg52CanonFlag rho 87 = rho 45150 from rfl, show seg52CanonFlag rho 88 = rho 45150 from rfl]
    have hb : pmBit 87 = false := by decide +kernel
    rw [show trueFactor (seg52CanonBits rho) 87 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg52CanonFlag rho 88 = rho 45150 from rfl, show seg52CanonFlag rho 89 = rho 45150 from rfl]
    have hb : pmBit 88 = false := by decide +kernel
    rw [show trueFactor (seg52CanonBits rho) 88 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg52CanonFlag rho 89 = rho 45150 from rfl, show seg52CanonFlag rho 90 = rho 45150 from rfl]
    have hb : pmBit 89 = false := by decide +kernel
    rw [show trueFactor (seg52CanonBits rho) 89 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg52CanonFlag rho 90 = rho 45150 from rfl, show seg52CanonFlag rho 91 = rho 45150 from rfl]
    have hb : pmBit 90 = false := by decide +kernel
    rw [show trueFactor (seg52CanonBits rho) 90 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg52CanonFlag rho 91 = rho 45150 from rfl, show seg52CanonFlag rho 92 = rho 45150 from rfl]
    have hb : pmBit 91 = false := by decide +kernel
    rw [show trueFactor (seg52CanonBits rho) 91 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg52CanonFlag rho 92 = rho 45150 from rfl, show seg52CanonFlag rho 93 = rho 45149 from rfl]
    have hb : pmBit 92 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg52CanonBits_get rho 92 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r591
  · rw [show seg52CanonFlag rho 93 = rho 45149 from rfl, show seg52CanonFlag rho 94 = rho 45149 from rfl]
    have hb : pmBit 93 = false := by decide +kernel
    rw [show trueFactor (seg52CanonBits rho) 93 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg52CanonFlag rho 94 = rho 45149 from rfl, show seg52CanonFlag rho 95 = rho 45148 from rfl]
    have hb : pmBit 94 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg52CanonBits_get rho 94 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r590
  · rw [show seg52CanonFlag rho 95 = rho 45148 from rfl, show seg52CanonFlag rho 96 = rho 45147 from rfl]
    have hb : pmBit 95 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg52CanonBits_get rho 95 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r589

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
