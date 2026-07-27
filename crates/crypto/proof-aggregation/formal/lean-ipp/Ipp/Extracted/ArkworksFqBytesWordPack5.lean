import Ipp.Extracted.ArkworksFqBytesWordPack6

namespace Ipp.Extracted.ArkworksFqSqrtBytes

open Aeneas Aeneas.Std Result ControlFlow
open Ipp.Extracted.ArkworksFqByteRuntime

theorem rawPack5_spec (p4 : MacCampaign.U64) (b5 b6 b7 : UInt8) :
    rawPack5 p4 b5 b6 b7 =
      .ok (appendByte (appendByte (appendByte p4 b5 40) b6 48) b7 56) := by
  unfold rawPack5
  rw [Result.bind_ok]
  calc
    _ = rawPack6 (appendByte p4 b5 40) b6 b7 :=
      rawAppend_eq_appendByte p4 b5 40 (fun p5 => rawPack6 p5 b6 b7) (by omega)
    _ = _ := rawPack6_spec (appendByte p4 b5 40) b6 b7

end Ipp.Extracted.ArkworksFqSqrtBytes
