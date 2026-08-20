import ShielddGnarkFormal.Deployed.Contracts.NoteReshape8x1.SemanticBindings
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape8x1.Seg173
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

def fields (rho : Nat → DeployedF) : List DeployedF :=
  [anchor rho,
   output0NoteCommitmentComputed rho,
   balanceCommitmentFq rho,
   assetAnchor rho,
   complianceAnchor rho,
   routingTag rho,
   routingParameterSetId rho,
   recentPositionFloor rho,
   spend0NullifierSelected rho,
   spend0RkCompressed rho,
   spend0HistoryRequired rho,
   spend1NullifierSelected rho,
   spend1RkCompressed rho,
   spend1HistoryRequired rho,
   spend2NullifierSelected rho,
   spend2RkCompressed rho,
   spend2HistoryRequired rho,
   spend3NullifierSelected rho,
   spend3RkCompressed rho,
   spend3HistoryRequired rho,
   spend4NullifierSelected rho,
   spend4RkCompressed rho,
   spend4HistoryRequired rho,
   spend5NullifierSelected rho,
   spend5RkCompressed rho,
   spend5HistoryRequired rho,
   spend6NullifierSelected rho,
   spend6RkCompressed rho,
   spend6HistoryRequired rho,
   spend7NullifierSelected rho,
   spend7RkCompressed rho,
   spend7HistoryRequired rho]

theorem canonicalFirstBlockThirtyTwo
    (f0 f1 f2 f3 f4 f5 f6 f7 f8 f9 f10 f11 f12 f13 f14 f15 f16 f17 f18
      f19 f20 f21 f22 f23 f24 f25 f26 f27 f28 f29 f30 f31 : DeployedF) :
    NoteReshapeCanonical.statementFirstBlock .reshape8x1
        [f0, f1, f2, f3, f4, f5, f6, f7, f8, f9, f10, f11, f12, f13,
         f14, f15, f16, f17, f18, f19, f20, f21, f22, f23, f24, f25,
         f26, f27, f28, f29, f30, f31] =
      Poseidon7Bridge.permSpec7
        (3369812303662745782238751015067652055738399375993471750361947871360359146526 :
          DeployedF)
        f0 f1 f2 f3 f4 f5 f6 := by
  rfl

theorem hash (rho : Nat → DeployedF) :
    Deployed.Templates.Semantics.TStatementHash_ae76718c78b325fc953ed63d67e8ea1e911dc2c5c95400df433473b5b0517647.Trace.hash0
        (Seg173.localRho rho) =
      NoteReshapeCanonical.statementFirstBlock .reshape8x1 (fields rho) := by
  have hw1 : Seg173.wireSeating 1 = 7 := by decide +kernel
  have hw7 : Seg173.wireSeating 7 = 128177 := by decide +kernel
  have hw8 : Seg173.wireSeating 8 = 128182 := by decide +kernel
  have hw9 : Seg173.wireSeating 9 = 128187 := by decide +kernel
  have hw10 : Seg173.wireSeating 10 = 128192 := by decide +kernel
  have hw11 : Seg173.wireSeating 11 = 128197 := by decide +kernel
  have hw12 : Seg173.wireSeating 12 = 128202 := by decide +kernel
  have hw18 : Seg173.wireSeating 18 = 131523 := by decide +kernel
  have hw19 : Seg173.wireSeating 19 = 131863 := by decide +kernel
  have hw25 : Seg173.wireSeating 25 = 2 := by decide +kernel
  have hw31 : Seg173.wireSeating 31 = 3 := by decide +kernel
  have hw37 : Seg173.wireSeating 37 = 4 := by decide +kernel
  have hw43 : Seg173.wireSeating 43 = 5 := by decide +kernel
  have hneg :
      (8444461749428370424248824938781546531375899335154063827935233455917409239040 :
        DeployedF) = -1 := by decide +kernel
  unfold fields
  rw [canonicalFirstBlockThirtyTwo]
  simp [
    Deployed.Templates.Semantics.TStatementHash_ae76718c78b325fc953ed63d67e8ea1e911dc2c5c95400df433473b5b0517647.Trace.hash0,
    Deployed.Templates.Semantics.TStatementHash_ae76718c78b325fc953ed63d67e8ea1e911dc2c5c95400df433473b5b0517647.Trace.domainLit,
    anchor, anchorLC,
    output0NoteCommitmentComputed, output0NoteCommitmentComputedLC,
    balanceCommitmentFq, balanceCommitmentFqLC,
    assetAnchor, assetAnchorLC,
    complianceAnchor, complianceAnchorLC,
    routingTag, routingTagLC,
    routingParameterSetId, routingParameterSetIdLC,
    StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
    Seg173.localRho, Deployed.Templates.seated,
    hw1, hw7, hw8, hw9, hw10, hw11, hw12,
    hw18, hw19, hw25, hw31, hw37, hw43,
    hneg
  ]
  congr 1 <;> simp only [add_assoc, neg_one_mul]

end Shieldd.GnarkFormal.Deployed.NoteReshape8x1StatementFirst
