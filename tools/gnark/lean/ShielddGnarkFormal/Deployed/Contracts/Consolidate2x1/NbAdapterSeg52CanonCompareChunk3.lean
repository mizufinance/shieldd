import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52CanonCompareChunk2

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem seg52Canon_compare_chunk3 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ j, 48 ≤ j → j < 64 → pmBit j = false → (seg52CanonBits rho)[j]! * (1 - (seg52CanonBits rho)[j]! - seg52CanonFlag rho (j + 1)) = 0 := by
  unfold Seg52.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, p8, _,
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
  unfold Seg52.relationPart8 at p8
  rcases p8 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r705, r706, r707, r708, r709, r710, r711, r712, r713, r714, r715, r716, _, _, _⟩
  unfold Seg52.relationRow705 at r705
  unfold Seg52.relationRow706 at r706
  unfold Seg52.relationRow707 at r707
  unfold Seg52.relationRow708 at r708
  unfold Seg52.relationRow709 at r709
  unfold Seg52.relationRow710 at r710
  unfold Seg52.relationRow711 at r711
  unfold Seg52.relationRow712 at r712
  unfold Seg52.relationRow713 at r713
  unfold Seg52.relationRow714 at r714
  unfold Seg52.relationRow715 at r715
  unfold Seg52.relationRow716 at r716
  intro j hjlo hjhi hpm
  interval_cases j
  · have hb : pmBit 48 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg52CanonBits_get rho 49 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg52CanonFlag rho 50 = rho 45154 from rfl]
    linear_combination r716
  · erw [seg52CanonBits_get rho 50 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg52CanonFlag rho 51 = rho 45154 from rfl]
    linear_combination r715
  · erw [seg52CanonBits_get rho 51 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg52CanonFlag rho 52 = rho 45154 from rfl]
    linear_combination r714
  · have hb : pmBit 52 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg52CanonBits_get rho 53 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg52CanonFlag rho 54 = rho 45153 from rfl]
    linear_combination r713
  · erw [seg52CanonBits_get rho 54 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg52CanonFlag rho 55 = rho 45153 from rfl]
    linear_combination r712
  · erw [seg52CanonBits_get rho 55 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg52CanonFlag rho 56 = rho 45153 from rfl]
    linear_combination r711
  · erw [seg52CanonBits_get rho 56 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg52CanonFlag rho 57 = rho 45153 from rfl]
    linear_combination r710
  · have hb : pmBit 57 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg52CanonBits_get rho 58 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg52CanonFlag rho 59 = rho 45152 from rfl]
    linear_combination r709
  · have hb : pmBit 59 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg52CanonBits_get rho 60 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg52CanonFlag rho 61 = rho 45151 from rfl]
    linear_combination r708
  · erw [seg52CanonBits_get rho 61 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg52CanonFlag rho 62 = rho 45151 from rfl]
    linear_combination r707
  · erw [seg52CanonBits_get rho 62 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg52CanonFlag rho 63 = rho 45151 from rfl]
    linear_combination r706
  · erw [seg52CanonBits_get rho 63 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg52CanonFlag rho 64 = rho 45151 from rfl]
    linear_combination r705

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
