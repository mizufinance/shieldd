import Ipp.Extracted.ArkworksFqBytesWordPack7

namespace Ipp.Extracted.ArkworksFqSqrtBytes

open Aeneas Aeneas.Std Result ControlFlow
open Ipp.Extracted.ArkworksFqByteRuntime

theorem rawPack6_spec (p5 : MacCampaign.U64) (b6 b7 : UInt8) :
    rawPack6 p5 b6 b7 =
      .ok (appendByte (appendByte p5 b6 48) b7 56) := by
  unfold rawPack6
  rw [Result.bind_ok]
  calc
    _ = rawPack7 (appendByte p5 b6 48) b7 :=
      rawAppend_eq_appendByte p5 b6 48 (fun p6 => rawPack7 p6 b7) (by omega)
    _ = _ := rawPack7_spec (appendByte p5 b6 48) b7

end Ipp.Extracted.ArkworksFqSqrtBytes
