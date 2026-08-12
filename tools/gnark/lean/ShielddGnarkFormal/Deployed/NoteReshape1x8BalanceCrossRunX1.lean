import ShielddGnarkFormal.Deployed.NoteReshape1x8BalanceCrossRunsSupport

set_option maxRecDepth 1000000
set_option maxHeartbeats 1000000

namespace Shieldd.GnarkFormal.Deployed.NoteReshape1x8BalanceCrossRunX1

open Shieldd.GnarkFormal
open Contracts.NoteReshape1x8

theorem seated (rho : Nat → Seg72.F) :
    StrideRun.sumAux (Seg72.localRho rho) 152 1 101 =
      StrideRun.sumAux rho 37582 8 101 :=
  NoteReshape1x8BalanceCrossRunsSupport.seatedRun_eq
    rho 152 37582 8 101 (by rfl)

end Shieldd.GnarkFormal.Deployed.NoteReshape1x8BalanceCrossRunX1
