import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.CircuitFacts
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.SemanticBindings
import ShielddGnarkFormal.NoteReshapeCanonical

set_option maxRecDepth 1000000
set_option maxHeartbeats 4000000

/-! Exact 2x1 statement-field, Poseidon, and public-input joins. -/

namespace Shieldd.GnarkFormal.Deployed.NoteReshape2x1Statement

open Shieldd.GnarkFormal
open Contracts.NoteReshape2x1
open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

attribute [-instance] ZMod.instField
local instance choiceFreeStatementCommRing : CommRing DeployedF := ZMod.commRing _

theorem field0 (rho : Nat → DeployedF) :
    statementFields0 rho = anchor rho := by rfl

theorem field1 (rho : Nat → DeployedF) :
    statementFields1 rho = output0NoteCommitmentComputed rho := by rfl

theorem field2 (rho : Nat → DeployedF) :
    statementFields2 rho = balanceCommitmentFq rho := by rfl

theorem field3 (rho : Nat → DeployedF) :
    statementFields3 rho = spend0NullifierComputed rho := by rfl

theorem field4 (rho : Nat → DeployedF) :
    statementFields4 rho = spend0RkCompressed rho := by rfl

theorem field5 (rho : Nat → DeployedF) :
    statementFields5 rho = spend1NullifierComputed rho := by rfl

theorem field6 (rho : Nat → DeployedF) :
    statementFields6 rho = spend1RkCompressed rho := by rfl

theorem canonicalHash_seven
    (f0 f1 f2 f3 f4 f5 f6 : DeployedF) :
    NoteReshapeCanonical.statementHash .reshape2x1 [f0, f1, f2, f3, f4, f5, f6] =
      Poseidon7Bridge.permSpec7
        (5079577531472816977664249278115400294401892237874490721478834552286369830267 :
          DeployedF)
        f0 f1 f2 f3 f4 f5 f6 := by
  rfl

theorem statementHash_eq_traceRaw
    (rho : Nat → DeployedF)
    (facts : NoteReshape2x1CircuitFacts rho) :
    statementHash rho =
      (Deployed.Templates.Semantics.TStatementHash_fa0805975a685378ee126cbc35cc459afdc517f39a649a4b6c399ecb314e4ba4.Trace.rawState0_38
        (Seg40.localRho rho))[1] := by
  have h := facts.transcript.StatementHashSeg40
  change
    Deployed.Templates.Semantics.TStatementHash_fa0805975a685378ee126cbc35cc459afdc517f39a649a4b6c399ecb314e4ba4.spec
      (Seg40.localRho rho) at h
  unfold
    Deployed.Templates.Semantics.TStatementHash_fa0805975a685378ee126cbc35cc459afdc517f39a649a4b6c399ecb314e4ba4.spec at h
  have hw457 : Seg40.wireSeating 457 = 35258 := by decide
  have hw462 : Seg40.wireSeating 462 = 35263 := by decide
  have hw467 : Seg40.wireSeating 467 = 35268 := by decide
  have hw472 : Seg40.wireSeating 472 = 35273 := by decide
  have hw477 : Seg40.wireSeating 477 = 35278 := by decide
  have hw482 : Seg40.wireSeating 482 = 35283 := by decide
  have hw487 : Seg40.wireSeating 487 = 35288 := by decide
  have hw492 : Seg40.wireSeating 492 = 35293 := by decide
  calc
    statementHash rho =
        (Deployed.Templates.Semantics.TStatementHash_fa0805975a685378ee126cbc35cc459afdc517f39a649a4b6c399ecb314e4ba4.Trace.rawState0_38
          (Seg40.localRho rho))[1] := by
      simp [
        statementHash, statementHashLC,
        Deployed.Templates.Semantics.TStatementHash_fa0805975a685378ee126cbc35cc459afdc517f39a649a4b6c399ecb314e4ba4.Trace.rawState0_38,
        Deployed.Templates.Semantics.TStatementHash_fa0805975a685378ee126cbc35cc459afdc517f39a649a4b6c399ecb314e4ba4.Trace.flatState0_38Lane1,
        StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
        Seg40.localRho, Deployed.Templates.seated,
        hw457, hw462, hw467, hw472, hw477, hw482, hw487, hw492
      ]
      simpa only [add_assoc]

