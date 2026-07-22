import Ipp.Extracted.ArkworksG2PreparedFiniteResult
import Ipp.Extracted.ArkworksG2PreparedInfinityModel

/-! End-to-end correctness of extracted prepared-G2 generation. -/

namespace Ipp.Extracted.ArkworksG2PreparedValid

open Aeneas Result
open Ipp.Bls12377
open Ipp.Extracted.ArkworksG2
open Ipp.Extracted.ArkworksG2PreparedFiniteResult
open Ipp.Extracted.ArkworksG2PreparedInfinityModel
open Ipp.Extracted.ArkworksG2PreparedInput
open Ipp.Extracted.ArkworksG2PreparedResult
open Ipp.Extracted.ArkworksG2PreparedSchedule

local instance : Fact baseModulus.Prime := ⟨arithmeticFacts.basePrime⟩
local instance : Fact (∀ x : Fq, x ^ 2 ≠ (-5) + 0 * x) :=
  ⟨by intro x; simpa using arithmeticFacts.fq2Nonresidue x⟩
local instance : g2Curve.IsElliptic := g2_isElliptic

theorem valid_g2_prepared {q : G2AffineLimb} {Q : G2AffinePoint}
    {prepared : G2PreparedLimb}
    (hinput : ValidG2PreparedInput q Q)
    (hsub : inPrimeSubgroup Q)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.g2_prepared q =
      .ok prepared) :
    decodePrepared prepared = preparedModel Q := by
  cases h : q.infinity
  · exact valid_g2_prepared_finite hinput h hsub hexec
  · have hinfinity := g2_prepared_infinity q h
    have hprepared : prepared =
        ({ ell_coeffs := ⟨[]⟩, infinity := true } : G2PreparedLimb) := by
      exact (Result.ok.inj (hinfinity.symm.trans hexec)).symm
    rw [hprepared, decodePrepared_infinity,
      preparedModel_infinity_of_input hinput h]

#print axioms valid_g2_prepared

end Ipp.Extracted.ArkworksG2PreparedValid
