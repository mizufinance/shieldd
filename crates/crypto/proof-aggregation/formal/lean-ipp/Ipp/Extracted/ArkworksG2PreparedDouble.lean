import Ipp.Extracted.ArkworksG2PreparedDoubleFold
import Ipp.Extracted.ArkworksG2PreparedDoubleCap

/-! S3-33 represented-point refinement for the executed doubling line. -/

namespace Ipp.Extracted.ArkworksG2PreparedDouble

open Aeneas Result
open Ipp.Bls12377
open Ipp.Extracted.ArkworksFqMul
open Ipp.Extracted.ArkworksG2
open Ipp.Extracted.ArkworksG2PreparedModel
open Ipp.Extracted.ArkworksG2PreparedDoubleCap
open Ipp.Extracted.ArkworksG2PreparedRepresentation
open Ipp.Extracted.ArkworksG2PreparedDoubleTransition

local instance : Fact baseModulus.Prime := ⟨arithmeticFacts.basePrime⟩
local instance : Fact (∀ x : Fq, x ^ 2 ≠ (-5) + 0 * x) :=
  ⟨by intro x; simpa using arithmeticFacts.fq2Nonresidue x⟩
local instance : g2Curve.IsElliptic := g2_isElliptic

set_option maxRecDepth 4096
set_option maxHeartbeats 1000000
set_option linter.constructorNameAsVariable false

/-- Executed doubling-line semantics at the represented-point boundary. -/
theorem g2_double_line_spec
    (r output : Ipp.Extracted.ArkworksG2.G2ProjLimbTriple)
    (coeff : EllCoeffMont) (twoInvMont : LimbArray)
    (point : G2AffinePoint) (hr : CanonicalG2 r)
    (htwoCanonical : limbsToNat twoInvMont < baseModulus)
    (htwoDecode : decode twoInvMont = twoInv)
    (hrep : RepresentsHomogeneousG2 r point)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.g2_double_line
      r twoInvMont = .ok (output, coeff)) :
    RepresentsHomogeneousDoubling r output (doublingLineModel r).1 point ∧
      decodeEllCoeff coeff = (doublingLineModel r).2 :=
  combine_double_line_spec r output coeff point hrep
    (g2_double_line_exec_spec r output coeff twoInvMont hr
      htwoCanonical htwoDecode hexec)

end Ipp.Extracted.ArkworksG2PreparedDouble
