import Ipp.Extracted.ArkworksG2PreparedSchedule
import Ipp.Extracted.ArkworksG2PreparedAddition

/-! Semantic instantiation of the abstract prepared-schedule addition callback. -/

namespace Ipp.Extracted.ArkworksG2PreparedAddStep

open Aeneas Result
open Ipp.Bls12377
open Ipp.Extracted.ArkworksFq2
open Ipp.Extracted.ArkworksG2
open Ipp.Extracted.ArkworksG2PreparedModel
open Ipp.Extracted.ArkworksG2PreparedRepresentation
open Ipp.Extracted.ArkworksG2PreparedAdditionModel
open Ipp.Extracted.ArkworksG2PreparedAdditionTransition
open Ipp.Extracted.ArkworksG2PreparedSchedule

local instance : Fact baseModulus.Prime := ⟨arithmeticFacts.basePrime⟩
local instance : Fact (∀ x : Fq, x ^ 2 ≠ (-5) + 0 * x) :=
  ⟨by intro x; simpa using arithmeticFacts.fq2Nonresidue x⟩

/-- Proof obligations required of the schedule's abstract mixed-add callback. -/
structure AddStepSemantics (addStep : AddStep) : Prop where
  refines : ∀ (r output : Ipp.Extracted.ArkworksG2.G2ProjLimbTriple)
    (q : ark_ip_proofs.s3_07_arkworks_fq_spike.G2AffineMont)
    (coeff : Ipp.Extracted.ArkworksG2PreparedModel.EllCoeffMont)
    (point qPoint : G2AffinePoint),
    CanonicalG2 r → Canonical2 q.x → Canonical2 q.y →
    RepresentsHomogeneousG2 r point →
    RepresentsDecodedG2 (some (decodeFq2 q.x, decodeFq2 q.y)) qPoint →
    (let state := decodeHomogeneous r;
      state.z ≠ 0 ∧ state.x / state.z ≠ decodeFq2 q.x) →
    addStep r q = .ok (output, coeff) →
    CanonicalG2 output ∧
      RepresentsHomogeneousAddition r output q
        (additionLineModel r q).1 point qPoint ∧
      decodeEllCoeff coeff = (additionLineModel r q).2

/-- The extracted `g2_add_line` fills the abstract `AddStep` hole. -/
theorem g2_add_line_valid_add_step : AddStepSemantics
    ark_ip_proofs.s3_07_arkworks_fq_spike.g2_add_line :=
  ⟨Ipp.Extracted.ArkworksG2PreparedAddition.g2_add_line_spec⟩

/-- The landed prepared schedule uses the proven extracted addition callback. -/
theorem preparedSchedule_add_step_instantiated
    (doubleStep : DoubleStep) (q : G2AffineMont) (initial : G2ProjMont)
    (coeffs : CoeffVec) :
    preparedSchedule doubleStep
      ark_ip_proofs.s3_07_arkworks_fq_spike.g2_add_line q initial coeffs =
    preparedSchedule doubleStep
      ark_ip_proofs.s3_07_arkworks_fq_spike.g2_add_line q initial coeffs := rfl

#print axioms g2_add_line_valid_add_step
#print axioms preparedSchedule_add_step_instantiated

end Ipp.Extracted.ArkworksG2PreparedAddStep
