import Ipp.Extracted.ArkworksMsmG1Collect
import Ipp.Extracted.ArkworksMsmG2Collect
import Ipp.Extracted.ArkworksMsmWindowSize

/-! Successful nonempty digit collection forces a valid `u64` window width. -/

namespace Ipp.Extracted.ArkworksMsm

open Aeneas Aeneas.Std Result ControlFlow
open Ipp.Extracted.ArkworksScalarMul

private theorem bind_eq_ok {α β : Type} {action : Result α}
    {next : α → Result β} {output : β}
    (hexec : action >>= next = .ok output) :
    ∃ value, action = .ok value ∧ next value = .ok output := by
  cases action with
  | ok value => exact ⟨value, rfl, hexec⟩
  | fail error => simp at hexec
  | div => simp at hexec

/-- A successful nonempty G1 collection executed a checked `u64` radix shift. -/
theorem g1_collect_width_lt_64
    (scalars : Slice ScalarArray) (size width : Usize)
    (initial output : alloc.vec.Vec WnafDigit)
    (hsize : 0 < size.val)
    (hexec :
      ark_ip_proofs.s3_07_arkworks_fq_spike.g1_msm_unchecked_loop0
        scalars size width initial 0#usize = .ok output) :
    width.val < 64 := by
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.g1_msm_unchecked_loop0
    at hexec
  have hrun := Aeneas.loopResult_of_eq (by simp) hexec
  let loopBody := fun state : alloc.vec.Vec WnafDigit × Usize =>
    ark_ip_proofs.s3_07_arkworks_fq_spike.g1_msm_unchecked_loop0.body
      scalars size width state.1 state.2
  change LoopResult loopBody (initial, 0#usize) (.ok output) at hrun
  cases hrun with
  | done hbody =>
      simp only [loopBody,
        ark_ip_proofs.s3_07_arkworks_fq_spike.g1_msm_unchecked_loop0.body]
        at hbody
      rw [if_pos (show 0#usize < size by exact hsize)] at hbody
      obtain ⟨_, _, hbody⟩ := bind_eq_ok hbody
      obtain ⟨_, _, hbody⟩ := bind_eq_ok hbody
      obtain ⟨_, _, hbody⟩ := bind_eq_ok hbody
      obtain ⟨_, _, hbody⟩ := bind_eq_ok hbody
      simp at hbody
  | next hbody hnext =>
      simp only [loopBody,
        ark_ip_proofs.s3_07_arkworks_fq_spike.g1_msm_unchecked_loop0.body]
        at hbody
      rw [if_pos (show 0#usize < size by exact hsize)] at hbody
      obtain ⟨scalar, _, hbody⟩ := bind_eq_ok hbody
      obtain ⟨digits, hmake, _⟩ := bind_eq_ok hbody
      exact make_wnaf_digits_width_lt_64 scalar width 253#usize digits hmake

/-- G2 uses the same digit collector and therefore the same checked width. -/
theorem g2_collect_width_lt_64
    (scalars : Slice ScalarArray) (size width : Usize)
    (initial output : alloc.vec.Vec WnafDigit)
    (hsize : 0 < size.val)
    (hexec :
      ark_ip_proofs.s3_07_arkworks_fq_spike.g2_msm_unchecked_loop0
        scalars size width initial 0#usize = .ok output) :
    width.val < 64 := by
  apply g1_collect_width_lt_64 scalars size width initial output hsize
  exact hexec

#print axioms g1_collect_width_lt_64
#print axioms g2_collect_width_lt_64

end Ipp.Extracted.ArkworksMsm
