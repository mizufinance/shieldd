import ShielddGnarkFormal.Deployed.NoteReshape8x1StatementSecond

set_option maxRecDepth 1000000
set_option maxHeartbeats 4000000

/-! Exact third Poseidon block for the 8x1 statement. -/

namespace Shieldd.GnarkFormal.Deployed.NoteReshape8x1StatementThird

open Shieldd.GnarkFormal
open Contracts.NoteReshape8x1
abbrev DeployedF := Contracts.NoteReshape8x1.SemanticF
open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

attribute [-instance] ZMod.instField
local instance choiceFreeStatementThirdCommRing : CommRing DeployedF := ZMod.commRing _

def thirdBlock (fields : List DeployedF) : DeployedF :=
  Poseidon7Bridge.permSpec7
    (NoteReshapeCanonical.statementDomain .reshape8x1)
    (NoteReshape8x1StatementSecond.secondBlock fields)
    (NoteReshapeCanonical.statementField fields 13
      (NoteReshapeCanonical.statementPad0 .reshape8x1))
    (NoteReshapeCanonical.statementField fields 14
      (NoteReshapeCanonical.statementPad1 .reshape8x1))
    (NoteReshapeCanonical.statementField fields 15
      (NoteReshapeCanonical.statementPad0 .reshape8x1))
    (NoteReshapeCanonical.statementField fields 16
      (NoteReshapeCanonical.statementPad1 .reshape8x1))
    (NoteReshapeCanonical.statementField fields 17
      (NoteReshapeCanonical.statementPad0 .reshape8x1))
    (NoteReshapeCanonical.statementField fields 18
      (NoteReshapeCanonical.statementPad1 .reshape8x1))

theorem canonicalThirdBlockThirtyOne
    (f0 f1 f2 f3 f4 f5 f6 f7 f8 f9 f10 f11 f12 f13 f14 f15 f16 f17 f18
      f19 f20 f21 f22 f23 f24 f25 f26 f27 f28 f29 f30 : DeployedF) :
    thirdBlock
        [f0, f1, f2, f3, f4, f5, f6, f7, f8, f9, f10, f11, f12, f13,
         f14, f15, f16, f17, f18, f19, f20, f21, f22, f23, f24, f25,
         f26, f27, f28, f29, f30] =
      Poseidon7Bridge.permSpec7
        (3061752669569786885963994164501899099507756727275361723004405046505540448967 :
          DeployedF)
        (NoteReshape8x1StatementSecond.secondBlock
          [f0, f1, f2, f3, f4, f5, f6, f7, f8, f9, f10, f11, f12, f13,
           f14, f15, f16, f17, f18, f19, f20, f21, f22, f23, f24, f25,
           f26, f27, f28, f29, f30])
        f13 f14 f15 f16 f17 f18 := by
  rfl

theorem hash (rho : Nat → DeployedF) :
    Deployed.Templates.Semantics.TStatementHash_72066204724e0232dbfe5f6b0c37434f1d4d53cf61944652f76487e540ff849c.Trace.hash2
        (Seg169.localRho rho) =
      thirdBlock (NoteReshape8x1StatementFirst.fields rho) := by
  have hw969 : Seg169.wireSeating 969 = 55862 := by decide +kernel
  have hw970 : Seg169.wireSeating 970 = 55863 := by decide +kernel
  have hw976 : Seg169.wireSeating 976 = 58042 := by decide +kernel
  have hw977 : Seg169.wireSeating 977 = 58382 := by decide +kernel
  have hw983 : Seg169.wireSeating 983 = 332 := by decide +kernel
  have hw989 : Seg169.wireSeating 989 = 68455 := by decide +kernel
  have hw990 : Seg169.wireSeating 990 = 68456 := by decide +kernel
  have hw996 : Seg169.wireSeating 996 = 70635 := by decide +kernel
  have hw997 : Seg169.wireSeating 997 = 70975 := by decide +kernel
  have hw1003 : Seg169.wireSeating 1003 = 415 := by decide +kernel
  have hneg :
      (8444461749428370424248824938781546531375899335154063827935233455917409239040 :
        DeployedF) = -1 := by decide +kernel
  unfold NoteReshape8x1StatementFirst.fields
  rw [
    Deployed.Templates.Semantics.TStatementHash_72066204724e0232dbfe5f6b0c37434f1d4d53cf61944652f76487e540ff849c.Trace.hash2,
    NoteReshape8x1StatementSecond.hash,
    canonicalThirdBlockThirtyOne
  ]
  simp [
    Deployed.Templates.Semantics.TStatementHash_72066204724e0232dbfe5f6b0c37434f1d4d53cf61944652f76487e540ff849c.Trace.domainLit,
    NoteReshape8x1StatementFirst.fields,
    spend2NullifierSelected, spend2NullifierSelectedLC,
    spend2RkCompressed, spend2RkCompressedLC,
    spend2HistoryRequired, spend2HistoryRequiredLC,
    spend3NullifierSelected, spend3NullifierSelectedLC,
    spend3RkCompressed, spend3RkCompressedLC,
    spend3HistoryRequired, spend3HistoryRequiredLC,
    StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
    Seg169.localRho, Deployed.Templates.seated,
    hw969, hw970, hw976, hw977, hw983,
    hw989, hw990, hw996, hw997, hw1003,
    hneg
  ]

end Shieldd.GnarkFormal.Deployed.NoteReshape8x1StatementThird
