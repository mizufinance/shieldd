import ShielddGnarkFormal.Deployed.NoteReshape4x1ConservationRefinement
import ShielddGnarkFormal.Deployed.NoteReshape4x1StatementRks
import ShielddGnarkFormal.Deployed.NoteReshape4x1StatementHashRefinement

set_option maxRecDepth 1000000
set_option maxHeartbeats 4000000

/-! Statement-binding refinement for the deployed NoteReshape 4x1 relation. -/

namespace Shieldd.GnarkFormal.Deployed.NoteReshape4x1Refinement.C

open Shieldd.GnarkFormal
open Protocol.NoteReshape
open NoteReshapeCanonical
open Contracts.NoteReshape4x1

theorem actionStatementBinding
    (rho : Nat → DeployedF)
    (facts : NoteReshape4x1CircuitFacts rho) :
    NoteReshapeCanonical.statementBinding (action rho) := by
  refine ⟨
    balanceCommitmentFq rho,
    [spend0RkCompressed rho, spend1RkCompressed rho,
     spend2RkCompressed rho, spend3RkCompressed rho],
    claimedBalanceCompressed rho facts,
    actionRksCompressed rho facts,
    actionClaimedStatementHash rho facts
  ⟩

end Shieldd.GnarkFormal.Deployed.NoteReshape4x1Refinement.C
