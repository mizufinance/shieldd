import ShielddGnarkFormal.Deployed.NoteReshape8x1BalanceRunsSupport

set_option maxRecDepth 1000000
set_option maxHeartbeats 1000000

/-! Compiler seating join for the second 8x1 balance x-coordinate run. -/

namespace Shieldd.GnarkFormal.Deployed.NoteReshape8x1BalanceRunX1

open Shieldd.GnarkFormal
open Contracts.NoteReshape8x1

theorem seated (rho : Nat → Seg133.F) :
    StrideRun.sumAux (Seg133.localRho rho) 2165 8 101 =
      StrideRun.sumAux rho 110131 8 101 :=
  NoteReshape8x1BalanceRunsSupport.seatedRun_eq
    rho 2165 110131 8 101 (by rfl)

end Shieldd.GnarkFormal.Deployed.NoteReshape8x1BalanceRunX1
