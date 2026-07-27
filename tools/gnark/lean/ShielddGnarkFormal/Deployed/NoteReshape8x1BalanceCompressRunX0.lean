import ShielddGnarkFormal.Deployed.NoteReshape8x1BalanceCompressRunsSupport

set_option maxRecDepth 1000000
set_option maxHeartbeats 1000000

namespace Shieldd.GnarkFormal.Deployed.NoteReshape8x1BalanceCompressRunX0

open Shieldd.GnarkFormal
open Contracts.NoteReshape8x1

theorem seated (rho : Nat → Seg135.F) :
    StrideRun.sumAux (Seg135.localRho rho) 2 1 149 =
      StrideRun.sumAux rho 109383 5 149 :=
  NoteReshape8x1BalanceCompressRunsSupport.seatedRun_eq
    rho 2 109383 5 149 (by rfl)

end Shieldd.GnarkFormal.Deployed.NoteReshape8x1BalanceCompressRunX0
