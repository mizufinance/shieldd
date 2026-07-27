/-
GAP-09 componentwise Fq2 rejection for strict G2 decoding.
-/
import Ipp.StrictG2DecodeRejectBasic

namespace Ipp.StrictG2Decode

open Ipp.Bls12377
open Ipp.CanonicalWire

set_option maxHeartbeats 800000

noncomputable section

local instance : Fact baseModulus.Prime := ⟨arithmeticFacts.basePrime⟩
local instance : Fact (∀ x : Fq, x ^ 2 ≠ (-5) + 0 * x) :=
  ⟨by intro x; simpa using arithmeticFacts.fq2Nonresidue x⟩
local instance : g2Curve.IsElliptic := g2_isElliptic

/-- A noncanonical base-field value in Fq2 c0 or c1 is rejected. -/
theorem strict_rejects_noncanonical_field {bytes : List UInt8} {last : UInt8}
    {flags : Ipp.CanonicalG2Decode.Flags}
    (hlen : bytes.length = Ipp.CanonicalG2Decode.compressedBytes)
    (hne : bytes ≠ Ipp.CanonicalG2Decode.infinityEncoding)
    (hlast : bytes[95]? = some last)
    (hflags : Ipp.CanonicalG2Decode.decodeFlags last = some flags)
    (hfield :
      decodeFqList
          ((Ipp.CanonicalG2Decode.clearFlags bytes).take
            Ipp.CanonicalG2Decode.componentBytes) = none
        ∨ decodeFqList
          ((Ipp.CanonicalG2Decode.clearFlags bytes).drop
            Ipp.CanonicalG2Decode.componentBytes) = none) :
    strictG2Decode bytes = .fail := by
  have hfq2 : Ipp.CanonicalG2Decode.decodeFq2List
      (Ipp.CanonicalG2Decode.clearFlags bytes) = none := by
    have hclearLen :
        (Ipp.CanonicalG2Decode.clearFlags bytes).length =
          Ipp.CanonicalG2Decode.compressedBytes := by
      simp [Ipp.CanonicalG2Decode.clearFlags, hlen,
        Ipp.CanonicalG2Decode.compressedBytes]
    rcases hfield with hc0 | hc1
    · simp [Ipp.CanonicalG2Decode.decodeFq2List, hclearLen, hc0]
    · unfold Ipp.CanonicalG2Decode.decodeFq2List
      simp only [hclearLen, if_pos, pure_bind]
      cases hc0 : decodeFqList
          ((Ipp.CanonicalG2Decode.clearFlags bytes).take
            Ipp.CanonicalG2Decode.componentBytes) with
      | none => rfl
      | some c0 => simp [hc1]
  apply strict_rejects_of_canonical_decode_none
  cases flags <;>
    simp [Ipp.CanonicalG2Decode.decode, hne, hlen,
      Ipp.CanonicalG2Decode.decodeFiniteExact, hlast, hflags, hfq2]

end
end Ipp.StrictG2Decode
