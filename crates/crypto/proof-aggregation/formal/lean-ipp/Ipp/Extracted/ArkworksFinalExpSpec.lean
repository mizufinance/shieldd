import Ipp.Extracted.ArkworksFinalExpTrace

/-!
S3-39: full easy-then-hard final-exponentiation chain conformance.
-/

namespace Ipp.Extracted.ArkworksFinalExpHard

open Ipp.Bls12377
open Ipp.Extracted.ArkworksFinalExpEasy
open Ipp.Extracted.ArkworksFinalExpCyclotomic

theorem final_exp_spec (input output : Fq12Limb)
    (hinput : Canonical12 input)
    (hnz : decodeFq12 input ≠ 0)
    (hexec : final_exp input = .ok (some output)) :
    Canonical12 output ∧
      decodeFq12 output =
        decodeFq12 input ^
          (((q ^ 6 - 1) * (q ^ 2 + 1)) * E_chain) := by
  obtain ⟨easy, heasyExec, hhardExec⟩ :=
    final_exp_trace input output hexec
  have heasy := final_exp_easy_spec input easy hinput hnz heasyExec
  have hcyclotomic :
      decodeFq12 easy ^ cyclotomicOrder = 1 := by
    simpa only [cyclotomicOrder] using
      final_exp_easy_cyclotomic input easy hinput hnz heasyExec
  have hhard :=
    final_exp_hard_spec easy output heasy.1 hcyclotomic hhardExec
  refine ⟨hhard.1, ?_⟩
  rw [hhard.2, heasy.2, ← pow_mul]

#print axioms final_exp_spec

end Ipp.Extracted.ArkworksFinalExpHard
