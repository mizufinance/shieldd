import ShielddGnarkFormal.Deployed.NoteReshape1x8BalanceRunX0
import ShielddGnarkFormal.Deployed.NoteReshape1x8BalanceRunX1

/-! Compiler seating joins for the 1x8 balance x-coordinate runs. -/

namespace Shieldd.GnarkFormal.Deployed.NoteReshape1x8BalanceRunsX

open Shieldd.GnarkFormal
open Contracts.NoteReshape1x8

theorem x0 (rho : Nat → Seg53.F) :
    StrideRun.sumAux (Seg53.localRho rho) 1417 5 149 =
      StrideRun.sumAux rho 23515 5 149 :=
  NoteReshape1x8BalanceRunX0.seated rho

theorem x1 (rho : Nat → Seg53.F) :
    StrideRun.sumAux (Seg53.localRho rho) 2165 8 101 =
      StrideRun.sumAux rho 24263 8 101 :=
  NoteReshape1x8BalanceRunX1.seated rho

end Shieldd.GnarkFormal.Deployed.NoteReshape1x8BalanceRunsX
