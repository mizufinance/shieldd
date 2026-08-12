import ShielddGnarkFormal.Deployed.NoteReshape8x1StatementOutput
import ShielddGnarkFormal.Deployed.NoteReshape8x1StatementFourth
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape8x1.CircuitFacts

set_option maxRecDepth 1000000
set_option maxHeartbeats 8000000

/-! Exact 8x1 statement fields, four-block Poseidon hash, and public-input join. -/

namespace Shieldd.GnarkFormal.Deployed.NoteReshape8x1TranscriptSeams

open Shieldd.GnarkFormal
open Contracts.NoteReshape8x1
abbrev DeployedF := Contracts.NoteReshape8x1.SemanticF

theorem computedHash
    (rho : Nat → DeployedF)
    (facts : NoteReshape8x1CircuitFacts rho) :
    statementHash rho =
      NoteReshapeCanonical.statementHash .reshape8x1
        [anchor rho,
         output0NoteCommitmentComputed rho,
         balanceCommitmentFq rho,
         assetAnchor rho,
         routingTag rho,
         routingParameterSetId rho,
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
  have h := facts.transcript.StatementHashSeg161
  change
    Deployed.Templates.Semantics.TStatementHash_c73724e5718898979d9030c39225b26e62b7d4a45d01d4aa5c1e35cabda8b3c5.spec
      (Seg161.localRho rho) at h
  unfold
    Deployed.Templates.Semantics.TStatementHash_c73724e5718898979d9030c39225b26e62b7d4a45d01d4aa5c1e35cabda8b3c5.spec at h
  calc
    statementHash rho =
        (Deployed.Templates.Semantics.TStatementHash_c73724e5718898979d9030c39225b26e62b7d4a45d01d4aa5c1e35cabda8b3c5.Trace.rawState3_38
          (Seg161.localRho rho))[1] :=
      NoteReshape8x1StatementOutput.hash rho
    _ =
        Deployed.Templates.Semantics.TStatementHash_c73724e5718898979d9030c39225b26e62b7d4a45d01d4aa5c1e35cabda8b3c5.Trace.hash3
          (Seg161.localRho rho) := h
    _ = NoteReshapeCanonical.statementHash .reshape8x1
        [anchor rho,
         output0NoteCommitmentComputed rho,
         balanceCommitmentFq rho,
         assetAnchor rho,
         routingTag rho,
         routingParameterSetId rho,
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
      NoteReshape8x1StatementFourth.hash rho

theorem publicHash
    (rho : Nat → DeployedF)
    (facts : NoteReshape8x1CircuitFacts rho) :
    claimedStatementHash rho = statementHash rho := by
  have h := facts.transcript.AssertEqSeg162
  change
    Deployed.Templates.Semantics.TAssertEq_001662998b48830253568a34945bae30020bcb70574648b9aa58b23510a29b69.spec
      (Seg162.localRho rho) at h
  have hw1 : Seg162.wireSeating 1 = 126190 := by decide +kernel
  have hw2 : Seg162.wireSeating 2 = 126195 := by decide +kernel
  have hw3 : Seg162.wireSeating 3 = 126200 := by decide +kernel
  have hw4 : Seg162.wireSeating 4 = 126205 := by decide +kernel
  have hw5 : Seg162.wireSeating 5 = 126210 := by decide +kernel
  have hw6 : Seg162.wireSeating 6 = 126215 := by decide +kernel
  have hw7 : Seg162.wireSeating 7 = 126220 := by decide +kernel
  have hw8 : Seg162.wireSeating 8 = 126225 := by decide +kernel
  have hw9 : Seg162.wireSeating 9 = 1 := by decide +kernel
  simp [
    Deployed.Templates.Semantics.TAssertEq_001662998b48830253568a34945bae30020bcb70574648b9aa58b23510a29b69.spec,
    claimedStatementHash, claimedStatementHashLC,
    statementHash, statementHashLC,
    StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
    Seg162.localRho, Deployed.Templates.seated,
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
         assetAnchor rho,
         routingTag rho,
         routingParameterSetId rho,
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

end Shieldd.GnarkFormal.Deployed.NoteReshape8x1TranscriptSeams
