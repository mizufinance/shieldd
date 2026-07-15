import Ipp.Bls12377Core

/-!
Disposable S3-06 adapter theorem for the fiat-crypto feasibility spike.
Fiat proves the multiplication postcondition; this module only transcribes that
contract and proves its composition with the S3-F00 representation relation.
-/

namespace Ipp.Bls12377.FiatAdapter

/-- The relevant part of fiat-crypto's generated Montgomery multiplication
postcondition. It is a premise here, not a theorem about the generated Rust. -/
structure MulPostcondition (modulus radix : Nat)
    (a b output : MontgomeryRep) : Prop where
  outputReduced : output.value < modulus
  decodeMul :
    montgomeryDecode modulus radix output =
      montgomeryDecode modulus radix a * montgomeryDecode modulus radix b

/-- Fiat's Fq multiplication contract composes with the S3-F00 decode relation. -/
theorem fq_fiat_mul_decodes_to_zmod_mul
    (a b output : MontgomeryRep) (x y : Fq)
    (ha : montgomeryRepresents baseModulus baseMontgomeryRadix a x)
    (hb : montgomeryRepresents baseModulus baseMontgomeryRadix b y)
    (hfiat : MulPostcondition baseModulus baseMontgomeryRadix a b output) :
    montgomeryRepresents baseModulus baseMontgomeryRadix output (x * y) := by
  refine ⟨hfiat.outputReduced, ?_⟩
  exact hfiat.decodeMul.trans (congrArg₂ (· * ·) ha.2 hb.2)

end Ipp.Bls12377.FiatAdapter

#print axioms Ipp.Bls12377.FiatAdapter.fq_fiat_mul_decodes_to_zmod_mul
