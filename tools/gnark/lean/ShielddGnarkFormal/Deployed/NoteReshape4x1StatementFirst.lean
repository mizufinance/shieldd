import ShielddGnarkFormal.Deployed.Contracts.NoteReshape4x1.CircuitFacts
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape4x1.SemanticBindings
import ShielddGnarkFormal.NoteReshapeCanonical

set_option maxRecDepth 1000000
set_option maxHeartbeats 4000000

/-! Exact first Poseidon block for the 4x1 statement. -/

namespace Shieldd.GnarkFormal.Deployed.NoteReshape4x1StatementFirst

open Shieldd.GnarkFormal
open Contracts.NoteReshape4x1
open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

attribute [-instance] ZMod.instField
local instance choiceFreeStatementFirstCommRing : CommRing DeployedF := ZMod.commRing _

theorem canonicalFirstBlockEleven
    (f0 f1 f2 f3 f4 f5 f6 f7 f8 f9 f10 : DeployedF) :
    NoteReshapeCanonical.statementFirstBlock .reshape4x1
        [f0, f1, f2, f3, f4, f5, f6, f7, f8, f9, f10] =
      Poseidon7Bridge.permSpec7
        (5915654282401331336747985974992743439571166637199277295399593266008193812311 :
          DeployedF)
        f0 f1 f2 f3 f4 f5 f6 := by
  rfl

theorem hash
    (rho : Nat → DeployedF) :
    Deployed.Templates.Semantics.TStatementHash_4cafd325b545493415e47321733b6b69a04b20d1ef002f440729f6bf4a70a0b7.Trace.hash0
        (Seg80.localRho rho) =
      NoteReshapeCanonical.statementFirstBlock .reshape4x1
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
  have hw1 : Seg80.wireSeating 1 = 2 := by decide
  have hw7 : Seg80.wireSeating 7 = 57668 := by decide
  have hw8 : Seg80.wireSeating 8 = 57673 := by decide
  have hw9 : Seg80.wireSeating 9 = 57678 := by decide
  have hw10 : Seg80.wireSeating 10 = 57683 := by decide
  have hw11 : Seg80.wireSeating 11 = 57688 := by decide
  have hw12 : Seg80.wireSeating 12 = 57693 := by decide
  have hw13 : Seg80.wireSeating 13 = 57698 := by decide
  have hw19 : Seg80.wireSeating 19 = 60507 := by decide
  have hw20 : Seg80.wireSeating 20 = 60847 := by decide
  have hw26 : Seg80.wireSeating 26 = 17290 := by decide
  have hw27 : Seg80.wireSeating 27 = 17291 := by decide
  have hw33 : Seg80.wireSeating 33 = 19470 := by decide
  have hw34 : Seg80.wireSeating 34 = 19810 := by decide
  have hw40 : Seg80.wireSeating 40 = 29776 := by decide
  have hw41 : Seg80.wireSeating 41 = 29777 := by decide
  have hw47 : Seg80.wireSeating 47 = 31956 := by decide
  have hw48 : Seg80.wireSeating 48 = 32296 := by decide
  have hneg :
      (8444461749428370424248824938781546531375899335154063827935233455917409239040 :
        DeployedF) = -1 := by decide
  rw [canonicalFirstBlockEleven]
  simp [
    Deployed.Templates.Semantics.TStatementHash_4cafd325b545493415e47321733b6b69a04b20d1ef002f440729f6bf4a70a0b7.Trace.hash0,
    Deployed.Templates.Semantics.TStatementHash_4cafd325b545493415e47321733b6b69a04b20d1ef002f440729f6bf4a70a0b7.Trace.domainLit,
    anchor, anchorLC,
    output0NoteCommitmentComputed, output0NoteCommitmentComputedLC,
    balanceCommitmentFq, balanceCommitmentFqLC,
    spend0NullifierSelected, spend0NullifierSelectedLC,
    spend0RkCompressed, spend0RkCompressedLC,
    spend1NullifierSelected, spend1NullifierSelectedLC,
    spend1RkCompressed, spend1RkCompressedLC,
    StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
    Seg80.localRho, Deployed.Templates.seated,
    hw1, hw7, hw8, hw9, hw10, hw11, hw12, hw13,
    hw19, hw20, hw26, hw27, hw33, hw34, hw40, hw41, hw47, hw48,
    hneg
  ]
  congr 1 <;> simp only [add_assoc, neg_one_mul]

end Shieldd.GnarkFormal.Deployed.NoteReshape4x1StatementFirst
