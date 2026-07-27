import Ipp.Extracted.ArkworksG2PreparedTwo
import Ipp.Extracted.ArkworksFqInv

namespace Ipp.Extracted.ArkworksG2PreparedTwoInvCanonical

open Aeneas Result
open Ipp.Bls12377
open Ipp.Extracted.ArkworksFqMul
open Ipp.Extracted.ArkworksG2PreparedTwo

theorem two_inv_canonical (two twoInvMont : LimbArray)
    (hdouble : ark_ip_proofs.s3_07_arkworks_fq_spike.double
      ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ONE = .ok two)
    (hinv : ark_ip_proofs.s3_07_arkworks_fq_spike.inv two =
      .ok (some twoInvMont)) :
    limbsToNat twoInvMont < baseModulus := by
  obtain ⟨htwoCanonical, htwoNe, _⟩ := two_facts two hdouble
  obtain ⟨_, houtCanonical, _⟩ :=
    Ipp.Extracted.ArkworksFqInv.extracted_inv_spec
      two twoInvMont htwoCanonical htwoNe hinv
  exact houtCanonical

end Ipp.Extracted.ArkworksG2PreparedTwoInvCanonical
