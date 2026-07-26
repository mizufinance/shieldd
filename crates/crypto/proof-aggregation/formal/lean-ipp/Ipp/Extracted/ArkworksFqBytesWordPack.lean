import Ipp.Extracted.ArkworksFqBytesWordPack1

namespace Ipp.Extracted.ArkworksFqSqrtBytes

open Aeneas Aeneas.Std Result ControlFlow
open Ipp.Extracted.ArkworksFqByteRuntime

theorem rawPackedWord_eq_packed
    (b0 b1 b2 b3 b4 b5 b6 b7 : UInt8) :
    rawPackedWord b0 b1 b2 b3 b4 b5 b6 b7 =
      .ok (packedWord b0 b1 b2 b3 b4 b5 b6 b7) := by
  unfold rawPackedWord
  rw [Result.bind_ok]
  rw [show Aeneas.lift (MacCampaign.castU64 b0) =
    (.ok (MacCampaign.castU64 b0) : Result MacCampaign.U64) by rfl]
  rw [Result.bind_ok]
  exact rawPack1_spec (MacCampaign.castU64 b0) b1 b2 b3 b4 b5 b6 b7

end Ipp.Extracted.ArkworksFqSqrtBytes
