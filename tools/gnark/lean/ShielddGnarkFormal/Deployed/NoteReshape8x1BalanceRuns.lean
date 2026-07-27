import ShielddGnarkFormal.Deployed.NoteReshape8x1BalanceRunsX
import ShielddGnarkFormal.Deployed.NoteReshape8x1BalanceRunsY

/-! Compiler seating joins for the two final 8x1 balance-coordinate runs. -/

namespace Shieldd.GnarkFormal.Deployed.NoteReshape8x1BalanceRuns

open Shieldd.GnarkFormal
open Contracts.NoteReshape8x1

theorem x0 (rho : Nat → Seg133.F) :
    StrideRun.sumAux (Seg133.localRho rho) 1417 5 149 =
      StrideRun.sumAux rho 109383 5 149 :=
  NoteReshape8x1BalanceRunsX.x0 rho

theorem x1 (rho : Nat → Seg133.F) :
    StrideRun.sumAux (Seg133.localRho rho) 2165 8 101 =
      StrideRun.sumAux rho 110131 8 101 :=
  NoteReshape8x1BalanceRunsX.x1 rho

theorem y0 (rho : Nat → Seg133.F) :
    StrideRun.sumAux (Seg133.localRho rho) 1418 5 149 =
      StrideRun.sumAux rho 109384 5 149 :=
  NoteReshape8x1BalanceRunsY.y0 rho

theorem y1 (rho : Nat → Seg133.F) :
    StrideRun.sumAux (Seg133.localRho rho) 2166 8 101 =
      StrideRun.sumAux rho 110132 8 101 :=
  NoteReshape8x1BalanceRunsY.y1 rho

end Shieldd.GnarkFormal.Deployed.NoteReshape8x1BalanceRuns
