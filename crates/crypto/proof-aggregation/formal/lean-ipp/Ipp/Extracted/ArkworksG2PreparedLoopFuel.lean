import Ipp.Extracted.ArkworksG2PreparedLoopRunExecution
import Ipp.Extracted.ArkworksG2PreparedLoopRunSemantic

/-! Structural countdown theorem for a finite extracted prepared-G2 result. -/

namespace Ipp.Extracted.ArkworksG2PreparedLoopFuel

open Aeneas Result
open Ipp.Bls12377
open Ipp.Extracted.ArkworksFq2
open Ipp.Extracted.ArkworksFqMul
open Ipp.Extracted.ArkworksG2
open Ipp.Extracted.ArkworksG2PreparedModel
open Ipp.Extracted.ArkworksG2PreparedSchedule
open Ipp.Extracted.ArkworksG2PreparedModelPrefix
open Ipp.Extracted.ArkworksG2PreparedLoopInvariant
open Ipp.Extracted.ArkworksG2PreparedLoopRunExecution
open Ipp.Extracted.ArkworksG2PreparedLoopRunSemantic

local instance : Fact baseModulus.Prime := ⟨arithmeticFacts.basePrime⟩
local instance : Fact (∀ x : Fq, x ^ 2 ≠ (-5) + 0 * x) :=
  ⟨by intro x; simpa using arithmeticFacts.fq2Nonresidue x⟩
local instance : g2Curve.IsElliptic := g2_isElliptic

theorem preparedLoopResult
    (q : G2AffineMont) (Q : G2AffinePoint) (twoInvMont : FqMont)
    (remaining : Nat) (state : G2ProjMont) (coeffs output : CoeffVec)
    (hbound : remaining ≤ 63)
    (hqx : Canonical2 q.x) (hqy : Canonical2 q.y)
    (hq : RepresentsDecodedG2 (some (decodeFq2 q.x, decodeFq2 q.y)) Q)
    (hsub : inPrimeSubgroup Q) (hne : Q ≠ 0)
    (htwoCanonical : limbsToNat twoInvMont < baseModulus)
    (htwoDecode : decode twoInvMont = twoInv)
    (hinv : PreparedLoopInv (finiteAffineRep q) Q remaining state coeffs)
    (hexec : LoopResult
      (scheduleBody
        (fun r => ark_ip_proofs.s3_07_arkworks_fq_spike.g2_double_line r twoInvMont)
        ark_ip_proofs.s3_07_arkworks_fq_spike.g2_add_line
        { x := q.x, y := q.y, infinity := false })
      (state, coeffs, ⟨remaining⟩) (.ok output)) :
    output.val.map decodeEllCoeff =
      (preparedModelAt (finiteAffineRep q) 0).ellCoeffs := by
  have hrun := run_of_loopResult q twoInvMont remaining state coeffs output
    hbound hexec
  exact preparedLoopRun_model q Q twoInvMont remaining state coeffs output
    hbound hqx hqy hq hsub hne htwoCanonical htwoDecode hinv hrun

end Ipp.Extracted.ArkworksG2PreparedLoopFuel
