import Ipp.Extracted.ArkworksMsmDigitsValue
import Ipp.Extracted.ArkworksG1Mathlib
import Ipp.Extracted.ArkworksG2Mathlib

/-! Checked-wrapper length and empty-input behavior. -/

namespace Ipp.Extracted.ArkworksMsm

open Aeneas Aeneas.Std Result

private abbrev ScalarArray :=
  MacCampaign.Array MacCampaign.U64 4#usize

private theorem bind_eq_ok {α β : Type} {action : Result α}
    {next : α → Result β} {output : β}
    (hexec : action >>= next = .ok output) :
    ∃ value, action = .ok value ∧ next value = .ok output := by
  cases action with
  | fail error => simp at hexec
  | div => simp at hexec
  | ok value => exact ⟨value, rfl, hexec⟩

theorem g1_msm_length_mismatch
    (bases :
      Slice ark_ip_proofs.s3_07_arkworks_fq_spike.G1AffineMont)
    (scalars : Slice ScalarArray)
    (hmismatch : bases.val.length ≠ scalars.val.length) :
    ark_ip_proofs.s3_07_arkworks_fq_spike.g1_msm bases scalars =
      .ok (.Err ⟨Nat.min bases.val.length scalars.val.length⟩) := by
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.g1_msm
  by_cases hless : bases.val.length < scalars.val.length
  · simp [Slice.len, hmismatch, hless, Nat.min_eq_left (Nat.le_of_lt hless)]
  · have hle : scalars.val.length ≤ bases.val.length := Nat.le_of_not_gt hless
    simp [Slice.len, hmismatch, hless, Nat.min_eq_right hle]

theorem g2_msm_length_mismatch
    (bases :
      Slice ark_ip_proofs.s3_07_arkworks_fq_spike.G2AffineMont)
    (scalars : Slice ScalarArray)
    (hmismatch : bases.val.length ≠ scalars.val.length) :
    ark_ip_proofs.s3_07_arkworks_fq_spike.g2_msm bases scalars =
      .ok (.Err ⟨Nat.min bases.val.length scalars.val.length⟩) := by
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.g2_msm
  by_cases hless : bases.val.length < scalars.val.length
  · simp [Slice.len, hmismatch, hless, Nat.min_eq_left (Nat.le_of_lt hless)]
  · have hle : scalars.val.length ≤ bases.val.length := Nat.le_of_not_gt hless
    simp [Slice.len, hmismatch, hless, Nat.min_eq_right hle]

theorem g1_msm_unchecked_empty_eq_zero :
    ark_ip_proofs.s3_07_arkworks_fq_spike.g1_msm_unchecked
        (⟨[]⟩ : Slice
          ark_ip_proofs.s3_07_arkworks_fq_spike.G1AffineMont)
        (⟨[]⟩ : Slice ScalarArray) =
      ark_ip_proofs.s3_07_arkworks_fq_spike.g1_zero := by
  rfl

theorem g2_msm_unchecked_empty_eq_zero :
    ark_ip_proofs.s3_07_arkworks_fq_spike.g2_msm_unchecked
        (⟨[]⟩ : Slice
          ark_ip_proofs.s3_07_arkworks_fq_spike.G2AffineMont)
        (⟨[]⟩ : Slice ScalarArray) =
      ark_ip_proofs.s3_07_arkworks_fq_spike.g2_zero := by
  rfl

theorem g1_msm_unchecked_empty_identity
    (output : ark_ip_proofs.s3_07_arkworks_fq_spike.G1ProjMont)
    (hexec :
      ark_ip_proofs.s3_07_arkworks_fq_spike.g1_msm_unchecked
          (⟨[]⟩ : Slice
            ark_ip_proofs.s3_07_arkworks_fq_spike.G1AffineMont)
          (⟨[]⟩ : Slice ScalarArray) = .ok output) :
    Ipp.Extracted.ArkworksG1.CanonicalG1 output ∧
      Ipp.Extracted.ArkworksG1.decodeG1 output = none := by
  rw [g1_msm_unchecked_empty_eq_zero] at hexec
  refine ⟨Ipp.Extracted.ArkworksG1.canonical_g1_zero output hexec, ?_⟩
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.g1_zero at hexec
  simp only [Result.ok.injEq] at hexec
  subst output
  simp [Ipp.Extracted.ArkworksG1.decodeG1]

theorem g2_msm_unchecked_empty_identity
    (output : ark_ip_proofs.s3_07_arkworks_fq_spike.G2ProjMont)
    (hexec :
      ark_ip_proofs.s3_07_arkworks_fq_spike.g2_msm_unchecked
          (⟨[]⟩ : Slice
            ark_ip_proofs.s3_07_arkworks_fq_spike.G2AffineMont)
          (⟨[]⟩ : Slice ScalarArray) = .ok output) :
    Ipp.Extracted.ArkworksG2.CanonicalG2 output ∧
      Ipp.Extracted.ArkworksG2.decodeG2 output = none := by
  rw [g2_msm_unchecked_empty_eq_zero] at hexec
  refine ⟨Ipp.Extracted.ArkworksG2.canonical_g2_zero output hexec, ?_⟩
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.g2_zero at hexec
  simp only [Result.ok.injEq] at hexec
  subst output
  unfold Ipp.Extracted.ArkworksG2.decodeG2
  have hzero :
      Ipp.Extracted.ArkworksG2.isZeroFq2Mont
        ark_ip_proofs.s3_07_arkworks_fq_spike.FQ2_ZERO = true := by
    unfold Ipp.Extracted.ArkworksG2.isZeroFq2Mont
    rw [ark_ip_proofs.s3_07_arkworks_fq_spike.FQ2_ZERO]
    simp
  rw [if_pos hzero]

