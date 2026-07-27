import ShielddGnarkFormal.Deployed.NoteReshape4x1BalanceCompressRunX0
import ShielddGnarkFormal.Deployed.NoteReshape4x1BalanceCompressRunX1
import ShielddGnarkFormal.Deployed.NoteReshape4x1BalanceCompressRunY0
import ShielddGnarkFormal.Deployed.NoteReshape4x1BalanceCompressRunY1

namespace Shieldd.GnarkFormal.Deployed.NoteReshape4x1BalanceCompressRuns

open Shieldd.GnarkFormal
open Contracts.NoteReshape4x1

theorem x0 (rho : Nat → Seg75.F) :
    StrideRun.sumAux (Seg75.localRho rho) 2 1 149 =
      StrideRun.sumAux rho 58593 5 149 :=
  NoteReshape4x1BalanceCompressRunX0.seated rho

theorem x1 (rho : Nat → Seg75.F) :
    StrideRun.sumAux (Seg75.localRho rho) 151 1 101 =
      StrideRun.sumAux rho 59341 8 101 :=
  NoteReshape4x1BalanceCompressRunX1.seated rho

theorem y0 (rho : Nat → Seg75.F) :
    StrideRun.sumAux (Seg75.localRho rho) 253 1 149 =
      StrideRun.sumAux rho 58594 5 149 :=
  NoteReshape4x1BalanceCompressRunY0.seated rho

theorem y1 (rho : Nat → Seg75.F) :
    StrideRun.sumAux (Seg75.localRho rho) 402 1 101 =
      StrideRun.sumAux rho 59342 8 101 :=
  NoteReshape4x1BalanceCompressRunY1.seated rho

end Shieldd.GnarkFormal.Deployed.NoteReshape4x1BalanceCompressRuns
