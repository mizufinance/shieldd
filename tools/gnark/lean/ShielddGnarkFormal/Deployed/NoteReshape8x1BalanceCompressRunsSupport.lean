import ShielddGnarkFormal.Deployed.Contracts.NoteReshape8x1.Seg135

/-! Generic seating join for compact runs in the 8x1 balance compression row. -/

namespace Shieldd.GnarkFormal.Deployed.NoteReshape8x1BalanceCompressRunsSupport

open Shieldd.GnarkFormal
open Contracts.NoteReshape8x1

theorem seatedRun_eq
    (rho : Nat → Seg135.F)
    (localStart globalStart stride count : Nat)
    (hseating :
      (List.range count).map
          (fun offset => Seg135.wireSeating (localStart + offset)) =
        (List.range count).map
          (fun offset => globalStart + offset * stride)) :
    StrideRun.sumAux (Seg135.localRho rho) localStart 1 count =
      StrideRun.sumAux rho globalStart stride count := by
  rw [StrideRun.sumAux_seated, StrideRun.sumAux_seated]
  simpa only [
    Seg135.localRho, Deployed.Templates.seated,
    List.map_map, Function.comp_apply, Nat.mul_one
  ] using congrArg (fun wires => (wires.map rho).sum) hseating

end Shieldd.GnarkFormal.Deployed.NoteReshape8x1BalanceCompressRunsSupport
