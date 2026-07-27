import Ipp.Extracted.ArkworksG2PreparedFqTwoNonzero
import Ipp.Extracted.ArkworksG2PreparedTwoDecode
import Ipp.Extracted.ArkworksG2PreparedZeroDecode

namespace Ipp.Extracted.ArkworksG2PreparedTwoNonzero

open Aeneas Result
open Ipp.Bls12377
open Ipp.Extracted.ArkworksFqMul
open Ipp.Extracted.ArkworksG2PreparedFqTwoNonzero
open Ipp.Extracted.ArkworksG2PreparedTwoDecode
open Ipp.Extracted.ArkworksG2PreparedZeroDecode

theorem two_ne_zero (two : LimbArray)
    (hdouble : ark_ip_proofs.s3_07_arkworks_fq_spike.double
      ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ONE = .ok two) :
    two ≠ Ipp.Extracted.ArkworksFqInv.zeroArray := by
  intro heq
  have hdecode := two_decode two hdouble
  rw [heq, decode_zeroArray] at hdecode
  exact fq_two_ne_zero hdecode.symm

end Ipp.Extracted.ArkworksG2PreparedTwoNonzero
