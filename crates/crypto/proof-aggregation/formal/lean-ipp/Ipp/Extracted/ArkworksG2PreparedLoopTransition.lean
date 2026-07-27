import Ipp.Extracted.ArkworksG2PreparedSchedule

/-! Opaque certificates for the two possible extracted prepared-loop transitions. -/

namespace Ipp.Extracted.ArkworksG2PreparedLoopTransition

open Aeneas Result
open Ipp.Bls12377
open Ipp.Extracted.ArkworksG2PreparedSchedule

/-- Execution facts retained after the concrete loop body has been discharged. -/
inductive PreparedLoopTransition (q : G2AffineMont) (twoInvMont : FqMont)
    (remaining : Nat) (state : G2ProjMont) (coeffs : CoeffVec) :
    G2ProjMont → CoeffVec → Prop
  | falseStep
      (hbit : ateLoopParameter.testBit (remaining - 1) = false)
      (doubled : G2ProjMont) (doubleCoeff : EllCoeffMont)
      (hdouble : ark_ip_proofs.s3_07_arkworks_fq_spike.g2_double_line
        state twoInvMont = .ok (doubled, doubleCoeff)) :
      PreparedLoopTransition q twoInvMont remaining state coeffs
        doubled ⟨coeffs.val ++ [doubleCoeff]⟩
  | trueStep
      (hbit : ateLoopParameter.testBit (remaining - 1) = true)
      (doubled added : G2ProjMont) (doubleCoeff addCoeff : EllCoeffMont)
      (hdouble : ark_ip_proofs.s3_07_arkworks_fq_spike.g2_double_line
        state twoInvMont = .ok (doubled, doubleCoeff))
      (hadd : ark_ip_proofs.s3_07_arkworks_fq_spike.g2_add_line doubled
        { x := q.x, y := q.y, infinity := false } = .ok (added, addCoeff)) :
      PreparedLoopTransition q twoInvMont remaining state coeffs
        added ⟨(coeffs.val ++ [doubleCoeff]) ++ [addCoeff]⟩

end Ipp.Extracted.ArkworksG2PreparedLoopTransition
