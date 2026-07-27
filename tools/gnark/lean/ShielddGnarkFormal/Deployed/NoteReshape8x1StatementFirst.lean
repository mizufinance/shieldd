import ShielddGnarkFormal.Deployed.Contracts.NoteReshape8x1.CircuitFacts
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape8x1.SemanticBindings
import ShielddGnarkFormal.NoteReshapeCanonical

set_option maxRecDepth 1000000
set_option maxHeartbeats 4000000

/-! Exact first Poseidon block for the 8x1 statement. -/

namespace Shieldd.GnarkFormal.Deployed.NoteReshape8x1StatementFirst

open Shieldd.GnarkFormal
open Contracts.NoteReshape8x1
open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

attribute [-instance] ZMod.instField
local instance choiceFreeStatementFirstCommRing : CommRing DeployedF := ZMod.commRing _

theorem canonicalFirstBlockNineteen
    (f0 f1 f2 f3 f4 f5 f6 f7 f8 f9 f10 f11 f12 f13 f14 f15 f16 f17 f18 :
      DeployedF) :
    NoteReshapeCanonical.statementFirstBlock .reshape8x1
        [f0, f1, f2, f3, f4, f5, f6, f7, f8, f9, f10,
         f11, f12, f13, f14, f15, f16, f17, f18] =
      Poseidon7Bridge.permSpec7
        (8151566796627494957780365425260097767647931594965532798107827918965818197203 :
          DeployedF)
        f0 f1 f2 f3 f4 f5 f6 := by
  rfl

theorem hash
    (rho : Nat → DeployedF) :
    Deployed.Templates.Semantics.TStatementHash_ebf331d76bfb4fc16f6904f05f7a363037842a713a0f5be16fe61ce6b10043f1.Trace.hash0
        (Seg140.localRho rho) =
      NoteReshapeCanonical.statementFirstBlock .reshape8x1
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
  have hw1 : Seg140.wireSeating 1 = 2 := by decide +kernel
  have hw7 : Seg140.wireSeating 7 = 107946 := by decide +kernel
  have hw8 : Seg140.wireSeating 8 = 107951 := by decide +kernel
  have hw9 : Seg140.wireSeating 9 = 107956 := by decide +kernel
  have hw10 : Seg140.wireSeating 10 = 107961 := by decide +kernel
  have hw11 : Seg140.wireSeating 11 = 107966 := by decide +kernel
  have hw12 : Seg140.wireSeating 12 = 107971 := by decide +kernel
  have hw13 : Seg140.wireSeating 13 = 107976 := by decide +kernel
  have hw19 : Seg140.wireSeating 19 = 111297 := by decide +kernel
  have hw20 : Seg140.wireSeating 20 = 111637 := by decide +kernel
  have hw26 : Seg140.wireSeating 26 = 17624 := by decide +kernel
  have hw27 : Seg140.wireSeating 27 = 17625 := by decide +kernel
  have hw33 : Seg140.wireSeating 33 = 19804 := by decide +kernel
  have hw34 : Seg140.wireSeating 34 = 20144 := by decide +kernel
  have hw40 : Seg140.wireSeating 40 = 30110 := by decide +kernel
  have hw41 : Seg140.wireSeating 41 = 30111 := by decide +kernel
  have hw47 : Seg140.wireSeating 47 = 32290 := by decide +kernel
  have hw48 : Seg140.wireSeating 48 = 32630 := by decide +kernel
  have hneg :
      (8444461749428370424248824938781546531375899335154063827935233455917409239040 :
        DeployedF) = -1 := by decide +kernel
  rw [canonicalFirstBlockNineteen]
  simp [
    Deployed.Templates.Semantics.TStatementHash_ebf331d76bfb4fc16f6904f05f7a363037842a713a0f5be16fe61ce6b10043f1.Trace.hash0,
    Deployed.Templates.Semantics.TStatementHash_ebf331d76bfb4fc16f6904f05f7a363037842a713a0f5be16fe61ce6b10043f1.Trace.domainLit,
    anchor, anchorLC,
    output0NoteCommitmentComputed, output0NoteCommitmentComputedLC,
    balanceCommitmentFq, balanceCommitmentFqLC,
    spend0NullifierSelected, spend0NullifierSelectedLC,
    spend0RkCompressed, spend0RkCompressedLC,
    spend1NullifierSelected, spend1NullifierSelectedLC,
    spend1RkCompressed, spend1RkCompressedLC,
    StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
    Seg140.localRho, Deployed.Templates.seated,
    hw1, hw7, hw8, hw9, hw10, hw11, hw12, hw13,
    hw19, hw20, hw26, hw27, hw33, hw34, hw40, hw41, hw47, hw48,
    hneg
  ]
  congr 1 <;> simp only [add_assoc, neg_one_mul]

end Shieldd.GnarkFormal.Deployed.NoteReshape8x1StatementFirst
