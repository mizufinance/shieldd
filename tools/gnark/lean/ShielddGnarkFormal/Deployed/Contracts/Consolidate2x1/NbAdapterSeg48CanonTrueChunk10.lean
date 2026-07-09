import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg48CanonTrueChunk9

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem seg48Canon_flag_step_chunk10 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ m, 160 ≤ m → m < 176 → seg48CanonFlag rho m = trueFactor (seg48CanonBits rho) m * seg48CanonFlag rho (m + 1) := by
  unfold Seg48.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, p6, _, _, _,
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
  rcases p6 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r548, r549, r550, r551, r552, r553, r554, r555, _, _, _, _⟩
  unfold Seg48.relationRow548 at r548
  unfold Seg48.relationRow549 at r549
  unfold Seg48.relationRow550 at r550
  unfold Seg48.relationRow551 at r551
  unfold Seg48.relationRow552 at r552
  unfold Seg48.relationRow553 at r553
  unfold Seg48.relationRow554 at r554
  unfold Seg48.relationRow555 at r555
  intro m hmlo hmhi
  interval_cases m
  · rw [show seg48CanonFlag rho 160 = rho 33482 from rfl, show seg48CanonFlag rho 161 = rho 33482 from rfl]
    have hb : pmBit 160 = false := by decide +kernel
    rw [show trueFactor (seg48CanonBits rho) 160 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg48CanonFlag rho 161 = rho 33482 from rfl, show seg48CanonFlag rho 162 = rho 33481 from rfl]
    have hb : pmBit 161 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg48CanonBits_get rho 161 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r555
  · rw [show seg48CanonFlag rho 162 = rho 33481 from rfl, show seg48CanonFlag rho 163 = rho 33480 from rfl]
    have hb : pmBit 162 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg48CanonBits_get rho 162 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r554
  · rw [show seg48CanonFlag rho 163 = rho 33480 from rfl, show seg48CanonFlag rho 164 = rho 33479 from rfl]
    have hb : pmBit 163 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg48CanonBits_get rho 163 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r553
  · rw [show seg48CanonFlag rho 164 = rho 33479 from rfl, show seg48CanonFlag rho 165 = rho 33478 from rfl]
    have hb : pmBit 164 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg48CanonBits_get rho 164 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r552
  · rw [show seg48CanonFlag rho 165 = rho 33478 from rfl, show seg48CanonFlag rho 166 = rho 33478 from rfl]
    have hb : pmBit 165 = false := by decide +kernel
    rw [show trueFactor (seg48CanonBits rho) 165 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg48CanonFlag rho 166 = rho 33478 from rfl, show seg48CanonFlag rho 167 = rho 33478 from rfl]
    have hb : pmBit 166 = false := by decide +kernel
    rw [show trueFactor (seg48CanonBits rho) 166 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg48CanonFlag rho 167 = rho 33478 from rfl, show seg48CanonFlag rho 168 = rho 33478 from rfl]
    have hb : pmBit 167 = false := by decide +kernel
    rw [show trueFactor (seg48CanonBits rho) 167 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg48CanonFlag rho 168 = rho 33478 from rfl, show seg48CanonFlag rho 169 = rho 33477 from rfl]
    have hb : pmBit 168 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg48CanonBits_get rho 168 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r551
  · rw [show seg48CanonFlag rho 169 = rho 33477 from rfl, show seg48CanonFlag rho 170 = rho 33477 from rfl]
    have hb : pmBit 169 = false := by decide +kernel
    rw [show trueFactor (seg48CanonBits rho) 169 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg48CanonFlag rho 170 = rho 33477 from rfl, show seg48CanonFlag rho 171 = rho 33476 from rfl]
    have hb : pmBit 170 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg48CanonBits_get rho 170 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r550
  · rw [show seg48CanonFlag rho 171 = rho 33476 from rfl, show seg48CanonFlag rho 172 = rho 33475 from rfl]
    have hb : pmBit 171 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg48CanonBits_get rho 171 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r549
  · rw [show seg48CanonFlag rho 172 = rho 33475 from rfl, show seg48CanonFlag rho 173 = rho 33475 from rfl]
    have hb : pmBit 172 = false := by decide +kernel
    rw [show trueFactor (seg48CanonBits rho) 172 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg48CanonFlag rho 173 = rho 33475 from rfl, show seg48CanonFlag rho 174 = rho 33475 from rfl]
    have hb : pmBit 173 = false := by decide +kernel
    rw [show trueFactor (seg48CanonBits rho) 173 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg48CanonFlag rho 174 = rho 33475 from rfl, show seg48CanonFlag rho 175 = rho 33474 from rfl]
    have hb : pmBit 174 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg48CanonBits_get rho 174 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r548
  · rw [show seg48CanonFlag rho 175 = rho 33474 from rfl, show seg48CanonFlag rho 176 = rho 33474 from rfl]
    have hb : pmBit 175 = false := by decide +kernel
    rw [show trueFactor (seg48CanonBits rho) 175 = 1 from by simp [trueFactor, hb]]
    ring

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
