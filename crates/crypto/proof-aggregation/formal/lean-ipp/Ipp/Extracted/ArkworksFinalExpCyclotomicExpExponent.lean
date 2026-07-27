import Ipp.Extracted.ArkworksFinalExpCyclotomicSquare

/-!
S3-39: natural-exponent model for the pinned cyclotomic NAF fold.
-/

namespace Ipp.Extracted.ArkworksFinalExpCyclotomic

open Ipp.Bls12377
open Ipp.Extracted.ArkworksFinalExpEasy

abbrev X := ateLoopParameter
abbrev cyclotomicOrder := q ^ 4 - q ^ 2 + 1

/-- Natural representative of one NAF step; `-1` is represented by `N - 1`. -/
def nafExponentStep (state : Nat × Bool) (digit : Int) : Nat × Bool :=
  let exponent := if state.2 then state.1 * 2 else state.1
  if digit = 0 then (exponent, state.2)
  else if digit > 0 then (exponent + 1, true)
  else (exponent + (cyclotomicOrder - 1), true)

def blsXnafExponent : Nat :=
  (blsXnafBE.foldl nafExponentStep (0, false)).1

theorem cyclotomicOrder_pos : 0 < cyclotomicOrder := by
  norm_num [cyclotomicOrder, q, baseModulus]

theorem blsXnafExponent_mod :
    blsXnafExponent % cyclotomicOrder = X := by
  norm_num [blsXnafExponent, nafExponentStep, blsXnafBE, cyclotomicOrder,
    q, baseModulus, X, ateLoopParameter]

theorem pow_eq_pow_mod (x : Fq12Canonical)
    (hx : x ^ cyclotomicOrder = 1) (e : Nat) :
    x ^ e = x ^ (e % cyclotomicOrder) := by
  conv_lhs => rw [← Nat.mod_add_div e cyclotomicOrder]
  rw [pow_add, pow_mul, hx, one_pow, mul_one]

theorem cyclotomic_power (x : Fq12Canonical)
    (hx : x ^ cyclotomicOrder = 1) (e : Nat) :
    (x ^ e) ^ cyclotomicOrder = 1 := by
  rw [← pow_mul, Nat.mul_comm, pow_mul, hx, one_pow]

theorem q_six_mod_cyclotomicOrder :
    q ^ 6 % cyclotomicOrder = cyclotomicOrder - 1 := by
  norm_num [q, cyclotomicOrder, baseModulus]

theorem coefficients_conjugate_eq_order_sub_one (a : Fq12Model)
    (hx : fq12Coefficients a ^ cyclotomicOrder = 1) :
    fq12Coefficients (fq12Conjugate a) =
      fq12Coefficients a ^ (cyclotomicOrder - 1) := by
  rw [fq12_coefficients_conjugate_pow,
    pow_eq_pow_mod (fq12Coefficients a) hx,
    q_six_mod_cyclotomicOrder]

#print axioms blsXnafExponent_mod
#print axioms cyclotomicOrder_pos
#print axioms pow_eq_pow_mod
#print axioms cyclotomic_power
#print axioms q_six_mod_cyclotomicOrder
#print axioms coefficients_conjugate_eq_order_sub_one

end Ipp.Extracted.ArkworksFinalExpCyclotomic
