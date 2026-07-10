import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg48CanonCompareChunk9

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem seg48Canon_compare_chunk10 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ j, 160 ≤ j → j < 176 → pmBit j = false → (seg48CanonBits rho)[j]! * (1 - (seg48CanonBits rho)[j]! - seg48CanonFlag rho (j + 1)) = 0 := by
  unfold Seg48.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, p7, p8, _,
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
  rcases p7 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r638, r639⟩
  unfold Seg48.relationPart8 at p8
  rcases p8 with ⟨r640, r641, r642, r643, r644, r645, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg48.relationRow638 at r638
  unfold Seg48.relationRow639 at r639
  unfold Seg48.relationRow640 at r640
  unfold Seg48.relationRow641 at r641
  unfold Seg48.relationRow642 at r642
  unfold Seg48.relationRow643 at r643
  unfold Seg48.relationRow644 at r644
  unfold Seg48.relationRow645 at r645
  intro j hjlo hjhi hpm
  interval_cases j
  · erw [seg48CanonBits_get rho 160 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg48CanonFlag rho 161 = rho 33482 from rfl]
    linear_combination r645
  · have hb : pmBit 161 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 162 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 163 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 164 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg48CanonBits_get rho 165 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg48CanonFlag rho 166 = rho 33478 from rfl]
    linear_combination r644
  · erw [seg48CanonBits_get rho 166 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg48CanonFlag rho 167 = rho 33478 from rfl]
    linear_combination r643
  · erw [seg48CanonBits_get rho 167 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg48CanonFlag rho 168 = rho 33478 from rfl]
    linear_combination r642
  · have hb : pmBit 168 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg48CanonBits_get rho 169 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg48CanonFlag rho 170 = rho 33477 from rfl]
    linear_combination r641
  · have hb : pmBit 170 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 171 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg48CanonBits_get rho 172 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg48CanonFlag rho 173 = rho 33475 from rfl]
    linear_combination r640
  · erw [seg48CanonBits_get rho 173 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg48CanonFlag rho 174 = rho 33475 from rfl]
    linear_combination r639
  · have hb : pmBit 174 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg48CanonBits_get rho 175 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg48CanonFlag rho 176 = rho 33474 from rfl]
    linear_combination r638

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
