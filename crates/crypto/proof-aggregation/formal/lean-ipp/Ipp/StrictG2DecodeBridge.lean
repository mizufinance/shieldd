/-
GAP-09 bridge from strict G2 acceptance to the executed S3-32 subgroup check.
-/
import Ipp.StrictG2DecodeRejections
import Ipp.Extracted.ArkworksSubgroupCheck

namespace Ipp.StrictG2Decode

open Ipp.Bls12377

set_option maxHeartbeats 800000

noncomputable section

local instance : Fact baseModulus.Prime := ⟨arithmeticFacts.basePrime⟩
local instance : Fact (∀ x : Fq, x ^ 2 ≠ (-5) + 0 * x) :=
  ⟨by intro x; simpa using arithmeticFacts.fq2Nonresidue x⟩
local instance : g2Curve.IsElliptic := g2_isElliptic
local instance bridgeClassicalPropDecidable (p : Prop) : Decidable p :=
  Classical.propDecidable p

/-- Strict success lands in the GAP-06 prime subgroup. -/
theorem strict_success_prime_subgroup {bytes : List UInt8} {point : G2}
    (hstrict : strictG2Decode bytes = .ok point) :
    point ∈ g2PrimeSubgroup := by
  rcases (g2_strict_checked_success_iff bytes point).mp hstrict with
    ⟨wire, _, hchecked, hrep⟩
  exact (arkworksG2CheckedMembership_iff_mem_g2PrimeSubgroup point).mp
    (checkedMembership_of_represents hchecked hrep)

/-- S3-32's executed subgroup check returns true on every strict success. -/
theorem executed_subgroup_check_accepts_strict {bytes : List UInt8} {point : G2}
    {encoded : Ipp.Extracted.ArkworksG2.G2AffineLimbPair} {out : Bool}
    (hstrict : strictG2Decode bytes = .ok point)
    (hpoint : Ipp.Extracted.ArkworksScalarMul.ValidG2AffineLoopBase encoded
      (Ipp.Extracted.ArkworksSubgroupCheck.g2AffineEquiv point))
    (hexec : Ipp.Extracted.ArkworksSubgroupCheck.g2_subgroup_check encoded = .ok out) :
    out = true := by
  have hout :=
    Ipp.Extracted.ArkworksSubgroupCheck.valid_g2_subgroup_check_checked_membership
      encoded point out hpoint hexec
  have hmembership :
      Ipp.Bls12377.arkworksG2CheckedMembership point := by
    simpa [arkworksG2CheckedMembership_iff_mem_g2PrimeSubgroup] using
      strict_success_prime_subgroup hstrict
  rw [hout]
  simpa only [decide_eq_true_eq] using hmembership

end
end Ipp.StrictG2Decode
