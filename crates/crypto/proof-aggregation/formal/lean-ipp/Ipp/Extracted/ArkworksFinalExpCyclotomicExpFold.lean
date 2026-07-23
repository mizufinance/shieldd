import Ipp.Extracted.ArkworksFinalExpCyclotomicExpStep

/-!
S3-39: the decoded-power and closure invariant across the opaque NAF fold.
-/

namespace Ipp.Extracted.ArkworksFinalExpCyclotomic

open Ipp.Bls12377

theorem nafFoldInvariant_fold (digits : List Int) (a inverse : Fq12Model)
    (x : Fq12Canonical) (hx : x ^ cyclotomicOrder = 1)
    (ha : fq12Coefficients a = x)
    (hinverse :
      fq12Coefficients inverse = x ^ (cyclotomicOrder - 1))
    (modelState : Fq12Model × Bool) (exponentState : Nat × Bool)
    (hstate : NafFoldInvariant x modelState exponentState) :
    NafFoldInvariant x
      (digits.foldl (fq12CyclotomicExpStep a inverse) modelState)
      (digits.foldl nafExponentStep exponentState) := by
  induction digits generalizing modelState exponentState with
  | nil => exact hstate
  | cons digit digits ih =>
      rw [List.foldl_cons, List.foldl_cons]
      exact ih _ _
        (nafFoldInvariant_step a inverse x hx ha hinverse
          modelState exponentState hstate digit)

#print axioms nafFoldInvariant_fold

end Ipp.Extracted.ArkworksFinalExpCyclotomic
