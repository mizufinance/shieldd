import ShielddGnarkFormal.Deployed.NoteReshape4x1StatementFirst

set_option maxRecDepth 1000000
set_option maxHeartbeats 4000000

/-! Exact second Poseidon block for the 4x1 statement. -/

namespace Shieldd.GnarkFormal.Deployed.NoteReshape4x1StatementSecond

open Shieldd.GnarkFormal
open Contracts.NoteReshape4x1
open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

attribute [-instance] ZMod.instField
local instance choiceFreeStatementSecondCommRing : CommRing DeployedF := ZMod.commRing _

theorem canonicalHashEleven
    (f0 f1 f2 f3 f4 f5 f6 f7 f8 f9 f10 : DeployedF) :
    NoteReshapeCanonical.statementHash .reshape4x1
        [f0, f1, f2, f3, f4, f5, f6, f7, f8, f9, f10] =
      Poseidon7Bridge.permSpec7
        (5915654282401331336747985974992743439571166637199277295399593266008193812311 :
          DeployedF)
        (NoteReshapeCanonical.statementFirstBlock .reshape4x1
          [f0, f1, f2, f3, f4, f5, f6, f7, f8, f9, f10])
        f7 f8 f9 f10
        (6435842850099173833513748825762623705081823114719452592076083094765780982117 :
          DeployedF)
        (2279160445477882898944068799933079351983642684999701084965958931992088916257 :
          DeployedF) := by
  rfl

theorem hash
    (rho : Nat → DeployedF) :
    Deployed.Templates.Semantics.TStatementHash_4cafd325b545493415e47321733b6b69a04b20d1ef002f440729f6bf4a70a0b7.Trace.hash1
        (Seg80.localRho rho) =
      NoteReshapeCanonical.statementHash .reshape4x1
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
         spend3RkCompressed rho] := by
  have hw494 : Seg80.wireSeating 494 = 42262 := by decide
  have hw495 : Seg80.wireSeating 495 = 42263 := by decide
  have hw501 : Seg80.wireSeating 501 = 44442 := by decide
  have hw502 : Seg80.wireSeating 502 = 44782 := by decide
  have hw508 : Seg80.wireSeating 508 = 54748 := by decide
  have hw509 : Seg80.wireSeating 509 = 54749 := by decide
  have hw515 : Seg80.wireSeating 515 = 56928 := by decide
  have hw516 : Seg80.wireSeating 516 = 57268 := by decide
  have hneg :
      (8444461749428370424248824938781546531375899335154063827935233455917409239040 :
        DeployedF) = -1 := by decide
  rw [
    Deployed.Templates.Semantics.TStatementHash_4cafd325b545493415e47321733b6b69a04b20d1ef002f440729f6bf4a70a0b7.Trace.hash1,
    NoteReshape4x1StatementFirst.hash,
    canonicalHashEleven
  ]
  simp [
    spend2NullifierSelected, spend2NullifierSelectedLC,
    spend2RkCompressed, spend2RkCompressedLC,
    spend3NullifierSelected, spend3NullifierSelectedLC,
    spend3RkCompressed, spend3RkCompressedLC,
    StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
    Seg80.localRho, Deployed.Templates.seated,
    hw494, hw495, hw501, hw502, hw508, hw509, hw515, hw516,
    hneg
  ]

end Shieldd.GnarkFormal.Deployed.NoteReshape4x1StatementSecond
