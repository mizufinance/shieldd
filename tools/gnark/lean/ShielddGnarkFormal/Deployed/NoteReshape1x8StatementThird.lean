import ShielddGnarkFormal.Deployed.NoteReshape1x8StatementSecond
import ShielddGnarkFormal.Deployed.NoteReshape1x8StatementSeatingThird

set_option maxRecDepth 1000000
set_option maxHeartbeats 4000000

/-! Exact final Poseidon block for the 1x8 statement. -/

namespace Shieldd.GnarkFormal.Deployed.NoteReshape1x8StatementThird

open Shieldd.GnarkFormal
open Contracts.NoteReshape1x8
abbrev DeployedF := Contracts.NoteReshape1x8.SemanticF
open NoteReshape1x8StatementSeating
open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

attribute [-instance] ZMod.instField
local instance choiceFreeStatementThirdCommRing : CommRing DeployedF := ZMod.commRing _

theorem canonicalHashSeventeen
    (f0 f1 f2 f3 f4 f5 f6 f7 f8 f9 f10 f11 f12 f13 f14 f15 f16 : DeployedF) :
    NoteReshapeCanonical.statementHash .reshape1x8
        [f0, f1, f2, f3, f4, f5, f6, f7, f8, f9, f10, f11, f12, f13, f14, f15, f16] =
      Poseidon7Bridge.permSpec7
        (8083011558212890722062585281830291178644145861330407768425969219879481653955 :
          DeployedF)
        (NoteReshape1x8StatementSecond.secondBlock
          [f0, f1, f2, f3, f4, f5, f6, f7, f8, f9, f10, f11, f12, f13, f14, f15, f16])
        f13 f14 f15 f16
        (3265217450668797951568683547963990927841845086752579767062168357780493777363 :
          DeployedF)
        (7628228517115617761731724754875004303107790596370304736275780016796853259057 :
          DeployedF)
        := by
  rfl

theorem hash (rho : Nat → DeployedF) :
    Deployed.Templates.Semantics.TStatementHash_83a669afde34adf36b8981f04f0c381cb17040f11d8fafcf45f8451d92c98705.Trace.hash2
        (Seg79.localRho rho) =
      NoteReshapeCanonical.statementHash .reshape1x8
        [anchor rho,
         output0NoteCommitmentComputed rho,
         output1NoteCommitmentComputed rho,
         output2NoteCommitmentComputed rho,
         output3NoteCommitmentComputed rho,
         output4NoteCommitmentComputed rho,
         output5NoteCommitmentComputed rho,
         output6NoteCommitmentComputed rho,
         output7NoteCommitmentComputed rho,
         balanceCommitmentFq rho,
         assetAnchor rho,
         routingTag rho,
         routingParameterSetId rho,
         recentPositionFloor rho,
         spend0NullifierComputed rho,
         spend0RkCompressed rho,
         spend0HistoryRequired rho] := by
  rw [
    Deployed.Templates.Semantics.TStatementHash_83a669afde34adf36b8981f04f0c381cb17040f11d8fafcf45f8451d92c98705.Trace.hash2,
    NoteReshape1x8StatementSecond.hash,
    canonicalHashSeventeen
  ]
  have hneg :
      (8444461749428370424248824938781546531375899335154063827935233455917409239040 :
        DeployedF) = -1 := by decide +kernel
  simp [
    recentPositionFloor, recentPositionFloorLC,
    spend0NullifierComputed, spend0NullifierComputedLC,
    spend0RkCompressed, spend0RkCompressedLC,
    spend0HistoryRequired, spend0HistoryRequiredLC,
    StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
    Seg79.localRho, Deployed.Templates.seated,
    hw1000, hw1006, hw1007, hw1008, hw1009, hw1015, hw1016, hw1022,
    hneg
  ]
  congr 1 <;> simp only [add_assoc, neg_one_mul]

end Shieldd.GnarkFormal.Deployed.NoteReshape1x8StatementThird
