import Ipp.Extracted.ArkworksFr

/-! Curve-free one-step model of the fixed-width Fr reduction. -/

namespace Ipp.Extracted.ArkworksScalarMul.GlvReduceCore

open Aeneas Aeneas.Std Result ControlFlow

abbrev ScalarArray := MacCampaign.Array MacCampaign.U64 4#usize

def scalarToNat (value : ScalarArray) : Nat :=
  Ipp.Extracted.ArkworksFr.limbsToNat value

def r : Nat := Ipp.Bls12377.scalarModulus

def body (current : ScalarArray) :
    Result (ControlFlow ScalarArray ScalarArray) := do
  let geq ← ark_ip_proofs.s3_07_arkworks_fr_spike.geq_modulus current
  if geq then
    let next ← ark_ip_proofs.s3_07_arkworks_fr_spike.sub_raw current
      ark_ip_proofs.s3_07_arkworks_fr_spike.MODULUS
    .ok (.cont next)
  else
    .ok (.done current)

/-- One model step exits below `r` or subtracts exactly one `r`. -/
theorem body_spec (current : ScalarArray)
    (flow : ControlFlow ScalarArray ScalarArray)
    (hexec : body current = .ok flow) :
    (flow = .done current ∧ scalarToNat current < r) ∨
      ∃ next, flow = .cont next ∧ r ≤ scalarToNat current ∧
        scalarToNat next = scalarToNat current - r := by
  unfold body at hexec
  rw [Ipp.Extracted.ArkworksFr.extracted_geq_modulus_spec] at hexec
  simp only [Result.bind_ok] at hexec
  have hcmp := Ipp.Extracted.ArkworksFr.geqPrefix_spec current
    ark_ip_proofs.s3_07_arkworks_fr_spike.MODULUS
    Ipp.Extracted.ArkworksFr.limbCount (by omega)
  by_cases hge : r ≤ scalarToNat current
  · have hp : Ipp.Extracted.ArkworksFr.geqPrefix current
        ark_ip_proofs.s3_07_arkworks_fr_spike.MODULUS
          Ipp.Extracted.ArkworksFr.limbCount = true := by
      apply hcmp.mpr
      simpa [r, scalarToNat, Ipp.Extracted.ArkworksFr.limbsToNat,
        Ipp.Extracted.ArkworksFr.modulus_limbsToNat] using hge
    cases hsub : ark_ip_proofs.s3_07_arkworks_fr_spike.sub_raw current
        ark_ip_proofs.s3_07_arkworks_fr_spike.MODULUS with
    | ok next =>
        rw [if_pos hp, hsub] at hexec
        change Result.ok (ControlFlow.cont next) = Result.ok flow at hexec
        right
        refine ⟨next, (Result.ok.inj hexec).symm, hge, ?_⟩
        have hle : Ipp.Extracted.ArkworksFr.limbsToNat
            ark_ip_proofs.s3_07_arkworks_fr_spike.MODULUS ≤
            Ipp.Extracted.ArkworksFr.limbsToNat current := by
          rw [Ipp.Extracted.ArkworksFr.modulus_limbsToNat]
          exact hge
        have hvalue := Ipp.Extracted.ArkworksFr.extracted_sub_raw_of_le
          current ark_ip_proofs.s3_07_arkworks_fr_spike.MODULUS next hle hsub
        rw [Ipp.Extracted.ArkworksFr.modulus_limbsToNat] at hvalue
        exact hvalue
    | fail error => rw [if_pos hp, hsub] at hexec; cases hexec
    | div => rw [if_pos hp, hsub] at hexec; cases hexec
  · left
    have hlt : scalarToNat current < r := by omega
    have hp : Ipp.Extracted.ArkworksFr.geqPrefix current
        ark_ip_proofs.s3_07_arkworks_fr_spike.MODULUS
          Ipp.Extracted.ArkworksFr.limbCount ≠ true := by
      intro hp
      have := hcmp.mp hp
      apply hge
      simpa [r, scalarToNat, Ipp.Extracted.ArkworksFr.limbsToNat,
        Ipp.Extracted.ArkworksFr.modulus_limbsToNat] using this
    rw [if_neg hp] at hexec
    exact ⟨(Result.ok.inj hexec).symm, hlt⟩

#print axioms body_spec

end Ipp.Extracted.ArkworksScalarMul.GlvReduceCore
