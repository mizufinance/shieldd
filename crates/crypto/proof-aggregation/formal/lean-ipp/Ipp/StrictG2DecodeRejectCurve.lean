/-
GAP-09 non-curve-root rejection for strict G2 decoding.
-/
import Ipp.StrictG2DecodeRejectField

namespace Ipp.StrictG2Decode

open Ipp.Bls12377
open Ipp.CanonicalWire

set_option maxHeartbeats 800000

noncomputable section

local instance : Fact baseModulus.Prime := ⟨arithmeticFacts.basePrime⟩
local instance : Fact (∀ x : Fq, x ^ 2 ≠ (-5) + 0 * x) :=
  ⟨by intro x; simpa using arithmeticFacts.fq2Nonresidue x⟩
local instance : g2Curve.IsElliptic := g2_isElliptic

/-- A finite Fq2 x-coordinate whose curve right-hand side has no root is rejected. -/
theorem strict_rejects_non_curve_root {bytes : List UInt8} {last : UInt8}
    {flags : Ipp.CanonicalG2Decode.Flags} {x : Fq2Value}
    (_hlen : bytes.length = Ipp.CanonicalG2Decode.compressedBytes)
    (hne : bytes ≠ Ipp.CanonicalG2Decode.infinityEncoding)
    (hlast : bytes[95]? = some last)
    (hflags : Ipp.CanonicalG2Decode.decodeFlags last = some flags)
    (_hfinite : flags ≠ .infinity)
    (hx : Ipp.CanonicalG2Decode.decodeFq2List
      (Ipp.CanonicalG2Decode.clearFlags bytes) = some x)
    (hroot : Ipp.CanonicalG2Decode.sqrtFq2
      (Ipp.CanonicalG2Decode.curveRhs
        (Ipp.CanonicalG2Decode.asNats x)) = none) :
    strictG2Decode bytes = .fail := by
  apply strict_rejects_of_canonical_decode_none
  cases hdecode : Ipp.CanonicalG2Decode.decode bytes with
  | none => rfl
  | some wire =>
      cases wire with
      | infinity =>
          exact (hne (Ipp.CanonicalG2Decode.decode_infinity_unique hdecode)).elim
      | finite px py =>
          obtain ⟨last', flags', hlast', hflags', hpx, hy, _⟩ :=
            Ipp.CanonicalG2Decode.decodeFiniteExact_data
              (Ipp.CanonicalG2Decode.decode_finite_exact hdecode)
          have hlastEq : last = last' :=
            Option.some.inj (hlast.symm.trans hlast')
          subst last'
          have hflagsEq : flags = flags' :=
            Option.some.inj (hflags.symm.trans hflags')
          subst flags'
          have hxEq : x = px := Option.some.inj (hx.symm.trans hpx)
          subst px
          obtain ⟨root, hsqrt, _⟩ :=
            Ipp.CanonicalG2Decode.decodeY_data hy
          rw [hroot] at hsqrt
          contradiction

end
end Ipp.StrictG2Decode
