import Ipp.Extracted.ArkworksG2PreparedModelTransport
import Ipp.Extracted.ArkworksG2PreparedRepresentation

namespace Ipp.Extracted.ArkworksG2PreparedDoubleAll

open Ipp.Bls12377
open Ipp.Extracted.ArkworksG2
open Ipp.Extracted.ArkworksG2PreparedModel
open Ipp.Extracted.ArkworksG2PreparedModelTransport
open Ipp.Extracted.ArkworksG2PreparedRepresentation

local instance : Fact baseModulus.Prime := ⟨arithmeticFacts.basePrime⟩
local instance : Fact (∀ x : Fq, x ^ 2 ≠ (-5) + 0 * x) :=
  ⟨by intro x; simpa using arithmeticFacts.fq2Nonresidue x⟩
local instance : g2Curve.IsElliptic := g2_isElliptic

set_option linter.constructorNameAsVariable false

abbrev AllHomogeneousDoubles : Prop :=
  RepresentationWitness
    (∀ (state : G2HomProjective) (representedPoint : G2AffinePoint),
      RepresentsDecodedG2 (decodeModelHomogeneous state) representedPoint →
      RepresentsDecodedG2 (decodeModelHomogeneous (doubleLine state).1)
        (representedPoint + representedPoint))

theorem allHomogeneousDoubles : AllHomogeneousDoubles :=
  ⟨doubleLine_represents_model⟩

end Ipp.Extracted.ArkworksG2PreparedDoubleAll
