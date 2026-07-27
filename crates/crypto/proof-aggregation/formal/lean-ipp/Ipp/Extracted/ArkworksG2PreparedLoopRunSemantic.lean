import Ipp.Extracted.ArkworksG2PreparedLoopRun
import Ipp.Extracted.ArkworksG2PreparedLoopStep

namespace Ipp.Extracted.ArkworksG2PreparedLoopRunSemantic

open Ipp.Bls12377
open Ipp.Extracted.ArkworksFq2
open Ipp.Extracted.ArkworksFqMul
open Ipp.Extracted.ArkworksG2
open Ipp.Extracted.ArkworksG2PreparedModel
open Ipp.Extracted.ArkworksG2PreparedSchedule
open Ipp.Extracted.ArkworksG2PreparedModelPrefix
open Ipp.Extracted.ArkworksG2PreparedLoopInvariant
open Ipp.Extracted.ArkworksG2PreparedLoopRun
open Ipp.Extracted.ArkworksG2PreparedLoopStep

local instance : Fact baseModulus.Prime := ⟨arithmeticFacts.basePrime⟩
local instance : Fact (∀ x : Fq, x ^ 2 ≠ (-5) + 0 * x) :=
  ⟨by intro x; simpa using arithmeticFacts.fq2Nonresidue x⟩
local instance : g2Curve.IsElliptic := g2_isElliptic

set_option maxHeartbeats 1000000

/-- Folding the single-step theorem over a successful trace reaches the final model. -/
theorem preparedLoopRun_model
    (q : G2AffineMont) (Q : G2AffinePoint) (twoInvMont : FqMont)
    (remaining : Nat) (state : G2ProjMont) (coeffs output : CoeffVec)
    (hbound : remaining ≤ 63)
    (hqx : Canonical2 q.x) (hqy : Canonical2 q.y)
    (hq : RepresentsDecodedG2 (some (decodeFq2 q.x, decodeFq2 q.y)) Q)
    (hsub : inPrimeSubgroup Q) (hne : Q ≠ 0)
    (htwoCanonical : limbsToNat twoInvMont < baseModulus)
    (htwoDecode : decode twoInvMont = twoInv)
    (hinv : PreparedLoopInv (finiteAffineRep q) Q remaining state coeffs)
    (hrun : PreparedLoopRun q twoInvMont remaining state coeffs output) :
    output.val.map decodeEllCoeff =
      (preparedModelAt (finiteAffineRep q) 0).ellCoeffs := by
  induction hrun with
  | done state coeffs => exact hinv.modelCoeffs
  | @next remaining state state' coeffs coeffs' output hstep tail ih =>
      have hnextInv := preparedLoopInv_step q Q twoInvMont
        (remaining + 1) state state' coeffs coeffs'
        (by omega) hbound hqx hqy hq hsub hne htwoCanonical
        htwoDecode hinv hstep
      exact ih (by omega) hnextInv

end Ipp.Extracted.ArkworksG2PreparedLoopRunSemantic
