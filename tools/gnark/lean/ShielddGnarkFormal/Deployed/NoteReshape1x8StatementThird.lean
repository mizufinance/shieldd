import ShielddGnarkFormal.Deployed.NoteReshape1x8StatementSecond
import ShielddGnarkFormal.Deployed.NoteReshape1x8StatementSeatingThird
import ShielddGnarkFormal.Protocol.StatementSponge

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
attribute [local irreducible] Poseidon377.hash7

theorem canonicalHashEighteen
    (f0 f1 f2 f3 f4 f5 f6 f7 f8 f9 f10 f11 f12 f13 f14 f15 f16 f17 : DeployedF) :
    NoteReshapeCanonical.statementHash .reshape1x8
        [f0, f1, f2, f3, f4, f5, f6, f7, f8, f9, f10, f11, f12, f13, f14, f15, f16, f17] =
      Poseidon7Bridge.permSpec7
        (2364495542860899492047187451159388185152513649010245296796743723390237537741 :
          DeployedF)
        (NoteReshape1x8StatementSecond.secondBlock
          [f0, f1, f2, f3, f4, f5, f6, f7, f8, f9, f10, f11, f12, f13, f14, f15, f16, f17])
        f13 f14 f15 f16 f17
        (7628228517115617761731724754875004303107790596370304736275780016796853259057 :
          DeployedF)
        := by
  rw [
    NoteReshapeCanonical.statementHash,
    Protocol.NoteReshape.Concrete.statementHash,
    Protocol.Common.statementHash
  ]
  change Protocol.Common.statementTail _ _ _ _
      [f7, f8, f9, f10, f11, f12, f13, f14, f15, f16, f17] = _
  rw [
    Protocol.Common.statementTail_eleven
  ]
  simp only [
    NoteReshape1x8StatementSecond.secondBlock,
    NoteReshapeCanonical.statementDomain,
    Protocol.NoteReshape.Concrete.statementDomain,
    NoteReshapeCanonical.statementFirstBlock,
    Protocol.NoteReshape.Concrete.statementFirstBlock,
    NoteReshapeCanonical.statementPad0,
    Protocol.NoteReshape.Concrete.statementPad0,
    NoteReshapeCanonical.statementPad1,
    Protocol.NoteReshape.Concrete.statementPad1,
    NoteReshapeCanonical.statementField,
    Protocol.NoteReshape.Concrete.statementField,
    Protocol.Common.statementField,
    List.getD,
    List.get?,
    Option.getD,
    Poseidon7Bridge.permSpec7
  ]

theorem hash (rho : Nat → DeployedF) :
    Deployed.Templates.Semantics.TStatementHash_7acf21e44dfb02b7e86c0f61aeed9884ca62220f949cb8a03253903d5c5bec66.Trace.hash2
        (Seg83.localRho rho) =
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
         complianceAnchor rho,
         routingTag rho,
         routingParameterSetId rho,
         recentPositionFloor rho,
         spend0NullifierComputed rho,
         spend0RkCompressed rho,
         spend0HistoryRequired rho] := by
  rw [
    Deployed.Templates.Semantics.TStatementHash_7acf21e44dfb02b7e86c0f61aeed9884ca62220f949cb8a03253903d5c5bec66.Trace.hash2,
    NoteReshape1x8StatementSecond.hash,
    canonicalHashEighteen
  ]
  have hneg :
      (8444461749428370424248824938781546531375899335154063827935233455917409239040 :
        DeployedF) = -1 := by decide +kernel
  simp [
    Deployed.Templates.Semantics.TStatementHash_7acf21e44dfb02b7e86c0f61aeed9884ca62220f949cb8a03253903d5c5bec66.Trace.domainLit,
    routingParameterSetId, routingParameterSetIdLC,
    recentPositionFloor, recentPositionFloorLC,
    spend0NullifierComputed, spend0NullifierComputedLC,
    spend0RkCompressed, spend0RkCompressedLC,
    spend0HistoryRequired, spend0HistoryRequiredLC,
    StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
    Seg83.localRho, Deployed.Templates.seated,
    hw1000, hw1006, hw1012, hw1013, hw1014, hw1015,
    hw1021, hw1022, hw1028,
    hneg
  ]
  congr 1 <;> simp only [add_assoc, neg_one_mul]

end Shieldd.GnarkFormal.Deployed.NoteReshape1x8StatementThird
