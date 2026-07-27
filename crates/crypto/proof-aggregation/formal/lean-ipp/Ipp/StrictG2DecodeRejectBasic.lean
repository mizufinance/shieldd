/-
GAP-09 malformed-wire rejection for strict G2 decoding.
-/
import Ipp.StrictG2Decode

namespace Ipp.StrictG2Decode

open Ipp.Bls12377

set_option maxHeartbeats 800000

noncomputable section

local instance : Fact baseModulus.Prime := ⟨arithmeticFacts.basePrime⟩
local instance : Fact (∀ x : Fq, x ^ 2 ≠ (-5) + 0 * x) :=
  ⟨by intro x; simpa using arithmeticFacts.fq2Nonresidue x⟩
local instance : g2Curve.IsElliptic := g2_isElliptic
local instance rejectBasicClassicalPropDecidable (p : Prop) : Decidable p :=
  Classical.propDecidable p

theorem strict_rejects_of_canonical_decode_none {bytes : List UInt8}
    (hdecode : Ipp.CanonicalG2Decode.decode bytes = none) :
    strictG2Decode bytes = .fail := by
  cases h : strictG2Decode bytes with
  | fail => rfl
  | ok point =>
      rcases (g2_strict_checked_success_iff bytes point).mp h with
        ⟨wire, hwire, _⟩
      rw [hdecode] at hwire
      contradiction

/-- Contradictory compressed flags (`11`) are rejected. -/
theorem strict_rejects_malformed_flags {bytes : List UInt8} {last : UInt8}
    (hlen : bytes.length = Ipp.CanonicalG2Decode.compressedBytes)
    (hlast : bytes[95]? = some last)
    (hflags : Ipp.CanonicalG2Decode.decodeFlags last = none) :
    strictG2Decode bytes = .fail := by
  apply strict_rejects_of_canonical_decode_none
  apply Ipp.CanonicalG2Decode.decode_rejects_illegal_flags hlen
  · intro heq
    subst bytes
    simp [Ipp.CanonicalG2Decode.infinityEncoding] at hlast
    subst last
    simp [Ipp.CanonicalG2Decode.decodeFlags,
      Ipp.CanonicalG2Decode.infinityMask] at hflags
  · exact hlast
  · exact hflags

end
end Ipp.StrictG2Decode
