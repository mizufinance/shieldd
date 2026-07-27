import Ipp.Extracted.ArkworksFinalExpHardPowerMul
import Ipp.Extracted.ArkworksFinalExpCyclotomicSquareExec

/-!
S3-39: cyclotomic square and `X`-exponent steps preserve typed powers.
-/

namespace Ipp.Extracted.ArkworksFinalExpHard

open Ipp.Bls12377
open Ipp.Extracted.ArkworksFinalExpEasy
open Ipp.Extracted.ArkworksFinalExpCyclotomic

theorem CyclotomicPower.square {x : Fq12Canonical} {exponent : Nat}
    {input output : Fq12Limb} (hinput : CyclotomicPower x exponent input)
    (hx : x ^ cyclotomicOrder = 1)
    (hexec :
      ark_ip_proofs.s3_07_arkworks_fq_spike.fq12_cyclotomic_square input =
        .ok output) :
    CyclotomicPower x (exponent * 2) output := by
  have hspec := cyclSquare_eq_square input output hinput.canonical
    (hinput.cyclotomic hx) hexec
  refine ⟨hspec.1, ?_⟩
  rw [hspec.2, hinput.decode_eq, ← pow_mul]

theorem CyclotomicPower.exp {x : Fq12Canonical} {exponent : Nat}
    {input output : Fq12Limb} (hinput : CyclotomicPower x exponent input)
    (hx : x ^ cyclotomicOrder = 1)
    (hexec :
      ark_ip_proofs.s3_07_arkworks_fq_spike.fq12_cyclotomic_exp input =
        .ok output) :
    CyclotomicPower x (exponent * X) output := by
  have hspec := cyclExp_eq_pow input output hinput.canonical
    (hinput.cyclotomic hx) hexec
  refine ⟨hspec.1, ?_⟩
  rw [hspec.2, hinput.decode_eq, ← pow_mul]

#print axioms CyclotomicPower.square
#print axioms CyclotomicPower.exp

end Ipp.Extracted.ArkworksFinalExpHard
