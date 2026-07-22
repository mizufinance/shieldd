import Ipp.Extracted.ArkworksG2PreparedAdditionTransition

namespace Ipp.Extracted.ArkworksG2PreparedAdditionCap

open Ipp.Bls12377
open Ipp.Extracted.ArkworksFq2
open Ipp.Extracted.ArkworksG2
open Ipp.Extracted.ArkworksG2PreparedModel
open Ipp.Extracted.ArkworksG2PreparedRepresentation
open Ipp.Extracted.ArkworksG2PreparedAdditionModel
open Ipp.Extracted.ArkworksG2PreparedAdditionTransition

local instance : Fact baseModulus.Prime := ⟨arithmeticFacts.basePrime⟩
local instance : Fact (∀ x : Fq, x ^ 2 ≠ (-5) + 0 * x) :=
  ⟨by intro x; simpa using arithmeticFacts.fq2Nonresidue x⟩

set_option maxHeartbeats 1000000

/-- Combine decoded execution facts with generic represented mixed addition. -/
theorem combine_add_line_spec
    (r output : Ipp.Extracted.ArkworksG2.G2ProjLimbTriple)
    (q : ark_ip_proofs.s3_07_arkworks_fq_spike.G2AffineMont)
    (coeff : EllCoeffMont) (point qPoint : G2AffinePoint)
    (hrep : RepresentsHomogeneousG2 r point)
    (hq : RepresentsDecodedG2 (some (decodeFq2 q.x, decodeFq2 q.y)) qPoint)
    (hgeneric : let state := decodeHomogeneous r
      state.z ≠ 0 ∧ state.x / state.z ≠ decodeFq2 q.x)
    (hspec : CanonicalG2 output ∧
      decodeHomogeneous output = (additionLineModel r q).1 ∧
      decodeEllCoeff coeff = (additionLineModel r q).2) :
    CanonicalG2 output ∧ RepresentsHomogeneousAddition r output q
      (additionLineModel r q).1 point qPoint ∧
      decodeEllCoeff coeff = (additionLineModel r q).2 := by
  exact ⟨hspec.1,
    transition_of r output q (additionLineModel r q).1 point qPoint
      hspec.2.1 hrep hq hgeneric,
    hspec.2.2⟩

#print axioms combine_add_line_spec

end Ipp.Extracted.ArkworksG2PreparedAdditionCap
