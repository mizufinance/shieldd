import Ipp.Extracted.ArkworksFqBytesWordPack2

namespace Ipp.Extracted.ArkworksFqSqrtBytes

open Aeneas Aeneas.Std Result ControlFlow
open Ipp.Extracted.ArkworksFqByteRuntime

theorem rawPack1_spec
    (p0 : MacCampaign.U64) (b1 b2 b3 b4 b5 b6 b7 : UInt8) :
    rawPack1 p0 b1 b2 b3 b4 b5 b6 b7 =
      .ok (appendByte (appendByte (appendByte (appendByte
        (appendByte (appendByte (appendByte p0 b1 8) b2 16) b3 24) b4 32)
        b5 40) b6 48) b7 56) := by
  unfold rawPack1
  rw [Result.bind_ok]
  calc
    _ = rawPack2 (appendByte p0 b1 8) b2 b3 b4 b5 b6 b7 :=
      rawAppend_eq_appendByte p0 b1 8
        (fun p1 => rawPack2 p1 b2 b3 b4 b5 b6 b7) (by omega)
    _ = _ := rawPack2_spec (appendByte p0 b1 8) b2 b3 b4 b5 b6 b7

end Ipp.Extracted.ArkworksFqSqrtBytes
