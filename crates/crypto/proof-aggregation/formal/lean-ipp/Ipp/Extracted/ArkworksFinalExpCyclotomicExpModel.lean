import Ipp.Extracted.ArkworksFinalExpCyclotomicExpFold

/-!
S3-39: ordinary-power semantics of the pinned pure cyclotomic NAF model.
-/

namespace Ipp.Extracted.ArkworksFinalExpCyclotomic

open Ipp.Bls12377

theorem fq12CyclotomicExp_eq_pow (a : Fq12Model)
    (hx : fq12Coefficients a ^ cyclotomicOrder = 1) :
    fq12Coefficients (fq12CyclotomicExp a) =
      fq12Coefficients a ^ X := by
  let x := fq12Coefficients a
  let inverse := fq12Conjugate a
  have hinverse :
      fq12Coefficients inverse = x ^ (cyclotomicOrder - 1) := by
    exact coefficients_conjugate_eq_order_sub_one a hx
  have hinitial :
      NafFoldInvariant x (fq12One, false) (0, false) := by
    refine ⟨rfl, ?_, ?_⟩
    · simp [x]
    · simp
  have hfold := nafFoldInvariant_fold blsXnafBE a inverse x hx rfl
    hinverse (fq12One, false) (0, false) hinitial
  have hdecode :
      fq12Coefficients
        ((blsXnafBE.foldl
          (fq12CyclotomicExpStep a (fq12Conjugate a))
          (fq12One, false)).1) =
        x ^ blsXnafExponent := by
    simpa only [inverse, blsXnafExponent] using hfold.decode_eq
  change fq12Coefficients
      ((blsXnafBE.foldl
        (fq12CyclotomicExpStep a (fq12Conjugate a))
        (fq12One, false)).1) = fq12Coefficients a ^ X
  rw [hdecode]
  change x ^ blsXnafExponent = x ^ X
  calc
    x ^ blsXnafExponent =
        x ^ (blsXnafExponent % cyclotomicOrder) :=
      pow_eq_pow_mod x hx blsXnafExponent
    _ = x ^ X := by rw [blsXnafExponent_mod]

#print axioms fq12CyclotomicExp_eq_pow

end Ipp.Extracted.ArkworksFinalExpCyclotomic
