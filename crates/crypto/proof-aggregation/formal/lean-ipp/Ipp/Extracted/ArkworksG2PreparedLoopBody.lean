import Ipp.Extracted.ArkworksG2PreparedSchedule
import Ipp.Extracted.ArkworksG2PreparedDoubleOps

/-! A thin execution-only view of one positive prepared-schedule body. -/

namespace Ipp.Extracted.ArkworksG2PreparedLoopBody

open Aeneas Aeneas.Std Result ControlFlow
open Ipp.Extracted.ArkworksG2PreparedSchedule
open Ipp.Extracted.ArkworksG2PreparedDoubleOps

/-- A positive body factors its concrete shift through the opaque ate-bit computation. -/
theorem scheduleBody_positive
    (doubleStep : DoubleStep) (addStep : AddStep) (q : G2AffineMont)
    (state : G2ProjMont) (coeffs : CoeffVec) (remaining : Nat)
    (hpos : 0 < remaining) :
    scheduleBody doubleStep addStep q (state, coeffs, ⟨remaining⟩) = (do
      let bit ← extractedAteBit ⟨remaining - 1⟩
      let (doubled, doubleCoeff) ← doubleStep state
      let coeffs1 ← alloc.vec.Vec.push coeffs doubleCoeff
      if bit then
        let (added, addCoeff) ← addStep doubled q
        let coeffs2 ← alloc.vec.Vec.push coeffs1 addCoeff
        .ok (.cont (added, coeffs2, ⟨remaining - 1⟩))
      else .ok (.cont (doubled, coeffs1, ⟨remaining - 1⟩))) := by
  unfold scheduleBody extractedAteBit
  change (if (⟨remaining⟩ : Usize) > 0#usize then _ else _) = _
  rw [if_pos (show (⟨remaining⟩ : Usize) > 0#usize by exact hpos)]
  simp only [MacCampaign.sub_eq (⟨remaining⟩ : Usize) 1#usize
      (by omega : 1 ≤ remaining),
    Result.bind_ok, Usize.ofNat_val, result_bind_assoc]

#print axioms scheduleBody_positive

end Ipp.Extracted.ArkworksG2PreparedLoopBody
