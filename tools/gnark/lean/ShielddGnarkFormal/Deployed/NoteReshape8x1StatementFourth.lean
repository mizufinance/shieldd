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

theorem canonicalFourthBlockThirtyOne
    (f0 f1 f2 f3 f4 f5 f6 f7 f8 f9 f10 f11 f12 f13 f14 f15 f16 f17 f18
      f19 f20 f21 f22 f23 f24 f25 f26 f27 f28 f29 f30 : DeployedF) :
    fourthBlock
        [f0, f1, f2, f3, f4, f5, f6, f7, f8, f9, f10, f11, f12, f13,
         f14, f15, f16, f17, f18, f19, f20, f21, f22, f23, f24, f25,
         f26, f27, f28, f29, f30] =
      Poseidon7Bridge.permSpec7
        (3061752669569786885963994164501899099507756727275361723004405046505540448967 :
          DeployedF)
        (NoteReshape8x1StatementThird.thirdBlock
          [f0, f1, f2, f3, f4, f5, f6, f7, f8, f9, f10, f11, f12, f13,
           f14, f15, f16, f17, f18, f19, f20, f21, f22, f23, f24, f25,
           f26, f27, f28, f29, f30])
        f19 f20 f21 f22 f23 f24 := by
  rfl

theorem hash (rho : Nat → DeployedF) :
    Deployed.Templates.Semantics.TStatementHash_72066204724e0232dbfe5f6b0c37434f1d4d53cf61944652f76487e540ff849c.Trace.hash3
        (Seg169.localRho rho) =
      fourthBlock (NoteReshape8x1StatementFirst.fields rho) := by
  have hw1449 : Seg169.wireSeating 1449 = 81048 := by decide +kernel
  have hw1450 : Seg169.wireSeating 1450 = 81049 := by decide +kernel
  have hw1456 : Seg169.wireSeating 1456 = 83228 := by decide +kernel
  have hw1457 : Seg169.wireSeating 1457 = 83568 := by decide +kernel
  have hw1463 : Seg169.wireSeating 1463 = 498 := by decide +kernel
  have hw1469 : Seg169.wireSeating 1469 = 93641 := by decide +kernel
  have hw1470 : Seg169.wireSeating 1470 = 93642 := by decide +kernel
  have hw1476 : Seg169.wireSeating 1476 = 95821 := by decide +kernel
  have hw1477 : Seg169.wireSeating 1477 = 96161 := by decide +kernel
  have hw1483 : Seg169.wireSeating 1483 = 581 := by decide +kernel
  have hneg :
      (8444461749428370424248824938781546531375899335154063827935233455917409239040 :
        DeployedF) = -1 := by decide +kernel
  unfold NoteReshape8x1StatementFirst.fields
  rw [
    Deployed.Templates.Semantics.TStatementHash_72066204724e0232dbfe5f6b0c37434f1d4d53cf61944652f76487e540ff849c.Trace.hash3,
    NoteReshape8x1StatementThird.hash,
    canonicalFourthBlockThirtyOne
  ]
  simp [
    Deployed.Templates.Semantics.TStatementHash_72066204724e0232dbfe5f6b0c37434f1d4d53cf61944652f76487e540ff849c.Trace.domainLit,
    NoteReshape8x1StatementFirst.fields,
    spend4NullifierSelected, spend4NullifierSelectedLC,
    spend4RkCompressed, spend4RkCompressedLC,
    spend4HistoryRequired, spend4HistoryRequiredLC,
    spend5NullifierSelected, spend5NullifierSelectedLC,
    spend5RkCompressed, spend5RkCompressedLC,
    spend5HistoryRequired, spend5HistoryRequiredLC,
    StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
    Seg169.localRho, Deployed.Templates.seated,
    hw1449, hw1450, hw1456, hw1457, hw1463,
    hw1469, hw1470, hw1476, hw1477, hw1483,
    hneg
  ]

end Shieldd.GnarkFormal.Deployed.NoteReshape8x1StatementFourth
