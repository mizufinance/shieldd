import ShielddGnarkFormal.Deployed.NoteReshape1x8BalanceRunsSupport

set_option maxRecDepth 1000000
set_option maxHeartbeats 1000000

/-! Compiler seating join for the first 1x8 balance y-coordinate run. -/

namespace Shieldd.GnarkFormal.Deployed.NoteReshape1x8BalanceRunY0

open Shieldd.GnarkFormal
open Contracts.NoteReshape1x8

theorem seated (rho : Nat → Seg50.F) :
    StrideRun.sumAux (Seg50.localRho rho) 1418 5 149 =
      StrideRun.sumAux rho 24115 5 149 :=
  NoteReshape1x8BalanceRunsSupport.seatedRun_eq
    rho 1418 24115 5 149 (by rfl)

end Shieldd.GnarkFormal.Deployed.NoteReshape1x8BalanceRunY0
