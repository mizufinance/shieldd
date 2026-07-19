import Ipp.Extracted.ArkworksG1
import Ipp.Extracted.ArkworksScalarMulGlvGenerated
import Mathlib.Tactic

/-! S3-28 finale (items ii-a/ii-b): the executed G1 GLV endomorphism decode law.
The executed `g1_glv_endomorphism` scales the Jacobian X by the pinned
Montgomery coefficient and leaves Y, Z unchanged, so on the decoded affine class
it is the map `(x, y) ↦ (β·x, y)` with `β` the decoded coefficient. On-curve
preservation (needs `β^3 = 1`) and the final `k • P` corollary remain. -/

namespace Ipp.Extracted.ArkworksScalarMul

open Aeneas Aeneas.Std Result
open Ipp.Extracted.ArkworksG1
open Ipp.Extracted.ArkworksFqMul

local instance : Fact Ipp.Bls12377.baseModulus.Prime :=
  ⟨Ipp.Bls12377.arithmeticFacts.basePrime⟩

private theorem bind_eq_ok {α β : Type} {action : Result α}
    {next : α → Result β} {output : β}
    (hexec : action >>= next = .ok output) :
    ∃ value, action = .ok value ∧ next value = .ok output := by
  cases action with
  | fail error => simp at hexec
  | div => simp at hexec
  | ok value => exact ⟨value, rfl, hexec⟩

/-- The pinned G1 GLV endomorphism Montgomery coefficient is a reduced representative. -/
theorem g1_endomorphism_coeff_canonical :
    limbsToNat ark_ip_proofs.s3_07_arkworks_fq_spike.G1_ENDOMORPHISM_COEFF <
      Ipp.Bls12377.baseModulus := by
  rw [ark_ip_proofs.s3_07_arkworks_fq_spike.G1_ENDOMORPHISM_COEFF, limbsToNat_six]
  norm_num [limb, limbWord, MacCampaign.Array.make, MacCampaign.U64.ofNat,
    MacCampaign.u64Base, wordBase, Ipp.Bls12377.baseModulus]

/-- The decoded endomorphism coefficient: the affine scale `β`. -/
noncomputable def glvBeta : Ipp.Bls12377.Fq :=
  decode ark_ip_proofs.s3_07_arkworks_fq_spike.G1_ENDOMORPHISM_COEFF

/-- The executed GLV endomorphism scales the represented affine X by `β` and
preserves the represented Y (the affine `(x, y) ↦ (β·x, y)` map), and preserves
canonicity. -/
theorem decode_g1_glv_endomorphism (a output : G1ProjLimbTriple)
    (ha : CanonicalG1 a)
    (hexec :
      ark_ip_proofs.s3_07_arkworks_fq_spike.g1_glv_endomorphism a = .ok output) :
    CanonicalG1 output ∧
      decodeG1 output =
        Option.map (fun p => (glvBeta * p.1, p.2)) (decodeG1 a) := by
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.g1_glv_endomorphism at hexec
  obtain ⟨fm, hfm, hret⟩ := bind_eq_ok hexec
  simp only [Result.ok.injEq] at hret
  subst output
  have cfm := extracted_mul_spec a.x
    ark_ip_proofs.s3_07_arkworks_fq_spike.G1_ENDOMORPHISM_COEFF fm ha.1
    g1_endomorphism_coeff_canonical hfm
  have ex := decode_extracted_mul a.x
    ark_ip_proofs.s3_07_arkworks_fq_spike.G1_ENDOMORPHISM_COEFF fm ha.1
    g1_endomorphism_coeff_canonical hfm
  refine ⟨⟨cfm.1, ha.2.1, ha.2.2⟩, ?_⟩
  by_cases hz : a.z.val = ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ZERO.val
  · simp [decodeG1, hz]
  · simp only [decodeG1, hz, if_false, Option.map_some, Prod.mk.injEq,
      Option.some.injEq]
    refine ⟨?_, trivial⟩
    rw [ex, glvBeta]
    ring

#print axioms g1_endomorphism_coeff_canonical
#print axioms decode_g1_glv_endomorphism

end Ipp.Extracted.ArkworksScalarMul
