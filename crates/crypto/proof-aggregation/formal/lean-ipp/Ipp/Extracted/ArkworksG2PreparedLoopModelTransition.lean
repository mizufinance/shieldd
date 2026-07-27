import Ipp.Extracted.ArkworksG2PreparedLoopTransition
import Ipp.Extracted.ArkworksG2PreparedModel

/-! Decoded callback facts retained after extracted executions have been discharged. -/

namespace Ipp.Extracted.ArkworksG2PreparedLoopModelTransition

open Ipp.Bls12377
open Ipp.Extracted.ArkworksFq2
open Ipp.Extracted.ArkworksG2
open Ipp.Extracted.ArkworksG2PreparedModel
open Ipp.Extracted.ArkworksG2PreparedSchedule

/-- Canonical and decoded model facts for one selected prepared-loop branch. -/
inductive PreparedLoopModelTransition (q : G2AffineMont) (remaining : Nat)
    (state : G2ProjMont) (coeffs : CoeffVec) : G2ProjMont → CoeffVec → Prop
  | falseStep
      (hbit : ateLoopParameter.testBit (remaining - 1) = false)
      (doubled : G2ProjMont)
      (doubleCoeff : ArkworksG2PreparedSchedule.EllCoeffMont)
      (hcanonical : CanonicalG2 doubled)
      (hdouble : (decodeHomogeneous doubled, decodeEllCoeff doubleCoeff) =
        doubleLine (decodeHomogeneous state)) :
      PreparedLoopModelTransition q remaining state coeffs
        doubled ⟨coeffs.val ++ [doubleCoeff]⟩
  | trueStep
      (hbit : ateLoopParameter.testBit (remaining - 1) = true)
      (doubled added : G2ProjMont)
      (doubleCoeff addCoeff : ArkworksG2PreparedSchedule.EllCoeffMont)
      (hcanonical : CanonicalG2 added)
      (hdouble : (decodeHomogeneous doubled, decodeEllCoeff doubleCoeff) =
        doubleLine (decodeHomogeneous state))
      (hadd : (decodeHomogeneous added, decodeEllCoeff addCoeff) =
        addLine (decodeHomogeneous doubled)
          ⟨false, decodeFq2 q.x, decodeFq2 q.y⟩) :
      PreparedLoopModelTransition q remaining state coeffs
        added ⟨(coeffs.val ++ [doubleCoeff]) ++ [addCoeff]⟩

end Ipp.Extracted.ArkworksG2PreparedLoopModelTransition
