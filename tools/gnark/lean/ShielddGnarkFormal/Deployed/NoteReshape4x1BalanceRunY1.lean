import ShielddGnarkFormal.Deployed.NoteReshape4x1BalanceRunsSupport

set_option maxRecDepth 1000000
set_option maxHeartbeats 1000000

/-! Compiler seating join for the second 4x1 balance y-coordinate run. -/

namespace Shieldd.GnarkFormal.Deployed.NoteReshape4x1BalanceRunY1

open Shieldd.GnarkFormal
open Contracts.NoteReshape4x1

theorem seated (rho : Nat → Seg73.F) :
    StrideRun.sumAux (Seg73.localRho rho) 1650 8 101 =
      StrideRun.sumAux rho 59342 8 101 :=
  NoteReshape4x1BalanceRunsSupport.seatedRun_eq
    rho 1650 59342 8 101 (by rfl)

end Shieldd.GnarkFormal.Deployed.NoteReshape4x1BalanceRunY1
