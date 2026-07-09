import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg48CanonCompareChunk11

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem seg48Canon_compare_chunk12 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ j, 192 ≤ j → j < 208 → pmBit j = false → (seg48CanonBits rho)[j]! * (1 - (seg48CanonBits rho)[j]! - seg48CanonFlag rho (j + 1)) = 0 := by
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
  rcases p7 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r620, r621, r622, r623, r624, r625, r626, r627, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg48.relationRow620 at r620
  unfold Seg48.relationRow621 at r621
  unfold Seg48.relationRow622 at r622
  unfold Seg48.relationRow623 at r623
  unfold Seg48.relationRow624 at r624
  unfold Seg48.relationRow625 at r625
  unfold Seg48.relationRow626 at r626
  unfold Seg48.relationRow627 at r627
  intro j hjlo hjhi hpm
  interval_cases j
  · erw [seg48CanonBits_get rho 192 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg48CanonFlag rho 193 = rho 33468 from rfl]
    linear_combination r627
  · have hb : pmBit 193 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 194 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg48CanonBits_get rho 195 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg48CanonFlag rho 196 = rho 33466 from rfl]
    linear_combination r626
  · have hb : pmBit 196 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg48CanonBits_get rho 197 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg48CanonFlag rho 198 = rho 33465 from rfl]
    linear_combination r625
  · have hb : pmBit 198 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg48CanonBits_get rho 199 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg48CanonFlag rho 200 = rho 33464 from rfl]
    linear_combination r624
  · have hb : pmBit 200 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg48CanonBits_get rho 201 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg48CanonFlag rho 202 = rho 33463 from rfl]
    linear_combination r623
  · have hb : pmBit 202 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg48CanonBits_get rho 203 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg48CanonFlag rho 204 = rho 33462 from rfl]
    linear_combination r622
  · erw [seg48CanonBits_get rho 204 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg48CanonFlag rho 205 = rho 33462 from rfl]
    linear_combination r621
  · have hb : pmBit 205 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg48CanonBits_get rho 206 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg48CanonFlag rho 207 = rho 33461 from rfl]
    linear_combination r620
  · have hb : pmBit 207 = true := by decide +kernel
    simp [hb] at hpm

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
