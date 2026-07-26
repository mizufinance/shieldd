import Ipp.Extracted.ArkworksG2PreparedFiniteCoefficients
import Ipp.Extracted.ArkworksG2PreparedFiniteExecution
import Ipp.Extracted.ArkworksG2PreparedTwoInv

/-! Decoded finite prepared output equals the pure prepared model. -/

namespace Ipp.Extracted.ArkworksG2PreparedFiniteModel

open Ipp.Bls12377
open Ipp.Extracted.ArkworksG2
open Ipp.Extracted.ArkworksG2PreparedFiniteCoefficients
open Ipp.Extracted.ArkworksG2PreparedFiniteExecution
open Ipp.Extracted.ArkworksG2PreparedInput
open Ipp.Extracted.ArkworksG2PreparedLoopInvariant
open Ipp.Extracted.ArkworksG2PreparedResult
open Ipp.Extracted.ArkworksG2PreparedTwoInv

local instance : Fact baseModulus.Prime := ⟨arithmeticFacts.basePrime⟩
local instance : Fact (∀ x : Fq, x ^ 2 ≠ (-5) + 0 * x) :=
  ⟨by intro x; simpa using arithmeticFacts.fq2Nonresidue x⟩
local instance : g2Curve.IsElliptic := g2_isElliptic

theorem finite_model_of_execution {q : G2AffineLimb} {Q : G2AffinePoint}
    {prepared : G2PreparedLimb}
    (hinput : ValidG2PreparedInput q Q) (hfinite : q.infinity = false)
    (hsub : inPrimeSubgroup Q)
    (hexec : FinitePreparedExecution q prepared) :
    decodePrepared prepared =
      ⟨(preparedModelFinite (finiteAffineRep q)).ellCoeffs, false⟩ := by
  cases hexec with
  | mk two twoInvMont coeffs hdouble hinv hschedule hprepared =>
      obtain ⟨htwoCanonical, htwoDecode⟩ :=
        two_inv_facts two twoInvMont hdouble hinv
      have hcoeffs := finite_coefficients twoInvMont coeffs hinput hfinite hsub
        htwoCanonical htwoDecode hschedule
      subst prepared
      exact congrArg (fun values => DecodedPrepared.mk values false) hcoeffs

end Ipp.Extracted.ArkworksG2PreparedFiniteModel
