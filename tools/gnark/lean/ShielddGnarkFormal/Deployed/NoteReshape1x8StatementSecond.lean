import ShielddGnarkFormal.Deployed.NoteReshape1x8StatementFirst
import ShielddGnarkFormal.Deployed.NoteReshape1x8StatementSeatingSecond

set_option maxRecDepth 1000000
set_option maxHeartbeats 4000000

/-! Exact second Poseidon block for the 1x8 statement. -/

namespace Shieldd.GnarkFormal.Deployed.NoteReshape1x8StatementSecond

open Shieldd.GnarkFormal
open Contracts.NoteReshape1x8
open NoteReshape1x8StatementSeating
open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

attribute [-instance] ZMod.instField
local instance choiceFreeStatementSecondCommRing : CommRing DeployedF := ZMod.commRing _

theorem canonicalHashTwelve
    (f0 f1 f2 f3 f4 f5 f6 f7 f8 f9 f10 f11 : DeployedF) :
    NoteReshapeCanonical.statementHash .reshape1x8
        [f0, f1, f2, f3, f4, f5, f6, f7, f8, f9, f10, f11] =
      Poseidon7Bridge.permSpec7
        (2598058543572663691928291801991083332834406653466399970650219017347474033401 :
          DeployedF)
        (NoteReshapeCanonical.statementFirstBlock .reshape1x8
          [f0, f1, f2, f3, f4, f5, f6, f7, f8, f9, f10, f11])
        f7 f8 f9 f10 f11
        (7628228517115617761731724754875004303107790596370304736275780016796853259057 :
          DeployedF) := by
  rfl

theorem hash
    (rho : Nat → DeployedF) :
    Deployed.Templates.Semantics.TStatementHash_253f0669df9a88c5d0d1fd54142634236d1f927edf40a3baefb3981c2bc88c5e.Trace.hash1
        (Seg60.localRho rho) =
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
         spend0NullifierComputed rho,
         spend0RkCompressed rho] := by
  rw [
    Deployed.Templates.Semantics.TStatementHash_253f0669df9a88c5d0d1fd54142634236d1f927edf40a3baefb3981c2bc88c5e.Trace.hash1,
    NoteReshape1x8StatementFirst.hash,
    canonicalHashTwelve
  ]
  have hneg :
      (8444461749428370424248824938781546531375899335154063827935233455917409239040 :
        DeployedF) = -1 := by decide +kernel
  simp [
    output6NoteCommitmentComputed, output6NoteCommitmentComputedLC,
    output7NoteCommitmentComputed, output7NoteCommitmentComputedLC,
    balanceCommitmentFq, balanceCommitmentFqLC,
    spend0NullifierComputed, spend0NullifierComputedLC,
    spend0RkCompressed, spend0RkCompressedLC,
    StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
    Seg60.localRho, Deployed.Templates.seated,
    hw519, hw520, hw521, hw522, hw523, hw524, hw525,
    hw531, hw532, hw533, hw534, hw535, hw536, hw537,
    hw543, hw544, hw550, hw551, hw552, hw553, hw559, hw560
  ]
  rw [hneg]
  congr 1 <;> simp only [add_assoc, neg_one_mul]

end Shieldd.GnarkFormal.Deployed.NoteReshape1x8StatementSecond
