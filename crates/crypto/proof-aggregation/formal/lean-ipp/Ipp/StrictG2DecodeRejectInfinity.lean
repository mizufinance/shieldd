/-
GAP-09 permissive-infinity rejection for strict G2 decoding.
-/
import Ipp.StrictG2DecodeRejectCurve

namespace Ipp.StrictG2Decode

open Ipp.Bls12377
open Ipp.CanonicalWire

set_option maxHeartbeats 800000

noncomputable section

local instance : Fact baseModulus.Prime := ⟨arithmeticFacts.basePrime⟩
local instance : Fact (∀ x : Fq, x ^ 2 ≠ (-5) + 0 * x) :=
  ⟨by intro x; simpa using arithmeticFacts.fq2Nonresidue x⟩
local instance : g2Curve.IsElliptic := g2_isElliptic
local instance rejectInfinityClassicalPropDecidable (p : Prop) : Decidable p :=
  Classical.propDecidable p

/--
Arkworks accepts canonical nonzero c0 or c1 values carrying the infinity flag
as identity; the strict round-trip gate rejects every such infinity alias.
-/
theorem strict_rejects_noncanonical_infinity {bytes : List UInt8} {last : UInt8}
    {x : Fq2Value}
    (hlen : bytes.length = Ipp.CanonicalG2Decode.compressedBytes)
    (hne : bytes ≠ Ipp.CanonicalG2Decode.infinityEncoding)
    (hlast : bytes[95]? = some last)
    (hflags : Ipp.CanonicalG2Decode.decodeFlags last = some .infinity)
    (hx : Ipp.CanonicalG2Decode.decodeFq2List
      (Ipp.CanonicalG2Decode.clearFlags bytes) = some x) :
    permissiveCheckedDecode bytes = .ok 0
      ∧ strictG2Decode bytes = .fail := by
  have hdecode : Ipp.CanonicalG2Decode.decode bytes = none := by
    simp [Ipp.CanonicalG2Decode.decode, hne, hlen,
      Ipp.CanonicalG2Decode.decodeFiniteExact, hlast, hflags]
  have hcanonical : permissiveCanonicalBytes bytes =
      some Ipp.CanonicalG2Decode.infinityEncoding := by
    have htake : bytes.take Ipp.CanonicalG2Decode.compressedBytes = bytes :=
      by simpa [hlen] using List.take_all bytes
    unfold permissiveCanonicalBytes
    dsimp only
    rw [htake, hdecode]
    simp [hlen, hlast, hflags, hx]
  constructor
  · unfold permissiveCheckedDecode
    rw [hcanonical]
    apply (canonical_checked_success_iff
      Ipp.CanonicalG2Decode.infinityEncoding 0).mpr
    exact ⟨Ipp.CanonicalG2Decode.infinityPoint,
      by simp [Ipp.CanonicalG2Decode.decode],
      Ipp.CanonicalG2Decode.checkedPrimeSubgroupPoint_infinity,
      by simp [RepresentsG2, Ipp.CanonicalG2Decode.Represents,
        Ipp.CanonicalG2Decode.infinityPoint]⟩
  · exact strict_rejects_of_canonical_decode_none hdecode

end
end Ipp.StrictG2Decode
