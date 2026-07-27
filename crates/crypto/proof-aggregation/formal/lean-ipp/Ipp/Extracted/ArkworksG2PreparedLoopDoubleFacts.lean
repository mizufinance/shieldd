import Ipp.Extracted.ArkworksG2PreparedDoubleFold

namespace Ipp.Extracted.ArkworksG2PreparedLoopDoubleFacts

open Aeneas Result
open Ipp.Bls12377
open Ipp.Extracted.ArkworksFqMul
open Ipp.Extracted.ArkworksG2
open Ipp.Extracted.ArkworksG2PreparedModel

local instance : Fact baseModulus.Prime := ⟨arithmeticFacts.basePrime⟩
local instance : Fact (∀ x : Fq, x ^ 2 ≠ (-5) + 0 * x) :=
  ⟨by intro x; simpa using arithmeticFacts.fq2Nonresidue x⟩
local instance : g2Curve.IsElliptic := g2_isElliptic

set_option maxRecDepth 4096
set_option maxHeartbeats 1000000

theorem double_facts
    (r output : Ipp.Extracted.ArkworksG2.G2ProjLimbTriple)
    (coeff : Ipp.Extracted.ArkworksG2PreparedModel.EllCoeffMont)
    (twoInvMont : LimbArray)
    (hr : CanonicalG2 r)
    (htwoCanonical : limbsToNat twoInvMont < baseModulus)
    (htwoDecode : decode twoInvMont = twoInv)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.g2_double_line
      r twoInvMont = .ok (output, coeff)) :
    CanonicalG2 output ∧
      (decodeHomogeneous output, decodeEllCoeff coeff) =
        doubleLine (decodeHomogeneous r) := by
  have h := Ipp.Extracted.ArkworksG2PreparedDouble.g2_double_line_exec_spec
    r output coeff twoInvMont hr htwoCanonical htwoDecode hexec
  refine ⟨h.1, Prod.ext ?_ ?_⟩
  · simpa [doublingLineModel] using h.2.1
  · simpa [doublingLineModel] using h.2.2

#print axioms double_facts

end Ipp.Extracted.ArkworksG2PreparedLoopDoubleFacts
