import ShielddGnarkFormal.Deployed.NoteReshape1x8BalanceCrossRunX0
import ShielddGnarkFormal.Deployed.NoteReshape1x8BalanceCrossRunX1
import ShielddGnarkFormal.Deployed.NoteReshape1x8BalanceCrossRunY0
import ShielddGnarkFormal.Deployed.NoteReshape1x8BalanceCrossRunY1

namespace Shieldd.GnarkFormal.Deployed.NoteReshape1x8BalanceCrossRuns

open Shieldd.GnarkFormal
open Contracts.NoteReshape1x8

theorem x0 (rho : Nat → Seg72.F) :
    StrideRun.sumAux (Seg72.localRho rho) 3 1 149 =
      StrideRun.sumAux rho 36834 5 149 :=
  NoteReshape1x8BalanceCrossRunX0.seated rho

theorem x1 (rho : Nat → Seg72.F) :
    StrideRun.sumAux (Seg72.localRho rho) 152 1 101 =
      StrideRun.sumAux rho 37582 8 101 :=
  NoteReshape1x8BalanceCrossRunX1.seated rho

theorem y0 (rho : Nat → Seg72.F) :
    StrideRun.sumAux (Seg72.localRho rho) 255 1 149 =
      StrideRun.sumAux rho 36835 5 149 :=
  NoteReshape1x8BalanceCrossRunY0.seated rho

theorem y1 (rho : Nat → Seg72.F) :
    StrideRun.sumAux (Seg72.localRho rho) 404 1 101 =
      StrideRun.sumAux rho 37583 8 101 :=
  NoteReshape1x8BalanceCrossRunY1.seated rho

end Shieldd.GnarkFormal.Deployed.NoteReshape1x8BalanceCrossRuns
