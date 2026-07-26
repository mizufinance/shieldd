import Ipp.Extracted.ArkworksG2PreparedFiniteModel

namespace Ipp.Extracted.ArkworksG2PreparedFiniteResult

open Ipp.Bls12377
open Ipp.Extracted.ArkworksG2
open Ipp.Extracted.ArkworksG2PreparedFiniteExecution
open Ipp.Extracted.ArkworksG2PreparedFiniteModel
open Ipp.Extracted.ArkworksG2PreparedInput
open Ipp.Extracted.ArkworksG2PreparedLoopInvariant
open Ipp.Extracted.ArkworksG2PreparedResult

local instance : Fact baseModulus.Prime := ⟨arithmeticFacts.basePrime⟩
local instance : Fact (∀ x : Fq, x ^ 2 ≠ (-5) + 0 * x) :=
  ⟨by intro x; simpa using arithmeticFacts.fq2Nonresidue x⟩
local instance : g2Curve.IsElliptic := g2_isElliptic

theorem valid_g2_prepared_finite {q : G2AffineLimb} {Q : G2AffinePoint}
    {prepared : G2PreparedLimb}
    (hinput : ValidG2PreparedInput q Q) (hfinite : q.infinity = false)
    (hsub : inPrimeSubgroup Q)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.g2_prepared q =
      .ok prepared) :
    decodePrepared prepared = preparedModel Q := by
  have hmodel := finite_model_of_execution hinput hfinite hsub
    (finite_execution_of_g2_prepared q prepared hfinite hexec)
  rw [preparedModel, affineRepOfPoint_eq hinput hfinite]
  exact hmodel

end Ipp.Extracted.ArkworksG2PreparedFiniteResult
