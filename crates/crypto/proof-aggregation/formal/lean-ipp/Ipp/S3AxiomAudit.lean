import Ipp.Extracted.ArkworksFinalExpSpec
import Ipp.Extracted.ArkworksMultiPairing
import Ipp.Extracted.ArkworksSubgroupCheck
import Ipp.Extracted.ArkworksMsm
import Ipp.Bls12377Pairing
import Ipp.Extracted.ArkworksMultiPairingGt

/-!
S3 executable-arithmetic axiom-audit gate (per-theorem `#print axioms`).
-/

#print axioms Ipp.Extracted.ArkworksFinalExpEasy.final_exp_easy_spec
#print axioms Ipp.Extracted.ArkworksFinalExpEasy.final_exp_easy_none_iff
#print axioms Ipp.Extracted.ArkworksFinalExpEasy.final_exp_easy_cyclotomic
#print axioms Ipp.Extracted.ArkworksFinalExpCyclotomic.fq12CyclotomicSquare_eq_square
#print axioms Ipp.Extracted.ArkworksFinalExpCyclotomic.cyclSquare_eq_square
#print axioms Ipp.Extracted.ArkworksFinalExpCyclotomic.cyclotomicOrder_pos
#print axioms Ipp.Extracted.ArkworksFinalExpCyclotomic.blsXnafExponent_mod
#print axioms Ipp.Extracted.ArkworksFinalExpCyclotomic.pow_eq_pow_mod
#print axioms Ipp.Extracted.ArkworksFinalExpCyclotomic.cyclotomic_power
#print axioms Ipp.Extracted.ArkworksFinalExpCyclotomic.q_six_mod_cyclotomicOrder
#print axioms Ipp.Extracted.ArkworksFinalExpCyclotomic.coefficients_conjugate_eq_order_sub_one
#print axioms Ipp.Extracted.ArkworksFinalExpCyclotomic.nafFoldInvariant_step
#print axioms Ipp.Extracted.ArkworksFinalExpCyclotomic.nafFoldInvariant_fold
#print axioms Ipp.Extracted.ArkworksFinalExpCyclotomic.fq12CyclotomicExp_eq_pow
#print axioms Ipp.Extracted.ArkworksFinalExpCyclotomic.cyclExp_eq_pow
#print axioms Ipp.Extracted.ArkworksFinalExpHard.fq12_coefficients_frobenius_one
#print axioms Ipp.Extracted.ArkworksFinalExpHard.CyclotomicPower.cyclotomic
#print axioms Ipp.Extracted.ArkworksFinalExpHard.CyclotomicPower.mul
#print axioms Ipp.Extracted.ArkworksFinalExpHard.CyclotomicPower.square
#print axioms Ipp.Extracted.ArkworksFinalExpHard.CyclotomicPower.exp
#print axioms Ipp.Extracted.ArkworksFinalExpHard.CyclotomicPower.frobeniusOne
#print axioms Ipp.Extracted.ArkworksFinalExpHard.CyclotomicPower.frobeniusTwo
#print axioms Ipp.Extracted.ArkworksFinalExpHard.conjugate_power_mul
#print axioms Ipp.Extracted.ArkworksFinalExpHard.CyclotomicPower.conjugate
#print axioms Ipp.Extracted.ArkworksFinalExpHard.ConjugatedPower.mul
#print axioms Ipp.Extracted.ArkworksFinalExpHard.ConjugatedPower.mul_commuted
#print axioms Ipp.Extracted.ArkworksFinalExpHard.final_exp_hard_trace
#print axioms Ipp.Extracted.ArkworksFinalExpHard.first_cancel_split
#print axioms Ipp.Extracted.ArkworksFinalExpHard.second_cancel_split
#print axioms Ipp.Extracted.ArkworksFinalExpHard.middle_exponent_sum
#print axioms Ipp.Extracted.ArkworksFinalExpHard.third_cancel_split
#print axioms Ipp.Extracted.ArkworksFinalExpHard.final_exponent_sum
#print axioms Ipp.Extracted.ArkworksFinalExpHard.E_chain_expanded
#print axioms Ipp.Extracted.ArkworksFinalExpHard.final_exp_hard_power
#print axioms Ipp.Extracted.ArkworksFinalExpHard.final_exp_hard_spec
#print axioms Ipp.Extracted.ArkworksFinalExpHard.E_chain_mul_scalarModulus
#print axioms Ipp.Extracted.ArkworksFinalExpHard.E_chain_eq_factor_three
#print axioms Ipp.Extracted.ArkworksFinalExpHard.final_exp_hard_factor_three_spec
#print axioms Ipp.Extracted.ArkworksFinalExpHard.final_exp_trace
#print axioms Ipp.Extracted.ArkworksFinalExpHard.final_exp_spec
#print axioms Ipp.Extracted.ArkworksMultiPairing.multi_miller_schedule_partition_invariant
#print axioms Ipp.Extracted.ArkworksMultiPairing.multi_pairing_spec
#print axioms Ipp.Extracted.ArkworksMultiPairing.multi_pairing_product_spec
#print axioms Ipp.Bls12377.executedPairingExponent_mul_scalarModulus
#print axioms Ipp.Bls12377.executedFinalExponent_mem_gtGroup
#print axioms Ipp.Bls12377.gtValue_successfulFinalExponentGt
#print axioms Ipp.Bls12377.gtValue_executablePairing_of_nonzero
#print axioms Ipp.Bls12377.PublishedPairingBilinear
#print axioms Ipp.Bls12377.PublishedPairingNondegenerate
#print axioms Ipp.Bls12377.PublishedPairingBilinearNondegenerate
#print axioms Ipp.Extracted.ArkworksMultiPairingGt.arkworksPairingExponent_eq_executedPairingExponent
#print axioms Ipp.Extracted.ArkworksMultiPairingGt.pairingModel_eq_gtValue
#print axioms Ipp.Extracted.ArkworksSubgroupCheck.valid_g1_subgroup_check
#print axioms Ipp.Extracted.ArkworksSubgroupCheck.valid_g2_subgroup_check
#print axioms Ipp.Extracted.ArkworksSubgroupCheck.valid_g1_subgroup_check_checked_membership
#print axioms Ipp.Extracted.ArkworksSubgroupCheck.valid_g2_subgroup_check_checked_membership
#print axioms Ipp.Extracted.ArkworksMsm.nonfinalDigit_step
#print axioms Ipp.Extracted.ArkworksMsm.finalDigit_step
#print axioms Ipp.Extracted.ArkworksMsm.nonfinalDigit_bounds
#print axioms Ipp.Extracted.ArkworksMsm.finalDigit_bounds
#print axioms Ipp.Extracted.ArkworksMsm.makeDigits_value_pow_two
#print axioms Ipp.Extracted.ArkworksMsm.makeDigitsModel_bounded
#print axioms Ipp.Extracted.ArkworksMsm.processBuckets_apply
#print axioms Ipp.Extracted.ArkworksMsm.reverseRunningFold_spec
#print axioms Ipp.Extracted.ArkworksMsm.oneWindow_value
#print axioms Ipp.Extracted.ArkworksMsm.oneWindow_zero_digits
#print axioms Ipp.Extracted.ArkworksMsm.oneWindow_identity_bases
#print axioms Ipp.Extracted.ArkworksMsm.g1_msm_length_mismatch
#print axioms Ipp.Extracted.ArkworksMsm.g2_msm_length_mismatch
#print axioms Ipp.Extracted.ArkworksMsm.g1_msm_empty_identity
#print axioms Ipp.Extracted.ArkworksMsm.g2_msm_empty_identity
#print axioms Ipp.Extracted.ArkworksMsm.scalarWindows_get
#print axioms Ipp.Extracted.ArkworksScalarMul.scalar_bit_spec
#print axioms Ipp.Extracted.ArkworksMsm.scalarWindowBuffer_spec
#print axioms Ipp.Extracted.ArkworksMsm.scalarWindowBuffer_windows
#print axioms Ipp.Extracted.ArkworksMsm.scalar_index_value
#print axioms Ipp.Extracted.ArkworksMsm.reverseRunningFrom_append
#print axioms Ipp.Extracted.ArkworksMsm.reverseRunningFrom_zero
#print axioms Ipp.Extracted.ArkworksMsm.valid_g1_reverse_bucket_fold
#print axioms Ipp.Extracted.ArkworksMsm.valid_g1_reverse_bucket_fold_zero
#print axioms Ipp.Extracted.ArkworksMsm.valid_g2_reverse_bucket_fold
#print axioms Ipp.Extracted.ArkworksMsm.valid_g2_reverse_bucket_fold_zero
#print axioms Ipp.Extracted.ArkworksMsm.makeDigitsBody_step
#print axioms Ipp.Extracted.ArkworksMsm.makeDigitsBody_done
#print axioms Ipp.Extracted.ArkworksMsm.makeDigitsLoop_result
#print axioms Ipp.Extracted.ArkworksMsm.makeDigits_result
#print axioms Ipp.Extracted.ArkworksMsm.valid_g1_affine_neg
#print axioms Ipp.Extracted.ArkworksMsm.valid_g1_point_body_step
#print axioms Ipp.Extracted.ArkworksMsm.valid_g1_process_buckets
#print axioms Ipp.Extracted.ArkworksMsm.valid_g2_affine_neg
#print axioms Ipp.Extracted.ArkworksMsm.valid_g2_point_body_step
#print axioms Ipp.Extracted.ArkworksMsm.valid_g2_process_buckets
#print axioms Ipp.Extracted.ArkworksMsm.weightedBucketList_ofFn
#print axioms Ipp.Extracted.ArkworksMsm.reverseRunningFold_oneWindow
#print axioms Ipp.Extracted.ArkworksMsm.valid_g1_window_body
#print axioms Ipp.Extracted.ArkworksMsm.valid_g1_window_zero_digits
#print axioms Ipp.Extracted.ArkworksMsm.valid_g1_window_identity_bases
#print axioms Ipp.Extracted.ArkworksMsm.valid_g2_window_body
#print axioms Ipp.Extracted.ArkworksMsm.valid_g2_window_zero_digits
#print axioms Ipp.Extracted.ArkworksMsm.valid_g2_window_identity_bases
