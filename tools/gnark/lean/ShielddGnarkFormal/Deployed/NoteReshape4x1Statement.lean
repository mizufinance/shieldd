import ShielddGnarkFormal.Deployed.NoteReshape4x1StatementOutput
import ShielddGnarkFormal.Deployed.NoteReshape4x1StatementSecond

set_option maxRecDepth 1000000
set_option maxHeartbeats 8000000

/-! Exact 4x1 statement-field, two-block Poseidon, and public-input joins. -/

namespace Shieldd.GnarkFormal.Deployed.NoteReshape4x1Statement

open Shieldd.GnarkFormal
open Contracts.NoteReshape4x1

theorem computedHash
    (rho : Nat → DeployedF)
    (facts : NoteReshape4x1CircuitFacts rho) :
    statementHash rho =
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
  have h := facts.transcript.StatementHashSeg80
  change
    Deployed.Templates.Semantics.TStatementHash_4cafd325b545493415e47321733b6b69a04b20d1ef002f440729f6bf4a70a0b7.spec
      (Seg80.localRho rho) at h
  unfold
    Deployed.Templates.Semantics.TStatementHash_4cafd325b545493415e47321733b6b69a04b20d1ef002f440729f6bf4a70a0b7.spec at h
  calc
    statementHash rho =
        (Deployed.Templates.Semantics.TStatementHash_4cafd325b545493415e47321733b6b69a04b20d1ef002f440729f6bf4a70a0b7.Trace.rawState1_38
          (Seg80.localRho rho))[1] :=
      NoteReshape4x1StatementOutput.hash rho
    _ =
        Deployed.Templates.Semantics.TStatementHash_4cafd325b545493415e47321733b6b69a04b20d1ef002f440729f6bf4a70a0b7.Trace.hash1
          (Seg80.localRho rho) := h
    _ = NoteReshapeCanonical.statementHash .reshape4x1
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
         spend3RkCompressed rho] :=
      NoteReshape4x1StatementSecond.hash rho

theorem publicHash
    (rho : Nat → DeployedF)
    (facts : NoteReshape4x1CircuitFacts rho) :
    claimedStatementHash rho = statementHash rho := by
  have h := facts.transcript.AssertEqSeg81
  change
    Deployed.Templates.Semantics.TAssertEq_001662998b48830253568a34945bae30020bcb70574648b9aa58b23510a29b69.spec
      (Seg81.localRho rho) at h
  have hw1 : Seg81.wireSeating 1 = 61742 := by decide
  have hw2 : Seg81.wireSeating 2 = 61747 := by decide
  have hw3 : Seg81.wireSeating 3 = 61752 := by decide
  have hw4 : Seg81.wireSeating 4 = 61757 := by decide
  have hw5 : Seg81.wireSeating 5 = 61762 := by decide
  have hw6 : Seg81.wireSeating 6 = 61767 := by decide
  have hw7 : Seg81.wireSeating 7 = 61772 := by decide
  have hw8 : Seg81.wireSeating 8 = 61777 := by decide
  have hw9 : Seg81.wireSeating 9 = 1 := by decide
  simp [
    Deployed.Templates.Semantics.TAssertEq_001662998b48830253568a34945bae30020bcb70574648b9aa58b23510a29b69.spec,
    claimedStatementHash, claimedStatementHashLC,
    statementHash, statementHashLC,
    StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
    Seg81.localRho, Deployed.Templates.seated,
    hw1, hw2, hw3, hw4, hw5, hw6, hw7, hw8, hw9
  ] at h ⊢
  ring_nf at h ⊢
  exact h

theorem claimedHash
    (rho : Nat → DeployedF)
    (facts : NoteReshape4x1CircuitFacts rho) :
    claimedStatementHash rho =
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
         spend3RkCompressed rho] :=
  (publicHash rho facts).trans (computedHash rho facts)

end Shieldd.GnarkFormal.Deployed.NoteReshape4x1Statement
