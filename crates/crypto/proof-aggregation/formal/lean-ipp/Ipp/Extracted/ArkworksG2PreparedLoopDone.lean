import Ipp.Extracted.ArkworksG2PreparedSchedule

namespace Ipp.Extracted.ArkworksG2PreparedLoopDone

open Aeneas Aeneas.Std Result ControlFlow
open Ipp.Extracted.ArkworksG2PreparedSchedule

theorem scheduleBody_zero
    (doubleStep : DoubleStep) (addStep : AddStep) (q : G2AffineMont)
    (state : G2ProjMont) (coeffs : CoeffVec) :
    scheduleBody doubleStep addStep q (state, coeffs, 0#usize) =
      .ok (.done coeffs) := by
  rfl

end Ipp.Extracted.ArkworksG2PreparedLoopDone
