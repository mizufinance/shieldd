import ShielddGnarkFormal.Deployed.NoteReshape8x1Statement
import ShielddGnarkFormal.Deployed.NoteReshape8x1Spend

set_option maxRecDepth 1000000
set_option maxHeartbeats 4000000

/-! Public statement-hash adapter for the deployed NoteReshape 8x1 relation. -/

namespace Shieldd.GnarkFormal.Deployed.NoteReshape8x1Refinement.C

open Shieldd.GnarkFormal
open Protocol.NoteReshape
open NoteReshapeCanonical
open Contracts.NoteReshape8x1

theorem actionClaimedStatementHash
    (rho : Nat → DeployedF)
    (facts : NoteReshape8x1CircuitFacts rho) :
    (action rho).publicStatementHash =
      NoteReshapeCanonical.statementHash (action rho).policy
        (NoteReshapeCanonical.statementFields
          (action rho)
          (balanceCommitmentFq rho)
          [spend0RkCompressed rho, spend1RkCompressed rho,
           spend2RkCompressed rho, spend3RkCompressed rho,
           spend4RkCompressed rho, spend5RkCompressed rho,
           spend6RkCompressed rho, spend7RkCompressed rho]) := by
  calc
    (action rho).publicStatementHash =
        NoteReshapeCanonical.statementHash .reshape8x1
          [anchor rho,
           output0NoteCommitmentComputed rho,
           balanceCommitmentFq rho,
           spend0NullifierSelected rho,
           spend0RkCompressed rho,
           spend1NullifierSelected rho,
           spend1RkCompressed rho,
           spend2NullifierSelected rho,
           spend2RkCompressed rho,
           spend3NullifierSelected rho,
           spend3RkCompressed rho,
           spend4NullifierSelected rho,
           spend4RkCompressed rho,
           spend5NullifierSelected rho,
           spend5RkCompressed rho,
           spend6NullifierSelected rho,
           spend6RkCompressed rho,
           spend7NullifierSelected rho,
           spend7RkCompressed rho] := by
      exact NoteReshape8x1Statement.claimedHash rho facts
    _ = NoteReshapeCanonical.statementHash (action rho).policy
        (NoteReshapeCanonical.statementFields
          (action rho)
          (balanceCommitmentFq rho)
          [spend0RkCompressed rho, spend1RkCompressed rho,
           spend2RkCompressed rho, spend3RkCompressed rho,
           spend4RkCompressed rho, spend5RkCompressed rho,
           spend6RkCompressed rho, spend7RkCompressed rho]) := by
      rw [
        ← Generated.NoteReshape8x1Commitments.output0NoteCommitmentAsserted
          rho facts,
        ← Generated.NoteReshape8x1Spend0.claimedNullifierSelected rho facts,
        ← Generated.NoteReshape8x1Spend1.claimedNullifierSelected rho facts,
        ← Generated.NoteReshape8x1Spend2.claimedNullifierSelected rho facts,
        ← Generated.NoteReshape8x1Spend3.claimedNullifierSelected rho facts,
        ← Generated.NoteReshape8x1Spend4.claimedNullifierSelected rho facts,
        ← Generated.NoteReshape8x1Spend5.claimedNullifierSelected rho facts,
        ← Generated.NoteReshape8x1Spend6.claimedNullifierSelected rho facts,
        ← Generated.NoteReshape8x1Spend7.claimedNullifierSelected rho facts
      ]
      simp only [
        action, output0,
        NoteReshapeCanonical.statementFields,
        NoteReshapeCanonical.inputStatementFields,
        input0Nullifier, input1Nullifier, input2Nullifier, input3Nullifier,
        input4Nullifier, input5Nullifier, input6Nullifier, input7Nullifier,
        List.map, List.append, Action.policy, Action.anchor, Action.outputs,
        Action.inputs, Output.commitment
      ]
      rw [
        input0Nullifier, input1Nullifier, input2Nullifier, input3Nullifier,
        input4Nullifier, input5Nullifier, input6Nullifier, input7Nullifier
      ]
      rfl

end Shieldd.GnarkFormal.Deployed.NoteReshape8x1Refinement.C
