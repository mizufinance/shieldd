import ShielddGnarkFormal.Deployed.NoteReshape8x1ConservationRefinement
import ShielddGnarkFormal.Deployed.NoteReshape8x1StatementRks
import ShielddGnarkFormal.Deployed.NoteReshape8x1StatementHashRefinement

set_option maxRecDepth 1000000
set_option maxHeartbeats 4000000

/-! Statement-binding refinement for the deployed NoteReshape 8x1 relation. -/

namespace Shieldd.GnarkFormal.Deployed.NoteReshape8x1Refinement.C

open Shieldd.GnarkFormal
open Protocol.NoteReshape
open NoteReshapeCanonical
open Contracts.NoteReshape8x1

theorem actionStatementBinding
    (rho : Nat → DeployedF)
    (facts : NoteReshape8x1CircuitFacts rho) :
    NoteReshapeCanonical.statementBinding (action rho) := by
  refine ⟨
    balanceCommitmentFq rho,
    [spend0RkCompressed rho, spend1RkCompressed rho,
     spend2RkCompressed rho, spend3RkCompressed rho,
     spend4RkCompressed rho, spend5RkCompressed rho,
     spend6RkCompressed rho, spend7RkCompressed rho],
    claimedBalanceCompressed rho facts,
    actionRksCompressed rho facts,
    actionClaimedStatementHash rho facts
  ⟩

end Shieldd.GnarkFormal.Deployed.NoteReshape8x1Refinement.C
