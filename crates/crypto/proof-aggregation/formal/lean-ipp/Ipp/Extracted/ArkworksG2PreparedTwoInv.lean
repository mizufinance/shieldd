import Ipp.Extracted.ArkworksG2PreparedTwoInvCanonical
import Ipp.Extracted.ArkworksG2PreparedTwoInvDecode

/-! Execution facts for the prepared-G2 constant `inv (double FQ_ONE)`. -/

namespace Ipp.Extracted.ArkworksG2PreparedTwoInv

open Aeneas Result
open Ipp.Bls12377
open Ipp.Extracted.ArkworksFqMul
open Ipp.Extracted.ArkworksG2PreparedTwoInvCanonical
open Ipp.Extracted.ArkworksG2PreparedTwoInvDecode

/-- Executing `2⁻¹` yields canonical limbs decoding to the protocol constant. -/
theorem two_inv_facts (two twoInvMont : LimbArray)
    (hdouble : ark_ip_proofs.s3_07_arkworks_fq_spike.double
      ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ONE = .ok two)
    (hinv : ark_ip_proofs.s3_07_arkworks_fq_spike.inv two =
      .ok (some twoInvMont)) :
    limbsToNat twoInvMont < baseModulus ∧ decode twoInvMont = twoInv := by
  exact ⟨two_inv_canonical two twoInvMont hdouble hinv,
    two_inv_decode two twoInvMont hdouble hinv⟩

#print axioms two_inv_facts

end Ipp.Extracted.ArkworksG2PreparedTwoInv
