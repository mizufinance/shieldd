import ShielddGnarkFormal.Deployed.NoteReshape8x1StatementOutput
import ShielddGnarkFormal.Deployed.NoteReshape8x1StatementFifth
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape8x1.CircuitFacts

set_option maxRecDepth 1000000
set_option maxHeartbeats 8000000

/-! Exact 8x1 statement fields, five-block Poseidon hash, and public-input join. -/

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
  have h := facts.transcript.StatementHashSeg169
  change
    Deployed.Templates.Semantics.TStatementHash_72066204724e0232dbfe5f6b0c37434f1d4d53cf61944652f76487e540ff849c.spec
      (Seg169.localRho rho) at h
  unfold
    Deployed.Templates.Semantics.TStatementHash_72066204724e0232dbfe5f6b0c37434f1d4d53cf61944652f76487e540ff849c.spec at h
  calc
    statementHash rho =
        (Deployed.Templates.Semantics.TStatementHash_72066204724e0232dbfe5f6b0c37434f1d4d53cf61944652f76487e540ff849c.Trace.rawState4_38
          (Seg169.localRho rho))[1] :=
      NoteReshape8x1StatementOutput.hash rho
    _ =
        Deployed.Templates.Semantics.TStatementHash_72066204724e0232dbfe5f6b0c37434f1d4d53cf61944652f76487e540ff849c.Trace.hash4
          (Seg169.localRho rho) := h
    _ = NoteReshapeCanonical.statementHash .reshape8x1
        (NoteReshape8x1StatementFirst.fields rho) :=
      NoteReshape8x1StatementFifth.hash rho

theorem publicHash
    (rho : Nat → DeployedF)
    (facts : NoteReshape8x1CircuitFacts rho) :
    claimedStatementHash rho = statementHash rho := by
  have h := facts.transcript.AssertEqSeg170
  change
    Deployed.Templates.Semantics.TAssertEq_001662998b48830253568a34945bae30020bcb70574648b9aa58b23510a29b69.spec
      (Seg170.localRho rho) at h
  have hw1 : Seg170.wireSeating 1 = 127860 := by decide +kernel
  have hw2 : Seg170.wireSeating 2 = 127865 := by decide +kernel
  have hw3 : Seg170.wireSeating 3 = 127870 := by decide +kernel
  have hw4 : Seg170.wireSeating 4 = 127875 := by decide +kernel
  have hw5 : Seg170.wireSeating 5 = 127880 := by decide +kernel
  have hw6 : Seg170.wireSeating 6 = 127885 := by decide +kernel
  have hw7 : Seg170.wireSeating 7 = 127890 := by decide +kernel
  have hw8 : Seg170.wireSeating 8 = 127895 := by decide +kernel
  have hw9 : Seg170.wireSeating 9 = 1 := by decide +kernel
  simp [
    Deployed.Templates.Semantics.TAssertEq_001662998b48830253568a34945bae30020bcb70574648b9aa58b23510a29b69.spec,
    claimedStatementHash, claimedStatementHashLC,
    statementHash, statementHashLC,
    StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
    Seg170.localRho, Deployed.Templates.seated,
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
