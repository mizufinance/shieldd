import Ipp.Extracted.ArkworksMsmG1Collect

/-! Finite execution of the structurally identical G2 digit collection loops. -/

namespace Ipp.Extracted.ArkworksMsm

open Aeneas Aeneas.Std Result
open Ipp.Extracted.ArkworksScalarMul

private theorem g2_append_eq_g1
    (initial digits : alloc.vec.Vec WnafDigit) :
    ark_ip_proofs.s3_07_arkworks_fq_spike.g2_msm_unchecked_loop0_loop0
        initial digits 0#usize =
      ark_ip_proofs.s3_07_arkworks_fq_spike.g1_msm_unchecked_loop0_loop0
        initial digits 0#usize := by
  rfl

/-- The generated inner G2 collection loop appends one complete digit row. -/
theorem g2_append_digit_row
    (initial digits output : alloc.vec.Vec WnafDigit)
    (hexec :
      ark_ip_proofs.s3_07_arkworks_fq_spike.g2_msm_unchecked_loop0_loop0
        initial digits 0#usize = .ok output) :
    output.val = initial.val ++ digits.val := by
  rw [g2_append_eq_g1] at hexec
  exact g1_append_digit_row initial digits output hexec

private theorem g2_collect_eq_g1
    (scalars : Slice ScalarArray) (size width : Usize)
    (initial : alloc.vec.Vec WnafDigit) :
    ark_ip_proofs.s3_07_arkworks_fq_spike.g2_msm_unchecked_loop0
        scalars size width initial 0#usize =
      ark_ip_proofs.s3_07_arkworks_fq_spike.g1_msm_unchecked_loop0
        scalars size width initial 0#usize := by
  rfl

/-- The generated outer G2 collection loop packages every scalar row in order. -/
theorem g2_collect_digits
    (scalars : Slice ScalarArray) (size width : Usize)
    (initial output : alloc.vec.Vec WnafDigit)
    (hsize : size.val ≤ scalars.val.length)
    (hwidth : 0 < width.val) (hwidth64 : width.val < 64)
    (hexec :
      ark_ip_proofs.s3_07_arkworks_fq_spike.g2_msm_unchecked_loop0
        scalars size width initial 0#usize = .ok output) :
    output.val =
      initial.val ++ collectedDigits width.val (scalars.val.take size.val) := by
  rw [g2_collect_eq_g1] at hexec
  exact g1_collect_digits scalars size width initial output hsize hwidth
    hwidth64 hexec

#print axioms g2_append_digit_row
#print axioms g2_collect_digits

end Ipp.Extracted.ArkworksMsm
