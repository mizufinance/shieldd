import Ipp.Extracted.ArkworksScalarMulGlvGenerated
import Ipp.Extracted.ArkworksScalarMulScalar
import Ipp.Extracted.ArkworksFqOps
import Ipp.Extracted.ArkworksFr

/-! Integer models for the fixed-width BLS12-377 GLV arithmetic. -/

namespace Ipp.Extracted.ArkworksScalarMul

open Aeneas Aeneas.Std Result ControlFlow

namespace GlvArithmetic

abbrev WideArray := MacCampaign.Array MacCampaign.U64 6#usize
abbrev PairArray := MacCampaign.Array MacCampaign.U64 2#usize

def r : Nat := Ipp.Bls12377.scalarModulus

def a : Nat := 91893752504881257701523279626832445440

def lambda : Nat :=
  8444461749428370424248824938781546531284005582649182570233710176290576793600

def pairToNat (value : PairArray) : Nat :=
  (value.val.get ⟨0, by simp [value.hlen]⟩).val +
    (value.val.get ⟨1, by simp [value.hlen]⟩).val *
      Ipp.Extracted.ArkworksFqMul.wordBase

def wideToNat (value : WideArray) : Nat :=
  Ipp.Extracted.ArkworksFqMul.limbsToNat value

theorem fr_modulus_value :
    scalarToNat ark_ip_proofs.s3_07_arkworks_fq_spike.FR_MODULUS = r := by
  exact Ipp.Extracted.ArkworksFr.modulus_limbsToNat

theorem glv_a_value :
    pairToNat ark_ip_proofs.s3_07_arkworks_fq_spike.GLV_A = a := by
  norm_num [pairToNat, a, ark_ip_proofs.s3_07_arkworks_fq_spike.GLV_A,
    MacCampaign.Array.make, MacCampaign.U64.ofNat, MacCampaign.u64Base,
    Ipp.Extracted.ArkworksFqMul.wordBase]

theorem glv_a_plus_one_value :
    pairToNat ark_ip_proofs.s3_07_arkworks_fq_spike.GLV_A_PLUS_ONE = a + 1 := by
  norm_num [pairToNat, a, ark_ip_proofs.s3_07_arkworks_fq_spike.GLV_A_PLUS_ONE,
    MacCampaign.Array.make, MacCampaign.U64.ofNat, MacCampaign.u64Base,
    Ipp.Extracted.ArkworksFqMul.wordBase]

theorem r_eq_a_mul_succ : r = a * (a + 1) + 1 := by
  norm_num [r, a, Ipp.Bls12377.scalarModulus]

theorem lambda_eq_r_sub : lambda = r - a - 1 := by
  norm_num [lambda, r, a, Ipp.Bls12377.scalarModulus]

theorem a_lt_r : a < r := by
  norm_num [r, a, Ipp.Bls12377.scalarModulus]

theorem a_succ_lt_two_pow_255 : a + 1 < 2 ^ 255 := by
  norm_num [a]

theorem extracted_geq_fr_spec (value : ScalarArray) :
    ark_ip_proofs.s3_07_arkworks_fq_spike.geq_4 value
        ark_ip_proofs.s3_07_arkworks_fq_spike.FR_MODULUS =
      .ok (decide (r ≤ scalarToNat value)) := by
  rw [show ark_ip_proofs.s3_07_arkworks_fq_spike.geq_4 value
      ark_ip_proofs.s3_07_arkworks_fq_spike.FR_MODULUS =
      ark_ip_proofs.s3_07_arkworks_fr_spike.geq_modulus value by rfl]
  rw [Ipp.Extracted.ArkworksFr.extracted_geq_modulus_spec]
  congr 2
  have hs := Ipp.Extracted.ArkworksFr.geqPrefix_spec value
    ark_ip_proofs.s3_07_arkworks_fr_spike.MODULUS
    Ipp.Extracted.ArkworksFr.limbCount (by omega)
  cases h : Ipp.Extracted.ArkworksFr.geqPrefix value
      ark_ip_proofs.s3_07_arkworks_fr_spike.MODULUS
      Ipp.Extracted.ArkworksFr.limbCount with
  | false =>
      have hn : ¬r ≤ scalarToNat value := by
        intro hle
        have hp : Ipp.Extracted.ArkworksFr.prefixToNat
            ark_ip_proofs.s3_07_arkworks_fr_spike.MODULUS
              Ipp.Extracted.ArkworksFr.limbCount ≤
            Ipp.Extracted.ArkworksFr.prefixToNat value
              Ipp.Extracted.ArkworksFr.limbCount := by
          simpa [r, scalarToNat, Ipp.Extracted.ArkworksFr.limbsToNat,
            Ipp.Extracted.ArkworksFr.modulus_limbsToNat] using hle
        have := hs.mpr hp
        simp [h] at this
      simp [h, hn]
  | true =>
      have hle : r ≤ scalarToNat value := by
        have hp := hs.mp h
        simpa [r, scalarToNat, Ipp.Extracted.ArkworksFr.limbsToNat,
          Ipp.Extracted.ArkworksFr.modulus_limbsToNat] using hp
      simp [h, hle]

theorem extracted_gt4_spec (left right : ScalarArray) :
    ark_ip_proofs.s3_07_arkworks_fq_spike.gt_4 left right =
      .ok (decide (scalarToNat right < scalarToNat left)) := by
  rw [show ark_ip_proofs.s3_07_arkworks_fq_spike.gt_4 left right =
      ark_ip_proofs.s3_07_arkworks_fr_spike.gt left right by rfl]
  exact Ipp.Extracted.ArkworksFr.extracted_gt_spec left right

theorem extracted_gt6_spec (left right : WideArray) :
    ark_ip_proofs.s3_07_arkworks_fq_spike.gt_6 left right =
      .ok (decide (wideToNat right < wideToNat left)) := by
  rw [show ark_ip_proofs.s3_07_arkworks_fq_spike.gt_6 left right =
      ark_ip_proofs.s3_07_arkworks_fq_spike.gt left right by rfl]
  exact Ipp.Extracted.ArkworksFqOps.extracted_gt_spec left right

theorem extracted_sub4_of_le (left right output : ScalarArray)
    (hle : scalarToNat right ≤ scalarToNat left)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.sub_4 left right = .ok output) :
    scalarToNat output = scalarToNat left - scalarToNat right := by
  apply Ipp.Extracted.ArkworksFr.extracted_sub_raw_of_le left right output hle
  exact hexec

theorem extracted_sub6_of_le (left right output : WideArray)
    (hle : wideToNat right ≤ wideToNat left)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.sub_6 left right = .ok output) :
    wideToNat output = wideToNat left - wideToNat right := by
  apply Ipp.Extracted.ArkworksFqOps.extracted_sub_raw_of_le left right output hle
  exact hexec


#print axioms fr_modulus_value
#print axioms glv_a_value
#print axioms glv_a_plus_one_value
#print axioms r_eq_a_mul_succ
#print axioms lambda_eq_r_sub
#print axioms a_lt_r
#print axioms a_succ_lt_two_pow_255
#print axioms extracted_geq_fr_spec
#print axioms extracted_gt4_spec
#print axioms extracted_gt6_spec
#print axioms extracted_sub4_of_le
#print axioms extracted_sub6_of_le

end GlvArithmetic

end Ipp.Extracted.ArkworksScalarMul
