import Ipp.Extracted.ArkworksFinalExpHardPower

/-!
S3-39: multiplication preserves typed hard-chain powers.
-/

namespace Ipp.Extracted.ArkworksFinalExpHard

open Ipp.Bls12377
open Ipp.Extracted.ArkworksFq12
open Ipp.Extracted.ArkworksFinalExpEasy

theorem CyclotomicPower.mul {x : Fq12Canonical} {leftExponent rightExponent : Nat}
    {left right output : Fq12Limb}
    (hleft : CyclotomicPower x leftExponent left)
    (hright : CyclotomicPower x rightExponent right)
    (hexec :
      ark_ip_proofs.s3_07_arkworks_fq_spike.fq12_mul left right =
        .ok output) :
    CyclotomicPower x (leftExponent + rightExponent) output := by
  have hmodel := decode_fq12_mul left right output
    hleft.canonical hright.canonical hexec
  refine ⟨canonical12_mul left right output
    hleft.canonical hright.canonical hexec, ?_⟩
  rw [Ipp.Extracted.ArkworksFinalExpEasy.decodeFq12, hmodel,
    fq12Coefficients_mul,
    ← Ipp.Extracted.ArkworksFinalExpEasy.decodeFq12,
    ← Ipp.Extracted.ArkworksFinalExpEasy.decodeFq12,
    hleft.decode_eq, hright.decode_eq,
    ← pow_add]

#print axioms CyclotomicPower.mul

end Ipp.Extracted.ArkworksFinalExpHard
