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

theorem canonicalThirdBlockTwentyTwo
    (f0 f1 f2 f3 f4 f5 f6 f7 f8 f9 f10 f11 f12 f13 f14 f15 f16 f17 f18
      f19 f20 f21 : DeployedF) :
    thirdBlock
        [f0, f1, f2, f3, f4, f5, f6, f7, f8, f9, f10, f11, f12, f13,
         f14, f15, f16, f17, f18, f19, f20, f21] =
      Poseidon7Bridge.permSpec7
        (6633002048635308567879967754963729389552746207601986158379347440968324263659 :
          DeployedF)
        (NoteReshape8x1StatementSecond.secondBlock
          [f0, f1, f2, f3, f4, f5, f6, f7, f8, f9, f10, f11, f12, f13,
           f14, f15, f16, f17, f18, f19, f20, f21])
        f13 f14 f15 f16 f17 f18 := by
  rfl

theorem hash (rho : Nat → DeployedF) :
    Deployed.Templates.Semantics.TStatementHash_c73724e5718898979d9030c39225b26e62b7d4a45d01d4aa5c1e35cabda8b3c5.Trace.hash2
        (Seg161.localRho rho) =
      thirdBlock
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
  have hw972 : Seg161.wireSeating 972 = 70185 := by decide +kernel
  have hw973 : Seg161.wireSeating 973 = 70525 := by decide +kernel
  have hw979 : Seg161.wireSeating 979 = 80451 := by decide +kernel
  have hw980 : Seg161.wireSeating 980 = 80452 := by decide +kernel
  have hw986 : Seg161.wireSeating 986 = 82631 := by decide +kernel
  have hw987 : Seg161.wireSeating 987 = 82971 := by decide +kernel
  have hw993 : Seg161.wireSeating 993 = 92897 := by decide +kernel
  have hw994 : Seg161.wireSeating 994 = 92898 := by decide +kernel
  have hw1000 : Seg161.wireSeating 1000 = 95077 := by decide +kernel
  have hw1001 : Seg161.wireSeating 1001 = 95417 := by decide +kernel
  have hw1007 : Seg161.wireSeating 1007 = 105343 := by decide +kernel
  have hw1008 : Seg161.wireSeating 1008 = 105344 := by decide +kernel
  have hneg :
      (8444461749428370424248824938781546531375899335154063827935233455917409239040 :
        DeployedF) = -1 := by decide +kernel
  rw [
    Deployed.Templates.Semantics.TStatementHash_c73724e5718898979d9030c39225b26e62b7d4a45d01d4aa5c1e35cabda8b3c5.Trace.hash2,
    NoteReshape8x1StatementSecond.hash,
    canonicalThirdBlockTwentyTwo
  ]
  simp [
    spend3RkCompressed, spend3RkCompressedLC,
    spend4NullifierSelected, spend4NullifierSelectedLC,
    spend4RkCompressed, spend4RkCompressedLC,
    spend5NullifierSelected, spend5NullifierSelectedLC,
    spend5RkCompressed, spend5RkCompressedLC,
    spend6NullifierSelected, spend6NullifierSelectedLC,
    StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
    Seg161.localRho, Deployed.Templates.seated,
    hw972, hw973, hw979, hw980, hw986, hw987,
    hw993, hw994, hw1000, hw1001, hw1007, hw1008,
    hneg
  ]

end Shieldd.GnarkFormal.Deployed.NoteReshape8x1StatementThird
