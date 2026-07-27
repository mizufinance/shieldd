import Ipp.Extracted.ArkworksFqBytesWordArray

namespace Ipp.Extracted.ArkworksFqSqrtBytes

open Aeneas Aeneas.Std Result ControlFlow
open Ipp.Extracted.ArkworksFqByteRuntime

set_option maxHeartbeats 1000000
set_option maxRecDepth 8192

theorem packedWord_eq_decode
    (bytes : MacCampaign.Array UInt8 (Usize.ofNat 8)) :
    (packedWord
      (byteFn8 bytes 0) (byteFn8 bytes 1) (byteFn8 bytes 2)
      (byteFn8 bytes 3) (byteFn8 bytes 4) (byteFn8 bytes 5)
      (byteFn8 bytes 6) (byteFn8 bytes 7)).val =
        Ipp.CanonicalWire.decodeLE bytes.val := by
  rw [packedWord_val]
  rw [congrArg MacCampaign.Array.val (byteArray8_eq_eight bytes)]
  simp [Ipp.CanonicalWire.decodeLE, MacCampaign.Array.make]
  ring

end Ipp.Extracted.ArkworksFqSqrtBytes
