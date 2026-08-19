import ShielddGnarkFormal.Deployed.NoteReshape1x8StatementFirst
import ShielddGnarkFormal.Deployed.NoteReshape1x8StatementSeatingSecond

set_option maxRecDepth 1000000
set_option maxHeartbeats 4000000

/-! Exact second Poseidon block for the 1x8 statement. -/

namespace Shieldd.GnarkFormal.Deployed.NoteReshape1x8StatementSecond

open Shieldd.GnarkFormal
open Contracts.NoteReshape1x8
abbrev DeployedF := Contracts.NoteReshape1x8.SemanticF
open NoteReshape1x8StatementSeating
open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

attribute [-instance] ZMod.instField
local instance choiceFreeStatementSecondCommRing : CommRing DeployedF := ZMod.commRing _

def secondBlock (fields : List DeployedF) : DeployedF :=
  Poseidon7Bridge.permSpec7
    (NoteReshapeCanonical.statementDomain .reshape1x8)
    (NoteReshapeCanonical.statementFirstBlock .reshape1x8 fields)
    (NoteReshapeCanonical.statementField fields 7
      (NoteReshapeCanonical.statementPad0 .reshape1x8))
    (NoteReshapeCanonical.statementField fields 8
      (NoteReshapeCanonical.statementPad1 .reshape1x8))
    (NoteReshapeCanonical.statementField fields 9
      (NoteReshapeCanonical.statementPad0 .reshape1x8))
    (NoteReshapeCanonical.statementField fields 10
      (NoteReshapeCanonical.statementPad1 .reshape1x8))
    (NoteReshapeCanonical.statementField fields 11
      (NoteReshapeCanonical.statementPad0 .reshape1x8))
    (NoteReshapeCanonical.statementField fields 12
      (NoteReshapeCanonical.statementPad1 .reshape1x8))

theorem canonicalSecondBlockEighteen
    (f0 f1 f2 f3 f4 f5 f6 f7 f8 f9 f10 f11 f12 f13 f14 f15 f16 f17 : DeployedF) :
    secondBlock
        [f0, f1, f2, f3, f4, f5, f6, f7, f8, f9, f10, f11, f12, f13, f14,
         f15, f16, f17] =
      Poseidon7Bridge.permSpec7
        (2364495542860899492047187451159388185152513649010245296796743723390237537741 :
          DeployedF)
        (NoteReshapeCanonical.statementFirstBlock .reshape1x8
          [f0, f1, f2, f3, f4, f5, f6, f7, f8, f9, f10, f11, f12, f13, f14,
           f15, f16, f17])
        f7 f8 f9 f10 f11 f12 := by
  rfl

theorem hash (rho : Nat → DeployedF) :
    Deployed.Templates.Semantics.TStatementHash_7acf21e44dfb02b7e86c0f61aeed9884ca62220f949cb8a03253903d5c5bec66.Trace.hash1
        (Seg83.localRho rho) =
      secondBlock
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
         complianceAnchor rho,
         routingTag rho,
         routingParameterSetId rho,
         recentPositionFloor rho,
         spend0NullifierComputed rho,
         spend0RkCompressed rho,
         spend0HistoryRequired rho] := by
  rw [
    Deployed.Templates.Semantics.TStatementHash_7acf21e44dfb02b7e86c0f61aeed9884ca62220f949cb8a03253903d5c5bec66.Trace.hash1,
    NoteReshape1x8StatementFirst.hash,
    canonicalSecondBlockEighteen
  ]
  have hneg :
      (8444461749428370424248824938781546531375899335154063827935233455917409239040 :
        DeployedF) = -1 := by decide +kernel
  simp [
    output6NoteCommitmentComputed, output6NoteCommitmentComputedLC,
    output7NoteCommitmentComputed, output7NoteCommitmentComputedLC,
    balanceCommitmentFq, balanceCommitmentFqLC,
    assetAnchor, assetAnchorLC,
    complianceAnchor, complianceAnchorLC,
    routingTag, routingTagLC,
    StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
    Seg83.localRho, Deployed.Templates.seated,
    hw513, hw514, hw515, hw516, hw517, hw518,
    hw524, hw525, hw526, hw527, hw528, hw529,
    hw535, hw536, hw542, hw548, hw554,
    hneg
  ]
  congr 1 <;> simp only [add_assoc, neg_one_mul]

end Shieldd.GnarkFormal.Deployed.NoteReshape1x8StatementSecond
