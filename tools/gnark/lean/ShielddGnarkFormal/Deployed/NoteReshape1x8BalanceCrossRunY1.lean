import ShielddGnarkFormal.Deployed.NoteReshape1x8BalanceCrossRunsSupport

set_option maxRecDepth 1000000
set_option maxHeartbeats 1000000

namespace Shieldd.GnarkFormal.Deployed.NoteReshape1x8BalanceCrossRunY1

open Shieldd.GnarkFormal
open Contracts.NoteReshape1x8

theorem seated (rho : Nat → Seg54.F) :
    StrideRun.sumAux (Seg54.localRho rho) 404 1 101 =
      StrideRun.sumAux rho 24264 8 101 :=
  NoteReshape1x8BalanceCrossRunsSupport.seatedRun_eq
    rho 404 24264 8 101 (by rfl)

end Shieldd.GnarkFormal.Deployed.NoteReshape1x8BalanceCrossRunY1
