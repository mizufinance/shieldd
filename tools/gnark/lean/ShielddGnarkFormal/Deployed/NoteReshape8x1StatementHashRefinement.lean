import ShielddGnarkFormal.Deployed.NoteReshape8x1TranscriptSeams
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
          (NoteReshape8x1StatementFirst.fields rho) := by
      exact NoteReshape8x1TranscriptSeams.claimedHash rho facts
    _ = NoteReshapeCanonical.statementHash (action rho).policy
        (NoteReshapeCanonical.statementFields
          (action rho)
          (balanceCommitmentFq rho)
          [spend0RkCompressed rho, spend1RkCompressed rho,
           spend2RkCompressed rho, spend3RkCompressed rho,
           spend4RkCompressed rho, spend5RkCompressed rho,
           spend6RkCompressed rho, spend7RkCompressed rho]) := by
      unfold NoteReshape8x1StatementFirst.fields
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
      apply congrArg₂ NoteReshapeCanonical.statementHash
      · rfl
      · simp [
          NoteReshape8x1StatementFirst.fields,
          action, output0,
          NoteReshapeCanonical.statementFields,
          NoteReshapeCanonical.inputStatementFields,
          Protocol.NoteReshape.Concrete.statementFields,
          Protocol.NoteReshape.Concrete.inputStatementFields
        ]
        exact ⟨
          (input0Nullifier rho).symm,
          (input0HistoryRequired rho).symm,
          (input1Nullifier rho).symm,
          (input1HistoryRequired rho).symm,
          (input2Nullifier rho).symm,
          (input2HistoryRequired rho).symm,
          (input3Nullifier rho).symm,
          (input3HistoryRequired rho).symm,
          (input4Nullifier rho).symm,
          (input4HistoryRequired rho).symm,
          (input5Nullifier rho).symm,
          (input5HistoryRequired rho).symm,
          (input6Nullifier rho).symm,
          (input6HistoryRequired rho).symm,
          (input7Nullifier rho).symm,
          (input7HistoryRequired rho).symm
        ⟩

end Shieldd.GnarkFormal.Deployed.NoteReshape8x1Refinement.C
