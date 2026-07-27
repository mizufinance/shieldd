import Ipp.Extracted.ArkworksG2PreparedModel

namespace Ipp.Extracted.ArkworksG2PreparedRepresentation

open Ipp.Extracted.ArkworksG2
open Ipp.Extracted.ArkworksG2PreparedModel

structure RepresentationWitness (represented : Prop) : Prop where
  get : represented

/-- A homogeneous accumulator represents a Mathlib affine G2 group point. -/
abbrev RepresentsHomogeneousG2
    (r : Ipp.Extracted.ArkworksG2.G2ProjLimbTriple)
    (point : G2AffinePoint) : Prop :=
  RepresentationWitness
    (RepresentsDecodedG2 (decodeModelHomogeneous (decodeHomogeneous r)) point)

end Ipp.Extracted.ArkworksG2PreparedRepresentation
