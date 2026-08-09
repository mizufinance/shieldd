import ShielddGnarkFormal.Deployed.Contracts.NoteReshape1x8.CircuitFacts
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

attribute [-instance] ZMod.instField
local instance choiceFreeStatementFirstCommRing : CommRing DeployedF := ZMod.commRing _

theorem canonicalFirstBlockTwelve
    (f0 f1 f2 f3 f4 f5 f6 f7 f8 f9 f10 f11 : DeployedF) :
    NoteReshapeCanonical.statementFirstBlock .reshape1x8
        [f0, f1, f2, f3, f4, f5, f6, f7, f8, f9, f10, f11] =
      Poseidon7Bridge.permSpec7
        (2598058543572663691928291801991083332834406653466399970650219017347474033401 :
          DeployedF)
        f0 f1 f2 f3 f4 f5 f6 := by
  rfl

theorem hash
    (rho : Nat → DeployedF) :
    Deployed.Templates.Semantics.TStatementHash_253f0669df9a88c5d0d1fd54142634236d1f927edf40a3baefb3981c2bc88c5e.Trace.hash0
        (Seg60.localRho rho) =
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
         spend0NullifierComputed rho,
         spend0RkCompressed rho] := by
  rw [canonicalFirstBlockTwelve]
  simp [
    Deployed.Templates.Semantics.TStatementHash_253f0669df9a88c5d0d1fd54142634236d1f927edf40a3baefb3981c2bc88c5e.Trace.hash0,
    Deployed.Templates.Semantics.TStatementHash_253f0669df9a88c5d0d1fd54142634236d1f927edf40a3baefb3981c2bc88c5e.Trace.domainLit,
    anchor, anchorLC,
    output0NoteCommitmentComputed, output0NoteCommitmentComputedLC,
    output1NoteCommitmentComputed, output1NoteCommitmentComputedLC,
    output2NoteCommitmentComputed, output2NoteCommitmentComputedLC,
    output3NoteCommitmentComputed, output3NoteCommitmentComputedLC,
    output4NoteCommitmentComputed, output4NoteCommitmentComputedLC,
    output5NoteCommitmentComputed, output5NoteCommitmentComputedLC,
    StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
    Seg60.localRho, Deployed.Templates.seated,
    hw1,
    hw7, hw8, hw9, hw10, hw11, hw12, hw13,
    hw19, hw20, hw21, hw22, hw23, hw24, hw25,
    hw31, hw32, hw33, hw34, hw35, hw36, hw37,
    hw43, hw44, hw45, hw46, hw47, hw48, hw49,
    hw55, hw56, hw57, hw58, hw59, hw60, hw61,
    hw67, hw68, hw69, hw70, hw71, hw72, hw73
  ]
  congr 1 <;> simp only [add_assoc, neg_one_mul]

end Shieldd.GnarkFormal.Deployed.NoteReshape1x8StatementFirst
