import ShielddGnarkFormal.Deployed.NoteReshape8x1StatementOutput
import ShielddGnarkFormal.Deployed.NoteReshape8x1StatementThird

set_option maxRecDepth 1000000
set_option maxHeartbeats 8000000

/-! Exact 8x1 statement-field, three-block Poseidon, and public-input joins. -/

namespace Shieldd.GnarkFormal.Deployed.NoteReshape8x1Statement

open Shieldd.GnarkFormal
open Contracts.NoteReshape8x1

theorem computedHash
    (rho : Nat → DeployedF)
    (facts : NoteReshape8x1CircuitFacts rho) :
    statementHash rho =
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
  have h := facts.transcript.StatementHashSeg140
  change
    Deployed.Templates.Semantics.TStatementHash_ebf331d76bfb4fc16f6904f05f7a363037842a713a0f5be16fe61ce6b10043f1.spec
      (Seg140.localRho rho) at h
  unfold
    Deployed.Templates.Semantics.TStatementHash_ebf331d76bfb4fc16f6904f05f7a363037842a713a0f5be16fe61ce6b10043f1.spec at h
  calc
    statementHash rho =
        (Deployed.Templates.Semantics.TStatementHash_ebf331d76bfb4fc16f6904f05f7a363037842a713a0f5be16fe61ce6b10043f1.Trace.rawState2_38
          (Seg140.localRho rho))[1] :=
      NoteReshape8x1StatementOutput.hash rho
    _ =
        Deployed.Templates.Semantics.TStatementHash_ebf331d76bfb4fc16f6904f05f7a363037842a713a0f5be16fe61ce6b10043f1.Trace.hash2
          (Seg140.localRho rho) := h
    _ = NoteReshapeCanonical.statementHash .reshape8x1
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
         spend7RkCompressed rho] :=
      NoteReshape8x1StatementThird.hash rho

theorem publicHash
    (rho : Nat → DeployedF)
    (facts : NoteReshape8x1CircuitFacts rho) :
    claimedStatementHash rho = statementHash rho := by
  have h := facts.transcript.AssertEqSeg141
  change
    Deployed.Templates.Semantics.TAssertEq_001662998b48830253568a34945bae30020bcb70574648b9aa58b23510a29b69.spec
      (Seg141.localRho rho) at h
  have hw1 : Seg141.wireSeating 1 = 113012 := by decide +kernel
  have hw2 : Seg141.wireSeating 2 = 113017 := by decide +kernel
  have hw3 : Seg141.wireSeating 3 = 113022 := by decide +kernel
  have hw4 : Seg141.wireSeating 4 = 113027 := by decide +kernel
  have hw5 : Seg141.wireSeating 5 = 113032 := by decide +kernel
  have hw6 : Seg141.wireSeating 6 = 113037 := by decide +kernel
  have hw7 : Seg141.wireSeating 7 = 113042 := by decide +kernel
  have hw8 : Seg141.wireSeating 8 = 113047 := by decide +kernel
  have hw9 : Seg141.wireSeating 9 = 1 := by decide +kernel
  simp [
    Deployed.Templates.Semantics.TAssertEq_001662998b48830253568a34945bae30020bcb70574648b9aa58b23510a29b69.spec,
    claimedStatementHash, claimedStatementHashLC,
    statementHash, statementHashLC,
    StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
    Seg141.localRho, Deployed.Templates.seated,
    hw1, hw2, hw3, hw4, hw5, hw6, hw7, hw8, hw9
  ] at h ⊢
  ring_nf at h ⊢
  exact h

theorem claimedHash
    (rho : Nat → DeployedF)
    (facts : NoteReshape8x1CircuitFacts rho) :
    claimedStatementHash rho =
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
         spend7RkCompressed rho] :=
  (publicHash rho facts).trans (computedHash rho facts)

end Shieldd.GnarkFormal.Deployed.NoteReshape8x1Statement
