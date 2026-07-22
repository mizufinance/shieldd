import Ipp.Extracted.ArkworksG2PreparedModel

namespace Ipp.Extracted.ArkworksG2PreparedModelTransport

open Ipp.Bls12377
open Ipp.Extracted.ArkworksG2
open Ipp.Extracted.ArkworksG2PreparedModel

local instance : Fact baseModulus.Prime := ⟨arithmeticFacts.basePrime⟩
local instance : Fact (∀ x : Fq, x ^ 2 ≠ (-5) + 0 * x) :=
  ⟨by intro x; simpa using arithmeticFacts.fq2Nonresidue x⟩
local instance : g2Curve.IsElliptic := g2_isElliptic

set_option maxRecDepth 4096
set_option maxHeartbeats 1000000
set_option linter.constructorNameAsVariable false

/-- The generic homogeneous formula doubles its represented decoded point. -/
theorem doubleLine_represents_model (r : G2HomProjective)
    (point : G2AffinePoint)
    (hrep : RepresentsDecodedG2 (decodeModelHomogeneous r) point) :
    RepresentsDecodedG2 (decodeModelHomogeneous (doubleLine r).1)
      (point + point) :=
  doubleLine_represents_double r point hrep

#print axioms doubleLine_represents_model

end Ipp.Extracted.ArkworksG2PreparedModelTransport
