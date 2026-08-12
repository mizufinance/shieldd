import ShielddGnarkFormal.Deployed.NoteReshape1x8BalanceCompressRunsSupport

set_option maxRecDepth 1000000
set_option maxHeartbeats 1000000

namespace Shieldd.GnarkFormal.Deployed.NoteReshape1x8BalanceCompressRunY1

open Shieldd.GnarkFormal
open Contracts.NoteReshape1x8

theorem seated (rho : Nat → Seg73.F) :
    StrideRun.sumAux (Seg73.localRho rho) 402 1 101 =
      StrideRun.sumAux rho 37583 8 101 :=
  NoteReshape1x8BalanceCompressRunsSupport.seatedRun_eq
    rho 402 37583 8 101 (by rfl)

end Shieldd.GnarkFormal.Deployed.NoteReshape1x8BalanceCompressRunY1
