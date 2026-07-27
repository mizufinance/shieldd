import ShielddGnarkFormal.Deployed.NoteReshape1x8BalanceCrossRunsSupport

set_option maxRecDepth 1000000
set_option maxHeartbeats 1000000

namespace Shieldd.GnarkFormal.Deployed.NoteReshape1x8BalanceCrossRunX1

open Shieldd.GnarkFormal
open Contracts.NoteReshape1x8

theorem seated (rho : Nat → Seg51.F) :
    StrideRun.sumAux (Seg51.localRho rho) 152 1 101 =
      StrideRun.sumAux rho 24862 8 101 :=
  NoteReshape1x8BalanceCrossRunsSupport.seatedRun_eq
    rho 152 24862 8 101 (by rfl)

end Shieldd.GnarkFormal.Deployed.NoteReshape1x8BalanceCrossRunX1
