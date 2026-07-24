import Ipp.Extracted.ArkworksMsmWrappers

/-! Arithmetic facts forced by successful MSM window setup. -/

namespace Ipp.Extracted.ArkworksMsm

open Aeneas Aeneas.Std Result

/-- A successfully selected MSM window width is nonzero. -/
theorem msm_window_size_positive (size width : Usize)
    (hexec :
      ark_ip_proofs.s3_07_arkworks_fq_spike.msm_window_size size =
        .ok width) :
    0 < width.val := by
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.msm_window_size at hexec
  by_cases hsmall : size < 32#usize
  · rw [if_pos hsmall] at hexec
    simp at hexec
    subst width
    decide
  · rw [if_neg hsmall] at hexec
    cases hloop :
        ark_ip_proofs.s3_07_arkworks_fq_spike.msm_window_size_loop
          size 0#usize with
    | fail error => rw [hloop] at hexec; simp at hexec
    | div => rw [hloop] at hexec; simp at hexec
    | ok log =>
        rw [hloop] at hexec
        simp only [Result.bind_ok] at hexec
        rw [Aeneas.Std.add_eq] at hexec
        cases hexec
        simp [Usize.ofNat]

/-- Successful digit setup forces the Rust `u64` shift width below 64. -/
theorem make_wnaf_digits_width_lt_64
    (scalar : Ipp.Extracted.ArkworksScalarMul.ScalarArray)
    (width numBits : Usize) (output : alloc.vec.Vec WnafDigit)
    (hexec :
      ark_ip_proofs.s3_07_arkworks_fq_spike.make_wnaf_digits
        scalar width numBits = .ok output) :
    width.val < 64 := by
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.make_wnaf_digits at hexec
  cases hshift : (1#u64 <<< width : Result MacCampaign.U64) with
  | fail error => rw [hshift] at hexec; simp at hexec
  | div => rw [hshift] at hexec; simp at hexec
  | ok radix =>
      change MacCampaign.shl64ByUsize 1#u64 width = .ok radix at hshift
      unfold MacCampaign.shl64ByUsize at hshift
      by_contra hnot
      rw [if_neg hnot] at hshift
      simp at hshift

/-- The generated bucket shift exposes its exact radix. -/
theorem msm_bucket_count_spec (width bucketCount : Usize)
    (hexec : (1#usize <<< width) = (.ok bucketCount : Result Usize)) :
    bucketCount.val = 2 ^ width.val := by
  simp only [HShiftLeft.hShiftLeft] at hexec
  cases hexec
  simp

#print axioms msm_window_size_positive
#print axioms make_wnaf_digits_width_lt_64
#print axioms msm_bucket_count_spec

end Ipp.Extracted.ArkworksMsm
