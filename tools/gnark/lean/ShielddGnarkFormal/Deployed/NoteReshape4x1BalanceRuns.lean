import ShielddGnarkFormal.Deployed.NoteReshape4x1BalanceRunsX
import ShielddGnarkFormal.Deployed.NoteReshape4x1BalanceRunsY

/-! Compiler seating joins for the two final 4x1 balance-coordinate runs. -/

namespace Shieldd.GnarkFormal.Deployed.NoteReshape4x1BalanceRuns

open Shieldd.GnarkFormal
open Contracts.NoteReshape4x1

theorem x0 (rho : Nat → Seg73.F) :
    StrideRun.sumAux (Seg73.localRho rho) 901 5 149 =
      StrideRun.sumAux rho 58593 5 149 :=
  NoteReshape4x1BalanceRunsX.x0 rho

theorem x1 (rho : Nat → Seg73.F) :
    StrideRun.sumAux (Seg73.localRho rho) 1649 8 101 =
      StrideRun.sumAux rho 59341 8 101 :=
  NoteReshape4x1BalanceRunsX.x1 rho

theorem y0 (rho : Nat → Seg73.F) :
    StrideRun.sumAux (Seg73.localRho rho) 902 5 149 =
      StrideRun.sumAux rho 58594 5 149 :=
  NoteReshape4x1BalanceRunsY.y0 rho

theorem y1 (rho : Nat → Seg73.F) :
    StrideRun.sumAux (Seg73.localRho rho) 1650 8 101 =
      StrideRun.sumAux rho 59342 8 101 :=
  NoteReshape4x1BalanceRunsY.y1 rho

end Shieldd.GnarkFormal.Deployed.NoteReshape4x1BalanceRuns
