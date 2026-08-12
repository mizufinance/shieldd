import ShielddGnarkFormal.Deployed.Contracts.NoteReshape8x1.SemanticBindings
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape8x1.Seg161
import ShielddGnarkFormal.NoteReshapeCanonical
import ShielddGnarkFormal.Poseidon7Bridge

set_option maxRecDepth 1000000
set_option maxHeartbeats 4000000

/-! Exact first Poseidon block for the 8x1 statement. -/

namespace Shieldd.GnarkFormal.Deployed.NoteReshape8x1StatementFirst

open Shieldd.GnarkFormal
open Contracts.NoteReshape8x1
abbrev DeployedF := Contracts.NoteReshape8x1.SemanticF
open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

attribute [-instance] ZMod.instField
local instance choiceFreeStatementFirstCommRing : CommRing DeployedF := ZMod.commRing _

theorem canonicalFirstBlockTwentyTwo
    (f0 f1 f2 f3 f4 f5 f6 f7 f8 f9 f10 f11 f12 f13 f14 f15 f16 f17 f18
      f19 f20 f21 : DeployedF) :
    NoteReshapeCanonical.statementFirstBlock .reshape8x1
        [f0, f1, f2, f3, f4, f5, f6, f7, f8, f9, f10, f11, f12, f13,
         f14, f15, f16, f17, f18, f19, f20, f21] =
      Poseidon7Bridge.permSpec7
        (6633002048635308567879967754963729389552746207601986158379347440968324263659 :
          DeployedF)
        f0 f1 f2 f3 f4 f5 f6 := by
  rfl

theorem hash (rho : Nat → DeployedF) :
    Deployed.Templates.Semantics.TStatementHash_c73724e5718898979d9030c39225b26e62b7d4a45d01d4aa5c1e35cabda8b3c5.Trace.hash0
        (Seg161.localRho rho) =
      NoteReshapeCanonical.statementFirstBlock .reshape8x1
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
  have hw1 : Seg161.wireSeating 1 = 5 := by decide +kernel
  have hw7 : Seg161.wireSeating 7 = 120674 := by decide +kernel
  have hw8 : Seg161.wireSeating 8 = 120679 := by decide +kernel
  have hw9 : Seg161.wireSeating 9 = 120684 := by decide +kernel
  have hw10 : Seg161.wireSeating 10 = 120689 := by decide +kernel
  have hw11 : Seg161.wireSeating 11 = 120694 := by decide +kernel
  have hw12 : Seg161.wireSeating 12 = 120699 := by decide +kernel
  have hw18 : Seg161.wireSeating 18 = 124020 := by decide +kernel
  have hw19 : Seg161.wireSeating 19 = 124360 := by decide +kernel
  have hw25 : Seg161.wireSeating 25 = 2 := by decide +kernel
  have hw31 : Seg161.wireSeating 31 = 3 := by decide +kernel
  have hw37 : Seg161.wireSeating 37 = 4 := by decide +kernel
  have hw43 : Seg161.wireSeating 43 = 30667 := by decide +kernel
  have hw44 : Seg161.wireSeating 44 = 30668 := by decide +kernel
  have hneg :
      (8444461749428370424248824938781546531375899335154063827935233455917409239040 :
        DeployedF) = -1 := by decide +kernel
  rw [canonicalFirstBlockTwentyTwo]
  simp [
    Deployed.Templates.Semantics.TStatementHash_c73724e5718898979d9030c39225b26e62b7d4a45d01d4aa5c1e35cabda8b3c5.Trace.hash0,
    Deployed.Templates.Semantics.TStatementHash_c73724e5718898979d9030c39225b26e62b7d4a45d01d4aa5c1e35cabda8b3c5.Trace.domainLit,
    anchor, anchorLC,
    output0NoteCommitmentComputed, output0NoteCommitmentComputedLC,
    balanceCommitmentFq, balanceCommitmentFqLC,
    assetAnchor, assetAnchorLC,
    routingTag, routingTagLC,
    routingParameterSetId, routingParameterSetIdLC,
    spend0NullifierSelected, spend0NullifierSelectedLC,
    StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
    Seg161.localRho, Deployed.Templates.seated,
    hw1, hw7, hw8, hw9, hw10, hw11, hw12,
    hw18, hw19, hw25, hw31, hw37, hw43, hw44,
    hneg
  ]
  congr 1 <;> simp only [add_assoc, neg_one_mul]

end Shieldd.GnarkFormal.Deployed.NoteReshape8x1StatementFirst
