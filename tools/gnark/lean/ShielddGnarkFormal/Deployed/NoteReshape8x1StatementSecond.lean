import ShielddGnarkFormal.Deployed.NoteReshape8x1StatementFirst

set_option maxRecDepth 1000000
set_option maxHeartbeats 4000000

/-! Exact second Poseidon block for the 8x1 statement. -/

namespace Shieldd.GnarkFormal.Deployed.NoteReshape8x1StatementSecond

open Shieldd.GnarkFormal
open Contracts.NoteReshape8x1
abbrev DeployedF := Contracts.NoteReshape8x1.SemanticF
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

theorem canonicalSecondBlockThirtyOne
    (f0 f1 f2 f3 f4 f5 f6 f7 f8 f9 f10 f11 f12 f13 f14 f15 f16 f17 f18
      f19 f20 f21 f22 f23 f24 f25 f26 f27 f28 f29 f30 : DeployedF) :
    secondBlock
        [f0, f1, f2, f3, f4, f5, f6, f7, f8, f9, f10, f11, f12, f13,
         f14, f15, f16, f17, f18, f19, f20, f21, f22, f23, f24, f25,
         f26, f27, f28, f29, f30] =
      Poseidon7Bridge.permSpec7
        (3061752669569786885963994164501899099507756727275361723004405046505540448967 :
          DeployedF)
        (NoteReshapeCanonical.statementFirstBlock .reshape8x1
          [f0, f1, f2, f3, f4, f5, f6, f7, f8, f9, f10, f11, f12, f13,
           f14, f15, f16, f17, f18, f19, f20, f21, f22, f23, f24, f25,
           f26, f27, f28, f29, f30])
        f7 f8 f9 f10 f11 f12 := by
  rfl

theorem hash (rho : Nat → DeployedF) :
    Deployed.Templates.Semantics.TStatementHash_72066204724e0232dbfe5f6b0c37434f1d4d53cf61944652f76487e540ff849c.Trace.hash1
        (Seg169.localRho rho) =
      secondBlock (NoteReshape8x1StatementFirst.fields rho) := by
  have hw489 : Seg169.wireSeating 489 = 30676 := by decide +kernel
  have hw490 : Seg169.wireSeating 490 = 30677 := by decide +kernel
  have hw496 : Seg169.wireSeating 496 = 32856 := by decide +kernel
  have hw497 : Seg169.wireSeating 497 = 33196 := by decide +kernel
  have hw503 : Seg169.wireSeating 503 = 166 := by decide +kernel
  have hw509 : Seg169.wireSeating 509 = 43269 := by decide +kernel
  have hw510 : Seg169.wireSeating 510 = 43270 := by decide +kernel
  have hw516 : Seg169.wireSeating 516 = 45449 := by decide +kernel
  have hw517 : Seg169.wireSeating 517 = 45789 := by decide +kernel
  have hw523 : Seg169.wireSeating 523 = 249 := by decide +kernel
  have hneg :
      (8444461749428370424248824938781546531375899335154063827935233455917409239040 :
        DeployedF) = -1 := by decide +kernel
  unfold NoteReshape8x1StatementFirst.fields
  rw [
    Deployed.Templates.Semantics.TStatementHash_72066204724e0232dbfe5f6b0c37434f1d4d53cf61944652f76487e540ff849c.Trace.hash1,
    NoteReshape8x1StatementFirst.hash,
    canonicalSecondBlockThirtyOne
  ]
  simp [
    Deployed.Templates.Semantics.TStatementHash_72066204724e0232dbfe5f6b0c37434f1d4d53cf61944652f76487e540ff849c.Trace.domainLit,
    NoteReshape8x1StatementFirst.fields,
    spend0NullifierSelected, spend0NullifierSelectedLC,
    spend0RkCompressed, spend0RkCompressedLC,
    spend0HistoryRequired, spend0HistoryRequiredLC,
    spend1NullifierSelected, spend1NullifierSelectedLC,
    spend1RkCompressed, spend1RkCompressedLC,
    spend1HistoryRequired, spend1HistoryRequiredLC,
    StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
    Seg169.localRho, Deployed.Templates.seated,
    hw489, hw490, hw496, hw497, hw503,
    hw509, hw510, hw516, hw517, hw523,
    hneg
  ]

end Shieldd.GnarkFormal.Deployed.NoteReshape8x1StatementSecond
