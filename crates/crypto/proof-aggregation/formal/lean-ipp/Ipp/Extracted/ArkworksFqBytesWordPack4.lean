import Ipp.Extracted.ArkworksFqBytesWordPack5

namespace Ipp.Extracted.ArkworksFqSqrtBytes

open Aeneas Aeneas.Std Result ControlFlow
open Ipp.Extracted.ArkworksFqByteRuntime

theorem rawPack4_spec (p3 : MacCampaign.U64) (b4 b5 b6 b7 : UInt8) :
    rawPack4 p3 b4 b5 b6 b7 =
      .ok (appendByte
        (appendByte (appendByte (appendByte p3 b4 32) b5 40) b6 48) b7 56) := by
  unfold rawPack4
  rw [Result.bind_ok]
  calc
    _ = rawPack5 (appendByte p3 b4 32) b5 b6 b7 :=
      rawAppend_eq_appendByte p3 b4 32
        (fun p4 => rawPack5 p4 b5 b6 b7) (by omega)
    _ = _ := rawPack5_spec (appendByte p3 b4 32) b5 b6 b7

end Ipp.Extracted.ArkworksFqSqrtBytes
