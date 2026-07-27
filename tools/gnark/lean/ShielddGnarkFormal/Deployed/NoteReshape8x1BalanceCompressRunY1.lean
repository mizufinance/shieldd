import ShielddGnarkFormal.Deployed.NoteReshape8x1BalanceCompressRunsSupport

set_option maxRecDepth 1000000
set_option maxHeartbeats 1000000

namespace Shieldd.GnarkFormal.Deployed.NoteReshape8x1BalanceCompressRunY1

open Shieldd.GnarkFormal
open Contracts.NoteReshape8x1

theorem seated (rho : Nat → Seg135.F) :
    StrideRun.sumAux (Seg135.localRho rho) 402 1 101 =
      StrideRun.sumAux rho 110132 8 101 :=
  NoteReshape8x1BalanceCompressRunsSupport.seatedRun_eq
    rho 402 110132 8 101 (by rfl)

end Shieldd.GnarkFormal.Deployed.NoteReshape8x1BalanceCompressRunY1
