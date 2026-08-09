import ShielddGnarkFormal.Deployed.NoteReshape8x1StatementSecond

set_option maxRecDepth 1000000
set_option maxHeartbeats 4000000

/-! Exact third Poseidon block for the 8x1 statement. -/

namespace Shieldd.GnarkFormal.Deployed.NoteReshape8x1StatementThird

open Shieldd.GnarkFormal
open Contracts.NoteReshape8x1
open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

attribute [-instance] ZMod.instField
local instance choiceFreeStatementThirdCommRing : CommRing DeployedF := ZMod.commRing _

theorem canonicalHashNineteen
    (f0 f1 f2 f3 f4 f5 f6 f7 f8 f9 f10 f11 f12 f13 f14 f15 f16 f17 f18 :
      DeployedF) :
    NoteReshapeCanonical.statementHash .reshape8x1
        [f0, f1, f2, f3, f4, f5, f6, f7, f8, f9, f10,
         f11, f12, f13, f14, f15, f16, f17, f18] =
      Poseidon7Bridge.permSpec7
        (8151566796627494957780365425260097767647931594965532798107827918965818197203 :
          DeployedF)
        (NoteReshape8x1StatementSecond.secondBlock
          [f0, f1, f2, f3, f4, f5, f6, f7, f8, f9, f10,
           f11, f12, f13, f14, f15, f16, f17, f18])
        f13 f14 f15 f16 f17 f18 := by
  rfl

theorem hash
    (rho : Nat → DeployedF) :
    Deployed.Templates.Semantics.TStatementHash_ebf331d76bfb4fc16f6904f05f7a363037842a713a0f5be16fe61ce6b10043f1.Trace.hash2
        (Seg143.localRho rho) =
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
  have hw976 : Seg143.wireSeating 976 = 79458 := by decide +kernel
  have hw977 : Seg143.wireSeating 977 = 79459 := by decide +kernel
  have hw983 : Seg143.wireSeating 983 = 81638 := by decide +kernel
  have hw984 : Seg143.wireSeating 984 = 81978 := by decide +kernel
  have hw990 : Seg143.wireSeating 990 = 91944 := by decide +kernel
  have hw991 : Seg143.wireSeating 991 = 91945 := by decide +kernel
  have hw997 : Seg143.wireSeating 997 = 94124 := by decide +kernel
  have hw998 : Seg143.wireSeating 998 = 94464 := by decide +kernel
  have hw1004 : Seg143.wireSeating 1004 = 104430 := by decide +kernel
  have hw1005 : Seg143.wireSeating 1005 = 104431 := by decide +kernel
  have hw1011 : Seg143.wireSeating 1011 = 106610 := by decide +kernel
  have hw1012 : Seg143.wireSeating 1012 = 106950 := by decide +kernel
  have hneg :
      (8444461749428370424248824938781546531375899335154063827935233455917409239040 :
        DeployedF) = -1 := by decide +kernel
  rw [
    Deployed.Templates.Semantics.TStatementHash_ebf331d76bfb4fc16f6904f05f7a363037842a713a0f5be16fe61ce6b10043f1.Trace.hash2,
    NoteReshape8x1StatementSecond.hash,
    canonicalHashNineteen
  ]
  simp [
    spend5NullifierSelected, spend5NullifierSelectedLC,
    spend5RkCompressed, spend5RkCompressedLC,
    spend6NullifierSelected, spend6NullifierSelectedLC,
    spend6RkCompressed, spend6RkCompressedLC,
    spend7NullifierSelected, spend7NullifierSelectedLC,
    spend7RkCompressed, spend7RkCompressedLC,
    StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
    Seg143.localRho, Deployed.Templates.seated,
    hw976, hw977, hw983, hw984, hw990, hw991,
    hw997, hw998, hw1004, hw1005, hw1011, hw1012,
    hneg
  ]

end Shieldd.GnarkFormal.Deployed.NoteReshape8x1StatementThird
