import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52CanonTrueChunk5

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem seg52Canon_flag_step_chunk6 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ m, 96 ≤ m → m < 112 → seg52CanonFlag rho m = trueFactor (seg52CanonBits rho) m * seg52CanonFlag rho (m + 1) := by
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
  rcases p7 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r577, r578, r579, r580, r581, r582, r583, r584, r585, r586, r587, r588, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg52.relationRow577 at r577
  unfold Seg52.relationRow578 at r578
  unfold Seg52.relationRow579 at r579
  unfold Seg52.relationRow580 at r580
  unfold Seg52.relationRow581 at r581
  unfold Seg52.relationRow582 at r582
  unfold Seg52.relationRow583 at r583
  unfold Seg52.relationRow584 at r584
  unfold Seg52.relationRow585 at r585
  unfold Seg52.relationRow586 at r586
  unfold Seg52.relationRow587 at r587
  unfold Seg52.relationRow588 at r588
  intro m hmlo hmhi
  interval_cases m
  · rw [show seg52CanonFlag rho 96 = rho 45147 from rfl, show seg52CanonFlag rho 97 = rho 45147 from rfl]
    have hb : pmBit 96 = false := by decide +kernel
    rw [show trueFactor (seg52CanonBits rho) 96 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg52CanonFlag rho 97 = rho 45147 from rfl, show seg52CanonFlag rho 98 = rho 45146 from rfl]
    have hb : pmBit 97 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg52CanonBits_get rho 97 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r588
  · rw [show seg52CanonFlag rho 98 = rho 45146 from rfl, show seg52CanonFlag rho 99 = rho 45145 from rfl]
    have hb : pmBit 98 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg52CanonBits_get rho 98 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r587
  · rw [show seg52CanonFlag rho 99 = rho 45145 from rfl, show seg52CanonFlag rho 100 = rho 45144 from rfl]
    have hb : pmBit 99 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg52CanonBits_get rho 99 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r586
  · rw [show seg52CanonFlag rho 100 = rho 45144 from rfl, show seg52CanonFlag rho 101 = rho 45143 from rfl]
    have hb : pmBit 100 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg52CanonBits_get rho 100 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r585
  · rw [show seg52CanonFlag rho 101 = rho 45143 from rfl, show seg52CanonFlag rho 102 = rho 45142 from rfl]
    have hb : pmBit 101 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg52CanonBits_get rho 101 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r584
  · rw [show seg52CanonFlag rho 102 = rho 45142 from rfl, show seg52CanonFlag rho 103 = rho 45141 from rfl]
    have hb : pmBit 102 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg52CanonBits_get rho 102 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r583
  · rw [show seg52CanonFlag rho 103 = rho 45141 from rfl, show seg52CanonFlag rho 104 = rho 45140 from rfl]
    have hb : pmBit 103 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg52CanonBits_get rho 103 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r582
  · rw [show seg52CanonFlag rho 104 = rho 45140 from rfl, show seg52CanonFlag rho 105 = rho 45140 from rfl]
    have hb : pmBit 104 = false := by decide +kernel
    rw [show trueFactor (seg52CanonBits rho) 104 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg52CanonFlag rho 105 = rho 45140 from rfl, show seg52CanonFlag rho 106 = rho 45139 from rfl]
    have hb : pmBit 105 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg52CanonBits_get rho 105 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r581
  · rw [show seg52CanonFlag rho 106 = rho 45139 from rfl, show seg52CanonFlag rho 107 = rho 45138 from rfl]
    have hb : pmBit 106 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg52CanonBits_get rho 106 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r580
  · rw [show seg52CanonFlag rho 107 = rho 45138 from rfl, show seg52CanonFlag rho 108 = rho 45138 from rfl]
    have hb : pmBit 107 = false := by decide +kernel
    rw [show trueFactor (seg52CanonBits rho) 107 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg52CanonFlag rho 108 = rho 45138 from rfl, show seg52CanonFlag rho 109 = rho 45137 from rfl]
    have hb : pmBit 108 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg52CanonBits_get rho 108 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r579
  · rw [show seg52CanonFlag rho 109 = rho 45137 from rfl, show seg52CanonFlag rho 110 = rho 45136 from rfl]
    have hb : pmBit 109 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg52CanonBits_get rho 109 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r578
  · rw [show seg52CanonFlag rho 110 = rho 45136 from rfl, show seg52CanonFlag rho 111 = rho 45135 from rfl]
    have hb : pmBit 110 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg52CanonBits_get rho 110 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r577
  · rw [show seg52CanonFlag rho 111 = rho 45135 from rfl, show seg52CanonFlag rho 112 = rho 45135 from rfl]
    have hb : pmBit 111 = false := by decide +kernel
    rw [show trueFactor (seg52CanonBits rho) 111 = 1 from by simp [trueFactor, hb]]
    ring

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
