import ShielddGnarkFormal.Deployed.NoteReshape4x1BalanceCrossRunX0
import ShielddGnarkFormal.Deployed.NoteReshape4x1BalanceCrossRunX1
import ShielddGnarkFormal.Deployed.NoteReshape4x1BalanceCrossRunY0
import ShielddGnarkFormal.Deployed.NoteReshape4x1BalanceCrossRunY1

namespace Shieldd.GnarkFormal.Deployed.NoteReshape4x1BalanceCrossRuns

open Shieldd.GnarkFormal
open Contracts.NoteReshape4x1

theorem x0 (rho : Nat → Seg74.F) :
    StrideRun.sumAux (Seg74.localRho rho) 3 1 149 =
      StrideRun.sumAux rho 58593 5 149 :=
  NoteReshape4x1BalanceCrossRunX0.seated rho

theorem x1 (rho : Nat → Seg74.F) :
    StrideRun.sumAux (Seg74.localRho rho) 152 1 101 =
      StrideRun.sumAux rho 59341 8 101 :=
  NoteReshape4x1BalanceCrossRunX1.seated rho

theorem y0 (rho : Nat → Seg74.F) :
    StrideRun.sumAux (Seg74.localRho rho) 255 1 149 =
      StrideRun.sumAux rho 58594 5 149 :=
  NoteReshape4x1BalanceCrossRunY0.seated rho

theorem y1 (rho : Nat → Seg74.F) :
    StrideRun.sumAux (Seg74.localRho rho) 404 1 101 =
      StrideRun.sumAux rho 59342 8 101 :=
  NoteReshape4x1BalanceCrossRunY1.seated rho

end Shieldd.GnarkFormal.Deployed.NoteReshape4x1BalanceCrossRuns
