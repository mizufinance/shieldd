import Ipp.Extracted.ArkworksFinalExpHardFactorThree

/-!
S3-39: opaque easy-to-hard execution boundary for full final exponentiation.
-/

namespace Ipp.Extracted.ArkworksFinalExpHard

open Aeneas Result
open Ipp.Extracted.ArkworksFinalExpEasy

private theorem bind_eq_ok {α β : Type} {action : Result α}
    {next : α → Result β} {output : β}
    (hexec : action >>= next = .ok output) :
    ∃ value, action = .ok value ∧ next value = .ok output := by
  cases action with
  | fail error => simp at hexec
  | div => simp at hexec
  | ok value => exact ⟨value, rfl, hexec⟩

theorem final_exp_trace (input output : Fq12Limb)
    (hexec : final_exp input = .ok (some output)) :
    ∃ easy,
      final_exp_easy input = .ok (some easy) ∧
      final_exp_hard easy = .ok output := by
  unfold final_exp at hexec
  obtain ⟨easy, heasy, hexec⟩ := bind_eq_ok hexec
  cases easy with
  | none => simp at hexec
  | some easy =>
      obtain ⟨hard, hhard, hret⟩ := bind_eq_ok hexec
      cases hret
      exact ⟨easy, heasy, hhard⟩

#print axioms final_exp_trace

end Ipp.Extracted.ArkworksFinalExpHard
