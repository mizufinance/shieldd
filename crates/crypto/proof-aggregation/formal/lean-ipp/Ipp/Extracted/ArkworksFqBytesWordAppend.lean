import Ipp.Extracted.ArkworksFqBytesWordRaw

namespace Ipp.Extracted.ArkworksFqSqrtBytes

open Aeneas Aeneas.Std Result ControlFlow
open Ipp.Extracted.ArkworksFqByteRuntime

theorem rawAppend_eq_appendByte
    (low : MacCampaign.U64) (byte : UInt8) (bits : Nat)
    (next : MacCampaign.U64 → Result MacCampaign.U64)
    (hbits : bits < 64) :
    rawAppend low byte bits next = next (appendByte low byte bits) := by
  unfold rawAppend
  simp only [Aeneas.lift, Result.bind_ok]
  rw [shl64_cast_byte byte bits hbits]
  rfl

end Ipp.Extracted.ArkworksFqSqrtBytes
