import ShielddGnarkFormal.Deployed.NoteReshape8x1StatementOutput
import ShielddGnarkFormal.Deployed.NoteReshape8x1StatementSixth
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape8x1.CircuitFacts

set_option maxRecDepth 1000000
set_option maxHeartbeats 8000000

/-! Exact 8x1 statement fields, six-block Poseidon hash, and public-input join. -/

namespace Shieldd.GnarkFormal.Deployed.NoteReshape8x1TranscriptSeams

open Shieldd.GnarkFormal
open Contracts.NoteReshape8x1
abbrev DeployedF := Contracts.NoteReshape8x1.SemanticF

theorem computedHash
    (rho : Nat → DeployedF)
    (facts : NoteReshape8x1CircuitFacts rho) :
    statementHash rho =
      NoteReshapeCanonical.statementHash .reshape8x1
        (NoteReshape8x1StatementFirst.fields rho) := by
  have h := facts.transcript.StatementHashSeg173
  change
    Deployed.Templates.Semantics.TStatementHash_ae76718c78b325fc953ed63d67e8ea1e911dc2c5c95400df433473b5b0517647.spec
      (Seg173.localRho rho) at h
  unfold
    Deployed.Templates.Semantics.TStatementHash_ae76718c78b325fc953ed63d67e8ea1e911dc2c5c95400df433473b5b0517647.spec at h
  calc
    statementHash rho =
        (Deployed.Templates.Semantics.TStatementHash_ae76718c78b325fc953ed63d67e8ea1e911dc2c5c95400df433473b5b0517647.Trace.rawState5_38
          (Seg173.localRho rho))[1] :=
      NoteReshape8x1StatementOutput.hash rho
    _ =
        Deployed.Templates.Semantics.TStatementHash_ae76718c78b325fc953ed63d67e8ea1e911dc2c5c95400df433473b5b0517647.Trace.hash5
          (Seg173.localRho rho) := h
    _ = NoteReshapeCanonical.statementHash .reshape8x1
        (NoteReshape8x1StatementFirst.fields rho) :=
      NoteReshape8x1StatementSixth.hash rho

theorem publicHash
    (rho : Nat → DeployedF)
    (facts : NoteReshape8x1CircuitFacts rho) :
    claimedStatementHash rho = statementHash rho := by
  have h := facts.transcript.AssertEqSeg174
  change
    Deployed.Templates.Semantics.TAssertEq_001662998b48830253568a34945bae30020bcb70574648b9aa58b23510a29b69.spec
      (Seg174.localRho rho) at h
  have hw1 : Seg174.wireSeating 1 = 134623 := by decide +kernel
  have hw2 : Seg174.wireSeating 2 = 134628 := by decide +kernel
  have hw3 : Seg174.wireSeating 3 = 134633 := by decide +kernel
  have hw4 : Seg174.wireSeating 4 = 134638 := by decide +kernel
  have hw5 : Seg174.wireSeating 5 = 134643 := by decide +kernel
  have hw6 : Seg174.wireSeating 6 = 134648 := by decide +kernel
  have hw7 : Seg174.wireSeating 7 = 134653 := by decide +kernel
  have hw8 : Seg174.wireSeating 8 = 134658 := by decide +kernel
  have hw9 : Seg174.wireSeating 9 = 1 := by decide +kernel
  simp [
    Deployed.Templates.Semantics.TAssertEq_001662998b48830253568a34945bae30020bcb70574648b9aa58b23510a29b69.spec,
    claimedStatementHash, claimedStatementHashLC,
    statementHash, statementHashLC,
    StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
    Seg174.localRho, Deployed.Templates.seated,
    hw1, hw2, hw3, hw4, hw5, hw6, hw7, hw8, hw9
  ] at h ⊢
  ring_nf at h ⊢
  exact h

theorem claimedHash
    (rho : Nat → DeployedF)
    (facts : NoteReshape8x1CircuitFacts rho) :
    claimedStatementHash rho =
      NoteReshapeCanonical.statementHash .reshape8x1
        (NoteReshape8x1StatementFirst.fields rho) :=
  (publicHash rho facts).trans (computedHash rho facts)

end Shieldd.GnarkFormal.Deployed.NoteReshape8x1TranscriptSeams
