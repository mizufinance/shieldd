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
         complianceAnchor rho,
         routingTag rho,
         routingParameterSetId rho,
         recentPositionFloor rho,
         spend0NullifierComputed rho,
         spend0RkCompressed rho,
         spend0HistoryRequired rho] := by
  have h := facts.transcript.StatementHashSeg83
  change
    Deployed.Templates.Semantics.TStatementHash_7acf21e44dfb02b7e86c0f61aeed9884ca62220f949cb8a03253903d5c5bec66.spec
      (Seg83.localRho rho) at h
  unfold
    Deployed.Templates.Semantics.TStatementHash_7acf21e44dfb02b7e86c0f61aeed9884ca62220f949cb8a03253903d5c5bec66.spec at h
  calc
    statementHash rho =
        (Deployed.Templates.Semantics.TStatementHash_7acf21e44dfb02b7e86c0f61aeed9884ca62220f949cb8a03253903d5c5bec66.Trace.rawState2_38
          (Seg83.localRho rho))[1] :=
      NoteReshape1x8StatementOutput.hash rho
    _ =
        Deployed.Templates.Semantics.TStatementHash_7acf21e44dfb02b7e86c0f61aeed9884ca62220f949cb8a03253903d5c5bec66.Trace.hash2
          (Seg83.localRho rho) := h
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
         complianceAnchor rho,
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
  have h := facts.transcript.AssertEqSeg84
  change
    Deployed.Templates.Semantics.TAssertEq_001662998b48830253568a34945bae30020bcb70574648b9aa58b23510a29b69.spec
      (Seg84.localRho rho) at h
  simp [
    Deployed.Templates.Semantics.TAssertEq_001662998b48830253568a34945bae30020bcb70574648b9aa58b23510a29b69.spec,
    claimedStatementHash, claimedStatementHashLC,
    statementHash, statementHashLC,
    StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
    Seg84.localRho, Deployed.Templates.seated,
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
         complianceAnchor rho,
         routingTag rho,
         routingParameterSetId rho,
         recentPositionFloor rho,
         spend0NullifierComputed rho,
         spend0RkCompressed rho,
         spend0HistoryRequired rho] :=
  (publicHash rho facts).trans (computedHash rho facts)

end Shieldd.GnarkFormal.Deployed.NoteReshape1x8TranscriptSeams
