import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.Seg33

set_option maxRecDepth 1000000
set_option maxHeartbeats 4000000

namespace Shieldd.GnarkFormal.Deployed.NoteReshape2x1BalanceYRun0

open Shieldd.GnarkFormal
open Contracts.NoteReshape2x1

theorem seatedRun_eq
    (rho : Nat → Seg33.F) :
    StrideRun.sumAux (Seg33.localRho rho) 644 5 149 =
      StrideRun.sumAux rho 32570 5 149 := by
  rw [StrideRun.sumAux_seated, StrideRun.sumAux_seated]
  have hseating :
      (List.range 149).map
          (fun offset => Seg33.wireSeating (644 + offset * 5)) =
        (List.range 149).map
          (fun offset => 32570 + offset * 5) := by
    decide
  simpa only [
    Seg33.localRho, Deployed.Templates.seated,
    List.map_map, Function.comp_apply
  ] using congrArg (fun wires => (wires.map rho).sum) hseating

end Shieldd.GnarkFormal.Deployed.NoteReshape2x1BalanceYRun0
