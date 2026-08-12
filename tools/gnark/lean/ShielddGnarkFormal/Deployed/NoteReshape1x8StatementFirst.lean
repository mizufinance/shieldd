import ShielddGnarkFormal.Deployed.Contracts.NoteReshape1x8.SemanticBindings
import ShielddGnarkFormal.Deployed.NoteReshape1x8StatementSeatingFirstA
import ShielddGnarkFormal.Deployed.NoteReshape1x8StatementSeatingFirstB
import ShielddGnarkFormal.NoteReshapeCanonical

set_option maxRecDepth 1000000
set_option maxHeartbeats 4000000

/-! Exact first Poseidon block for the 1x8 statement. -/

namespace Shieldd.GnarkFormal.Deployed.NoteReshape1x8StatementFirst

open Shieldd.GnarkFormal
open Contracts.NoteReshape1x8
open NoteReshape1x8StatementSeating
open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

abbrev DeployedF := Contracts.NoteReshape1x8.SemanticF

attribute [-instance] ZMod.instField
local instance choiceFreeStatementFirstCommRing : CommRing DeployedF := ZMod.commRing _

theorem canonicalFirstBlockFifteen
    (f0 f1 f2 f3 f4 f5 f6 f7 f8 f9 f10 f11 f12 f13 f14 : DeployedF) :
    NoteReshapeCanonical.statementFirstBlock .reshape1x8
        [f0, f1, f2, f3, f4, f5, f6, f7, f8, f9, f10, f11, f12, f13, f14] =
      Poseidon7Bridge.permSpec7
        (4241182688873131096588087403843978305304926756205733284227994496152505846817 :
          DeployedF)
        f0 f1 f2 f3 f4 f5 f6 := by
  rfl

theorem hash (rho : Nat → DeployedF) :
    Deployed.Templates.Semantics.TStatementHash_93008bb67ca1e31e6bd8c1584faf21ee43e1a101d4d1a7b8126fb6df6761802a.Trace.hash0
        (Seg78.localRho rho) =
      NoteReshapeCanonical.statementFirstBlock .reshape1x8
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
  rw [canonicalFirstBlockFifteen]
  simp [
    Deployed.Templates.Semantics.TStatementHash_93008bb67ca1e31e6bd8c1584faf21ee43e1a101d4d1a7b8126fb6df6761802a.Trace.hash0,
    Deployed.Templates.Semantics.TStatementHash_93008bb67ca1e31e6bd8c1584faf21ee43e1a101d4d1a7b8126fb6df6761802a.Trace.domainLit,
    anchor, anchorLC,
    output0NoteCommitmentComputed, output0NoteCommitmentComputedLC,
    output1NoteCommitmentComputed, output1NoteCommitmentComputedLC,
    output2NoteCommitmentComputed, output2NoteCommitmentComputedLC,
    output3NoteCommitmentComputed, output3NoteCommitmentComputedLC,
    output4NoteCommitmentComputed, output4NoteCommitmentComputedLC,
    output5NoteCommitmentComputed, output5NoteCommitmentComputedLC,
    StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
    Seg78.localRho, Deployed.Templates.seated,
    hw1,
    hw7, hw8, hw9, hw10, hw11, hw12,
    hw18, hw19, hw20, hw21, hw22, hw23,
    hw29, hw30, hw31, hw32, hw33, hw34,
    hw40, hw41, hw42, hw43, hw44, hw45,
    hw51, hw52, hw53, hw54, hw55, hw56,
    hw62, hw63, hw64, hw65, hw66, hw67
  ]
  congr 1 <;> simp only [add_assoc, neg_one_mul]

end Shieldd.GnarkFormal.Deployed.NoteReshape1x8StatementFirst