theorem traceHash_eq_canonical
    (rho : Nat → DeployedF) :
    Deployed.Templates.Semantics.TStatementHash_fa0805975a685378ee126cbc35cc459afdc517f39a649a4b6c399ecb314e4ba4.Trace.hash0
        (Seg40.localRho rho) =
      NoteReshapeCanonical.statementHash .reshape2x1
        [anchor rho,
         output0NoteCommitmentComputed rho,
         balanceCommitmentFq rho,
         spend0NullifierComputed rho,
         spend0RkCompressed rho,
         spend1NullifierComputed rho,
         spend1RkCompressed rho] := by
  have hw1 : Seg40.wireSeating 1 = 2 := by decide
  have hw7 : Seg40.wireSeating 7 = 31900 := by decide
  have hw8 : Seg40.wireSeating 8 = 31905 := by decide
  have hw9 : Seg40.wireSeating 9 = 31910 := by decide
  have hw10 : Seg40.wireSeating 10 = 31915 := by decide
  have hw11 : Seg40.wireSeating 11 = 31920 := by decide
  have hw12 : Seg40.wireSeating 12 = 31925 := by decide
  have hw13 : Seg40.wireSeating 13 = 31930 := by decide
  have hw19 : Seg40.wireSeating 19 = 34483 := by decide
  have hw20 : Seg40.wireSeating 20 = 34823 := by decide
  have hw26 : Seg40.wireSeating 26 = 7877 := by decide
  have hw27 : Seg40.wireSeating 27 = 7882 := by decide
  have hw28 : Seg40.wireSeating 28 = 7887 := by decide
  have hw29 : Seg40.wireSeating 29 = 7892 := by decide
  have hw35 : Seg40.wireSeating 35 = 18986 := by decide
  have hw36 : Seg40.wireSeating 36 = 19326 := by decide
  have hw42 : Seg40.wireSeating 42 = 20051 := by decide
  have hw43 : Seg40.wireSeating 43 = 20056 := by decide
  have hw44 : Seg40.wireSeating 44 = 20061 := by decide
  have hw45 : Seg40.wireSeating 45 = 20066 := by decide
  have hw51 : Seg40.wireSeating 51 = 31160 := by decide
  have hw52 : Seg40.wireSeating 52 = 31500 := by decide
  have hneg :
      (8444461749428370424248824938781546531375899335154063827935233455917409239040 :
        DeployedF) = -1 := by decide
  rw [canonicalHash_seven]
  simp [
    Deployed.Templates.Semantics.TStatementHash_fa0805975a685378ee126cbc35cc459afdc517f39a649a4b6c399ecb314e4ba4.Trace.hash0,
    anchor, anchorLC,
    output0NoteCommitmentComputed, output0NoteCommitmentComputedLC,
    balanceCommitmentFq, balanceCommitmentFqLC,
    spend0NullifierComputed, spend0NullifierComputedLC,
    spend0RkCompressed, spend0RkCompressedLC,
    spend1NullifierComputed, spend1NullifierComputedLC,
    spend1RkCompressed, spend1RkCompressedLC,
    StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
    Seg40.localRho, Deployed.Templates.seated,
    hw1, hw7, hw8, hw9, hw10, hw11, hw12, hw13,
    hw19, hw20, hw26, hw27, hw28, hw29, hw35, hw36,
    hw42, hw43, hw44, hw45, hw51, hw52
  ]
  rw [hneg]
  congr 1 <;> simp only [add_assoc, neg_one_mul]

theorem computedHash
    (rho : Nat → DeployedF)
    (facts : NoteReshape2x1CircuitFacts rho) :
    statementHash rho =
      NoteReshapeCanonical.statementHash .reshape2x1
        [anchor rho,
         output0NoteCommitmentComputed rho,
         balanceCommitmentFq rho,
         spend0NullifierComputed rho,
         spend0RkCompressed rho,
         spend1NullifierComputed rho,
         spend1RkCompressed rho] :=
  (statementHash_eq_traceRaw rho facts).trans
    (facts.transcript.StatementHashSeg40.trans (traceHash_eq_canonical rho))

theorem publicHash
    (rho : Nat → DeployedF)
    (facts : NoteReshape2x1CircuitFacts rho) :
    claimedStatementHash rho = statementHash rho := by
  have h := facts.transcript.AssertEqSeg41
  change
    Deployed.Templates.Semantics.TAssertEq_001662998b48830253568a34945bae30020bcb70574648b9aa58b23510a29b69.spec
      (Seg41.localRho rho) at h
  have hw1 : Seg41.wireSeating 1 = 35258 := by decide
  have hw2 : Seg41.wireSeating 2 = 35263 := by decide
  have hw3 : Seg41.wireSeating 3 = 35268 := by decide
  have hw4 : Seg41.wireSeating 4 = 35273 := by decide
  have hw5 : Seg41.wireSeating 5 = 35278 := by decide
  have hw6 : Seg41.wireSeating 6 = 35283 := by decide
  have hw7 : Seg41.wireSeating 7 = 35288 := by decide
  have hw8 : Seg41.wireSeating 8 = 35293 := by decide
  have hw9 : Seg41.wireSeating 9 = 1 := by decide
  simp only [
    Deployed.Templates.Semantics.TAssertEq_001662998b48830253568a34945bae30020bcb70574648b9aa58b23510a29b69.spec,
    one_mul, Seg41.localRho, Deployed.Templates.seated,
    hw1, hw2, hw3, hw4, hw5, hw6, hw7, hw8, hw9
  ] at h
  simp only [
    claimedStatementHash, claimedStatementHashLC,
    statementHash, statementHashLC,
    StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
    zero_add, one_mul, add_zero
  ]
  simpa only [add_assoc] using h

theorem claimedHash
    (rho : Nat → DeployedF)
    (facts : NoteReshape2x1CircuitFacts rho) :
    claimedStatementHash rho =
      NoteReshapeCanonical.statementHash .reshape2x1
        [anchor rho,
         output0NoteCommitmentComputed rho,
         balanceCommitmentFq rho,
         spend0NullifierComputed rho,
         spend0RkCompressed rho,
         spend1NullifierComputed rho,
         spend1RkCompressed rho] :=
  (publicHash rho facts).trans (computedHash rho facts)

end Shieldd.GnarkFormal.Deployed.NoteReshape2x1Statement
