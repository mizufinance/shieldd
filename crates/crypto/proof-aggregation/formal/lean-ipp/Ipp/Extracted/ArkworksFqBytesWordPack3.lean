import Ipp.Extracted.ArkworksFqBytesWordPack4

namespace Ipp.Extracted.ArkworksFqSqrtBytes

open Aeneas Aeneas.Std Result ControlFlow
open Ipp.Extracted.ArkworksFqByteRuntime

theorem rawPack3_spec (p2 : MacCampaign.U64) (b3 b4 b5 b6 b7 : UInt8) :
    rawPack3 p2 b3 b4 b5 b6 b7 =
      .ok (appendByte (appendByte
        (appendByte (appendByte (appendByte p2 b3 24) b4 32) b5 40) b6 48)
        b7 56) := by
  unfold rawPack3
  rw [Result.bind_ok]
  calc
    _ = rawPack4 (appendByte p2 b3 24) b4 b5 b6 b7 :=
      rawAppend_eq_appendByte p2 b3 24
        (fun p3 => rawPack4 p3 b4 b5 b6 b7) (by omega)
    _ = _ := rawPack4_spec (appendByte p2 b3 24) b4 b5 b6 b7

end Ipp.Extracted.ArkworksFqSqrtBytes
