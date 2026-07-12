import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg6Canon2CompareChunk2

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem seg6Canon2_compare_chunk3 (rho : Nat -> Seg6.F) (h : Seg6.relation rho) :
    ∀ j, 48 ≤ j → j < 64 → pmBit j = false → (seg6Canon2Bits rho)[j]! * (1 - (seg6Canon2Bits rho)[j]! - seg6Canon2Flag rho (j + 1)) = 0 := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, p12, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart12 at p12
  rcases p12 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r985, r986, r987, r988, r989, r990, r991, r992, r993, r994, r995, r996, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg6.relationRow985 at r985
  unfold Seg6.relationRow986 at r986
  unfold Seg6.relationRow987 at r987
  unfold Seg6.relationRow988 at r988
  unfold Seg6.relationRow989 at r989
  unfold Seg6.relationRow990 at r990
  unfold Seg6.relationRow991 at r991
  unfold Seg6.relationRow992 at r992
  unfold Seg6.relationRow993 at r993
  unfold Seg6.relationRow994 at r994
  unfold Seg6.relationRow995 at r995
  unfold Seg6.relationRow996 at r996
  intro j hjlo hjhi hpm
  interval_cases j
  · have hb : pmBit 48 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg6Canon2Bits_get rho 49 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg6Canon2Flag rho 50 = rho 1612 from rfl]
    linear_combination r996
  · erw [seg6Canon2Bits_get rho 50 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg6Canon2Flag rho 51 = rho 1612 from rfl]
    linear_combination r995
  · erw [seg6Canon2Bits_get rho 51 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg6Canon2Flag rho 52 = rho 1612 from rfl]
    linear_combination r994
  · have hb : pmBit 52 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg6Canon2Bits_get rho 53 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg6Canon2Flag rho 54 = rho 1611 from rfl]
    linear_combination r993
  · erw [seg6Canon2Bits_get rho 54 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg6Canon2Flag rho 55 = rho 1611 from rfl]
    linear_combination r992
  · erw [seg6Canon2Bits_get rho 55 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg6Canon2Flag rho 56 = rho 1611 from rfl]
    linear_combination r991
  · erw [seg6Canon2Bits_get rho 56 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg6Canon2Flag rho 57 = rho 1611 from rfl]
    linear_combination r990
  · have hb : pmBit 57 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg6Canon2Bits_get rho 58 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg6Canon2Flag rho 59 = rho 1610 from rfl]
    linear_combination r989
  · have hb : pmBit 59 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg6Canon2Bits_get rho 60 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg6Canon2Flag rho 61 = rho 1609 from rfl]
    linear_combination r988
  · erw [seg6Canon2Bits_get rho 61 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg6Canon2Flag rho 62 = rho 1609 from rfl]
    linear_combination r987
  · erw [seg6Canon2Bits_get rho 62 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg6Canon2Flag rho 63 = rho 1609 from rfl]
    linear_combination r986
  · erw [seg6Canon2Bits_get rho 63 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg6Canon2Flag rho 64 = rho 1609 from rfl]
    linear_combination r985

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
