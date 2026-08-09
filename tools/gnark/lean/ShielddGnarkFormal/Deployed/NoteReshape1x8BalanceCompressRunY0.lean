import ShielddGnarkFormal.Deployed.NoteReshape1x8BalanceCompressRunsSupport

set_option maxRecDepth 1000000
set_option maxHeartbeats 1000000

namespace Shieldd.GnarkFormal.Deployed.NoteReshape1x8BalanceCompressRunY0

open Shieldd.GnarkFormal
open Contracts.NoteReshape1x8

theorem seated (rho : Nat → Seg55.F) :
    StrideRun.sumAux (Seg55.localRho rho) 253 1 149 =
      StrideRun.sumAux rho 23516 5 149 :=
  NoteReshape1x8BalanceCompressRunsSupport.seatedRun_eq
    rho 253 23516 5 149 (by rfl)

end Shieldd.GnarkFormal.Deployed.NoteReshape1x8BalanceCompressRunY0
