/-
GAP-09 trailing-input and checked-subgroup rejection for strict G2 decoding.
-/
import Ipp.StrictG2DecodeRejectInfinity

namespace Ipp.StrictG2Decode

open Ipp.Bls12377

set_option maxHeartbeats 800000

noncomputable section

local instance : Fact baseModulus.Prime := ⟨arithmeticFacts.basePrime⟩
local instance : Fact (∀ x : Fq, x ^ 2 ≠ (-5) + 0 * x) :=
  ⟨by intro x; simpa using arithmeticFacts.fq2Nonresidue x⟩
local instance : g2Curve.IsElliptic := g2_isElliptic

/-- Every nonempty suffix is rejected, even after a valid 96-byte prefix. -/
theorem strict_rejects_trailing_input (bytes suffix : List UInt8)
    (hlen : bytes.length = Ipp.CanonicalG2Decode.compressedBytes)
    (hsuffix : suffix ≠ []) :
    strictG2Decode (bytes ++ suffix) = .fail := by
  apply strict_rejects_of_canonical_decode_none
  apply Ipp.CanonicalG2Decode.decode_rejects_wrong_length
  simp [hlen, Ipp.CanonicalG2Decode.compressedBytes]
  exact hsuffix

/-- Canonical points that fail the checked subgroup predicate are rejected. -/
theorem strict_rejects_failed_subgroup_check {bytes : List UInt8}
    {wire : Ipp.CanonicalG2Decode.Point}
    (hdecode : Ipp.CanonicalG2Decode.decode bytes = some wire)
    (hfailed : ¬ arkworksG2CheckedMembership wire) :
    strictG2Decode bytes = .fail := by
  cases h : strictG2Decode bytes with
  | fail => rfl
  | ok point =>
      rcases (g2_strict_checked_success_iff bytes point).mp h with
        ⟨wire', hdecode', hchecked', _⟩
      have : wire = wire' := Option.some.inj (hdecode.symm.trans hdecode')
      exact (hfailed (this ▸ hchecked')).elim

end
end Ipp.StrictG2Decode
