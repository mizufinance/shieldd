import Ipp.Extracted.ArkworksFinalExpHardTrace

/-!
S3-39: natural-exponent normalization for the 18-operation hard chain.
-/

namespace Ipp.Extracted.ArkworksFinalExpHard

open Ipp.Bls12377
open Ipp.Extracted.ArkworksFinalExpCyclotomic

def middleExponent : Nat := (q + X) * (X - 1) ^ 2

def E_chain : Nat :=
  3 + (q + X) * (X - 1) ^ 2 * (X ^ 2 + q ^ 2 - 1)

theorem first_cancel_split : 1 + (X - 1) = X := by
  norm_num [X, ateLoopParameter]

theorem second_cancel_split :
    (X - 1) * X = (X - 1) + (X - 1) ^ 2 := by
  norm_num [X, ateLoopParameter]

theorem middle_exponent_sum :
    (X - 1) ^ 2 * q + (X - 1) ^ 2 * X = middleExponent := by
  simp only [middleExponent]
  ring

theorem third_cancel_split :
    (middleExponent * X) * X =
      middleExponent + (X ^ 2 - 1) * middleExponent := by
  have hx :
      X ^ 2 = 1 + (X ^ 2 - 1) := by
    norm_num [X, ateLoopParameter]
  calc
    (middleExponent * X) * X = middleExponent * (X ^ 2) := by ring
    _ = middleExponent * (1 + (X ^ 2 - 1)) := by
      congr 1
    _ = middleExponent + (X ^ 2 - 1) * middleExponent := by ring

theorem final_exponent_sum :
    (X ^ 2 - 1) * middleExponent + middleExponent * (q ^ 2) =
      (X ^ 2 + q ^ 2 - 1) * middleExponent := by
  have hx : 1 ≤ X ^ 2 := by norm_num [X, ateLoopParameter]
  have hfactor :
      X ^ 2 + q ^ 2 - 1 = (X ^ 2 - 1) + q ^ 2 := by omega
  rw [hfactor]
  ring

theorem E_chain_expanded :
    3 + ((X ^ 2 - 1) * middleExponent + middleExponent * (q ^ 2)) =
      E_chain := by
  rw [final_exponent_sum]
  simp only [E_chain, middleExponent]
  ring

#print axioms first_cancel_split
#print axioms second_cancel_split
#print axioms middle_exponent_sum
#print axioms third_cancel_split
#print axioms final_exponent_sum
#print axioms E_chain_expanded

end Ipp.Extracted.ArkworksFinalExpHard
