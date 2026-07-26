import Ipp.Extracted.ArkworksG2PreparedLoopFuel
import Ipp.Extracted.ArkworksG2PreparedLoopInitial

/-! Semantic result of a successful finite prepared schedule. -/

namespace Ipp.Extracted.ArkworksG2PreparedFiniteCoefficients

open Aeneas Result
open Ipp.Bls12377
open Ipp.Extracted.ArkworksFq2
open Ipp.Extracted.ArkworksFqMul
open Ipp.Extracted.ArkworksG2
open Ipp.Extracted.ArkworksG2PreparedInput
open Ipp.Extracted.ArkworksG2PreparedLoopFuel
open Ipp.Extracted.ArkworksG2PreparedLoopInitial
open Ipp.Extracted.ArkworksG2PreparedLoopInvariant
open Ipp.Extracted.ArkworksG2PreparedModel
open Ipp.Extracted.ArkworksG2PreparedModelPrefix
open Ipp.Extracted.ArkworksG2PreparedResult
open Ipp.Extracted.ArkworksG2PreparedSchedule

local instance : Fact baseModulus.Prime := ⟨arithmeticFacts.basePrime⟩
local instance : Fact (∀ x : Fq, x ^ 2 ≠ (-5) + 0 * x) :=
  ⟨by intro x; simpa using arithmeticFacts.fq2Nonresidue x⟩
local instance : g2Curve.IsElliptic := g2_isElliptic

theorem finite_coefficients {q : G2AffineLimb} {Q : G2AffinePoint}
    (twoInvMont : FqMont) (coeffs : CoeffVec)
    (hinput : ValidG2PreparedInput q Q) (hfinite : q.infinity = false)
    (hsub : inPrimeSubgroup Q)
    (htwoCanonical : limbsToNat twoInvMont < baseModulus)
    (htwoDecode : decode twoInvMont = twoInv)
    (hexec : preparedSchedule
      (fun r => ark_ip_proofs.s3_07_arkworks_fq_spike.g2_double_line r twoInvMont)
      ark_ip_proofs.s3_07_arkworks_fq_spike.g2_add_line
      { x := q.x, y := q.y, infinity := false }
      (initialState q) ⟨[]⟩ = .ok coeffs) :
    coeffs.val.map decodeEllCoeff =
      (preparedModelFinite (finiteAffineRep q)).ellCoeffs := by
  have hrep : RepresentsDecodedG2
      (some (decodeFq2 q.x, decodeFq2 q.y)) Q := by
    simpa only [hfinite, if_false] using hinput.represents
  have hloop : LoopResult
      (scheduleBody
        (fun r => ark_ip_proofs.s3_07_arkworks_fq_spike.g2_double_line r twoInvMont)
        ark_ip_proofs.s3_07_arkworks_fq_spike.g2_add_line
        { x := q.x, y := q.y, infinity := false })
      (initialState q, ⟨[]⟩, ⟨63⟩) (.ok coeffs) := by
    unfold preparedSchedule at hexec
    exact loopResult_of_eq (by simp) hexec
  have hresult := preparedLoopResult q Q twoInvMont 63 (initialState q)
    ⟨[]⟩ coeffs (by omega) hinput.canonicalX hinput.canonicalY hrep
    hsub (finite_ne_zero hinput hfinite) htwoCanonical htwoDecode
    (preparedLoopInv_initial hinput hfinite) hloop
  simpa only [preparedModelAt_final] using hresult

end Ipp.Extracted.ArkworksG2PreparedFiniteCoefficients
