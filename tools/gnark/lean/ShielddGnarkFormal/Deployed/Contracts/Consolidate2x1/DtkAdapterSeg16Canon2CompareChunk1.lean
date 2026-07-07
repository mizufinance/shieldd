import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16Canon2CompareChunk0

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem seg16Canon2_compare_chunk1 (rho : Nat -> Seg16.F) (h : Seg16.relation rho) :
    ∀ j, 16 ≤ j → j < 32 → pmBit j = false → (seg16Canon2Bits rho)[j]! * (1 - (seg16Canon2Bits rho)[j]! - seg16Canon2Flag rho (j + 1)) = 0 := by
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, p12, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart12 at p12
  rcases p12 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1012, r1013, r1014, r1015, r1016, r1017, r1018, r1019, r1020, r1021, r1022, r1023, r1024, r1025, r1026, r1027, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow1012 at r1012
  unfold Seg16.relationRow1013 at r1013
  unfold Seg16.relationRow1014 at r1014
  unfold Seg16.relationRow1015 at r1015
  unfold Seg16.relationRow1016 at r1016
  unfold Seg16.relationRow1017 at r1017
  unfold Seg16.relationRow1018 at r1018
  unfold Seg16.relationRow1019 at r1019
  unfold Seg16.relationRow1020 at r1020
  unfold Seg16.relationRow1021 at r1021
  unfold Seg16.relationRow1022 at r1022
  unfold Seg16.relationRow1023 at r1023
  unfold Seg16.relationRow1024 at r1024
  unfold Seg16.relationRow1025 at r1025
  unfold Seg16.relationRow1026 at r1026
  unfold Seg16.relationRow1027 at r1027
  intro j hjlo hjhi hpm
  interval_cases j
  · erw [seg16Canon2Bits_get rho 16 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg16Canon2Flag rho 17 = rho 13788 from rfl]
    linear_combination r1027
  · erw [seg16Canon2Bits_get rho 17 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg16Canon2Flag rho 18 = rho 13788 from rfl]
    linear_combination r1026
  · erw [seg16Canon2Bits_get rho 18 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg16Canon2Flag rho 19 = rho 13788 from rfl]
    linear_combination r1025
  · erw [seg16Canon2Bits_get rho 19 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg16Canon2Flag rho 20 = rho 13788 from rfl]
    linear_combination r1024
  · erw [seg16Canon2Bits_get rho 20 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg16Canon2Flag rho 21 = rho 13788 from rfl]
    linear_combination r1023
  · erw [seg16Canon2Bits_get rho 21 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg16Canon2Flag rho 22 = rho 13788 from rfl]
    linear_combination r1022
  · erw [seg16Canon2Bits_get rho 22 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg16Canon2Flag rho 23 = rho 13788 from rfl]
    linear_combination r1021
  · erw [seg16Canon2Bits_get rho 23 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg16Canon2Flag rho 24 = rho 13788 from rfl]
    linear_combination r1020
  · erw [seg16Canon2Bits_get rho 24 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg16Canon2Flag rho 25 = rho 13788 from rfl]
    linear_combination r1019
  · erw [seg16Canon2Bits_get rho 25 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg16Canon2Flag rho 26 = rho 13788 from rfl]
    linear_combination r1018
  · erw [seg16Canon2Bits_get rho 26 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg16Canon2Flag rho 27 = rho 13788 from rfl]
    linear_combination r1017
  · erw [seg16Canon2Bits_get rho 27 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg16Canon2Flag rho 28 = rho 13788 from rfl]
    linear_combination r1016
  · erw [seg16Canon2Bits_get rho 28 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg16Canon2Flag rho 29 = rho 13788 from rfl]
    linear_combination r1015
  · erw [seg16Canon2Bits_get rho 29 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg16Canon2Flag rho 30 = rho 13788 from rfl]
    linear_combination r1014
  · erw [seg16Canon2Bits_get rho 30 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg16Canon2Flag rho 31 = rho 13788 from rfl]
    linear_combination r1013
  · erw [seg16Canon2Bits_get rho 31 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg16Canon2Flag rho 32 = rho 13788 from rfl]
    linear_combination r1012

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
