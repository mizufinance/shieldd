import Ipp.Bls12377

namespace Ipp.Extracted.ArkworksFinalExpCyclotomic

open Ipp.Bls12377

theorem frobeniusTwoExponent_two :
    (baseModulus ^ 2 - 1) / 3 =
      2 * ((baseModulus ^ 2 - 1) / 6) := by
  norm_num [baseModulus]

theorem frobeniusTwoExponent_four :
    2 * ((baseModulus ^ 2 - 1) / 3) =
      4 * ((baseModulus ^ 2 - 1) / 6) := by
  norm_num [baseModulus]

theorem frobeniusTwoExponent_two_right :
    (baseModulus ^ 2 - 1) / 3 =
      ((baseModulus ^ 2 - 1) / 6) * 2 :=
  frobeniusTwoExponent_two.trans (Nat.mul_comm _ _)

theorem frobeniusTwoExponent_four_right :
    2 * ((baseModulus ^ 2 - 1) / 3) =
      ((baseModulus ^ 2 - 1) / 6) * 4 :=
  frobeniusTwoExponent_four.trans (Nat.mul_comm _ _)

#print axioms frobeniusTwoExponent_two
#print axioms frobeniusTwoExponent_four
#print axioms frobeniusTwoExponent_two_right
#print axioms frobeniusTwoExponent_four_right

end Ipp.Extracted.ArkworksFinalExpCyclotomic
