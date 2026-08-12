import ShielddGnarkFormal.Deployed.NoteReshape8x1StatementThird

set_option maxRecDepth 1000000
set_option maxHeartbeats 4000000

/-! Exact final Poseidon block for the 8x1 statement. -/

namespace Shieldd.GnarkFormal.Deployed.NoteReshape8x1StatementFourth

open Shieldd.GnarkFormal
open Contracts.NoteReshape8x1
abbrev DeployedF := Contracts.NoteReshape8x1.SemanticF
open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

attribute [-instance] ZMod.instField
local instance choiceFreeStatementFourthCommRing : CommRing DeployedF := ZMod.commRing _

theorem canonicalHashTwentyTwo
    (f0 f1 f2 f3 f4 f5 f6 f7 f8 f9 f10 f11 f12 f13 f14 f15 f16 f17 f18
      f19 f20 f21 : DeployedF) :
    NoteReshapeCanonical.statementHash .reshape8x1
        [f0, f1, f2, f3, f4, f5, f6, f7, f8, f9, f10, f11, f12, f13,
         f14, f15, f16, f17, f18, f19, f20, f21] =
      Poseidon7Bridge.permSpec7
        (6633002048635308567879967754963729389552746207601986158379347440968324263659 :
          DeployedF)
        (NoteReshape8x1StatementThird.thirdBlock
          [f0, f1, f2, f3, f4, f5, f6, f7, f8, f9, f10, f11, f12, f13,
           f14, f15, f16, f17, f18, f19, f20, f21])
        f19 f20 f21
        (2915450631090043870362923548486420008631941260295434438381537057702768319276 :
          DeployedF)
        (2310407198398592542434300833852291040911121939303310913824413219212949527351 :
          DeployedF)
        (2915450631090043870362923548486420008631941260295434438381537057702768319276 :
          DeployedF) := by
  rfl

theorem hash (rho : Nat → DeployedF) :
    Deployed.Templates.Semantics.TStatementHash_c73724e5718898979d9030c39225b26e62b7d4a45d01d4aa5c1e35cabda8b3c5.Trace.hash3
        (Seg161.localRho rho) =
      NoteReshapeCanonical.statementHash .reshape8x1
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
  have hw1454 : Seg161.wireSeating 1454 = 107523 := by decide +kernel
  have hw1455 : Seg161.wireSeating 1455 = 107863 := by decide +kernel
  have hw1461 : Seg161.wireSeating 1461 = 117789 := by decide +kernel
  have hw1462 : Seg161.wireSeating 1462 = 117790 := by decide +kernel
  have hw1468 : Seg161.wireSeating 1468 = 119969 := by decide +kernel
  have hw1469 : Seg161.wireSeating 1469 = 120309 := by decide +kernel
  have hneg :
      (8444461749428370424248824938781546531375899335154063827935233455917409239040 :
        DeployedF) = -1 := by decide +kernel
  rw [
    Deployed.Templates.Semantics.TStatementHash_c73724e5718898979d9030c39225b26e62b7d4a45d01d4aa5c1e35cabda8b3c5.Trace.hash3,
    NoteReshape8x1StatementThird.hash,
    canonicalHashTwentyTwo
  ]
  simp [
    spend6RkCompressed, spend6RkCompressedLC,
    spend7NullifierSelected, spend7NullifierSelectedLC,
    spend7RkCompressed, spend7RkCompressedLC,
    StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
    Seg161.localRho, Deployed.Templates.seated,
    hw1454, hw1455, hw1461, hw1462, hw1468, hw1469,
    hneg
  ]

end Shieldd.GnarkFormal.Deployed.NoteReshape8x1StatementFourth
