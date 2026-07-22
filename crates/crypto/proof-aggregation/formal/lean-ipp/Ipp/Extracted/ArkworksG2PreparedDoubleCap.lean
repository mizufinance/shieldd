import Ipp.Extracted.ArkworksG2PreparedDoubleTransition

namespace Ipp.Extracted.ArkworksG2PreparedDoubleCap

open Ipp.Bls12377
open Ipp.Extracted.ArkworksG2
open Ipp.Extracted.ArkworksG2PreparedModel
open Ipp.Extracted.ArkworksG2PreparedRepresentation
open Ipp.Extracted.ArkworksG2PreparedDoubleTransition

local instance : Fact baseModulus.Prime := ⟨arithmeticFacts.basePrime⟩
local instance : Fact (∀ x : Fq, x ^ 2 ≠ (-5) + 0 * x) :=
  ⟨by intro x; simpa using arithmeticFacts.fq2Nonresidue x⟩
local instance : g2Curve.IsElliptic := g2_isElliptic

set_option maxHeartbeats 1000000
set_option linter.constructorNameAsVariable false

/-- Combine decoded execution facts with generic represented doubling. -/
theorem combine_double_line_spec
    (r output : Ipp.Extracted.ArkworksG2.G2ProjLimbTriple)
    (coeff : EllCoeffMont) (point : G2AffinePoint)
    (hrep : RepresentsHomogeneousG2 r point)
    (hspec : CanonicalG2 output ∧
      decodeHomogeneous output = (doublingLineModel r).1 ∧
      decodeEllCoeff coeff = (doublingLineModel r).2) :
    RepresentsHomogeneousDoubling r output (doublingLineModel r).1 point ∧
      decodeEllCoeff coeff = (doublingLineModel r).2 :=
  ⟨transition_of r output (doublingLineModel r).1 point hspec.2.1 hrep,
    hspec.2.2⟩

end Ipp.Extracted.ArkworksG2PreparedDoubleCap
