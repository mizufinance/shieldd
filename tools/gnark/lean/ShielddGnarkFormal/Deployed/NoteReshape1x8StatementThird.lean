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

theorem canonicalHashFifteen
    (f0 f1 f2 f3 f4 f5 f6 f7 f8 f9 f10 f11 f12 f13 f14 : DeployedF) :
    NoteReshapeCanonical.statementHash .reshape1x8
        [f0, f1, f2, f3, f4, f5, f6, f7, f8, f9, f10, f11, f12, f13, f14] =
      Poseidon7Bridge.permSpec7
        (4241182688873131096588087403843978305304926756205733284227994496152505846817 :
          DeployedF)
        (NoteReshape1x8StatementSecond.secondBlock
          [f0, f1, f2, f3, f4, f5, f6, f7, f8, f9, f10, f11, f12, f13, f14])
        f13 f14
        (3265217450668797951568683547963990927841845086752579767062168357780493777363 :
          DeployedF)
        (7628228517115617761731724754875004303107790596370304736275780016796853259057 :
          DeployedF)
        (3265217450668797951568683547963990927841845086752579767062168357780493777363 :
          DeployedF)
        (7628228517115617761731724754875004303107790596370304736275780016796853259057 :
          DeployedF) := by
  rfl

theorem hash (rho : Nat → DeployedF) :
    Deployed.Templates.Semantics.TStatementHash_93008bb67ca1e31e6bd8c1584faf21ee43e1a101d4d1a7b8126fb6df6761802a.Trace.hash2
        (Seg78.localRho rho) =
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
         spend0NullifierComputed rho,
         spend0RkCompressed rho] := by
  rw [
    Deployed.Templates.Semantics.TStatementHash_93008bb67ca1e31e6bd8c1584faf21ee43e1a101d4d1a7b8126fb6df6761802a.Trace.hash2,
    NoteReshape1x8StatementSecond.hash,
    canonicalHashFifteen
  ]
  have hneg :
      (8444461749428370424248824938781546531375899335154063827935233455917409239040 :
        DeployedF) = -1 := by decide +kernel
  simp [
    spend0NullifierComputed, spend0NullifierComputedLC,
    spend0RkCompressed, spend0RkCompressedLC,
    StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
    Seg78.localRho, Deployed.Templates.seated,
    hw1000, hw1001, hw1002, hw1003, hw1009, hw1010,
    hneg
  ]
  congr 1 <;> simp only [add_assoc, neg_one_mul]

end Shieldd.GnarkFormal.Deployed.NoteReshape1x8StatementThird
