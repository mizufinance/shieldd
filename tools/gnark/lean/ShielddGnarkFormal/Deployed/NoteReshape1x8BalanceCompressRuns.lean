import ShielddGnarkFormal.Deployed.NoteReshape1x8BalanceCompressRunX0
import ShielddGnarkFormal.Deployed.NoteReshape1x8BalanceCompressRunX1
import ShielddGnarkFormal.Deployed.NoteReshape1x8BalanceCompressRunY0
import ShielddGnarkFormal.Deployed.NoteReshape1x8BalanceCompressRunY1

namespace Shieldd.GnarkFormal.Deployed.NoteReshape1x8BalanceCompressRuns

open Shieldd.GnarkFormal
open Contracts.NoteReshape1x8

theorem x0 (rho : Nat → Seg74.F) :
    StrideRun.sumAux (Seg74.localRho rho) 2 1 149 =
      StrideRun.sumAux rho 36982 5 149 :=
  NoteReshape1x8BalanceCompressRunX0.seated rho

theorem x1 (rho : Nat → Seg74.F) :
    StrideRun.sumAux (Seg74.localRho rho) 151 1 101 =
      StrideRun.sumAux rho 37730 8 101 :=
  NoteReshape1x8BalanceCompressRunX1.seated rho

theorem y0 (rho : Nat → Seg74.F) :
    StrideRun.sumAux (Seg74.localRho rho) 253 1 149 =
      StrideRun.sumAux rho 36983 5 149 :=
  NoteReshape1x8BalanceCompressRunY0.seated rho

theorem y1 (rho : Nat → Seg74.F) :
    StrideRun.sumAux (Seg74.localRho rho) 402 1 101 =
      StrideRun.sumAux rho 37731 8 101 :=
  NoteReshape1x8BalanceCompressRunY1.seated rho

end Shieldd.GnarkFormal.Deployed.NoteReshape1x8BalanceCompressRuns
