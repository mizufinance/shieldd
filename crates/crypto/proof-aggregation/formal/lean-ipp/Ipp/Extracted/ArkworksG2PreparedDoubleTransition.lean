import Ipp.Extracted.ArkworksG2PreparedDoubleAll
import Ipp.Extracted.ArkworksG2PreparedRepresentation

namespace Ipp.Extracted.ArkworksG2PreparedDoubleTransition

open Ipp.Bls12377
open Ipp.Extracted.ArkworksG2
open Ipp.Extracted.ArkworksG2PreparedModel
open Ipp.Extracted.ArkworksG2PreparedModelTransport
open Ipp.Extracted.ArkworksG2PreparedRepresentation
open Ipp.Extracted.ArkworksG2PreparedDoubleAll

local instance : Fact baseModulus.Prime := ⟨arithmeticFacts.basePrime⟩
local instance : Fact (∀ x : Fq, x ^ 2 ≠ (-5) + 0 * x) :=
  ⟨by intro x; simpa using arithmeticFacts.fq2Nonresidue x⟩
local instance : g2Curve.IsElliptic := g2_isElliptic

set_option maxHeartbeats 1000000
set_option linter.constructorNameAsVariable false

structure TransitionWitness (stateEq inputRep doubles : Prop) : Prop where
  state : stateEq
  input : inputRep
  double : doubles

abbrev RepresentsHomogeneousDoubling
    (r output : Ipp.Extracted.ArkworksG2.G2ProjLimbTriple)
    (model : G2HomProjective) (point : G2AffinePoint) : Prop :=
  TransitionWitness
    (RepresentationWitness (decodeHomogeneous output = model))
    (RepresentsHomogeneousG2 r point) AllHomogeneousDoubles

theorem transition_of (r output : Ipp.Extracted.ArkworksG2.G2ProjLimbTriple)
    (model : G2HomProjective) (point : G2AffinePoint)
    (hstate : decodeHomogeneous output = model)
    (hrep : RepresentsHomogeneousG2 r point) :
    RepresentsHomogeneousDoubling r output model point :=
  ⟨⟨hstate⟩, hrep, allHomogeneousDoubles⟩

end Ipp.Extracted.ArkworksG2PreparedDoubleTransition
