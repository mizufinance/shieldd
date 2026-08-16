import ShielddGnarkFormal.Deployed.NoteReshape1x8BalanceRunsSupport

set_option maxRecDepth 1000000
set_option maxHeartbeats 1000000

/-! Compiler seating join for the second 1x8 balance y-coordinate run. -/

namespace Shieldd.GnarkFormal.Deployed.NoteReshape1x8BalanceRunY1

open Shieldd.GnarkFormal
open Contracts.NoteReshape1x8

theorem seated (rho : Nat → Seg72.F) :
    StrideRun.sumAux (Seg72.localRho rho) 2166 8 101 =
      StrideRun.sumAux rho 37731 8 101 :=
  NoteReshape1x8BalanceRunsSupport.seatedRun_eq
    rho 2166 37731 8 101 (by rfl)

end Shieldd.GnarkFormal.Deployed.NoteReshape1x8BalanceRunY1
