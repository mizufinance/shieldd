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

theorem canonicalSecondBlockThirtyTwo
    (f0 f1 f2 f3 f4 f5 f6 f7 f8 f9 f10 f11 f12 f13 f14 f15 f16 f17 f18
      f19 f20 f21 f22 f23 f24 f25 f26 f27 f28 f29 f30 f31 : DeployedF) :
    secondBlock
        [f0, f1, f2, f3, f4, f5, f6, f7, f8, f9, f10, f11, f12, f13,
         f14, f15, f16, f17, f18, f19, f20, f21, f22, f23, f24, f25,
         f26, f27, f28, f29, f30, f31] =
      Poseidon7Bridge.permSpec7
        (3369812303662745782238751015067652055738399375993471750361947871360359146526 :
          DeployedF)
        (NoteReshapeCanonical.statementFirstBlock .reshape8x1
          [f0, f1, f2, f3, f4, f5, f6, f7, f8, f9, f10, f11, f12, f13,
           f14, f15, f16, f17, f18, f19, f20, f21, f22, f23, f24, f25,
           f26, f27, f28, f29, f30, f31])
        f7 f8 f9 f10 f11 f12 := by
  rfl

theorem hash (rho : Nat → DeployedF) :
    Deployed.Templates.Semantics.TStatementHash_ae76718c78b325fc953ed63d67e8ea1e911dc2c5c95400df433473b5b0517647.Trace.hash1
        (Seg173.localRho rho) =
      secondBlock (NoteReshape8x1StatementFirst.fields rho) := by
  have hw489 : Seg173.wireSeating 489 = 6 := by decide +kernel
  have hw495 : Seg173.wireSeating 495 = 36994 := by decide +kernel
  have hw496 : Seg173.wireSeating 496 = 36995 := by decide +kernel
  have hw502 : Seg173.wireSeating 502 = 39174 := by decide +kernel
  have hw503 : Seg173.wireSeating 503 = 39514 := by decide +kernel
  have hw509 : Seg173.wireSeating 509 = 220 := by decide +kernel
  have hw515 : Seg173.wireSeating 515 = 49587 := by decide +kernel
  have hw516 : Seg173.wireSeating 516 = 49588 := by decide +kernel
  have hw522 : Seg173.wireSeating 522 = 51767 := by decide +kernel
  have hw523 : Seg173.wireSeating 523 = 52107 := by decide +kernel
  have hneg :
      (8444461749428370424248824938781546531375899335154063827935233455917409239040 :
        DeployedF) = -1 := by decide +kernel
  unfold NoteReshape8x1StatementFirst.fields
  rw [
    Deployed.Templates.Semantics.TStatementHash_ae76718c78b325fc953ed63d67e8ea1e911dc2c5c95400df433473b5b0517647.Trace.hash1,
    NoteReshape8x1StatementFirst.hash,
    canonicalSecondBlockThirtyTwo
  ]
  simp [
    Deployed.Templates.Semantics.TStatementHash_ae76718c78b325fc953ed63d67e8ea1e911dc2c5c95400df433473b5b0517647.Trace.domainLit,
    NoteReshape8x1StatementFirst.fields,
    recentPositionFloor, recentPositionFloorLC,
    spend0NullifierSelected, spend0NullifierSelectedLC,
    spend0RkCompressed, spend0RkCompressedLC,
    spend0HistoryRequired, spend0HistoryRequiredLC,
    spend1NullifierSelected, spend1NullifierSelectedLC,
    spend1RkCompressed, spend1RkCompressedLC,
    StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
    Seg173.localRho, Deployed.Templates.seated,
    hw489, hw495, hw496, hw502, hw503,
    hw509, hw515, hw516, hw522, hw523,
    hneg
  ]

end Shieldd.GnarkFormal.Deployed.NoteReshape8x1StatementSecond
