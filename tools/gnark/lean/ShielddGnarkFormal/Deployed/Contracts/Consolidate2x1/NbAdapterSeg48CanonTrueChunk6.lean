import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg48CanonTrueChunk5

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem seg48Canon_flag_step_chunk6 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ m, 96 ≤ m → m < 112 → seg48CanonFlag rho m = trueFactor (seg48CanonBits rho) m * seg48CanonFlag rho (m + 1) := by
  unfold Seg48.relation at h
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
  unfold Seg48.relationPart7 at p7
  rcases p7 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r577, r578, r579, r580, r581, r582, r583, r584, r585, r586, r587, r588, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg48.relationRow577 at r577
  unfold Seg48.relationRow578 at r578
  unfold Seg48.relationRow579 at r579
  unfold Seg48.relationRow580 at r580
  unfold Seg48.relationRow581 at r581
  unfold Seg48.relationRow582 at r582
  unfold Seg48.relationRow583 at r583
  unfold Seg48.relationRow584 at r584
  unfold Seg48.relationRow585 at r585
  unfold Seg48.relationRow586 at r586
  unfold Seg48.relationRow587 at r587
  unfold Seg48.relationRow588 at r588
  intro m hmlo hmhi
  interval_cases m
  · rw [show seg48CanonFlag rho 96 = rho 33515 from rfl, show seg48CanonFlag rho 97 = rho 33515 from rfl]
    have hb : pmBit 96 = false := by decide +kernel
    rw [show trueFactor (seg48CanonBits rho) 96 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg48CanonFlag rho 97 = rho 33515 from rfl, show seg48CanonFlag rho 98 = rho 33514 from rfl]
    have hb : pmBit 97 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg48CanonBits_get rho 97 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r588
  · rw [show seg48CanonFlag rho 98 = rho 33514 from rfl, show seg48CanonFlag rho 99 = rho 33513 from rfl]
    have hb : pmBit 98 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg48CanonBits_get rho 98 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r587
  · rw [show seg48CanonFlag rho 99 = rho 33513 from rfl, show seg48CanonFlag rho 100 = rho 33512 from rfl]
    have hb : pmBit 99 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg48CanonBits_get rho 99 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r586
  · rw [show seg48CanonFlag rho 100 = rho 33512 from rfl, show seg48CanonFlag rho 101 = rho 33511 from rfl]
    have hb : pmBit 100 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg48CanonBits_get rho 100 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r585
  · rw [show seg48CanonFlag rho 101 = rho 33511 from rfl, show seg48CanonFlag rho 102 = rho 33510 from rfl]
    have hb : pmBit 101 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg48CanonBits_get rho 101 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r584
  · rw [show seg48CanonFlag rho 102 = rho 33510 from rfl, show seg48CanonFlag rho 103 = rho 33509 from rfl]
    have hb : pmBit 102 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg48CanonBits_get rho 102 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r583
  · rw [show seg48CanonFlag rho 103 = rho 33509 from rfl, show seg48CanonFlag rho 104 = rho 33508 from rfl]
    have hb : pmBit 103 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg48CanonBits_get rho 103 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r582
  · rw [show seg48CanonFlag rho 104 = rho 33508 from rfl, show seg48CanonFlag rho 105 = rho 33508 from rfl]
    have hb : pmBit 104 = false := by decide +kernel
    rw [show trueFactor (seg48CanonBits rho) 104 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg48CanonFlag rho 105 = rho 33508 from rfl, show seg48CanonFlag rho 106 = rho 33507 from rfl]
    have hb : pmBit 105 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg48CanonBits_get rho 105 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r581
  · rw [show seg48CanonFlag rho 106 = rho 33507 from rfl, show seg48CanonFlag rho 107 = rho 33506 from rfl]
    have hb : pmBit 106 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg48CanonBits_get rho 106 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r580
  · rw [show seg48CanonFlag rho 107 = rho 33506 from rfl, show seg48CanonFlag rho 108 = rho 33506 from rfl]
    have hb : pmBit 107 = false := by decide +kernel
    rw [show trueFactor (seg48CanonBits rho) 107 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg48CanonFlag rho 108 = rho 33506 from rfl, show seg48CanonFlag rho 109 = rho 33505 from rfl]
    have hb : pmBit 108 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg48CanonBits_get rho 108 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r579
  · rw [show seg48CanonFlag rho 109 = rho 33505 from rfl, show seg48CanonFlag rho 110 = rho 33504 from rfl]
    have hb : pmBit 109 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg48CanonBits_get rho 109 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r578
  · rw [show seg48CanonFlag rho 110 = rho 33504 from rfl, show seg48CanonFlag rho 111 = rho 33503 from rfl]
    have hb : pmBit 110 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg48CanonBits_get rho 110 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r577
  · rw [show seg48CanonFlag rho 111 = rho 33503 from rfl, show seg48CanonFlag rho 112 = rho 33503 from rfl]
    have hb : pmBit 111 = false := by decide +kernel
    rw [show trueFactor (seg48CanonBits rho) 111 = 1 from by simp [trueFactor, hb]]
    ring

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
