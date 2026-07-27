import Ipp.Extracted.ArkworksFqSqrtBytesGenerated
import Ipp.Extracted.ArkworksFqByteRuntime
import Ipp.CanonicalDecode
import Mathlib.Tactic

namespace Ipp.Extracted.ArkworksFqSqrtBytes

open Aeneas Aeneas.Std Result ControlFlow
open Ipp.Extracted.ArkworksFqByteRuntime

local notation "ByteArray" => MacCampaign.Array UInt8 (Usize.ofNat 48)

set_option maxHeartbeats 1000000
set_option maxRecDepth 8192

private theorem bind_eq_ok {α β : Type} {action : Result α}
    {next : α → Result β} {output : β}
    (hexec : action >>= next = .ok output) :
    ∃ value, action = .ok value ∧ next value = .ok output := by
  cases action <;> simp_all

def bytesValue (bytes : ByteArray) : Nat :=
  Ipp.CanonicalWire.decodeLE bytes.val

def byteFn (bytes : ByteArray) : Fin 48 → UInt8 := fun i =>
  bytes.val.get ⟨i.val, by simpa [bytes.hlen] using i.isLt⟩

/-- GAP-01's fixed-width view of an extracted byte array. -/
def asFqWire (bytes : ByteArray) : Ipp.CanonicalWire.FqWire :=
  ⟨byteFn bytes⟩

theorem byteArray_eq_ofFn (bytes : ByteArray) :
    bytes = ⟨List.ofFn (byteFn bytes), by simp⟩ := by
  apply MacCampaign.Array.ext
  apply List.ext_get
  · simp [bytes.hlen]
  · intro n hnLeft hnRight
    have hn : n < 48 := by simpa [bytes.hlen] using hnLeft
    interval_cases n <;> rfl

theorem asFqWire_value (bytes : ByteArray) :
    (asFqWire bytes).value = bytesValue bytes := by
  have hval : bytes.val = List.ofFn (byteFn bytes) :=
    congrArg MacCampaign.Array.val (byteArray_eq_ofFn bytes)
  exact congrArg Ipp.CanonicalWire.decodeLE hval.symm

def byteFn8 (bytes : MacCampaign.Array UInt8 (Usize.ofNat 8)) :
    Fin 8 → UInt8 := fun i =>
  bytes.val.get ⟨i.val, by simpa [bytes.hlen] using i.isLt⟩


end Ipp.Extracted.ArkworksFqSqrtBytes
