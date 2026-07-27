import ShielddGnarkFormal.Deployed.NoteReshape8x1StatementFirst

set_option maxRecDepth 1000000
set_option maxHeartbeats 4000000

/-! Exact second Poseidon block for the 8x1 statement. -/

namespace Shieldd.GnarkFormal.Deployed.NoteReshape8x1StatementSecond

open Shieldd.GnarkFormal
open Contracts.NoteReshape8x1
open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

attribute [-instance] ZMod.instField
local instance choiceFreeStatementSecondCommRing : CommRing DeployedF := ZMod.commRing _

def secondBlock (fields : List DeployedF) : DeployedF :=
  Poseidon7Bridge.permSpec7
    (NoteReshapeCanonical.statementDomain .reshape8x1)
    (NoteReshapeCanonical.statementFirstBlock .reshape8x1 fields)
    (NoteReshapeCanonical.statementField fields 7
      (NoteReshapeCanonical.statementPad0 .reshape8x1))
    (NoteReshapeCanonical.statementField fields 8
      (NoteReshapeCanonical.statementPad1 .reshape8x1))
    (NoteReshapeCanonical.statementField fields 9
      (NoteReshapeCanonical.statementPad0 .reshape8x1))
    (NoteReshapeCanonical.statementField fields 10
      (NoteReshapeCanonical.statementPad1 .reshape8x1))
    (NoteReshapeCanonical.statementField fields 11
      (NoteReshapeCanonical.statementPad0 .reshape8x1))
    (NoteReshapeCanonical.statementField fields 12
      (NoteReshapeCanonical.statementPad1 .reshape8x1))

theorem canonicalSecondBlockNineteen
    (f0 f1 f2 f3 f4 f5 f6 f7 f8 f9 f10 f11 f12 f13 f14 f15 f16 f17 f18 :
      DeployedF) :
    secondBlock
        [f0, f1, f2, f3, f4, f5, f6, f7, f8, f9, f10,
         f11, f12, f13, f14, f15, f16, f17, f18] =
      Poseidon7Bridge.permSpec7
        (8151566796627494957780365425260097767647931594965532798107827918965818197203 :
          DeployedF)
        (NoteReshapeCanonical.statementFirstBlock .reshape8x1
          [f0, f1, f2, f3, f4, f5, f6, f7, f8, f9, f10,
           f11, f12, f13, f14, f15, f16, f17, f18])
        f7 f8 f9 f10 f11 f12 := by
  rfl

theorem hash
    (rho : Nat → DeployedF) :
    Deployed.Templates.Semantics.TStatementHash_ebf331d76bfb4fc16f6904f05f7a363037842a713a0f5be16fe61ce6b10043f1.Trace.hash1
        (Seg140.localRho rho) =
      secondBlock
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
  have hw494 : Seg140.wireSeating 494 = 42596 := by decide +kernel
  have hw495 : Seg140.wireSeating 495 = 42597 := by decide +kernel
  have hw501 : Seg140.wireSeating 501 = 44776 := by decide +kernel
  have hw502 : Seg140.wireSeating 502 = 45116 := by decide +kernel
  have hw508 : Seg140.wireSeating 508 = 55082 := by decide +kernel
  have hw509 : Seg140.wireSeating 509 = 55083 := by decide +kernel
  have hw515 : Seg140.wireSeating 515 = 57262 := by decide +kernel
  have hw516 : Seg140.wireSeating 516 = 57602 := by decide +kernel
  have hw522 : Seg140.wireSeating 522 = 67568 := by decide +kernel
  have hw523 : Seg140.wireSeating 523 = 67569 := by decide +kernel
  have hw529 : Seg140.wireSeating 529 = 69748 := by decide +kernel
  have hw530 : Seg140.wireSeating 530 = 70088 := by decide +kernel
  have hneg :
      (8444461749428370424248824938781546531375899335154063827935233455917409239040 :
        DeployedF) = -1 := by decide +kernel
  rw [
    Deployed.Templates.Semantics.TStatementHash_ebf331d76bfb4fc16f6904f05f7a363037842a713a0f5be16fe61ce6b10043f1.Trace.hash1,
    NoteReshape8x1StatementFirst.hash,
    canonicalSecondBlockNineteen
  ]
  simp [
    spend2NullifierSelected, spend2NullifierSelectedLC,
    spend2RkCompressed, spend2RkCompressedLC,
    spend3NullifierSelected, spend3NullifierSelectedLC,
    spend3RkCompressed, spend3RkCompressedLC,
    spend4NullifierSelected, spend4NullifierSelectedLC,
    spend4RkCompressed, spend4RkCompressedLC,
    StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
    Seg140.localRho, Deployed.Templates.seated,
    hw494, hw495, hw501, hw502, hw508, hw509,
    hw515, hw516, hw522, hw523, hw529, hw530,
    hneg
  ]

end Shieldd.GnarkFormal.Deployed.NoteReshape8x1StatementSecond
