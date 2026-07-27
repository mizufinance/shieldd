import ShielddGnarkFormal.Deployed.NoteReshape2x1BalanceYRun0
import ShielddGnarkFormal.Deployed.NoteReshape2x1BalanceYRun1
import ShielddGnarkFormal.Deployed.NoteReshape2x1BalanceAccFinal
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.SemanticBindings

set_option maxRecDepth 1000000
set_option maxHeartbeats 4000000

namespace Shieldd.GnarkFormal.Deployed.NoteReshape2x1BalanceY

open Shieldd.GnarkFormal
open Contracts.NoteReshape2x1

theorem computedY_eq_gadget
    (rho : Nat → SemanticF) :
    balanceCommitmentComputed1 rho =
      (Deployed.Templates.Semantics.TDecafConservationNetBalanceCommitment_9602c510696ca316ef532feb1eaa5610fa2276fdeb6f49a351c8c7c242b359e6.NbSupport.nbBlindAccState
        (Seg33.localRho rho) 251).y := by
  have hw388 : Seg33.wireSeating 388 = 32315 := by decide
  rw [NoteReshape2x1BalanceAccFinal.Nb.y]
  simp only [
    balanceCommitmentComputed1, balanceCommitmentComputed1LC,
    Deployed.Templates.Semantics.TDecafConservationNetBalanceCommitment_9602c510696ca316ef532feb1eaa5610fa2276fdeb6f49a351c8c7c242b359e6.NbSupport.nbBlindDeltaY250,
    StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
    StrideRun.eval, zero_add, one_mul, add_zero]
  rw [
    NoteReshape2x1BalanceYRun0.seatedRun_eq,
    NoteReshape2x1BalanceYRun1.seatedRun_eq
  ]
  simp only [Seg33.localRho, Deployed.Templates.seated, hw388]
  ring

end Shieldd.GnarkFormal.Deployed.NoteReshape2x1BalanceY
