import ShielddGnarkFormal.Deployed.NoteReshape8x1BalanceRunX0
import ShielddGnarkFormal.Deployed.NoteReshape8x1BalanceRunX1

/-! Compiler seating joins for the 8x1 balance x-coordinate runs. -/

namespace Shieldd.GnarkFormal.Deployed.NoteReshape8x1BalanceRunsX

open Shieldd.GnarkFormal
open Contracts.NoteReshape8x1

theorem x0 (rho : Nat → Seg133.F) :
    StrideRun.sumAux (Seg133.localRho rho) 1417 5 149 =
      StrideRun.sumAux rho 109383 5 149 :=
  NoteReshape8x1BalanceRunX0.seated rho

theorem x1 (rho : Nat → Seg133.F) :
    StrideRun.sumAux (Seg133.localRho rho) 2165 8 101 =
      StrideRun.sumAux rho 110131 8 101 :=
  NoteReshape8x1BalanceRunX1.seated rho

end Shieldd.GnarkFormal.Deployed.NoteReshape8x1BalanceRunsX
