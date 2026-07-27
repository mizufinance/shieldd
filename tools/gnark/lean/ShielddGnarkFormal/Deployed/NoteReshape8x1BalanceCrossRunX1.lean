import ShielddGnarkFormal.Deployed.NoteReshape8x1BalanceCrossRunsSupport

set_option maxRecDepth 1000000
set_option maxHeartbeats 1000000

namespace Shieldd.GnarkFormal.Deployed.NoteReshape8x1BalanceCrossRunX1

open Shieldd.GnarkFormal
open Contracts.NoteReshape8x1

theorem seated (rho : Nat → Seg134.F) :
    StrideRun.sumAux (Seg134.localRho rho) 152 1 101 =
      StrideRun.sumAux rho 110131 8 101 :=
  NoteReshape8x1BalanceCrossRunsSupport.seatedRun_eq
    rho 152 110131 8 101 (by rfl)

end Shieldd.GnarkFormal.Deployed.NoteReshape8x1BalanceCrossRunX1
