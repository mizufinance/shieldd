import ShielddGnarkFormal.Deployed.NoteReshape1x8BalanceCrossRunsSupport

set_option maxRecDepth 1000000
set_option maxHeartbeats 1000000

namespace Shieldd.GnarkFormal.Deployed.NoteReshape1x8BalanceCrossRunY0

open Shieldd.GnarkFormal
open Contracts.NoteReshape1x8

theorem seated (rho : Nat → Seg51.F) :
    StrideRun.sumAux (Seg51.localRho rho) 255 1 149 =
      StrideRun.sumAux rho 24115 5 149 :=
  NoteReshape1x8BalanceCrossRunsSupport.seatedRun_eq
    rho 255 24115 5 149 (by rfl)

end Shieldd.GnarkFormal.Deployed.NoteReshape1x8BalanceCrossRunY0
