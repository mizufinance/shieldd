import Ipp.Extracted.ArkworksG2PreparedLoopExecute
import Ipp.Extracted.ArkworksG2PreparedLoopFacts
import Ipp.Extracted.ArkworksG2PreparedLoopSemantic

/-! One executed prepared-loop body preserves the bundled invariant. -/

namespace Ipp.Extracted.ArkworksG2PreparedLoopStep

open Aeneas Aeneas.Std Result ControlFlow
open Ipp.Bls12377
open Ipp.Extracted.ArkworksFq2
open Ipp.Extracted.ArkworksFqMul
open Ipp.Extracted.ArkworksG2
open Ipp.Extracted.ArkworksG2PreparedModel
open Ipp.Extracted.ArkworksG2PreparedSchedule
open Ipp.Extracted.ArkworksG2PreparedLoopInvariant
open Ipp.Extracted.ArkworksG2PreparedLoopExecute
open Ipp.Extracted.ArkworksG2PreparedLoopFacts
open Ipp.Extracted.ArkworksG2PreparedLoopSemantic

local instance : Fact baseModulus.Prime := ⟨arithmeticFacts.basePrime⟩
local instance : Fact (∀ x : Fq, x ^ 2 ≠ (-5) + 0 * x) :=
  ⟨by intro x; simpa using arithmeticFacts.fq2Nonresidue x⟩
local instance : g2Curve.IsElliptic := g2_isElliptic

/-- One successful positive countdown body preserves the prepared-loop invariant. -/
theorem preparedLoopInv_step
    (q : G2AffineMont) (Q : G2AffinePoint) (twoInvMont : FqMont)
    (remaining : Nat) (state state' : G2ProjMont) (coeffs coeffs' : CoeffVec)
    (hpos : 0 < remaining) (hbound : remaining ≤ 63)
    (hqx : Canonical2 q.x) (hqy : Canonical2 q.y)
    (hq : RepresentsDecodedG2 (some (decodeFq2 q.x, decodeFq2 q.y)) Q)
    (hsub : inPrimeSubgroup Q) (hne : Q ≠ 0)
    (htwoCanonical : limbsToNat twoInvMont < baseModulus)
    (htwoDecode : decode twoInvMont = twoInv)
    (hinv : PreparedLoopInv (finiteAffineRep q) Q remaining state coeffs)
    (hexec : scheduleBody
      (fun r => ark_ip_proofs.s3_07_arkworks_fq_spike.g2_double_line r twoInvMont)
      ark_ip_proofs.s3_07_arkworks_fq_spike.g2_add_line
      { x := q.x, y := q.y, infinity := false }
      (state, coeffs, ⟨remaining⟩) =
        .ok (.cont (state', coeffs', ⟨remaining - 1⟩))) :
    PreparedLoopInv (finiteAffineRep q) Q (remaining - 1) state' coeffs' := by
  have htransition := transition_of_body q twoInvMont remaining state state'
    coeffs coeffs' hpos hbound hexec
  have hmodelTransition := modelTransition_of_transition q twoInvMont remaining
    state state' coeffs coeffs' hinv.canonical hqx hqy htwoCanonical
    htwoDecode htransition
  exact preparedLoopInv_modelTransition q Q remaining state state' coeffs coeffs'
    hpos hbound hq hsub hne hinv hmodelTransition

#print axioms preparedLoopInv_step

end Ipp.Extracted.ArkworksG2PreparedLoopStep
