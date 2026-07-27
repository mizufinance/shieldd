import ShielddGnarkFormal.Deployed.NoteReshape4x1BalanceCompressRunsSupport

set_option maxRecDepth 1000000
set_option maxHeartbeats 1000000

namespace Shieldd.GnarkFormal.Deployed.NoteReshape4x1BalanceCompressRunY0

open Shieldd.GnarkFormal
open Contracts.NoteReshape4x1

theorem seated (rho : Nat → Seg75.F) :
    StrideRun.sumAux (Seg75.localRho rho) 253 1 149 =
      StrideRun.sumAux rho 58594 5 149 :=
  NoteReshape4x1BalanceCompressRunsSupport.seatedRun_eq
    rho 253 58594 5 149 (by rfl)

end Shieldd.GnarkFormal.Deployed.NoteReshape4x1BalanceCompressRunY0
