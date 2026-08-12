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

theorem canonicalSecondBlockTwentyTwo
    (f0 f1 f2 f3 f4 f5 f6 f7 f8 f9 f10 f11 f12 f13 f14 f15 f16 f17 f18
      f19 f20 f21 : DeployedF) :
    secondBlock
        [f0, f1, f2, f3, f4, f5, f6, f7, f8, f9, f10, f11, f12, f13,
         f14, f15, f16, f17, f18, f19, f20, f21] =
      Poseidon7Bridge.permSpec7
        (6633002048635308567879967754963729389552746207601986158379347440968324263659 :
          DeployedF)
        (NoteReshapeCanonical.statementFirstBlock .reshape8x1
          [f0, f1, f2, f3, f4, f5, f6, f7, f8, f9, f10, f11, f12, f13,
           f14, f15, f16, f17, f18, f19, f20, f21])
        f7 f8 f9 f10 f11 f12 := by
  rfl

theorem hash (rho : Nat → DeployedF) :
    Deployed.Templates.Semantics.TStatementHash_c73724e5718898979d9030c39225b26e62b7d4a45d01d4aa5c1e35cabda8b3c5.Trace.hash1
        (Seg161.localRho rho) =
      secondBlock
        [anchor rho,
         output0NoteCommitmentComputed rho,
         balanceCommitmentFq rho,
         assetAnchor rho,
         routingTag rho,
         routingParameterSetId rho,
         spend0NullifierSelected rho,
         spend0RkCompressed rho,
         spend1NullifierSelected rho,
         spend1RkCompressed rho,
         spend2NullifierSelected rho,
         spend2RkCompressed rho,
         spend3NullifierSelected rho,
         spend3RkCompressed rho,
         spend4NullifierSelected rho,
         spend4RkCompressed rho,
         spend5NullifierSelected rho,
         spend5RkCompressed rho,
         spend6NullifierSelected rho,
         spend6RkCompressed rho,
         spend7NullifierSelected rho,
         spend7RkCompressed rho] := by
  have hw490 : Seg161.wireSeating 490 = 32847 := by decide +kernel
  have hw491 : Seg161.wireSeating 491 = 33187 := by decide +kernel
  have hw497 : Seg161.wireSeating 497 = 43113 := by decide +kernel
  have hw498 : Seg161.wireSeating 498 = 43114 := by decide +kernel
  have hw504 : Seg161.wireSeating 504 = 45293 := by decide +kernel
  have hw505 : Seg161.wireSeating 505 = 45633 := by decide +kernel
  have hw511 : Seg161.wireSeating 511 = 55559 := by decide +kernel
  have hw512 : Seg161.wireSeating 512 = 55560 := by decide +kernel
  have hw518 : Seg161.wireSeating 518 = 57739 := by decide +kernel
  have hw519 : Seg161.wireSeating 519 = 58079 := by decide +kernel
  have hw525 : Seg161.wireSeating 525 = 68005 := by decide +kernel
  have hw526 : Seg161.wireSeating 526 = 68006 := by decide +kernel
  have hneg :
      (8444461749428370424248824938781546531375899335154063827935233455917409239040 :
        DeployedF) = -1 := by decide +kernel
  rw [
    Deployed.Templates.Semantics.TStatementHash_c73724e5718898979d9030c39225b26e62b7d4a45d01d4aa5c1e35cabda8b3c5.Trace.hash1,
    NoteReshape8x1StatementFirst.hash,
    canonicalSecondBlockTwentyTwo
  ]
  simp [
    spend0RkCompressed, spend0RkCompressedLC,
    spend1NullifierSelected, spend1NullifierSelectedLC,
    spend1RkCompressed, spend1RkCompressedLC,
    spend2NullifierSelected, spend2NullifierSelectedLC,
    spend2RkCompressed, spend2RkCompressedLC,
    spend3NullifierSelected, spend3NullifierSelectedLC,
    StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
    Seg161.localRho, Deployed.Templates.seated,
    hw490, hw491, hw497, hw498, hw504, hw505,
    hw511, hw512, hw518, hw519, hw525, hw526,
    hneg
  ]

end Shieldd.GnarkFormal.Deployed.NoteReshape8x1StatementSecond
