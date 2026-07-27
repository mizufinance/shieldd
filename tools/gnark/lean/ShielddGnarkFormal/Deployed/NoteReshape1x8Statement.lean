import ShielddGnarkFormal.Deployed.Contracts.NoteReshape1x8.CircuitFacts
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape1x8.SemanticBindings
import ShielddGnarkFormal.Deployed.NoteReshape1x8StatementSeatingFirstA
import ShielddGnarkFormal.Deployed.NoteReshape1x8StatementSeatingFirstB
import ShielddGnarkFormal.Deployed.NoteReshape1x8StatementSeatingSecond
import ShielddGnarkFormal.Deployed.NoteReshape1x8StatementSeatingOutput
import ShielddGnarkFormal.Deployed.NoteReshape1x8StatementOutput
import ShielddGnarkFormal.Deployed.NoteReshape1x8StatementSecond
import ShielddGnarkFormal.NoteReshapeCanonical

set_option maxRecDepth 1000000
set_option maxHeartbeats 8000000

/-! Exact 1x8 statement-field, two-block Poseidon, and public-input joins. -/

namespace Shieldd.GnarkFormal.Deployed.NoteReshape1x8Statement

open Shieldd.GnarkFormal
open Contracts.NoteReshape1x8
open NoteReshape1x8StatementSeating

theorem field0 (rho : Nat → DeployedF) :
    statementFields0 rho = anchor rho := by rfl

theorem field1 (rho : Nat → DeployedF) :
    statementFields1 rho = output0NoteCommitmentComputed rho := by rfl

theorem field2 (rho : Nat → DeployedF) :
    statementFields2 rho = output1NoteCommitmentComputed rho := by rfl

theorem field3 (rho : Nat → DeployedF) :
    statementFields3 rho = output2NoteCommitmentComputed rho := by rfl

theorem field4 (rho : Nat → DeployedF) :
    statementFields4 rho = output3NoteCommitmentComputed rho := by rfl

theorem field5 (rho : Nat → DeployedF) :
    statementFields5 rho = output4NoteCommitmentComputed rho := by rfl

theorem field6 (rho : Nat → DeployedF) :
    statementFields6 rho = output5NoteCommitmentComputed rho := by rfl

theorem field7 (rho : Nat → DeployedF) :
    statementFields7 rho = output6NoteCommitmentComputed rho := by rfl

theorem field8 (rho : Nat → DeployedF) :
    statementFields8 rho = output7NoteCommitmentComputed rho := by rfl

theorem field9 (rho : Nat → DeployedF) :
    statementFields9 rho = balanceCommitmentFq rho := by rfl

theorem field10 (rho : Nat → DeployedF) :
    statementFields10 rho = spend0NullifierComputed rho := by rfl

theorem field11 (rho : Nat → DeployedF) :
    statementFields11 rho = spend0RkCompressed rho := by rfl

theorem computedHash
    (rho : Nat → DeployedF)
    (facts : NoteReshape1x8CircuitFacts rho) :
    statementHash rho =
      NoteReshapeCanonical.statementHash .reshape1x8
        [anchor rho,
         output0NoteCommitmentComputed rho,
         output1NoteCommitmentComputed rho,
         output2NoteCommitmentComputed rho,
         output3NoteCommitmentComputed rho,
         output4NoteCommitmentComputed rho,
         output5NoteCommitmentComputed rho,
         output6NoteCommitmentComputed rho,
         output7NoteCommitmentComputed rho,
         balanceCommitmentFq rho,
         spend0NullifierComputed rho,
         spend0RkCompressed rho] := by
  have h := facts.transcript.StatementHashSeg57
  change
    Deployed.Templates.Semantics.TStatementHash_253f0669df9a88c5d0d1fd54142634236d1f927edf40a3baefb3981c2bc88c5e.spec
      (Seg57.localRho rho) at h
  unfold
    Deployed.Templates.Semantics.TStatementHash_253f0669df9a88c5d0d1fd54142634236d1f927edf40a3baefb3981c2bc88c5e.spec at h
  calc
    statementHash rho =
        (Deployed.Templates.Semantics.TStatementHash_253f0669df9a88c5d0d1fd54142634236d1f927edf40a3baefb3981c2bc88c5e.Trace.rawState1_38
          (Seg57.localRho rho))[1] :=
      NoteReshape1x8StatementOutput.hash rho
    _ =
        Deployed.Templates.Semantics.TStatementHash_253f0669df9a88c5d0d1fd54142634236d1f927edf40a3baefb3981c2bc88c5e.Trace.hash1
          (Seg57.localRho rho) := h
    _ = NoteReshapeCanonical.statementHash .reshape1x8
        [anchor rho,
         output0NoteCommitmentComputed rho,
         output1NoteCommitmentComputed rho,
         output2NoteCommitmentComputed rho,
         output3NoteCommitmentComputed rho,
         output4NoteCommitmentComputed rho,
         output5NoteCommitmentComputed rho,
         output6NoteCommitmentComputed rho,
         output7NoteCommitmentComputed rho,
         balanceCommitmentFq rho,
         spend0NullifierComputed rho,
         spend0RkCompressed rho] :=
      NoteReshape1x8StatementSecond.hash rho

theorem publicHash
    (rho : Nat → DeployedF)
    (facts : NoteReshape1x8CircuitFacts rho) :
    claimedStatementHash rho = statementHash rho := by
  have h := facts.transcript.AssertEqSeg58
  change
    Deployed.Templates.Semantics.TAssertEq_001662998b48830253568a34945bae30020bcb70574648b9aa58b23510a29b69.spec
      (Seg58.localRho rho) at h
  simp [
    Deployed.Templates.Semantics.TAssertEq_001662998b48830253568a34945bae30020bcb70574648b9aa58b23510a29b69.spec,
    claimedStatementHash, claimedStatementHashLC,
    statementHash, statementHashLC,
    StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
    Seg58.localRho, Deployed.Templates.seated,
    NoteReshape1x8StatementPublicSeating.hw1,
    NoteReshape1x8StatementPublicSeating.hw2,
    NoteReshape1x8StatementPublicSeating.hw3,
    NoteReshape1x8StatementPublicSeating.hw4,
    NoteReshape1x8StatementPublicSeating.hw5,
    NoteReshape1x8StatementPublicSeating.hw6,
    NoteReshape1x8StatementPublicSeating.hw7,
    NoteReshape1x8StatementPublicSeating.hw8,
    NoteReshape1x8StatementPublicSeating.hw9
  ] at h ⊢
  ring_nf at h ⊢
  exact h

theorem claimedHash
    (rho : Nat → DeployedF)
    (facts : NoteReshape1x8CircuitFacts rho) :
    claimedStatementHash rho =
      NoteReshapeCanonical.statementHash .reshape1x8
        [anchor rho,
         output0NoteCommitmentComputed rho,
         output1NoteCommitmentComputed rho,
         output2NoteCommitmentComputed rho,
         output3NoteCommitmentComputed rho,
         output4NoteCommitmentComputed rho,
         output5NoteCommitmentComputed rho,
         output6NoteCommitmentComputed rho,
         output7NoteCommitmentComputed rho,
         balanceCommitmentFq rho,
         spend0NullifierComputed rho,
         spend0RkCompressed rho] :=
  (publicHash rho facts).trans (computedHash rho facts)

end Shieldd.GnarkFormal.Deployed.NoteReshape1x8Statement
