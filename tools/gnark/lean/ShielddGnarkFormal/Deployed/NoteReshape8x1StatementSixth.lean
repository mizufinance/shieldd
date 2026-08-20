import ShielddGnarkFormal.Deployed.NoteReshape8x1StatementFifth
import ShielddGnarkFormal.Protocol.StatementSponge

set_option maxRecDepth 1000000
set_option maxHeartbeats 4000000

/-! Exact final Poseidon block for the 8x1 statement. -/

namespace Shieldd.GnarkFormal.Deployed.NoteReshape8x1StatementSixth

open Shieldd.GnarkFormal
open Contracts.NoteReshape8x1
abbrev DeployedF := Contracts.NoteReshape8x1.SemanticF
open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

attribute [-instance] ZMod.instField
local instance choiceFreeStatementSixthCommRing : CommRing DeployedF := ZMod.commRing _
attribute [local irreducible] Poseidon377.hash7

theorem canonicalHashThirtyTwo
    (f0 f1 f2 f3 f4 f5 f6 f7 f8 f9 f10 f11 f12 f13 f14 f15 f16 f17 f18
      f19 f20 f21 f22 f23 f24 f25 f26 f27 f28 f29 f30 f31 : DeployedF) :
    NoteReshapeCanonical.statementHash .reshape8x1
        [f0, f1, f2, f3, f4, f5, f6, f7, f8, f9, f10, f11, f12, f13,
         f14, f15, f16, f17, f18, f19, f20, f21, f22, f23, f24, f25,
         f26, f27, f28, f29, f30, f31] =
      Poseidon7Bridge.permSpec7
        (3369812303662745782238751015067652055738399375993471750361947871360359146526 :
          DeployedF)
        (NoteReshape8x1StatementFifth.fifthBlock
          [f0, f1, f2, f3, f4, f5, f6, f7, f8, f9, f10, f11, f12, f13,
           f14, f15, f16, f17, f18, f19, f20, f21, f22, f23, f24, f25,
           f26, f27, f28, f29, f30, f31])
        f31
        (2915450631090043870362923548486420008631941260295434438381537057702768319276 :
          DeployedF)
        (2310407198398592542434300833852291040911121939303310913824413219212949527351 :
          DeployedF)
        (2915450631090043870362923548486420008631941260295434438381537057702768319276 :
          DeployedF)
        (2310407198398592542434300833852291040911121939303310913824413219212949527351 :
          DeployedF)
        (2915450631090043870362923548486420008631941260295434438381537057702768319276 :
          DeployedF) := by
  rw [
    NoteReshapeCanonical.statementHash,
    Protocol.NoteReshape.Concrete.statementHash,
    Protocol.Common.statementHash
  ]
  change Protocol.Common.statementTail _ _ _ _
      [f7, f8, f9, f10, f11, f12, f13, f14, f15, f16, f17, f18, f19,
       f20, f21, f22, f23, f24, f25, f26, f27, f28, f29, f30, f31] = _
  rw [
    Protocol.Common.statementTail_twentyFive
  ]
  simp only [
    NoteReshape8x1StatementFifth.fifthBlock,
    NoteReshape8x1StatementFourth.fourthBlock,
    NoteReshape8x1StatementThird.thirdBlock,
    NoteReshape8x1StatementSecond.secondBlock,
    NoteReshapeCanonical.statementDomain,
    Protocol.NoteReshape.Concrete.statementDomain,
    NoteReshapeCanonical.statementFirstBlock,
    Protocol.NoteReshape.Concrete.statementFirstBlock,
    NoteReshapeCanonical.statementField,
    Protocol.NoteReshape.Concrete.statementField,
    Protocol.Common.statementField,
    NoteReshapeCanonical.statementPad0,
    Protocol.NoteReshape.Concrete.statementPad0,
    NoteReshapeCanonical.statementPad1,
    Protocol.NoteReshape.Concrete.statementPad1,
    List.getD,
    List.get?,
    Option.getD,
    Poseidon7Bridge.permSpec7
  ]

theorem hash (rho : Nat → DeployedF) :
    Deployed.Templates.Semantics.TStatementHash_ae76718c78b325fc953ed63d67e8ea1e911dc2c5c95400df433473b5b0517647.Trace.hash5
        (Seg173.localRho rho) =
      NoteReshapeCanonical.statementHash .reshape8x1
        (NoteReshape8x1StatementFirst.fields rho) := by
  have hw2409 : Seg173.wireSeating 2409 = 801 := by decide +kernel
  unfold NoteReshape8x1StatementFirst.fields
  rw [
    Deployed.Templates.Semantics.TStatementHash_ae76718c78b325fc953ed63d67e8ea1e911dc2c5c95400df433473b5b0517647.Trace.hash5,
    NoteReshape8x1StatementFifth.hash,
    canonicalHashThirtyTwo
  ]
  simp [
    Deployed.Templates.Semantics.TStatementHash_ae76718c78b325fc953ed63d67e8ea1e911dc2c5c95400df433473b5b0517647.Trace.domainLit,
    NoteReshape8x1StatementFirst.fields,
    spend7HistoryRequired, spend7HistoryRequiredLC,
    StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
    Seg173.localRho, Deployed.Templates.seated,
    hw2409
  ]

end Shieldd.GnarkFormal.Deployed.NoteReshape8x1StatementSixth
