import ShielddGnarkFormal.Deployed.NoteReshape8x1StatementThird

set_option maxRecDepth 1000000
set_option maxHeartbeats 4000000

/-! Exact fourth Poseidon block for the 8x1 statement. -/

namespace Shieldd.GnarkFormal.Deployed.NoteReshape8x1StatementFourth

open Shieldd.GnarkFormal
open Contracts.NoteReshape8x1
abbrev DeployedF := Contracts.NoteReshape8x1.SemanticF
open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

attribute [-instance] ZMod.instField
local instance choiceFreeStatementFourthCommRing : CommRing DeployedF := ZMod.commRing _

def fourthBlock (fields : List DeployedF) : DeployedF :=
  Poseidon7Bridge.permSpec7
    (NoteReshapeCanonical.statementDomain .reshape8x1)
    (NoteReshape8x1StatementThird.thirdBlock fields)
    (NoteReshapeCanonical.statementField fields 19
      (NoteReshapeCanonical.statementPad0 .reshape8x1))
    (NoteReshapeCanonical.statementField fields 20
      (NoteReshapeCanonical.statementPad1 .reshape8x1))
    (NoteReshapeCanonical.statementField fields 21
      (NoteReshapeCanonical.statementPad0 .reshape8x1))
    (NoteReshapeCanonical.statementField fields 22
      (NoteReshapeCanonical.statementPad1 .reshape8x1))
    (NoteReshapeCanonical.statementField fields 23
      (NoteReshapeCanonical.statementPad0 .reshape8x1))
    (NoteReshapeCanonical.statementField fields 24
      (NoteReshapeCanonical.statementPad1 .reshape8x1))

theorem canonicalFourthBlockThirtyTwo
    (f0 f1 f2 f3 f4 f5 f6 f7 f8 f9 f10 f11 f12 f13 f14 f15 f16 f17 f18
      f19 f20 f21 f22 f23 f24 f25 f26 f27 f28 f29 f30 f31 : DeployedF) :
    fourthBlock
        [f0, f1, f2, f3, f4, f5, f6, f7, f8, f9, f10, f11, f12, f13,
         f14, f15, f16, f17, f18, f19, f20, f21, f22, f23, f24, f25,
         f26, f27, f28, f29, f30, f31] =
      Poseidon7Bridge.permSpec7
        (3369812303662745782238751015067652055738399375993471750361947871360359146526 :
          DeployedF)
        (NoteReshape8x1StatementThird.thirdBlock
          [f0, f1, f2, f3, f4, f5, f6, f7, f8, f9, f10, f11, f12, f13,
           f14, f15, f16, f17, f18, f19, f20, f21, f22, f23, f24, f25,
           f26, f27, f28, f29, f30, f31])
        f19 f20 f21 f22 f23 f24 := by
  rfl

theorem hash (rho : Nat → DeployedF) :
    Deployed.Templates.Semantics.TStatementHash_ae76718c78b325fc953ed63d67e8ea1e911dc2c5c95400df433473b5b0517647.Trace.hash3
        (Seg173.localRho rho) =
      fourthBlock (NoteReshape8x1StatementFirst.fields rho) := by
  have hw1449 : Seg173.wireSeating 1449 = 469 := by decide +kernel
  have hw1455 : Seg173.wireSeating 1455 = 87366 := by decide +kernel
  have hw1456 : Seg173.wireSeating 1456 = 87367 := by decide +kernel
  have hw1462 : Seg173.wireSeating 1462 = 89546 := by decide +kernel
  have hw1463 : Seg173.wireSeating 1463 = 89886 := by decide +kernel
  have hw1469 : Seg173.wireSeating 1469 = 552 := by decide +kernel
  have hw1475 : Seg173.wireSeating 1475 = 99959 := by decide +kernel
  have hw1476 : Seg173.wireSeating 1476 = 99960 := by decide +kernel
  have hw1482 : Seg173.wireSeating 1482 = 102139 := by decide +kernel
  have hw1483 : Seg173.wireSeating 1483 = 102479 := by decide +kernel
  have hneg :
      (8444461749428370424248824938781546531375899335154063827935233455917409239040 :
        DeployedF) = -1 := by decide +kernel
  unfold NoteReshape8x1StatementFirst.fields
  rw [
    Deployed.Templates.Semantics.TStatementHash_ae76718c78b325fc953ed63d67e8ea1e911dc2c5c95400df433473b5b0517647.Trace.hash3,
    NoteReshape8x1StatementThird.hash,
    canonicalFourthBlockThirtyTwo
  ]
  simp [
    Deployed.Templates.Semantics.TStatementHash_ae76718c78b325fc953ed63d67e8ea1e911dc2c5c95400df433473b5b0517647.Trace.domainLit,
    NoteReshape8x1StatementFirst.fields,
    spend3HistoryRequired, spend3HistoryRequiredLC,
    spend4NullifierSelected, spend4NullifierSelectedLC,
    spend4RkCompressed, spend4RkCompressedLC,
    spend4HistoryRequired, spend4HistoryRequiredLC,
    spend5NullifierSelected, spend5NullifierSelectedLC,
    spend5RkCompressed, spend5RkCompressedLC,
    StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
    Seg173.localRho, Deployed.Templates.seated,
    hw1449, hw1455, hw1456, hw1462, hw1463,
    hw1469, hw1475, hw1476, hw1482, hw1483,
    hneg
  ]

end Shieldd.GnarkFormal.Deployed.NoteReshape8x1StatementFourth
