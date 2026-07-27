import Ipp.Extracted.ArkworksG2PreparedAdditionExecute
import Ipp.Extracted.ArkworksG2PreparedAdditionCap

/-! Represented-point refinement for the executed prepared-G2 addition line. -/

namespace Ipp.Extracted.ArkworksG2PreparedAddition

open Aeneas Result
open Ipp.Bls12377
open Ipp.Extracted.ArkworksFq2
open Ipp.Extracted.ArkworksG2
open Ipp.Extracted.ArkworksG2PreparedModel
open Ipp.Extracted.ArkworksG2PreparedRepresentation
open Ipp.Extracted.ArkworksG2PreparedAdditionModel

local instance : Fact baseModulus.Prime := ⟨arithmeticFacts.basePrime⟩
local instance : Fact (∀ x : Fq, x ^ 2 ≠ (-5) + 0 * x) :=
  ⟨by intro x; simpa using arithmeticFacts.fq2Nonresidue x⟩

set_option maxRecDepth 4096
set_option maxHeartbeats 1000000

/-- Executed addition-line semantics at the represented-point boundary. -/
theorem g2_add_line_spec
    (r output : Ipp.Extracted.ArkworksG2.G2ProjLimbTriple)
    (q : ark_ip_proofs.s3_07_arkworks_fq_spike.G2AffineMont)
    (coeff : EllCoeffMont) (point qPoint : G2AffinePoint)
    (hr : CanonicalG2 r) (hqx : Canonical2 q.x) (hqy : Canonical2 q.y)
    (hrep : RepresentsHomogeneousG2 r point)
    (hq : RepresentsDecodedG2 (some (decodeFq2 q.x, decodeFq2 q.y)) qPoint)
    (hgeneric : let state := decodeHomogeneous r
      state.z ≠ 0 ∧ state.x / state.z ≠ decodeFq2 q.x)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.g2_add_line r q =
      .ok (output, coeff)) :
    CanonicalG2 output ∧
      Ipp.Extracted.ArkworksG2PreparedAdditionTransition.RepresentsHomogeneousAddition
        r output q (additionLineModel r q).1 point qPoint ∧
      decodeEllCoeff coeff = (additionLineModel r q).2 := by
  exact Ipp.Extracted.ArkworksG2PreparedAdditionCap.combine_add_line_spec
    r output q coeff point qPoint hrep hq hgeneric
    (Ipp.Extracted.ArkworksG2PreparedAdditionExecute.g2_add_line_exec_spec
      r output q coeff hr hqx hqy hexec)

#print axioms g2_add_line_spec

end Ipp.Extracted.ArkworksG2PreparedAddition
