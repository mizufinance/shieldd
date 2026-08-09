import ShielddGnarkFormal.Deployed.NoteReshape1x8BalanceRunsSupport

set_option maxRecDepth 1000000
set_option maxHeartbeats 1000000

/-! Compiler seating join for the second 1x8 balance x-coordinate run. -/

namespace Shieldd.GnarkFormal.Deployed.NoteReshape1x8BalanceRunX1

open Shieldd.GnarkFormal
open Contracts.NoteReshape1x8

theorem seated (rho : Nat → Seg53.F) :
    StrideRun.sumAux (Seg53.localRho rho) 2165 8 101 =
      StrideRun.sumAux rho 24263 8 101 :=
  NoteReshape1x8BalanceRunsSupport.seatedRun_eq
    rho 2165 24263 8 101 (by rfl)

end Shieldd.GnarkFormal.Deployed.NoteReshape1x8BalanceRunX1
