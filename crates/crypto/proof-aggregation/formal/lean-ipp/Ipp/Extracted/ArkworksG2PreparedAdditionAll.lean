import Ipp.Extracted.ArkworksG2PreparedAdditionTransport
import Ipp.Extracted.ArkworksG2PreparedRepresentation

namespace Ipp.Extracted.ArkworksG2PreparedAdditionAll

open Ipp.Bls12377
open Ipp.Extracted.ArkworksG2
open Ipp.Extracted.ArkworksG2PreparedModel
open Ipp.Extracted.ArkworksG2PreparedRepresentation

local instance : Fact baseModulus.Prime := ⟨arithmeticFacts.basePrime⟩
local instance : Fact (∀ x : Fq, x ^ 2 ≠ (-5) + 0 * x) :=
  ⟨by intro x; simpa using arithmeticFacts.fq2Nonresidue x⟩
local instance : g2Curve.IsElliptic := g2_isElliptic

abbrev AllGenericHomogeneousAdds : Prop :=
  RepresentationWitness
    (∀ (state : G2HomProjective) (qx qy : Fq2)
      (point qPoint : G2AffinePoint),
      state.z ≠ 0 → state.x / state.z ≠ qx →
      RepresentsDecodedG2 (decodeModelHomogeneous state) point →
      RepresentsDecodedG2 (some (qx, qy)) qPoint →
      RepresentsDecodedG2
        (decodeModelHomogeneous (addLine state ⟨false, qx, qy⟩).1)
        (point + qPoint))

theorem allGenericHomogeneousAdds : AllGenericHomogeneousAdds :=
  ⟨Ipp.Extracted.ArkworksG2PreparedAdditionTransport.addLine_represents_add⟩

#print axioms allGenericHomogeneousAdds

end Ipp.Extracted.ArkworksG2PreparedAdditionAll
