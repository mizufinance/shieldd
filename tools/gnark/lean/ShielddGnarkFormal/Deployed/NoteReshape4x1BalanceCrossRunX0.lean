import ShielddGnarkFormal.Deployed.NoteReshape4x1BalanceCrossRunsSupport

set_option maxRecDepth 1000000
set_option maxHeartbeats 1000000

namespace Shieldd.GnarkFormal.Deployed.NoteReshape4x1BalanceCrossRunX0

open Shieldd.GnarkFormal
open Contracts.NoteReshape4x1

theorem seated (rho : Nat → Seg74.F) :
    StrideRun.sumAux (Seg74.localRho rho) 3 1 149 =
      StrideRun.sumAux rho 58593 5 149 :=
  NoteReshape4x1BalanceCrossRunsSupport.seatedRun_eq
    rho 3 58593 5 149 (by rfl)

end Shieldd.GnarkFormal.Deployed.NoteReshape4x1BalanceCrossRunX0
