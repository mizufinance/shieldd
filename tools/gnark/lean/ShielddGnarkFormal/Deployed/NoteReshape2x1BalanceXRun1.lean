import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.Seg33

set_option maxRecDepth 1000000
set_option maxHeartbeats 4000000

namespace Shieldd.GnarkFormal.Deployed.NoteReshape2x1BalanceXRun1

open Shieldd.GnarkFormal
open Contracts.NoteReshape2x1

theorem seatedRun_eq
    (rho : Nat → Seg33.F) :
    StrideRun.sumAux (Seg33.localRho rho) 1391 8 101 =
      StrideRun.sumAux rho 33317 8 101 := by
  rw [StrideRun.sumAux_seated, StrideRun.sumAux_seated]
  have hseating :
      (List.range 101).map
          (fun offset => Seg33.wireSeating (1391 + offset * 8)) =
        (List.range 101).map
          (fun offset => 33317 + offset * 8) := by
    decide
  simpa only [
    Seg33.localRho, Deployed.Templates.seated,
    List.map_map, Function.comp_apply
  ] using congrArg (fun wires => (wires.map rho).sum) hseating

end Shieldd.GnarkFormal.Deployed.NoteReshape2x1BalanceXRun1
