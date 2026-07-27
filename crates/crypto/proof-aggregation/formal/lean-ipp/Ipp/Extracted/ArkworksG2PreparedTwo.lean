import Ipp.Extracted.ArkworksG2PreparedTwoCanonical
import Ipp.Extracted.ArkworksG2PreparedTwoDecode
import Ipp.Extracted.ArkworksG2PreparedTwoNonzero

namespace Ipp.Extracted.ArkworksG2PreparedTwo

open Aeneas Result
open Ipp.Bls12377
open Ipp.Extracted.ArkworksFqMul
open Ipp.Extracted.ArkworksG2PreparedTwoCanonical
open Ipp.Extracted.ArkworksG2PreparedTwoDecode
open Ipp.Extracted.ArkworksG2PreparedTwoNonzero

theorem two_facts (two : LimbArray)
    (hdouble : ark_ip_proofs.s3_07_arkworks_fq_spike.double
      ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ONE = .ok two) :
    limbsToNat two < baseModulus ∧
      two ≠ Ipp.Extracted.ArkworksFqInv.zeroArray ∧ decode two = 2 := by
  exact ⟨two_canonical two hdouble, two_ne_zero two hdouble,
    two_decode two hdouble⟩

end Ipp.Extracted.ArkworksG2PreparedTwo
