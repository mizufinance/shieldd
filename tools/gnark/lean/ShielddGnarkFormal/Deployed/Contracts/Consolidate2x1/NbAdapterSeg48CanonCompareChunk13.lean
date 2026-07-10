import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg48CanonCompareChunk12

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem seg48Canon_compare_chunk13 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ j, 208 ≤ j → j < 224 → pmBit j = false → (seg48CanonBits rho)[j]! * (1 - (seg48CanonBits rho)[j]! - seg48CanonFlag rho (j + 1)) = 0 := by
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
  rcases p7 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r611, r612, r613, r614, r615, r616, r617, r618, r619, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg48.relationRow611 at r611
  unfold Seg48.relationRow612 at r612
  unfold Seg48.relationRow613 at r613
  unfold Seg48.relationRow614 at r614
  unfold Seg48.relationRow615 at r615
  unfold Seg48.relationRow616 at r616
  unfold Seg48.relationRow617 at r617
  unfold Seg48.relationRow618 at r618
  unfold Seg48.relationRow619 at r619
  intro j hjlo hjhi hpm
  interval_cases j
  · erw [seg48CanonBits_get rho 208 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg48CanonFlag rho 209 = rho 33460 from rfl]
    linear_combination r619
  · erw [seg48CanonBits_get rho 209 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg48CanonFlag rho 210 = rho 33460 from rfl]
    linear_combination r618
  · have hb : pmBit 210 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 211 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg48CanonBits_get rho 212 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg48CanonFlag rho 213 = rho 33458 from rfl]
    linear_combination r617
  · have hb : pmBit 213 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg48CanonBits_get rho 214 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg48CanonFlag rho 215 = rho 33457 from rfl]
    linear_combination r616
  · erw [seg48CanonBits_get rho 215 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg48CanonFlag rho 216 = rho 33457 from rfl]
    linear_combination r615
  · erw [seg48CanonBits_get rho 216 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg48CanonFlag rho 217 = rho 33457 from rfl]
    linear_combination r614
  · have hb : pmBit 217 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg48CanonBits_get rho 218 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg48CanonFlag rho 219 = rho 33456 from rfl]
    linear_combination r613
  · have hb : pmBit 219 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 220 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg48CanonBits_get rho 221 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg48CanonFlag rho 222 = rho 33454 from rfl]
    linear_combination r612
  · erw [seg48CanonBits_get rho 222 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg48CanonFlag rho 223 = rho 33454 from rfl]
    linear_combination r611
  · have hb : pmBit 223 = true := by decide +kernel
    simp [hb] at hpm

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
