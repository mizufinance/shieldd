import Ipp.Extracted.ArkworksFinalExpHardChain

/-!
S3-39: public conformance theorem for the executed hard final-exponentiation chain.
-/

namespace Ipp.Extracted.ArkworksFinalExpHard

open Ipp.Extracted.ArkworksFinalExpEasy
open Ipp.Extracted.ArkworksFinalExpCyclotomic

theorem final_exp_hard_spec (input output : Fq12Limb)
    (hinput : Canonical12 input)
    (hx : decodeFq12 input ^ cyclotomicOrder = 1)
    (hexec : final_exp_hard input = .ok output) :
    Canonical12 output ∧
      decodeFq12 output = decodeFq12 input ^ E_chain := by
  have hpower := final_exp_hard_power input output hinput hx hexec
  exact ⟨hpower.canonical, hpower.decode_eq⟩

#print axioms final_exp_hard_spec

end Ipp.Extracted.ArkworksFinalExpHard
