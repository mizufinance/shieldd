import Ipp.Extracted.ArkworksFqBytesWord

namespace Ipp.Extracted.ArkworksFqSqrtBytes

open Aeneas Aeneas.Std Result ControlFlow

theorem byteArray8_eq_eight
    (bytes : MacCampaign.Array UInt8 (Usize.ofNat 8)) :
    bytes = MacCampaign.Array.make 8#usize [
      byteFn8 bytes 0, byteFn8 bytes 1, byteFn8 bytes 2,
      byteFn8 bytes 3, byteFn8 bytes 4, byteFn8 bytes 5,
      byteFn8 bytes 6, byteFn8 bytes 7] := by
  apply MacCampaign.Array.ext
  apply List.ext_get
  · simp [bytes.hlen, MacCampaign.Array.make]
  · intro n hnLeft hnRight
    have hn : n < 8 := by simpa [bytes.hlen] using hnLeft
    interval_cases n <;> rfl

end Ipp.Extracted.ArkworksFqSqrtBytes
