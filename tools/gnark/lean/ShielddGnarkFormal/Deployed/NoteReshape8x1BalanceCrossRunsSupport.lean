import ShielddGnarkFormal.Deployed.Contracts.NoteReshape8x1.Seg134

/-! Generic seating join for compact runs in the 8x1 balance cross-ratio row. -/

namespace Shieldd.GnarkFormal.Deployed.NoteReshape8x1BalanceCrossRunsSupport

open Shieldd.GnarkFormal
open Contracts.NoteReshape8x1

theorem seatedRun_eq
    (rho : Nat → Seg134.F)
    (localStart globalStart stride count : Nat)
    (hseating :
      (List.range count).map
          (fun offset => Seg134.wireSeating (localStart + offset)) =
        (List.range count).map
          (fun offset => globalStart + offset * stride)) :
    StrideRun.sumAux (Seg134.localRho rho) localStart 1 count =
      StrideRun.sumAux rho globalStart stride count := by
  rw [StrideRun.sumAux_seated, StrideRun.sumAux_seated]
  simpa only [
    Seg134.localRho, Deployed.Templates.seated,
    List.map_map, Function.comp_apply, Nat.mul_one
  ] using congrArg (fun wires => (wires.map rho).sum) hseating

end Shieldd.GnarkFormal.Deployed.NoteReshape8x1BalanceCrossRunsSupport
