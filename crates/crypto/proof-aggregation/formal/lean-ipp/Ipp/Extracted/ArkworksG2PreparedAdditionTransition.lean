import Ipp.Extracted.ArkworksG2PreparedAdditionAll
import Ipp.Extracted.ArkworksG2PreparedAdditionModel

namespace Ipp.Extracted.ArkworksG2PreparedAdditionTransition

open Ipp.Bls12377
open Ipp.Extracted.ArkworksFq2
open Ipp.Extracted.ArkworksG2
open Ipp.Extracted.ArkworksG2PreparedModel
open Ipp.Extracted.ArkworksG2PreparedRepresentation
open Ipp.Extracted.ArkworksG2PreparedAdditionModel
open Ipp.Extracted.ArkworksG2PreparedAdditionAll

local instance : Fact baseModulus.Prime := ⟨arithmeticFacts.basePrime⟩
local instance : Fact (∀ x : Fq, x ^ 2 ≠ (-5) + 0 * x) :=
  ⟨by intro x; simpa using arithmeticFacts.fq2Nonresidue x⟩

structure AdditionTransitionWitness
    (stateEq inputRep affineRep generic adds : Prop) : Prop where
  state : stateEq
  input : inputRep
  affine : affineRep
  generic : generic
  add : adds

abbrev RepresentsHomogeneousAddition
    (r output : Ipp.Extracted.ArkworksG2.G2ProjLimbTriple)
    (q : ark_ip_proofs.s3_07_arkworks_fq_spike.G2AffineMont)
    (model : G2HomProjective) (point qPoint : G2AffinePoint) : Prop :=
  AdditionTransitionWitness
    (RepresentationWitness (decodeHomogeneous output = model))
    (RepresentsHomogeneousG2 r point)
    (RepresentsDecodedG2 (some (decodeFq2 q.x, decodeFq2 q.y)) qPoint)
    (let state := decodeHomogeneous r;
      state.z ≠ 0 ∧ state.x / state.z ≠ decodeFq2 q.x)
    AllGenericHomogeneousAdds

theorem transition_of (r output : Ipp.Extracted.ArkworksG2.G2ProjLimbTriple)
    (q : ark_ip_proofs.s3_07_arkworks_fq_spike.G2AffineMont)
    (model : G2HomProjective) (point qPoint : G2AffinePoint)
    (hstate : decodeHomogeneous output = model)
    (hrep : RepresentsHomogeneousG2 r point)
    (hq : RepresentsDecodedG2 (some (decodeFq2 q.x, decodeFq2 q.y)) qPoint)
    (hgeneric : let state := decodeHomogeneous r;
      state.z ≠ 0 ∧ state.x / state.z ≠ decodeFq2 q.x) :
    RepresentsHomogeneousAddition r output q model point qPoint :=
  ⟨⟨hstate⟩, hrep, hq, hgeneric, allGenericHomogeneousAdds⟩

end Ipp.Extracted.ArkworksG2PreparedAdditionTransition
