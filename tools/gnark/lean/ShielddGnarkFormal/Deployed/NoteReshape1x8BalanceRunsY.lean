import ShielddGnarkFormal.Deployed.NoteReshape1x8BalanceRunY0
import ShielddGnarkFormal.Deployed.NoteReshape1x8BalanceRunY1

/-! Compiler seating joins for the 1x8 balance y-coordinate runs. -/

namespace Shieldd.GnarkFormal.Deployed.NoteReshape1x8BalanceRunsY

open Shieldd.GnarkFormal
open Contracts.NoteReshape1x8

theorem y0 (rho : Nat → Seg76.F) :
    StrideRun.sumAux (Seg76.localRho rho) 1418 5 149 =
      StrideRun.sumAux rho 43301 5 149 :=
  NoteReshape1x8BalanceRunY0.seated rho

theorem y1 (rho : Nat → Seg76.F) :
    StrideRun.sumAux (Seg76.localRho rho) 2166 8 101 =
      StrideRun.sumAux rho 44049 8 101 :=
  NoteReshape1x8BalanceRunY1.seated rho

end Shieldd.GnarkFormal.Deployed.NoteReshape1x8BalanceRunsY
