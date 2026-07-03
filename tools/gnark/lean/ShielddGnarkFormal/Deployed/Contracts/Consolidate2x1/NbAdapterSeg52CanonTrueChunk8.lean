import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52CanonTrueChunk7

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem seg52Canon_flag_step_chunk8 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ m, 128 ≤ m → m < 144 → seg52CanonFlag rho m = trueFactor (seg52CanonBits rho) m * seg52CanonFlag rho (m + 1) := by
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
  rcases p7 with ⟨_, _, _, _, _, r565, r566, r567, r568, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg52.relationRow565 at r565
  unfold Seg52.relationRow566 at r566
  unfold Seg52.relationRow567 at r567
  unfold Seg52.relationRow568 at r568
  intro m hmlo hmhi
  interval_cases m
  · rw [show seg52CanonFlag rho 128 = rho 45127 from rfl, show seg52CanonFlag rho 129 = rho 45126 from rfl]
    have hb : pmBit 128 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg52CanonBits_get rho 128 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r568
  · rw [show seg52CanonFlag rho 129 = rho 45126 from rfl, show seg52CanonFlag rho 130 = rho 45126 from rfl]
    have hb : pmBit 129 = false := by decide +kernel
    rw [show trueFactor (seg52CanonBits rho) 129 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg52CanonFlag rho 130 = rho 45126 from rfl, show seg52CanonFlag rho 131 = rho 45126 from rfl]
    have hb : pmBit 130 = false := by decide +kernel
    rw [show trueFactor (seg52CanonBits rho) 130 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg52CanonFlag rho 131 = rho 45126 from rfl, show seg52CanonFlag rho 132 = rho 45126 from rfl]
    have hb : pmBit 131 = false := by decide +kernel
    rw [show trueFactor (seg52CanonBits rho) 131 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg52CanonFlag rho 132 = rho 45126 from rfl, show seg52CanonFlag rho 133 = rho 45126 from rfl]
    have hb : pmBit 132 = false := by decide +kernel
    rw [show trueFactor (seg52CanonBits rho) 132 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg52CanonFlag rho 133 = rho 45126 from rfl, show seg52CanonFlag rho 134 = rho 45126 from rfl]
    have hb : pmBit 133 = false := by decide +kernel
    rw [show trueFactor (seg52CanonBits rho) 133 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg52CanonFlag rho 134 = rho 45126 from rfl, show seg52CanonFlag rho 135 = rho 45126 from rfl]
    have hb : pmBit 134 = false := by decide +kernel
    rw [show trueFactor (seg52CanonBits rho) 134 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg52CanonFlag rho 135 = rho 45126 from rfl, show seg52CanonFlag rho 136 = rho 45126 from rfl]
    have hb : pmBit 135 = false := by decide +kernel
    rw [show trueFactor (seg52CanonBits rho) 135 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg52CanonFlag rho 136 = rho 45126 from rfl, show seg52CanonFlag rho 137 = rho 45126 from rfl]
    have hb : pmBit 136 = false := by decide +kernel
    rw [show trueFactor (seg52CanonBits rho) 136 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg52CanonFlag rho 137 = rho 45126 from rfl, show seg52CanonFlag rho 138 = rho 45126 from rfl]
    have hb : pmBit 137 = false := by decide +kernel
    rw [show trueFactor (seg52CanonBits rho) 137 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg52CanonFlag rho 138 = rho 45126 from rfl, show seg52CanonFlag rho 139 = rho 45126 from rfl]
    have hb : pmBit 138 = false := by decide +kernel
    rw [show trueFactor (seg52CanonBits rho) 138 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg52CanonFlag rho 139 = rho 45126 from rfl, show seg52CanonFlag rho 140 = rho 45126 from rfl]
    have hb : pmBit 139 = false := by decide +kernel
    rw [show trueFactor (seg52CanonBits rho) 139 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg52CanonFlag rho 140 = rho 45126 from rfl, show seg52CanonFlag rho 141 = rho 45125 from rfl]
    have hb : pmBit 140 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg52CanonBits_get rho 140 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r567
  · rw [show seg52CanonFlag rho 141 = rho 45125 from rfl, show seg52CanonFlag rho 142 = rho 45124 from rfl]
    have hb : pmBit 141 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg52CanonBits_get rho 141 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r566
  · rw [show seg52CanonFlag rho 142 = rho 45124 from rfl, show seg52CanonFlag rho 143 = rho 45124 from rfl]
    have hb : pmBit 142 = false := by decide +kernel
    rw [show trueFactor (seg52CanonBits rho) 142 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg52CanonFlag rho 143 = rho 45124 from rfl, show seg52CanonFlag rho 144 = rho 45123 from rfl]
    have hb : pmBit 143 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg52CanonBits_get rho 143 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r565

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
