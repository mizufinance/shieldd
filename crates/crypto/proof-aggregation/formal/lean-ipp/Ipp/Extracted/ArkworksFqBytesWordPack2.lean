import Ipp.Extracted.ArkworksFqBytesWordPack3

namespace Ipp.Extracted.ArkworksFqSqrtBytes

open Aeneas Aeneas.Std Result ControlFlow
open Ipp.Extracted.ArkworksFqByteRuntime

theorem rawPack2_spec (p1 : MacCampaign.U64) (b2 b3 b4 b5 b6 b7 : UInt8) :
    rawPack2 p1 b2 b3 b4 b5 b6 b7 =
      .ok (appendByte (appendByte (appendByte
        (appendByte (appendByte (appendByte p1 b2 16) b3 24) b4 32) b5 40)
        b6 48) b7 56) := by
  unfold rawPack2
  rw [Result.bind_ok]
  calc
    _ = rawPack3 (appendByte p1 b2 16) b3 b4 b5 b6 b7 :=
      rawAppend_eq_appendByte p1 b2 16
        (fun p2 => rawPack3 p2 b3 b4 b5 b6 b7) (by omega)
    _ = _ := rawPack3_spec (appendByte p1 b2 16) b3 b4 b5 b6 b7

end Ipp.Extracted.ArkworksFqSqrtBytes
