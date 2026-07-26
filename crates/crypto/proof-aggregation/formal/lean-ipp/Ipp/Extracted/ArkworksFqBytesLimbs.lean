import Ipp.Extracted.ArkworksFqBytesWordSpec
import Mathlib.Tactic

namespace Ipp.Extracted.ArkworksFqSqrtBytes

open Aeneas Aeneas.Std Result ControlFlow
open Ipp.Extracted.ArkworksFqByteRuntime

local notation "ByteArray" => MacCampaign.Array UInt8 (Usize.ofNat 48)

set_option maxHeartbeats 1000000
set_option maxRecDepth 8192

def byteChunkList (bytes : ByteArray) (offset : Fin 41) : List UInt8 :=
  List.ofFn fun i : Fin 8 =>
    byteFn bytes ⟨offset.val + i.val, by
      have ho := offset.isLt
      have hi := i.isLt
      omega⟩

def byteChunk (bytes : ByteArray) (offset : Fin 41) :
    MacCampaign.Array UInt8 (Usize.ofNat 8) :=
  ⟨byteChunkList bytes offset, by simp [byteChunkList]⟩

theorem bytes_to_limbs_eq (bytes : ByteArray) :
    ark_ip_proofs.s3_07_arkworks_fq_spike.bytes_to_limbs bytes = (do
      let w0 ← ark_ip_proofs.s3_07_arkworks_fq_spike.bytes_to_word
        (byteChunk bytes 0)
      let w1 ← ark_ip_proofs.s3_07_arkworks_fq_spike.bytes_to_word
        (byteChunk bytes 8)
      let w2 ← ark_ip_proofs.s3_07_arkworks_fq_spike.bytes_to_word
        (byteChunk bytes 16)
      let w3 ← ark_ip_proofs.s3_07_arkworks_fq_spike.bytes_to_word
        (byteChunk bytes 24)
      let w4 ← ark_ip_proofs.s3_07_arkworks_fq_spike.bytes_to_word
        (byteChunk bytes 32)
      let w5 ← ark_ip_proofs.s3_07_arkworks_fq_spike.bytes_to_word
        (byteChunk bytes 40)
      ok (MacCampaign.Array.make 6#usize [w0, w1, w2, w3, w4, w5])) := by
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.bytes_to_limbs
  simp [MacCampaign.Array.index_usize, byteChunk, byteChunkList, byteFn,
    bytes.hlen, List.getElem?_eq_getElem]
  rfl

theorem decodeLE_append (xs ys : List UInt8) :
    Ipp.CanonicalWire.decodeLE (xs ++ ys) =
      Ipp.CanonicalWire.decodeLE xs +
        256 ^ xs.length * Ipp.CanonicalWire.decodeLE ys := by
  induction xs with
  | nil => simp [Ipp.CanonicalWire.decodeLE]
  | cons x xs ih =>
      simp only [List.cons_append, Ipp.CanonicalWire.decodeLE, List.length_cons,
        Nat.pow_succ, ih]
      ring


end Ipp.Extracted.ArkworksFqSqrtBytes
