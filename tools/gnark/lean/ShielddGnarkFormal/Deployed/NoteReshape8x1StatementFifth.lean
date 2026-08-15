import ShielddGnarkFormal.Deployed.NoteReshape8x1StatementFourth

set_option maxRecDepth 1000000
set_option maxHeartbeats 4000000

/-! Exact final Poseidon block for the 8x1 statement. -/

namespace Shieldd.GnarkFormal.Deployed.NoteReshape8x1StatementFifth

open Shieldd.GnarkFormal
open Contracts.NoteReshape8x1
abbrev DeployedF := Contracts.NoteReshape8x1.SemanticF
open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

attribute [-instance] ZMod.instField
local instance choiceFreeStatementFifthCommRing : CommRing DeployedF := ZMod.commRing _

theorem canonicalHashThirtyOne
    (f0 f1 f2 f3 f4 f5 f6 f7 f8 f9 f10 f11 f12 f13 f14 f15 f16 f17 f18
      f19 f20 f21 f22 f23 f24 f25 f26 f27 f28 f29 f30 : DeployedF) :
    NoteReshapeCanonical.statementHash .reshape8x1
        [f0, f1, f2, f3, f4, f5, f6, f7, f8, f9, f10, f11, f12, f13,
         f14, f15, f16, f17, f18, f19, f20, f21, f22, f23, f24, f25,
         f26, f27, f28, f29, f30] =
      Poseidon7Bridge.permSpec7
        (3061752669569786885963994164501899099507756727275361723004405046505540448967 :
          DeployedF)
        (NoteReshape8x1StatementFourth.fourthBlock
          [f0, f1, f2, f3, f4, f5, f6, f7, f8, f9, f10, f11, f12, f13,
           f14, f15, f16, f17, f18, f19, f20, f21, f22, f23, f24, f25,
           f26, f27, f28, f29, f30])
        f25 f26 f27 f28 f29 f30 := by
  rfl

theorem hash (rho : Nat → DeployedF) :
    Deployed.Templates.Semantics.TStatementHash_72066204724e0232dbfe5f6b0c37434f1d4d53cf61944652f76487e540ff849c.Trace.hash4
        (Seg169.localRho rho) =
      NoteReshapeCanonical.statementHash .reshape8x1
        (NoteReshape8x1StatementFirst.fields rho) := by
  have hw1929 : Seg169.wireSeating 1929 = 106234 := by decide +kernel
  have hw1930 : Seg169.wireSeating 1930 = 106235 := by decide +kernel
  have hw1936 : Seg169.wireSeating 1936 = 108414 := by decide +kernel
  have hw1937 : Seg169.wireSeating 1937 = 108754 := by decide +kernel
  have hw1943 : Seg169.wireSeating 1943 = 664 := by decide +kernel
  have hw1949 : Seg169.wireSeating 1949 = 118827 := by decide +kernel
  have hw1950 : Seg169.wireSeating 1950 = 118828 := by decide +kernel
  have hw1956 : Seg169.wireSeating 1956 = 121007 := by decide +kernel
  have hw1957 : Seg169.wireSeating 1957 = 121347 := by decide +kernel
  have hw1963 : Seg169.wireSeating 1963 = 747 := by decide +kernel
  have hneg :
      (8444461749428370424248824938781546531375899335154063827935233455917409239040 :
        DeployedF) = -1 := by decide +kernel
  unfold NoteReshape8x1StatementFirst.fields
  rw [
    Deployed.Templates.Semantics.TStatementHash_72066204724e0232dbfe5f6b0c37434f1d4d53cf61944652f76487e540ff849c.Trace.hash4,
    NoteReshape8x1StatementFourth.hash,
    canonicalHashThirtyOne
  ]
  simp [
    Deployed.Templates.Semantics.TStatementHash_72066204724e0232dbfe5f6b0c37434f1d4d53cf61944652f76487e540ff849c.Trace.domainLit,
    NoteReshape8x1StatementFirst.fields,
    spend6NullifierSelected, spend6NullifierSelectedLC,
    spend6RkCompressed, spend6RkCompressedLC,
    spend6HistoryRequired, spend6HistoryRequiredLC,
    spend7NullifierSelected, spend7NullifierSelectedLC,
    spend7RkCompressed, spend7RkCompressedLC,
    spend7HistoryRequired, spend7HistoryRequiredLC,
    StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
    Seg169.localRho, Deployed.Templates.seated,
    hw1929, hw1930, hw1936, hw1937, hw1943,
    hw1949, hw1950, hw1956, hw1957, hw1963,
    hneg
  ]

end Shieldd.GnarkFormal.Deployed.NoteReshape8x1StatementFifth
