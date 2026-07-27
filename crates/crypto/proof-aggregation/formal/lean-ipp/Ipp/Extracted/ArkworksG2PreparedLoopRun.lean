import Ipp.Extracted.ArkworksG2PreparedSchedule

namespace Ipp.Extracted.ArkworksG2PreparedLoopRun

open Aeneas Aeneas.Std Result ControlFlow
open Ipp.Extracted.ArkworksG2PreparedSchedule

/-- A replayable successful countdown trace with the remaining index explicit. -/
inductive PreparedLoopRun (q : G2AffineMont) (twoInvMont : FqMont) :
    Nat → G2ProjMont → CoeffVec → CoeffVec → Prop
  | done (state : G2ProjMont) (coeffs : CoeffVec) :
      PreparedLoopRun q twoInvMont 0 state coeffs coeffs
  | next {remaining : Nat} {state state' : G2ProjMont}
      {coeffs coeffs' output : CoeffVec}
      (hstep : scheduleBody
        (fun r => ark_ip_proofs.s3_07_arkworks_fq_spike.g2_double_line r twoInvMont)
        ark_ip_proofs.s3_07_arkworks_fq_spike.g2_add_line
        { x := q.x, y := q.y, infinity := false }
        (state, coeffs, ⟨remaining + 1⟩) =
          .ok (.cont (state', coeffs', ⟨remaining⟩)))
      (tail : PreparedLoopRun q twoInvMont remaining state' coeffs' output) :
      PreparedLoopRun q twoInvMont (remaining + 1) state coeffs output

end Ipp.Extracted.ArkworksG2PreparedLoopRun
