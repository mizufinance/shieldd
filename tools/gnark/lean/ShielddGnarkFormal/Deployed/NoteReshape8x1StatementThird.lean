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

theorem canonicalThirdBlockThirtyTwo
    (f0 f1 f2 f3 f4 f5 f6 f7 f8 f9 f10 f11 f12 f13 f14 f15 f16 f17 f18
      f19 f20 f21 f22 f23 f24 f25 f26 f27 f28 f29 f30 f31 : DeployedF) :
    thirdBlock
        [f0, f1, f2, f3, f4, f5, f6, f7, f8, f9, f10, f11, f12, f13,
         f14, f15, f16, f17, f18, f19, f20, f21, f22, f23, f24, f25,
         f26, f27, f28, f29, f30, f31] =
      Poseidon7Bridge.permSpec7
        (3369812303662745782238751015067652055738399375993471750361947871360359146526 :
          DeployedF)
        (NoteReshape8x1StatementSecond.secondBlock
          [f0, f1, f2, f3, f4, f5, f6, f7, f8, f9, f10, f11, f12, f13,
           f14, f15, f16, f17, f18, f19, f20, f21, f22, f23, f24, f25,
           f26, f27, f28, f29, f30, f31])
        f13 f14 f15 f16 f17 f18 := by
  rfl

theorem hash (rho : Nat → DeployedF) :
    Deployed.Templates.Semantics.TStatementHash_ae76718c78b325fc953ed63d67e8ea1e911dc2c5c95400df433473b5b0517647.Trace.hash2
        (Seg173.localRho rho) =
      thirdBlock (NoteReshape8x1StatementFirst.fields rho) := by
  have hw969 : Seg173.wireSeating 969 = 303 := by decide +kernel
  have hw975 : Seg173.wireSeating 975 = 62180 := by decide +kernel
  have hw976 : Seg173.wireSeating 976 = 62181 := by decide +kernel
  have hw982 : Seg173.wireSeating 982 = 64360 := by decide +kernel
  have hw983 : Seg173.wireSeating 983 = 64700 := by decide +kernel
  have hw989 : Seg173.wireSeating 989 = 386 := by decide +kernel
  have hw995 : Seg173.wireSeating 995 = 74773 := by decide +kernel
  have hw996 : Seg173.wireSeating 996 = 74774 := by decide +kernel
  have hw1002 : Seg173.wireSeating 1002 = 76953 := by decide +kernel
  have hw1003 : Seg173.wireSeating 1003 = 77293 := by decide +kernel
  have hneg :
      (8444461749428370424248824938781546531375899335154063827935233455917409239040 :
        DeployedF) = -1 := by decide +kernel
  unfold NoteReshape8x1StatementFirst.fields
  rw [
    Deployed.Templates.Semantics.TStatementHash_ae76718c78b325fc953ed63d67e8ea1e911dc2c5c95400df433473b5b0517647.Trace.hash2,
    NoteReshape8x1StatementSecond.hash,
    canonicalThirdBlockThirtyTwo
  ]
  simp [
    Deployed.Templates.Semantics.TStatementHash_ae76718c78b325fc953ed63d67e8ea1e911dc2c5c95400df433473b5b0517647.Trace.domainLit,
    NoteReshape8x1StatementFirst.fields,
    spend1HistoryRequired, spend1HistoryRequiredLC,
    spend2NullifierSelected, spend2NullifierSelectedLC,
    spend2RkCompressed, spend2RkCompressedLC,
    spend2HistoryRequired, spend2HistoryRequiredLC,
    spend3NullifierSelected, spend3NullifierSelectedLC,
    spend3RkCompressed, spend3RkCompressedLC,
    StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
    Seg173.localRho, Deployed.Templates.seated,
    hw969, hw975, hw976, hw982, hw983,
    hw989, hw995, hw996, hw1002, hw1003,
    hneg
  ]

end Shieldd.GnarkFormal.Deployed.NoteReshape8x1StatementThird
