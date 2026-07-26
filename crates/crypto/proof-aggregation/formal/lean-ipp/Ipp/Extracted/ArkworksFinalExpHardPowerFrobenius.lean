import Ipp.Extracted.ArkworksFinalExpHardPowerCyclotomic

/-!
S3-39: executed Frobenius(1) and Frobenius(2) preserve typed powers.
-/

namespace Ipp.Extracted.ArkworksFinalExpHard

open Ipp.Bls12377
open Ipp.Extracted.ArkworksFq12
open Ipp.Extracted.ArkworksFinalExpEasy

theorem CyclotomicPower.frobeniusOne {x : Fq12Canonical} {exponent : Nat}
    {input output : Fq12Limb} (hinput : CyclotomicPower x exponent input)
    (hexec :
      ark_ip_proofs.s3_07_arkworks_fq_spike.fq12_frobenius input 1#usize =
        .ok output) :
    CyclotomicPower x (exponent * q) output := by
  have hspec := decode_fq12_frobenius_one input output
    hinput.canonical hexec
  have hmodel :
      Ipp.Extracted.ArkworksFq12.decodeFq12 output =
        frobeniusOneModel
          (Ipp.Extracted.ArkworksFq12.decodeFq12 input) := by
    simpa [frobeniusOneModel, q] using hspec.2
  refine ⟨hspec.1, ?_⟩
  rw [Ipp.Extracted.ArkworksFinalExpEasy.decodeFq12, hmodel,
    fq12_coefficients_frobenius_one,
    ← Ipp.Extracted.ArkworksFinalExpEasy.decodeFq12,
    hinput.decode_eq, ← pow_mul]

theorem CyclotomicPower.frobeniusTwo {x : Fq12Canonical} {exponent : Nat}
    {input output : Fq12Limb} (hinput : CyclotomicPower x exponent input)
    (hexec :
      ark_ip_proofs.s3_07_arkworks_fq_spike.fq12_frobenius input 2#usize =
        .ok output) :
    CyclotomicPower x (exponent * (q ^ 2)) output := by
  have hspec := decode_fq12_frobenius_two input output
    hinput.canonical hexec
  have hmodel :
      Ipp.Extracted.ArkworksFq12.decodeFq12 output =
        frobeniusTwoModel
          (Ipp.Extracted.ArkworksFq12.decodeFq12 input) := hspec.2
  refine ⟨hspec.1, ?_⟩
  rw [Ipp.Extracted.ArkworksFinalExpEasy.decodeFq12, hmodel,
    fq12_coefficients_frobenius_two,
    ← Ipp.Extracted.ArkworksFinalExpEasy.decodeFq12,
    hinput.decode_eq, ← pow_mul]

#print axioms CyclotomicPower.frobeniusOne
#print axioms CyclotomicPower.frobeniusTwo

end Ipp.Extracted.ArkworksFinalExpHard
