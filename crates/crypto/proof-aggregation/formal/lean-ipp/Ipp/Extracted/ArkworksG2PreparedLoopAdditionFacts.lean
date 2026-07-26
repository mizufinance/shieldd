import Ipp.Extracted.ArkworksG2PreparedAdditionExecute

namespace Ipp.Extracted.ArkworksG2PreparedLoopAdditionFacts

open Aeneas Result
open Ipp.Bls12377
open Ipp.Extracted.ArkworksFq2
open Ipp.Extracted.ArkworksG2
open Ipp.Extracted.ArkworksG2PreparedModel
open Ipp.Extracted.ArkworksG2PreparedAdditionModel

local instance : Fact baseModulus.Prime := ⟨arithmeticFacts.basePrime⟩
local instance : Fact (∀ x : Fq, x ^ 2 ≠ (-5) + 0 * x) :=
  ⟨by intro x; simpa using arithmeticFacts.fq2Nonresidue x⟩
local instance : g2Curve.IsElliptic := g2_isElliptic

set_option maxRecDepth 4096
set_option maxHeartbeats 1000000

theorem addition_facts
    (r output : Ipp.Extracted.ArkworksG2.G2ProjLimbTriple)
    (q : ark_ip_proofs.s3_07_arkworks_fq_spike.G2AffineMont)
    (coeff : Ipp.Extracted.ArkworksG2PreparedModel.EllCoeffMont)
    (hr : CanonicalG2 r)
    (hqx : Canonical2 q.x) (hqy : Canonical2 q.y)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.g2_add_line r q =
      .ok (output, coeff)) :
    CanonicalG2 output ∧
      (decodeHomogeneous output, decodeEllCoeff coeff) =
        addLine (decodeHomogeneous r)
          ⟨false, decodeFq2 q.x, decodeFq2 q.y⟩ := by
  have h :=
    Ipp.Extracted.ArkworksG2PreparedAdditionExecute.g2_add_line_exec_spec
      r output q coeff hr hqx hqy hexec
  refine ⟨h.1, Prod.ext ?_ ?_⟩
  · simpa [additionLineModel] using h.2.1
  · simpa [additionLineModel] using h.2.2

#print axioms addition_facts

end Ipp.Extracted.ArkworksG2PreparedLoopAdditionFacts
