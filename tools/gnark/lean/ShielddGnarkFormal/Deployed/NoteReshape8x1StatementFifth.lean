import ShielddGnarkFormal.Deployed.NoteReshape8x1StatementFourth

set_option maxRecDepth 1000000
set_option maxHeartbeats 4000000

/-! Exact fifth Poseidon block for the 8x1 statement. -/

namespace Shieldd.GnarkFormal.Deployed.NoteReshape8x1StatementFifth

open Shieldd.GnarkFormal
open Contracts.NoteReshape8x1
abbrev DeployedF := Contracts.NoteReshape8x1.SemanticF
open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

attribute [-instance] ZMod.instField
local instance choiceFreeStatementFifthCommRing : CommRing DeployedF := ZMod.commRing _

def fifthBlock (fields : List DeployedF) : DeployedF :=
  Poseidon7Bridge.permSpec7
    (NoteReshapeCanonical.statementDomain .reshape8x1)
    (NoteReshape8x1StatementFourth.fourthBlock fields)
    (NoteReshapeCanonical.statementField fields 25
      (NoteReshapeCanonical.statementPad0 .reshape8x1))
    (NoteReshapeCanonical.statementField fields 26
      (NoteReshapeCanonical.statementPad1 .reshape8x1))
    (NoteReshapeCanonical.statementField fields 27
      (NoteReshapeCanonical.statementPad0 .reshape8x1))
    (NoteReshapeCanonical.statementField fields 28
      (NoteReshapeCanonical.statementPad1 .reshape8x1))
    (NoteReshapeCanonical.statementField fields 29
      (NoteReshapeCanonical.statementPad0 .reshape8x1))
    (NoteReshapeCanonical.statementField fields 30
      (NoteReshapeCanonical.statementPad1 .reshape8x1))

theorem canonicalFifthBlockThirtyTwo
    (f0 f1 f2 f3 f4 f5 f6 f7 f8 f9 f10 f11 f12 f13 f14 f15 f16 f17 f18
      f19 f20 f21 f22 f23 f24 f25 f26 f27 f28 f29 f30 f31 : DeployedF) :
    fifthBlock
        [f0, f1, f2, f3, f4, f5, f6, f7, f8, f9, f10, f11, f12, f13,
         f14, f15, f16, f17, f18, f19, f20, f21, f22, f23, f24, f25,
         f26, f27, f28, f29, f30, f31] =
      Poseidon7Bridge.permSpec7
        (3369812303662745782238751015067652055738399375993471750361947871360359146526 :
          DeployedF)
        (NoteReshape8x1StatementFourth.fourthBlock
          [f0, f1, f2, f3, f4, f5, f6, f7, f8, f9, f10, f11, f12, f13,
           f14, f15, f16, f17, f18, f19, f20, f21, f22, f23, f24, f25,
           f26, f27, f28, f29, f30, f31])
        f25 f26 f27 f28 f29 f30 := by
  rfl

theorem hash (rho : Nat → DeployedF) :
    Deployed.Templates.Semantics.TStatementHash_ae76718c78b325fc953ed63d67e8ea1e911dc2c5c95400df433473b5b0517647.Trace.hash4
        (Seg173.localRho rho) =
      fifthBlock (NoteReshape8x1StatementFirst.fields rho) := by
  have hw1929 : Seg173.wireSeating 1929 = 635 := by decide +kernel
  have hw1935 : Seg173.wireSeating 1935 = 112552 := by decide +kernel
  have hw1936 : Seg173.wireSeating 1936 = 112553 := by decide +kernel
  have hw1942 : Seg173.wireSeating 1942 = 114732 := by decide +kernel
  have hw1943 : Seg173.wireSeating 1943 = 115072 := by decide +kernel
  have hw1949 : Seg173.wireSeating 1949 = 718 := by decide +kernel
  have hw1955 : Seg173.wireSeating 1955 = 125145 := by decide +kernel
  have hw1956 : Seg173.wireSeating 1956 = 125146 := by decide +kernel
  have hw1962 : Seg173.wireSeating 1962 = 127325 := by decide +kernel
  have hw1963 : Seg173.wireSeating 1963 = 127665 := by decide +kernel
  have hneg :
      (8444461749428370424248824938781546531375899335154063827935233455917409239040 :
        DeployedF) = -1 := by decide +kernel
  unfold NoteReshape8x1StatementFirst.fields
  rw [
    Deployed.Templates.Semantics.TStatementHash_ae76718c78b325fc953ed63d67e8ea1e911dc2c5c95400df433473b5b0517647.Trace.hash4,
    NoteReshape8x1StatementFourth.hash,
    canonicalFifthBlockThirtyTwo
  ]
  simp [
    Deployed.Templates.Semantics.TStatementHash_ae76718c78b325fc953ed63d67e8ea1e911dc2c5c95400df433473b5b0517647.Trace.domainLit,
    NoteReshape8x1StatementFirst.fields,
    spend5HistoryRequired, spend5HistoryRequiredLC,
    spend6NullifierSelected, spend6NullifierSelectedLC,
    spend6RkCompressed, spend6RkCompressedLC,
    spend6HistoryRequired, spend6HistoryRequiredLC,
    spend7NullifierSelected, spend7NullifierSelectedLC,
    spend7RkCompressed, spend7RkCompressedLC,
    StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
    Seg173.localRho, Deployed.Templates.seated,
    hw1929, hw1935, hw1936, hw1942, hw1943,
    hw1949, hw1955, hw1956, hw1962, hw1963,
    hneg
  ]

end Shieldd.GnarkFormal.Deployed.NoteReshape8x1StatementFifth
