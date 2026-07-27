import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.Seg34

set_option maxRecDepth 1000000
set_option maxHeartbeats 4000000

namespace Shieldd.GnarkFormal.Deployed.NoteReshape2x1BalanceCrossRuns

open Shieldd.GnarkFormal
open Contracts.NoteReshape2x1

private theorem seatedRun_eq
    (rho : Nat → Seg34.F)
    (localStart globalStart stride count : Nat)
    (hseating :
      (List.range count).map
          (fun offset => Seg34.wireSeating (localStart + offset)) =
        (List.range count).map
          (fun offset => globalStart + offset * stride)) :
    StrideRun.sumAux (Seg34.localRho rho) localStart 1 count =
      StrideRun.sumAux rho globalStart stride count := by
  rw [StrideRun.sumAux_seated, StrideRun.sumAux_seated]
  simpa only [
    Seg34.localRho, Deployed.Templates.seated,
    List.map_map, Function.comp_apply, Nat.mul_one
  ] using congrArg (fun wires => (wires.map rho).sum) hseating

theorem x0 (rho : Nat → Seg34.F) :
    StrideRun.sumAux (Seg34.localRho rho) 3 1 149 =
      StrideRun.sumAux rho 32569 5 149 :=
  seatedRun_eq rho 3 32569 5 149 (by decide)

theorem x1 (rho : Nat → Seg34.F) :
    StrideRun.sumAux (Seg34.localRho rho) 152 1 101 =
      StrideRun.sumAux rho 33317 8 101 :=
  seatedRun_eq rho 152 33317 8 101 (by decide)

theorem y0 (rho : Nat → Seg34.F) :
    StrideRun.sumAux (Seg34.localRho rho) 255 1 149 =
      StrideRun.sumAux rho 32570 5 149 :=
  seatedRun_eq rho 255 32570 5 149 (by decide)

theorem y1 (rho : Nat → Seg34.F) :
    StrideRun.sumAux (Seg34.localRho rho) 404 1 101 =
      StrideRun.sumAux rho 33318 8 101 :=
  seatedRun_eq rho 404 33318 8 101 (by decide)

end Shieldd.GnarkFormal.Deployed.NoteReshape2x1BalanceCrossRuns
