import Ipp.Extracted.ArkworksFr

/-! S3-15 scalar-adapter bundle: the executed four-limb BLS12-377 Fr
operations realize, under Montgomery `decode`, the total field-model
instances that the S2 verifier-core proofs interpret extracted scalar
arithmetic with. The executed↔production correspondence at the delegator
boundary remains pinned by the Rust parity tests per design decision A. -/

namespace Ipp.Bls12377FrAdapter

set_option maxRecDepth 8192
set_option exponentiation.threshold 1000

open Aeneas Aeneas.Std Result
open Ipp.Extracted.ArkworksFr

/-- The Montgomery representation of `1` (the production `Fr::ONE`,
`R mod r` in four little-endian limbs). -/
def oneMont : FrLimbArray :=
  MacCampaign.Array.make (Usize.ofNat 4)
    [MacCampaign.U64.ofNat 9015221291577245683,
     MacCampaign.U64.ofNat 8239323489949974514,
     MacCampaign.U64.ofNat 1646089257421115374,
     MacCampaign.U64.ofNat 958099254763297437]

theorem decode_oneMont : decode oneMont = 1 := by
  have hmod : Nat.ModEq Ipp.Bls12377.scalarModulus
      (limbsToNat oneMont) Ipp.Bls12377.scalarMontgomeryRadix := by
    norm_num [Nat.ModEq, limbsToNat, prefixToNat, limbCount, limb, limbWord,
      oneMont, MacCampaign.Array.make, MacCampaign.U64.ofNat,
      MacCampaign.u64Base, Ipp.Extracted.ArkworksFqMul.wordBase,
      Ipp.Bls12377.scalarModulus, Ipp.Bls12377.scalarMontgomeryRadix]
  have hcast : (limbsToNat oneMont : Ipp.Bls12377.Fr) =
      (Ipp.Bls12377.scalarMontgomeryRadix : Ipp.Bls12377.Fr) :=
    (ZMod.natCast_eq_natCast_iff _ _ _).2 hmod
  rw [decode_eq_cast_mul_inv, hcast]
  exact ZMod.coe_mul_inv_eq_one Ipp.Bls12377.scalarMontgomeryRadix
    (by
      rw [Ipp.Bls12377.scalarMontgomeryRadix,
        Nat.coprime_pow_left_iff (by decide : 0 < 256)]
      norm_num [Ipp.Bls12377.scalarModulus])

theorem decode_zeroMont : decode zeroLimbs4 = 0 := by
  rw [decode_eq_cast_mul_inv, zeroLimbs4_value]
  simp

/-- Everything the S2 scalar model instances require of the executed
BLS12-377 Fr operations, packaged as one citable adapter record.
Each field is one of the landed `ArkworksFr` decode theorems. -/
structure ExecutedScalarAdapter : Prop where
  mul_law : ∀ a b output, limbsToNat a < Ipp.Bls12377.scalarModulus →
    limbsToNat b < Ipp.Bls12377.scalarModulus →
    ark_ip_proofs.s3_07_arkworks_fr_spike.mul a b = .ok output →
    decode output = decode a * decode b
  add_law : ∀ a b output, limbsToNat a < Ipp.Bls12377.scalarModulus →
    limbsToNat b < Ipp.Bls12377.scalarModulus →
    ark_ip_proofs.s3_07_arkworks_fr_spike.add a b = .ok output →
    decode output = decode a + decode b
  sub_law : ∀ a b output, limbsToNat a < Ipp.Bls12377.scalarModulus →
    limbsToNat b < Ipp.Bls12377.scalarModulus →
    ark_ip_proofs.s3_07_arkworks_fr_spike.sub a b = .ok output →
    decode output = decode a - decode b
  neg_law : ∀ a output, limbsToNat a < Ipp.Bls12377.scalarModulus →
    ark_ip_proofs.s3_07_arkworks_fr_spike.neg a = .ok output →
    decode output = -decode a
  inv_law : ∀ a output, limbsToNat a < Ipp.Bls12377.scalarModulus →
    a ≠ zeroLimbs4 →
    ark_ip_proofs.s3_07_arkworks_fr_spike.inv a = .ok (some output) →
    decode output * decode a = 1
  inv_zero_law :
    ark_ip_proofs.s3_07_arkworks_fr_spike.inv zeroLimbs4 = .ok none
  one_law : decode oneMont = 1
  zero_law : decode zeroLimbs4 = 0
  wire_law : ∀ bytes output,
    ark_ip_proofs.s3_07_arkworks_fr_spike.from_bytes bytes = .ok (some output) →
    bytesValue bytes < Ipp.Bls12377.scalarModulus ∧
    decode output = (bytesValue bytes : Ipp.Bls12377.Fr)

/-- The landed F05B theorems discharge every adapter law. -/
theorem executedScalarAdapter : ExecutedScalarAdapter where
  mul_law a b output ha hb hexec := decode_extracted_mul a b output ha hb hexec
  add_law a b output ha hb hexec := decode_extracted_add a b output ha hb hexec
  sub_law a b output ha hb hexec := decode_extracted_sub a b output ha hb hexec
  neg_law a output ha hexec := decode_extracted_neg a output ha hexec
  inv_law a output ha hne hexec := decode_extracted_inv a output ha hne hexec
  inv_zero_law := extracted_inv_zero
  one_law := decode_oneMont
  zero_law := decode_zeroMont
  wire_law bytes output hexec := from_bytes_value_spec bytes output hexec

end Ipp.Bls12377FrAdapter

#print axioms Ipp.Bls12377FrAdapter.executedScalarAdapter
