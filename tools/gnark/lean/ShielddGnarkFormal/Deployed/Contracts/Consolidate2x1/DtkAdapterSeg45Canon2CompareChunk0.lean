import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45Canon2True

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem seg45Canon2_compare_chunk0 (rho : Nat -> Seg45.F) (h : Seg45.relation rho) :
    ∀ j, 0 ≤ j → j < 16 → pmBit j = false → (seg45Canon2Bits rho)[j]! * (1 - (seg45Canon2Bits rho)[j]! - seg45Canon2Flag rho (j + 1)) = 0 := by
  unfold Seg45.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, p12, p13, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg45.relationPart12 at p12
  rcases p12 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1028, r1029, r1030, r1031, r1032, r1033, r1034, r1035, r1036, r1037, r1038, r1039⟩
  unfold Seg45.relationPart13 at p13
  rcases p13 with ⟨r1040, r1041, r1042, r1043, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow1028 at r1028
  unfold Seg45.relationRow1029 at r1029
  unfold Seg45.relationRow1030 at r1030
  unfold Seg45.relationRow1031 at r1031
  unfold Seg45.relationRow1032 at r1032
  unfold Seg45.relationRow1033 at r1033
  unfold Seg45.relationRow1034 at r1034
  unfold Seg45.relationRow1035 at r1035
  unfold Seg45.relationRow1036 at r1036
  unfold Seg45.relationRow1037 at r1037
  unfold Seg45.relationRow1038 at r1038
  unfold Seg45.relationRow1039 at r1039
  unfold Seg45.relationRow1040 at r1040
  unfold Seg45.relationRow1041 at r1041
  unfold Seg45.relationRow1042 at r1042
  unfold Seg45.relationRow1043 at r1043
  intro j hjlo hjhi hpm
  interval_cases j
  · erw [seg45Canon2Bits_get rho 0 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg45Canon2Flag rho 1 = rho 39444 from rfl]
    linear_combination r1043
  · erw [seg45Canon2Bits_get rho 1 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg45Canon2Flag rho 2 = rho 39444 from rfl]
    linear_combination r1042
  · erw [seg45Canon2Bits_get rho 2 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg45Canon2Flag rho 3 = rho 39444 from rfl]
    linear_combination r1041
  · erw [seg45Canon2Bits_get rho 3 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg45Canon2Flag rho 4 = rho 39444 from rfl]
    linear_combination r1040
  · erw [seg45Canon2Bits_get rho 4 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg45Canon2Flag rho 5 = rho 39444 from rfl]
    linear_combination r1039
  · erw [seg45Canon2Bits_get rho 5 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg45Canon2Flag rho 6 = rho 39444 from rfl]
    linear_combination r1038
  · erw [seg45Canon2Bits_get rho 6 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg45Canon2Flag rho 7 = rho 39444 from rfl]
    linear_combination r1037
  · erw [seg45Canon2Bits_get rho 7 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg45Canon2Flag rho 8 = rho 39444 from rfl]
    linear_combination r1036
  · erw [seg45Canon2Bits_get rho 8 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg45Canon2Flag rho 9 = rho 39444 from rfl]
    linear_combination r1035
  · erw [seg45Canon2Bits_get rho 9 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg45Canon2Flag rho 10 = rho 39444 from rfl]
    linear_combination r1034
  · erw [seg45Canon2Bits_get rho 10 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg45Canon2Flag rho 11 = rho 39444 from rfl]
    linear_combination r1033
  · erw [seg45Canon2Bits_get rho 11 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg45Canon2Flag rho 12 = rho 39444 from rfl]
    linear_combination r1032
  · erw [seg45Canon2Bits_get rho 12 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg45Canon2Flag rho 13 = rho 39444 from rfl]
    linear_combination r1031
  · erw [seg45Canon2Bits_get rho 13 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg45Canon2Flag rho 14 = rho 39444 from rfl]
    linear_combination r1030
  · erw [seg45Canon2Bits_get rho 14 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg45Canon2Flag rho 15 = rho 39444 from rfl]
    linear_combination r1029
  · erw [seg45Canon2Bits_get rho 15 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg45Canon2Flag rho 16 = rho 39444 from rfl]
    linear_combination r1028

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
