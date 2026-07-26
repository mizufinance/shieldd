import Ipp.Extracted.ArkworksFinalExpCyclotomicSquare

/-!
S3-39: executed Granger--Scott squaring has ordinary-square semantics on
cyclotomic inputs.
-/

namespace Ipp.Extracted.ArkworksFinalExpCyclotomic

open Ipp.Bls12377
open Ipp.Extracted.ArkworksFq12

theorem cyclSquare_eq_square (a output : Fq12LimbPair)
    (ha : Canonical12 a)
    (hx : Ipp.Extracted.ArkworksFinalExpEasy.decodeFq12 a ^
      (q ^ 4 - q ^ 2 + 1) = 1)
    (hexec :
      ark_ip_proofs.s3_07_arkworks_fq_spike.fq12_cyclotomic_square a =
        .ok output) :
    Canonical12 output ∧
      Ipp.Extracted.ArkworksFinalExpEasy.decodeFq12 output =
        Ipp.Extracted.ArkworksFinalExpEasy.decodeFq12 a ^ 2 := by
  refine ⟨canonical12_cyclotomic_square a output ha hexec, ?_⟩
  rw [Ipp.Extracted.ArkworksFinalExpEasy.decodeFq12,
    decode_fq12_cyclotomic_square a output ha hexec,
    fq12CyclotomicSquare_eq_square _ hx, fq12Square,
    fq12Coefficients_mul, pow_two]
  rfl

#print axioms cyclSquare_eq_square

end Ipp.Extracted.ArkworksFinalExpCyclotomic
