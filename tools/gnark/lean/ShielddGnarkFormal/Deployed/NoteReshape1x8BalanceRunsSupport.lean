import ShielddGnarkFormal.Deployed.Contracts.NoteReshape1x8.Seg71

/-! Generic compiler-seating join for compact conservation-ladder runs. -/

namespace Shieldd.GnarkFormal.Deployed.NoteReshape1x8BalanceRunsSupport

open Shieldd.GnarkFormal
open Contracts.NoteReshape1x8

theorem seatedRun_eq
    (rho : Nat → Seg71.F)
    (localStart globalStart stride count : Nat)
    (hseating :
      (List.range count).map
          (fun offset => Seg71.wireSeating (localStart + offset * stride)) =
        (List.range count).map
          (fun offset => globalStart + offset * stride)) :
    StrideRun.sumAux (Seg71.localRho rho) localStart stride count =
      StrideRun.sumAux rho globalStart stride count := by
  rw [StrideRun.sumAux_seated, StrideRun.sumAux_seated]
  simpa only [
    Seg71.localRho, Deployed.Templates.seated,
    List.map_map, Function.comp_apply
  ] using congrArg (fun wires => (wires.map rho).sum) hseating

end Shieldd.GnarkFormal.Deployed.NoteReshape1x8BalanceRunsSupport
