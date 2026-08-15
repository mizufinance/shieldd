import ShielddGnarkFormal.Deployed.Contracts.NoteReshape1x8.Seg74

/-! Generic seating join for compact runs in the 1x8 balance compression row. -/

namespace Shieldd.GnarkFormal.Deployed.NoteReshape1x8BalanceCompressRunsSupport

open Shieldd.GnarkFormal
open Contracts.NoteReshape1x8

theorem seatedRun_eq
    (rho : Nat → Seg74.F)
    (localStart globalStart stride count : Nat)
    (hseating :
      (List.range count).map
          (fun offset => Seg74.wireSeating (localStart + offset)) =
        (List.range count).map
          (fun offset => globalStart + offset * stride)) :
    StrideRun.sumAux (Seg74.localRho rho) localStart 1 count =
      StrideRun.sumAux rho globalStart stride count := by
  rw [StrideRun.sumAux_seated, StrideRun.sumAux_seated]
  simpa only [
    Seg74.localRho, Deployed.Templates.seated,
    List.map_map, Function.comp_apply, Nat.mul_one
  ] using congrArg (fun wires => (wires.map rho).sum) hseating

end Shieldd.GnarkFormal.Deployed.NoteReshape1x8BalanceCompressRunsSupport
