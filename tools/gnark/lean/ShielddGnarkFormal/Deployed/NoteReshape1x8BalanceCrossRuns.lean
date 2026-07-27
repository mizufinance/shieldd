import ShielddGnarkFormal.Deployed.NoteReshape1x8BalanceCrossRunX0
import ShielddGnarkFormal.Deployed.NoteReshape1x8BalanceCrossRunX1
import ShielddGnarkFormal.Deployed.NoteReshape1x8BalanceCrossRunY0
import ShielddGnarkFormal.Deployed.NoteReshape1x8BalanceCrossRunY1

namespace Shieldd.GnarkFormal.Deployed.NoteReshape1x8BalanceCrossRuns

open Shieldd.GnarkFormal
open Contracts.NoteReshape1x8

theorem x0 (rho : Nat → Seg51.F) :
    StrideRun.sumAux (Seg51.localRho rho) 3 1 149 =
      StrideRun.sumAux rho 24114 5 149 :=
  NoteReshape1x8BalanceCrossRunX0.seated rho

theorem x1 (rho : Nat → Seg51.F) :
    StrideRun.sumAux (Seg51.localRho rho) 152 1 101 =
      StrideRun.sumAux rho 24862 8 101 :=
  NoteReshape1x8BalanceCrossRunX1.seated rho

theorem y0 (rho : Nat → Seg51.F) :
    StrideRun.sumAux (Seg51.localRho rho) 255 1 149 =
      StrideRun.sumAux rho 24115 5 149 :=
  NoteReshape1x8BalanceCrossRunY0.seated rho

theorem y1 (rho : Nat → Seg51.F) :
    StrideRun.sumAux (Seg51.localRho rho) 404 1 101 =
      StrideRun.sumAux rho 24863 8 101 :=
  NoteReshape1x8BalanceCrossRunY1.seated rho

end Shieldd.GnarkFormal.Deployed.NoteReshape1x8BalanceCrossRuns
