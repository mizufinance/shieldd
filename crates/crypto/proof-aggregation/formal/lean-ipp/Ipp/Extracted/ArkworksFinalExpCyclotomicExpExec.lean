import Ipp.Extracted.ArkworksFinalExpCyclotomicExpModel

/-!
S3-39: the extracted 64-step cyclotomic exponentiation computes `a ^ X`.
-/

namespace Ipp.Extracted.ArkworksFinalExpCyclotomic

open Ipp.Bls12377
open Ipp.Extracted.ArkworksFq12

theorem cyclExp_eq_pow (a output : Fq12LimbPair)
    (ha : Canonical12 a)
    (hx : Ipp.Extracted.ArkworksFinalExpEasy.decodeFq12 a ^
      cyclotomicOrder = 1)
    (hexec :
      ark_ip_proofs.s3_07_arkworks_fq_spike.fq12_cyclotomic_exp a =
        .ok output) :
    Canonical12 output ∧
      Ipp.Extracted.ArkworksFinalExpEasy.decodeFq12 output =
        Ipp.Extracted.ArkworksFinalExpEasy.decodeFq12 a ^ X := by
  refine ⟨canonical12_cyclotomic_exp a output ha hexec, ?_⟩
  rw [Ipp.Extracted.ArkworksFinalExpEasy.decodeFq12,
    decode_fq12_cyclotomic_exp a output ha hexec,
    fq12CyclotomicExp_eq_pow _ hx]
  rfl

#print axioms cyclExp_eq_pow

end Ipp.Extracted.ArkworksFinalExpCyclotomic