theorem g1_msm_empty_identity
    (output : ark_ip_proofs.s3_07_arkworks_fq_spike.G1ProjMont)
    (hexec :
      ark_ip_proofs.s3_07_arkworks_fq_spike.g1_msm
          (⟨[]⟩ : Slice
            ark_ip_proofs.s3_07_arkworks_fq_spike.G1AffineMont)
          (⟨[]⟩ : Slice ScalarArray) = .ok (.Ok output)) :
    Ipp.Extracted.ArkworksG1.CanonicalG1 output ∧
      Ipp.Extracted.ArkworksG1.decodeG1 output = none := by
  have hunchecked :
      ark_ip_proofs.s3_07_arkworks_fq_spike.g1_msm_unchecked
          (⟨[]⟩ : Slice
            ark_ip_proofs.s3_07_arkworks_fq_spike.G1AffineMont)
          (⟨[]⟩ : Slice ScalarArray) = .ok output := by
    have hbind :
        (ark_ip_proofs.s3_07_arkworks_fq_spike.g1_msm_unchecked
            (⟨[]⟩ : Slice
              ark_ip_proofs.s3_07_arkworks_fq_spike.G1AffineMont)
            (⟨[]⟩ : Slice ScalarArray) >>=
          fun point =>
            (.ok (ark_ip_proofs.core.result.Result.Ok point) :
              Result (ark_ip_proofs.core.result.Result
                ark_ip_proofs.s3_07_arkworks_fq_spike.G1ProjMont
                Std.Usize))) =
          .ok (ark_ip_proofs.core.result.Result.Ok output) := by
      simpa [ark_ip_proofs.s3_07_arkworks_fq_spike.g1_msm, Slice.len]
        using hexec
    obtain ⟨point, hpoint, hreturn⟩ := bind_eq_ok hbind
    simp only [Result.ok.injEq,
      ark_ip_proofs.core.result.Result.Ok.injEq] at hreturn
    subst point
    exact hpoint
  exact g1_msm_unchecked_empty_identity output hunchecked

theorem g2_msm_empty_identity
    (output : ark_ip_proofs.s3_07_arkworks_fq_spike.G2ProjMont)
    (hexec :
      ark_ip_proofs.s3_07_arkworks_fq_spike.g2_msm
          (⟨[]⟩ : Slice
            ark_ip_proofs.s3_07_arkworks_fq_spike.G2AffineMont)
          (⟨[]⟩ : Slice ScalarArray) = .ok (.Ok output)) :
    Ipp.Extracted.ArkworksG2.CanonicalG2 output ∧
      Ipp.Extracted.ArkworksG2.decodeG2 output = none := by
  have hunchecked :
      ark_ip_proofs.s3_07_arkworks_fq_spike.g2_msm_unchecked
          (⟨[]⟩ : Slice
            ark_ip_proofs.s3_07_arkworks_fq_spike.G2AffineMont)
          (⟨[]⟩ : Slice ScalarArray) = .ok output := by
    have hbind :
        (ark_ip_proofs.s3_07_arkworks_fq_spike.g2_msm_unchecked
            (⟨[]⟩ : Slice
              ark_ip_proofs.s3_07_arkworks_fq_spike.G2AffineMont)
            (⟨[]⟩ : Slice ScalarArray) >>=
          fun point =>
            (.ok (ark_ip_proofs.core.result.Result.Ok point) :
              Result (ark_ip_proofs.core.result.Result
                ark_ip_proofs.s3_07_arkworks_fq_spike.G2ProjMont
                Std.Usize))) =
          .ok (ark_ip_proofs.core.result.Result.Ok output) := by
      simpa [ark_ip_proofs.s3_07_arkworks_fq_spike.g2_msm, Slice.len]
        using hexec
    obtain ⟨point, hpoint, hreturn⟩ := bind_eq_ok hbind
    simp only [Result.ok.injEq,
      ark_ip_proofs.core.result.Result.Ok.injEq] at hreturn
    subst point
    exact hpoint
  exact g2_msm_unchecked_empty_identity output hunchecked

#print axioms g1_msm_length_mismatch
#print axioms g2_msm_length_mismatch
#print axioms g1_msm_unchecked_empty_eq_zero
#print axioms g2_msm_unchecked_empty_eq_zero
#print axioms g1_msm_unchecked_empty_identity
#print axioms g2_msm_unchecked_empty_identity
#print axioms g1_msm_empty_identity
#print axioms g2_msm_empty_identity

end Ipp.Extracted.ArkworksMsm
