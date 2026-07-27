import Ipp.Extracted.ArkworksFqInv
import Ipp.Extracted.ArkworksG2PreparedDoubleOps

namespace Ipp.Extracted.ArkworksG2PreparedInvSome

open Aeneas Aeneas.Std Result
open Ipp.Extracted.ArkworksFqInv
open Ipp.Extracted.ArkworksG2PreparedDoubleOps

/-- A successful inverse execution on nonzero limbs returns an inverse value. -/
theorem inv_some_of_execution (a : LimbArray) (output : Option LimbArray)
    (hne : a ≠ zeroArray)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.inv a = .ok output) :
    ∃ value, output = some value := by
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.inv at hexec
  change (do
    let isZero ← ark_ip_proofs.core.array.equality.PartialEqArray.eq
      ark_ip_proofs.core.cmp.PartialEqU64 a zeroArray
    if isZero then
      ok none
    else
      let state ← ark_ip_proofs.s3_07_arkworks_fq_spike.inv_loop0
        oneArray a ark_ip_proofs.s3_07_arkworks_fq_spike.MODULUS
          ark_ip_proofs.s3_07_arkworks_fq_spike.R2 zeroArray
      let uIsOne ← ark_ip_proofs.core.array.equality.PartialEqArray.eq
        ark_ip_proofs.core.cmp.PartialEqU64 state.1 oneArray
      if uIsOne then ok (some state.2.1) else ok (some state.2.2)) =
        .ok output at hexec
  obtain ⟨isZero, hzero, hrest⟩ := bind_eq_ok hexec
  have harrayEq :
      ark_ip_proofs.core.array.equality.PartialEqArray.eq
        ark_ip_proofs.core.cmp.PartialEqU64 a zeroArray =
        .ok (decide (a.val = zeroArray.val)) := by
    simp [ark_ip_proofs.core.array.equality.PartialEqArray.eq]
  rw [harrayEq] at hzero
  have hzeroVal : a.val ≠ zeroArray.val := by
    intro hval
    exact hne (MacCampaign.Array.ext hval)
  have hisZero : isZero = false := by
    rw [decide_eq_false_iff_not.mpr hzeroVal] at hzero
    exact (Result.ok.inj hzero).symm
  subst isZero
  rw [if_neg (by simp)] at hrest
  obtain ⟨state, hloop, hrest⟩ := bind_eq_ok hrest
  clear hloop
  obtain ⟨uIsOne, huIsOne, hreturn⟩ := bind_eq_ok hrest
  clear huIsOne
  cases uIsOne
  · simp only [Bool.false_eq_true, if_false, Result.ok.injEq] at hreturn
    exact ⟨state.2.2, hreturn.symm⟩
  · simp at hreturn
    exact ⟨state.2.1, hreturn.symm⟩

end Ipp.Extracted.ArkworksG2PreparedInvSome
