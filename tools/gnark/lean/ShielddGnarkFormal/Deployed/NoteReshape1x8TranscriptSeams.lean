import ShielddGnarkFormal.Deployed.Contracts.NoteReshape1x8.CircuitFacts
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape1x8.SemanticBindings
import ShielddGnarkFormal.Deployed.NoteReshape1x8StatementSeatingOutput
import ShielddGnarkFormal.Deployed.NoteReshape1x8StatementOutput
import ShielddGnarkFormal.Deployed.NoteReshape1x8StatementThird
import ShielddGnarkFormal.NoteReshapeCanonical

set_option maxRecDepth 1000000
set_option maxHeartbeats 8000000

/-! Exact 1x8 statement fields, three-block Poseidon hash, and public-input join. -/

namespace Shieldd.GnarkFormal.Deployed.NoteReshape1x8TranscriptSeams

open Shieldd.GnarkFormal
open Contracts.NoteReshape1x8
abbrev DeployedF := Contracts.NoteReshape1x8.SemanticF

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
         assetAnchor rho,
         routingTag rho,
         routingParameterSetId rho,
         recentPositionFloor rho,
         spend0NullifierComputed rho,
         spend0RkCompressed rho,
         spend0HistoryRequired rho] := by
  have h := facts.transcript.StatementHashSeg79
  change
    Deployed.Templates.Semantics.TStatementHash_83a669afde34adf36b8981f04f0c381cb17040f11d8fafcf45f8451d92c98705.spec
      (Seg79.localRho rho) at h
  unfold
    Deployed.Templates.Semantics.TStatementHash_83a669afde34adf36b8981f04f0c381cb17040f11d8fafcf45f8451d92c98705.spec at h
  calc
    statementHash rho =
        (Deployed.Templates.Semantics.TStatementHash_83a669afde34adf36b8981f04f0c381cb17040f11d8fafcf45f8451d92c98705.Trace.rawState2_38
          (Seg79.localRho rho))[1] :=
      NoteReshape1x8StatementOutput.hash rho
    _ =
        Deployed.Templates.Semantics.TStatementHash_83a669afde34adf36b8981f04f0c381cb17040f11d8fafcf45f8451d92c98705.Trace.hash2
          (Seg79.localRho rho) := h
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
         assetAnchor rho,
         routingTag rho,
         routingParameterSetId rho,
         recentPositionFloor rho,
         spend0NullifierComputed rho,
         spend0RkCompressed rho,
         spend0HistoryRequired rho] :=
      NoteReshape1x8StatementThird.hash rho

theorem publicHash
    (rho : Nat → DeployedF)
    (facts : NoteReshape1x8CircuitFacts rho) :
    claimedStatementHash rho = statementHash rho := by
  have h := facts.transcript.AssertEqSeg80
  change
    Deployed.Templates.Semantics.TAssertEq_001662998b48830253568a34945bae30020bcb70574648b9aa58b23510a29b69.spec
      (Seg80.localRho rho) at h
  simp [
    Deployed.Templates.Semantics.TAssertEq_001662998b48830253568a34945bae30020bcb70574648b9aa58b23510a29b69.spec,
    claimedStatementHash, claimedStatementHashLC,
    statementHash, statementHashLC,
    StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
    Seg80.localRho, Deployed.Templates.seated,
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
         assetAnchor rho,
         routingTag rho,
         routingParameterSetId rho,
         recentPositionFloor rho,
         spend0NullifierComputed rho,
         spend0RkCompressed rho,
         spend0HistoryRequired rho] :=
  (publicHash rho facts).trans (computedHash rho facts)

end Shieldd.GnarkFormal.Deployed.NoteReshape1x8TranscriptSeams
