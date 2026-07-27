import ShielddGnarkFormal.Deployed.NoteReshape4x1BalanceRunsSupport

set_option maxRecDepth 1000000
set_option maxHeartbeats 1000000

/-! Compiler seating join for the first 4x1 balance y-coordinate run. -/

namespace Shieldd.GnarkFormal.Deployed.NoteReshape4x1BalanceRunY0

open Shieldd.GnarkFormal
open Contracts.NoteReshape4x1

theorem seated (rho : Nat → Seg73.F) :
    StrideRun.sumAux (Seg73.localRho rho) 902 5 149 =
      StrideRun.sumAux rho 58594 5 149 :=
  NoteReshape4x1BalanceRunsSupport.seatedRun_eq
    rho 902 58594 5 149 (by rfl)

end Shieldd.GnarkFormal.Deployed.NoteReshape4x1BalanceRunY0
