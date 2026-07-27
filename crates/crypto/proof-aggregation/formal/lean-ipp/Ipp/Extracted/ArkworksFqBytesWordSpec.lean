import Ipp.Extracted.ArkworksFqBytesWordExec
import Ipp.Extracted.ArkworksFqBytesWordPack
import Ipp.Extracted.ArkworksFqBytesWordValue

namespace Ipp.Extracted.ArkworksFqSqrtBytes

open Aeneas Aeneas.Std Result ControlFlow

theorem bytes_to_word_spec
    (bytes : MacCampaign.Array UInt8 (Usize.ofNat 8))
    (output : MacCampaign.U64)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.bytes_to_word bytes =
      .ok output) :
    output.val = Ipp.CanonicalWire.decodeLE bytes.val := by
  rw [bytes_to_word_eq_raw, rawPackedWord_eq_packed] at hexec
  rw [← Result.ok.inj hexec, packedWord_eq_decode]

end Ipp.Extracted.ArkworksFqSqrtBytes
