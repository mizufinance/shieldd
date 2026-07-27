import Ipp.Extracted.ArkworksFq2
import Ipp.Extracted.ArkworksScalarMulNormalizeCommon

namespace Ipp.Extracted.ArkworksG2PreparedTwoCanonical

open Aeneas Result
open Ipp.Bls12377
open Ipp.Extracted.ArkworksFqMul

theorem two_canonical (two : LimbArray)
    (hdouble : ark_ip_proofs.s3_07_arkworks_fq_spike.double
      ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ONE = .ok two) :
    limbsToNat two < baseModulus := by
  exact (Ipp.Extracted.ArkworksFq2.extracted_double_spec
    ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ONE two
    Ipp.Extracted.ArkworksScalarMulNormalizeCommon.fq_one_canonical hdouble).1

end Ipp.Extracted.ArkworksG2PreparedTwoCanonical
