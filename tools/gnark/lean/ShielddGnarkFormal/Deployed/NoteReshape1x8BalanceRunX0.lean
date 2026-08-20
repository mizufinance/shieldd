import ShielddGnarkFormal.Deployed.NoteReshape1x8BalanceRunsSupport

set_option maxRecDepth 1000000
set_option maxHeartbeats 1000000

/-! Compiler seating join for the first 1x8 balance x-coordinate run. -/

namespace Shieldd.GnarkFormal.Deployed.NoteReshape1x8BalanceRunX0

open Shieldd.GnarkFormal
open Contracts.NoteReshape1x8

theorem seated (rho : Nat → Seg76.F) :
    StrideRun.sumAux (Seg76.localRho rho) 1417 5 149 =
      StrideRun.sumAux rho 43300 5 149 :=
  NoteReshape1x8BalanceRunsSupport.seatedRun_eq
    rho 1417 43300 5 149 (by rfl)

end Shieldd.GnarkFormal.Deployed.NoteReshape1x8BalanceRunX0
