import ShielddGnarkFormal.Deployed.NoteReshape1x8BalanceCompressRunX0
import ShielddGnarkFormal.Deployed.NoteReshape1x8BalanceCompressRunX1
import ShielddGnarkFormal.Deployed.NoteReshape1x8BalanceCompressRunY0
import ShielddGnarkFormal.Deployed.NoteReshape1x8BalanceCompressRunY1

namespace Shieldd.GnarkFormal.Deployed.NoteReshape1x8BalanceCompressRuns

open Shieldd.GnarkFormal
open Contracts.NoteReshape1x8

theorem x0 (rho : Nat → Seg52.F) :
    StrideRun.sumAux (Seg52.localRho rho) 2 1 149 =
      StrideRun.sumAux rho 24114 5 149 :=
  NoteReshape1x8BalanceCompressRunX0.seated rho

theorem x1 (rho : Nat → Seg52.F) :
    StrideRun.sumAux (Seg52.localRho rho) 151 1 101 =
      StrideRun.sumAux rho 24862 8 101 :=
  NoteReshape1x8BalanceCompressRunX1.seated rho

theorem y0 (rho : Nat → Seg52.F) :
    StrideRun.sumAux (Seg52.localRho rho) 253 1 149 =
      StrideRun.sumAux rho 24115 5 149 :=
  NoteReshape1x8BalanceCompressRunY0.seated rho

theorem y1 (rho : Nat → Seg52.F) :
    StrideRun.sumAux (Seg52.localRho rho) 402 1 101 =
      StrideRun.sumAux rho 24863 8 101 :=
  NoteReshape1x8BalanceCompressRunY1.seated rho

end Shieldd.GnarkFormal.Deployed.NoteReshape1x8BalanceCompressRuns
