import Ipp.Extracted.ArkworksG2PreparedLoopTransition
import Ipp.Extracted.ArkworksG2PreparedLoopModelTransition
import Ipp.Extracted.ArkworksG2PreparedLoopDoubleFacts
import Ipp.Extracted.ArkworksG2PreparedLoopAdditionFacts

/-! Discharge extracted callbacks before entering invariant/model reasoning. -/

namespace Ipp.Extracted.ArkworksG2PreparedLoopFacts

open Ipp.Bls12377
open Ipp.Extracted.ArkworksFq2
open Ipp.Extracted.ArkworksFqMul
open Ipp.Extracted.ArkworksG2
open Ipp.Extracted.ArkworksG2PreparedModel
open Ipp.Extracted.ArkworksG2PreparedSchedule
open Ipp.Extracted.ArkworksG2PreparedLoopTransition
open Ipp.Extracted.ArkworksG2PreparedLoopModelTransition
open Ipp.Extracted.ArkworksG2PreparedLoopDoubleFacts
open Ipp.Extracted.ArkworksG2PreparedLoopAdditionFacts

local instance : Fact baseModulus.Prime := ⟨arithmeticFacts.basePrime⟩
local instance : Fact (∀ x : Fq, x ^ 2 ≠ (-5) + 0 * x) :=
  ⟨by intro x; simpa using arithmeticFacts.fq2Nonresidue x⟩
local instance : g2Curve.IsElliptic := g2_isElliptic

set_option maxRecDepth 4096
set_option maxHeartbeats 2000000

/-- Extracted callback equalities yield only canonical and decoded model facts. -/
theorem modelTransition_of_transition
    (q : G2AffineMont) (twoInvMont : FqMont) (remaining : Nat)
    (state state' : G2ProjMont) (coeffs coeffs' : CoeffVec)
    (hstateCanonical : CanonicalG2 state)
    (hqx : Canonical2 q.x) (hqy : Canonical2 q.y)
    (htwoCanonical : limbsToNat twoInvMont < baseModulus)
    (htwoDecode : decode twoInvMont = twoInv)
    (htransition : PreparedLoopTransition q twoInvMont remaining
      state coeffs state' coeffs') :
    PreparedLoopModelTransition q remaining state coeffs state' coeffs' := by
  cases htransition with
  | falseStep hbit doubled doubleCoeff hdouble =>
      have hfacts := double_facts state state' doubleCoeff twoInvMont
        hstateCanonical htwoCanonical htwoDecode hdouble
      exact .falseStep hbit state' doubleCoeff hfacts.1 hfacts.2
  | trueStep hbit doubled added doubleCoeff addCoeff hdouble hadd =>
      have hdoubleFacts := double_facts state doubled doubleCoeff twoInvMont
        hstateCanonical htwoCanonical htwoDecode hdouble
      have hadditionFacts := addition_facts doubled state'
        { x := q.x, y := q.y, infinity := false } addCoeff
        hdoubleFacts.1 hqx hqy hadd
      exact .trueStep hbit doubled state' doubleCoeff addCoeff
        hadditionFacts.1 hdoubleFacts.2 hadditionFacts.2

#print axioms modelTransition_of_transition

end Ipp.Extracted.ArkworksG2PreparedLoopFacts
