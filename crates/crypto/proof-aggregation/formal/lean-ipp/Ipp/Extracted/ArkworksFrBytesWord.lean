import Ipp.Extracted.ArkworksFrGenerated
import Ipp.Extracted.ArkworksFqBytesWordArray
import Ipp.Extracted.ArkworksFqBytesWordRaw
import Ipp.Extracted.ArkworksFqBytesWordPack
import Ipp.Extracted.ArkworksFqBytesWordValue

namespace Ipp.Extracted.ArkworksFrBytesWord

open Aeneas Aeneas.Std Result ControlFlow
open Ipp.Extracted.ArkworksFqSqrtBytes

set_option maxRecDepth 8192

theorem bytes_to_word_eq_raw
    (bytes : MacCampaign.Array UInt8 (Usize.ofNat 8)) :
    ark_ip_proofs.s3_07_arkworks_fr_spike.bytes_to_word bytes =
      rawPackedWord
        (byteFn8 bytes 0) (byteFn8 bytes 1) (byteFn8 bytes 2)
        (byteFn8 bytes 3) (byteFn8 bytes 4) (byteFn8 bytes 5)
        (byteFn8 bytes 6) (byteFn8 bytes 7) := by
  let b0 := byteFn8 bytes 0
  let b1 := byteFn8 bytes 1
  let b2 := byteFn8 bytes 2
  let b3 := byteFn8 bytes 3
  let b4 := byteFn8 bytes 4
  let b5 := byteFn8 bytes 5
  let b6 := byteFn8 bytes 6
  let b7 := byteFn8 bytes 7
  change ark_ip_proofs.s3_07_arkworks_fr_spike.bytes_to_word bytes =
    rawPackedWord b0 b1 b2 b3 b4 b5 b6 b7
  have hbytes : bytes = MacCampaign.Array.make 8#usize
      [b0, b1, b2, b3, b4, b5, b6, b7] := by
    exact byteArray8_eq_eight bytes
  clear_value b0 b1 b2 b3 b4 b5 b6 b7
  rw [hbytes]
  have h0 : MacCampaign.Array.index_usize
      (MacCampaign.Array.make 8#usize [b0, b1, b2, b3, b4, b5, b6, b7])
      0#usize = .ok b0 := by rfl
  have h1 : MacCampaign.Array.index_usize
      (MacCampaign.Array.make 8#usize [b0, b1, b2, b3, b4, b5, b6, b7])
      1#usize = .ok b1 := by rfl
  have h2 : MacCampaign.Array.index_usize
      (MacCampaign.Array.make 8#usize [b0, b1, b2, b3, b4, b5, b6, b7])
      2#usize = .ok b2 := by rfl
  have h3 : MacCampaign.Array.index_usize
      (MacCampaign.Array.make 8#usize [b0, b1, b2, b3, b4, b5, b6, b7])
      3#usize = .ok b3 := by rfl
  have h4 : MacCampaign.Array.index_usize
      (MacCampaign.Array.make 8#usize [b0, b1, b2, b3, b4, b5, b6, b7])
      4#usize = .ok b4 := by rfl
  have h5 : MacCampaign.Array.index_usize
      (MacCampaign.Array.make 8#usize [b0, b1, b2, b3, b4, b5, b6, b7])
      5#usize = .ok b5 := by rfl
  have h6 : MacCampaign.Array.index_usize
      (MacCampaign.Array.make 8#usize [b0, b1, b2, b3, b4, b5, b6, b7])
      6#usize = .ok b6 := by rfl
  have h7 : MacCampaign.Array.index_usize
      (MacCampaign.Array.make 8#usize [b0, b1, b2, b3, b4, b5, b6, b7])
      7#usize = .ok b7 := by rfl
  unfold ark_ip_proofs.s3_07_arkworks_fr_spike.bytes_to_word rawPackedWord
  rw [h0, h1, h2, h3, h4, h5, h6, h7]
  unfold rawPack1 rawPack2 rawPack3 rawPack4 rawPack5 rawPack6 rawPack7 rawAppend
  rfl

theorem bytes_to_word_spec
    (bytes : MacCampaign.Array UInt8 (Usize.ofNat 8))
    (output : MacCampaign.U64)
    (hexec : ark_ip_proofs.s3_07_arkworks_fr_spike.bytes_to_word bytes =
      .ok output) :
    output.val = Ipp.CanonicalWire.decodeLE bytes.val := by
  rw [bytes_to_word_eq_raw, rawPackedWord_eq_packed] at hexec
  rw [← Result.ok.inj hexec, packedWord_eq_decode]

end Ipp.Extracted.ArkworksFrBytesWord
