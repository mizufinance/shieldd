import ShielddGnarkFormal.Deployed.NoteReshape1x8BalanceRunsX
import ShielddGnarkFormal.Deployed.NoteReshape1x8BalanceRunsY

/-! Compiler seating joins for the two final 1x8 balance-coordinate runs. -/

namespace Shieldd.GnarkFormal.Deployed.NoteReshape1x8BalanceRuns

open Shieldd.GnarkFormal
open Contracts.NoteReshape1x8

theorem x0 (rho : Nat → Seg72.F) :
    StrideRun.sumAux (Seg72.localRho rho) 1417 5 149 =
      StrideRun.sumAux rho 36982 5 149 :=
  NoteReshape1x8BalanceRunsX.x0 rho

theorem x1 (rho : Nat → Seg72.F) :
    StrideRun.sumAux (Seg72.localRho rho) 2165 8 101 =
      StrideRun.sumAux rho 37730 8 101 :=
  NoteReshape1x8BalanceRunsX.x1 rho

theorem y0 (rho : Nat → Seg72.F) :
    StrideRun.sumAux (Seg72.localRho rho) 1418 5 149 =
      StrideRun.sumAux rho 36983 5 149 :=
  NoteReshape1x8BalanceRunsY.y0 rho

theorem y1 (rho : Nat → Seg72.F) :
    StrideRun.sumAux (Seg72.localRho rho) 2166 8 101 =
      StrideRun.sumAux rho 37731 8 101 :=
  NoteReshape1x8BalanceRunsY.y1 rho

end Shieldd.GnarkFormal.Deployed.NoteReshape1x8BalanceRuns
