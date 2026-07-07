import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52CanonTrueChunk9

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem seg52Canon_flag_step_chunk10 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ m, 160 ≤ m → m < 176 → seg52CanonFlag rho m = trueFactor (seg52CanonBits rho) m * seg52CanonFlag rho (m + 1) := by
  unfold Seg52.relation at h
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
  unfold Seg52.relationPart6 at p6
  rcases p6 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r548, r549, r550, r551, r552, r553, r554, r555, _, _, _, _⟩
  unfold Seg52.relationRow548 at r548
  unfold Seg52.relationRow549 at r549
  unfold Seg52.relationRow550 at r550
  unfold Seg52.relationRow551 at r551
  unfold Seg52.relationRow552 at r552
  unfold Seg52.relationRow553 at r553
  unfold Seg52.relationRow554 at r554
  unfold Seg52.relationRow555 at r555
  intro m hmlo hmhi
  interval_cases m
  · rw [show seg52CanonFlag rho 160 = rho 45114 from rfl, show seg52CanonFlag rho 161 = rho 45114 from rfl]
    have hb : pmBit 160 = false := by decide +kernel
    rw [show trueFactor (seg52CanonBits rho) 160 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg52CanonFlag rho 161 = rho 45114 from rfl, show seg52CanonFlag rho 162 = rho 45113 from rfl]
    have hb : pmBit 161 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg52CanonBits_get rho 161 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r555
  · rw [show seg52CanonFlag rho 162 = rho 45113 from rfl, show seg52CanonFlag rho 163 = rho 45112 from rfl]
    have hb : pmBit 162 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg52CanonBits_get rho 162 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r554
  · rw [show seg52CanonFlag rho 163 = rho 45112 from rfl, show seg52CanonFlag rho 164 = rho 45111 from rfl]
    have hb : pmBit 163 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg52CanonBits_get rho 163 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r553
  · rw [show seg52CanonFlag rho 164 = rho 45111 from rfl, show seg52CanonFlag rho 165 = rho 45110 from rfl]
    have hb : pmBit 164 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg52CanonBits_get rho 164 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r552
  · rw [show seg52CanonFlag rho 165 = rho 45110 from rfl, show seg52CanonFlag rho 166 = rho 45110 from rfl]
    have hb : pmBit 165 = false := by decide +kernel
    rw [show trueFactor (seg52CanonBits rho) 165 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg52CanonFlag rho 166 = rho 45110 from rfl, show seg52CanonFlag rho 167 = rho 45110 from rfl]
    have hb : pmBit 166 = false := by decide +kernel
    rw [show trueFactor (seg52CanonBits rho) 166 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg52CanonFlag rho 167 = rho 45110 from rfl, show seg52CanonFlag rho 168 = rho 45110 from rfl]
    have hb : pmBit 167 = false := by decide +kernel
    rw [show trueFactor (seg52CanonBits rho) 167 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg52CanonFlag rho 168 = rho 45110 from rfl, show seg52CanonFlag rho 169 = rho 45109 from rfl]
    have hb : pmBit 168 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg52CanonBits_get rho 168 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r551
  · rw [show seg52CanonFlag rho 169 = rho 45109 from rfl, show seg52CanonFlag rho 170 = rho 45109 from rfl]
    have hb : pmBit 169 = false := by decide +kernel
    rw [show trueFactor (seg52CanonBits rho) 169 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg52CanonFlag rho 170 = rho 45109 from rfl, show seg52CanonFlag rho 171 = rho 45108 from rfl]
    have hb : pmBit 170 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg52CanonBits_get rho 170 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r550
  · rw [show seg52CanonFlag rho 171 = rho 45108 from rfl, show seg52CanonFlag rho 172 = rho 45107 from rfl]
    have hb : pmBit 171 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg52CanonBits_get rho 171 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r549
  · rw [show seg52CanonFlag rho 172 = rho 45107 from rfl, show seg52CanonFlag rho 173 = rho 45107 from rfl]
    have hb : pmBit 172 = false := by decide +kernel
    rw [show trueFactor (seg52CanonBits rho) 172 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg52CanonFlag rho 173 = rho 45107 from rfl, show seg52CanonFlag rho 174 = rho 45107 from rfl]
    have hb : pmBit 173 = false := by decide +kernel
    rw [show trueFactor (seg52CanonBits rho) 173 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg52CanonFlag rho 174 = rho 45107 from rfl, show seg52CanonFlag rho 175 = rho 45106 from rfl]
    have hb : pmBit 174 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg52CanonBits_get rho 174 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r548
  · rw [show seg52CanonFlag rho 175 = rho 45106 from rfl, show seg52CanonFlag rho 176 = rho 45106 from rfl]
    have hb : pmBit 175 = false := by decide +kernel
    rw [show trueFactor (seg52CanonBits rho) 175 = 1 from by simp [trueFactor, hb]]
    ring

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
