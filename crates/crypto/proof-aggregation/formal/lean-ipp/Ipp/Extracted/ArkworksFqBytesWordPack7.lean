import Ipp.Extracted.ArkworksFqBytesWordAppend

namespace Ipp.Extracted.ArkworksFqSqrtBytes

open Aeneas Aeneas.Std Result ControlFlow
open Ipp.Extracted.ArkworksFqByteRuntime

theorem rawPack7_spec (p6 : MacCampaign.U64) (b7 : UInt8) :
    rawPack7 p6 b7 = .ok (appendByte p6 b7 56) := by
  unfold rawPack7
  rw [Result.bind_ok]
  exact rawAppend_eq_appendByte p6 b7 56 (fun p7 => .ok p7) (by omega)

end Ipp.Extracted.ArkworksFqSqrtBytes
