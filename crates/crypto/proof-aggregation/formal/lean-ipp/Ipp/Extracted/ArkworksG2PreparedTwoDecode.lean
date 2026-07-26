import Ipp.Extracted.ArkworksFq2
import Ipp.Extracted.ArkworksScalarMulNormalizeCommon

namespace Ipp.Extracted.ArkworksG2PreparedTwoDecode

open Aeneas Result
open Ipp.Bls12377
open Ipp.Extracted.ArkworksFqMul

theorem two_decode (two : LimbArray)
    (hdouble : ark_ip_proofs.s3_07_arkworks_fq_spike.double
      ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ONE = .ok two) :
    decode two = 2 := by
  have h := Ipp.Extracted.ArkworksFq2.decode_extracted_double
    ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ONE two
    Ipp.Extracted.ArkworksScalarMulNormalizeCommon.fq_one_canonical hdouble
  simpa [Ipp.Extracted.ArkworksScalarMulNormalizeCommon.decode_fq_one] using h

end Ipp.Extracted.ArkworksG2PreparedTwoDecode
