import Ipp.Extracted.ArkworksFinalExpHardSpec

/-!
S3-39: the concrete factor-three identity for the BLS12-377 hard exponent.
-/

namespace Ipp.Extracted.ArkworksFinalExpHard

open Ipp.Bls12377
open Ipp.Extracted.ArkworksFinalExpEasy
open Ipp.Extracted.ArkworksFinalExpCyclotomic

theorem E_chain_mul_scalarModulus :
    E_chain * scalarModulus = 3 * cyclotomicOrder := by
  norm_num [E_chain, cyclotomicOrder, q, X, baseModulus, scalarModulus,
    ateLoopParameter]

theorem E_chain_eq_factor_three :
    E_chain = 3 * cyclotomicOrder / scalarModulus := by
  norm_num [E_chain, cyclotomicOrder, q, X, baseModulus, scalarModulus,
    ateLoopParameter]

theorem final_exp_hard_factor_three_spec (input output : Fq12Limb)
    (hinput : Canonical12 input)
    (hx : decodeFq12 input ^ cyclotomicOrder = 1)
    (hexec : final_exp_hard input = .ok output) :
    Canonical12 output ∧
      decodeFq12 output =
        decodeFq12 input ^ (3 * cyclotomicOrder / scalarModulus) := by
  simpa only [← E_chain_eq_factor_three] using
    final_exp_hard_spec input output hinput hx hexec

#print axioms E_chain_mul_scalarModulus
#print axioms E_chain_eq_factor_three
#print axioms final_exp_hard_factor_three_spec

end Ipp.Extracted.ArkworksFinalExpHard
