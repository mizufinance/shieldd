import ShielddGnarkFormal.Deployed.NoteReshape4x1Statement
import ShielddGnarkFormal.Deployed.NoteReshape4x1Spend

set_option maxRecDepth 1000000
set_option maxHeartbeats 4000000

/-! Public statement-hash adapter for the deployed NoteReshape 4x1 relation. -/

namespace Shieldd.GnarkFormal.Deployed.NoteReshape4x1Refinement.C

open Shieldd.GnarkFormal
open Protocol.NoteReshape
open NoteReshapeCanonical
open Contracts.NoteReshape4x1

theorem actionClaimedStatementHash
    (rho : Nat → DeployedF)
    (facts : NoteReshape4x1CircuitFacts rho) :
    (action rho).publicStatementHash =
      NoteReshapeCanonical.statementHash (action rho).policy
        (NoteReshapeCanonical.statementFields
          (action rho)
          (balanceCommitmentFq rho)
          [spend0RkCompressed rho, spend1RkCompressed rho,
           spend2RkCompressed rho, spend3RkCompressed rho]) := by
  calc
    (action rho).publicStatementHash =
        NoteReshapeCanonical.statementHash .reshape4x1
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
           spend3RkCompressed rho] := by
      exact NoteReshape4x1Statement.claimedHash rho facts
    _ = NoteReshapeCanonical.statementHash (action rho).policy
        (NoteReshapeCanonical.statementFields
          (action rho)
          (balanceCommitmentFq rho)
          [spend0RkCompressed rho, spend1RkCompressed rho,
           spend2RkCompressed rho, spend3RkCompressed rho]) := by
      rw [
        ← Generated.NoteReshape4x1Commitments.output0NoteCommitmentAsserted
          rho facts,
        ← Generated.NoteReshape4x1Spend0.claimedNullifierSelected rho facts,
        ← Generated.NoteReshape4x1Spend1.claimedNullifierSelected rho facts,
        ← Generated.NoteReshape4x1Spend2.claimedNullifierSelected rho facts,
        ← Generated.NoteReshape4x1Spend3.claimedNullifierSelected rho facts
      ]
      apply congrArg₂ NoteReshapeCanonical.statementHash
      · rfl
      · simp [
          action, output0,
          NoteReshapeCanonical.statementFields,
          NoteReshapeCanonical.inputStatementFields,
          Protocol.NoteReshape.Concrete.statementFields,
          Protocol.NoteReshape.Concrete.inputStatementFields
        ]
        exact ⟨
          (input0Nullifier rho).symm,
          (input1Nullifier rho).symm,
          (input2Nullifier rho).symm,
          (input3Nullifier rho).symm
        ⟩

end Shieldd.GnarkFormal.Deployed.NoteReshape4x1Refinement.C
