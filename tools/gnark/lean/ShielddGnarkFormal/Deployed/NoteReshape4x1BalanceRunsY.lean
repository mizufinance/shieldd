import ShielddGnarkFormal.Deployed.NoteReshape4x1BalanceRunY0
import ShielddGnarkFormal.Deployed.NoteReshape4x1BalanceRunY1

/-! Compiler seating joins for the 4x1 balance y-coordinate runs. -/

namespace Shieldd.GnarkFormal.Deployed.NoteReshape4x1BalanceRunsY

open Shieldd.GnarkFormal
open Contracts.NoteReshape4x1

theorem y0 (rho : Nat → Seg73.F) :
    StrideRun.sumAux (Seg73.localRho rho) 902 5 149 =
      StrideRun.sumAux rho 58594 5 149 :=
  NoteReshape4x1BalanceRunY0.seated rho

theorem y1 (rho : Nat → Seg73.F) :
    StrideRun.sumAux (Seg73.localRho rho) 1650 8 101 =
      StrideRun.sumAux rho 59342 8 101 :=
  NoteReshape4x1BalanceRunY1.seated rho

end Shieldd.GnarkFormal.Deployed.NoteReshape4x1BalanceRunsY
