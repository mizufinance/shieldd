import ShielddGnarkFormal.Deployed.NoteReshape1x8BalanceCompressRunsSupport

set_option maxRecDepth 1000000
set_option maxHeartbeats 1000000

namespace Shieldd.GnarkFormal.Deployed.NoteReshape1x8BalanceCompressRunX1

open Shieldd.GnarkFormal
open Contracts.NoteReshape1x8

theorem seated (rho : Nat → Seg78.F) :
    StrideRun.sumAux (Seg78.localRho rho) 151 1 101 =
      StrideRun.sumAux rho 44048 8 101 :=
  NoteReshape1x8BalanceCompressRunsSupport.seatedRun_eq
    rho 151 44048 8 101 (by rfl)

end Shieldd.GnarkFormal.Deployed.NoteReshape1x8BalanceCompressRunX1
