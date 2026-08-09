import Ipp.Extracted.ShippingProver

/-!
Granular execution evidence for the shipping-prover GIPA loop.

The interface records only the generated split results and the external
commit/challenge/inversion calls for each continuing round.  It does not
assume a loop result.  The theorem below composes those per-round facts with
the extracted round refinement to construct `SuccessfulLoopTrace`
inductively.
-/

namespace Ipp.Extracted.ShippingProverExecutionTrace

open Aeneas Aeneas.Std Result
open ark_ip_proofs
open Ipp.Extracted.ShippingProver

noncomputable section

variable {F G1 G2 GT : Type}
  [Field F]
  [AddCommGroup G1] [Module F G1]
  [AddCommGroup G2] [Module F G2]
  [AddCommGroup GT] [Module F GT]

private def finVec {T : Type} {n : Nat}
    (values : Fin n → T) : alloc.vec.Vec T :=
  ⟨List.ofFn values⟩

/-- Evidence consumed by one successful continuing iteration.

The six split equations are deterministic generated-code facts.  `external`
contains only the two commitment calls, the chronological challenge call,
and the inverse call.  In particular, this record contains neither a loop
transition equation nor a terminal output. -/
structure ContinuingRoundEvidence
    {E FX : Type}
    (algebra : GipaAlgebra F G1 G2 GT)
    (effects :
      applications.groth16_aggregation.ProverGipaEffect
        FX F G1 G2 GT
          (AggregateProver.WireIdentity GT)
          (AggregateProver.WireIdentity G1) E)
    (effect : FX)
    (a : alloc.vec.Vec G1)
    (b : alloc.vec.Vec G2)
    (c : alloc.vec.Vec G1)
    (publicValues : alloc.vec.Vec F)
    (ckV : alloc.vec.Vec G2)
    (ckW : alloc.vec.Vec G1)
    (prior : F) where
  n : Nat
  aLeft : Fin n → G1
  aRight : Fin n → G1
  bLeft : Fin n → G2
  bRight : Fin n → G2
  cLeft : Fin n → G1
  cRight : Fin n → G1
  publicLeft : Fin n → F
  publicRight : Fin n → F
  vLeft : Fin n → G2
  vRight : Fin n → G2
  wLeft : Fin n → G1
  wRight : Fin n → G1
  nextEffect : FX
  left : ShippingCoreCommitment G1 GT
  right : ShippingCoreCommitment G1 GT
  raw : F
  inverse : F
  continues :
    (1#usize : Usize) < Usize.ofNat a.val.length
  splitIndex :
    (Usize.ofNat a.val.length / 2#usize : Result Usize) =
      .ok (Usize.ofNat n)
  splitA :
    applications.groth16_aggregation.split_vector_at_core
        algebra.cloneG1 (alloc.vec.Vec.deref a) (Usize.ofNat n) =
      .ok (finVec aLeft, finVec aRight)
  splitB :
    applications.groth16_aggregation.split_vector_at_core
        algebra.cloneG2 (alloc.vec.Vec.deref b) (Usize.ofNat n) =
      .ok (finVec bLeft, finVec bRight)
  splitC :
    applications.groth16_aggregation.split_vector_at_core
        algebra.cloneG1 (alloc.vec.Vec.deref c) (Usize.ofNat n) =
      .ok (finVec cLeft, finVec cRight)
  splitPublic :
    applications.groth16_aggregation.split_vector_at_core
        algebra.cloneF (alloc.vec.Vec.deref publicValues) (Usize.ofNat n) =
      .ok (finVec publicLeft, finVec publicRight)
  splitV :
    applications.groth16_aggregation.split_vector_at_core
        algebra.cloneG2 (alloc.vec.Vec.deref ckV) (Usize.ofNat n) =
      .ok (finVec vLeft, finVec vRight)
  splitW :
    applications.groth16_aggregation.split_vector_at_core
        algebra.cloneG1 (alloc.vec.Vec.deref ckW) (Usize.ofNat n) =
      .ok (finVec wLeft, finVec wRight)
  external :
    Ipp.Extracted.ProverGipaExecution.RoundEffectBoundary effects
      aLeft aRight cLeft cRight wLeft wRight
      bLeft bRight vLeft vRight publicLeft publicRight
      prior effect nextEffect left right raw inverse

def ContinuingRoundEvidence.roundOutput
    {E FX : Type}
    {algebra : GipaAlgebra F G1 G2 GT}
    {effects :
      applications.groth16_aggregation.ProverGipaEffect
        FX F G1 G2 GT
          (AggregateProver.WireIdentity GT)
          (AggregateProver.WireIdentity G1) E}
    {effect : FX}
    {a : alloc.vec.Vec G1}
    {b : alloc.vec.Vec G2}
    {c : alloc.vec.Vec G1}
    {publicValues : alloc.vec.Vec F}
    {ckV : alloc.vec.Vec G2}
    {ckW : alloc.vec.Vec G1}
    {prior : F}
    (evidence : ContinuingRoundEvidence algebra effects effect
      a b c publicValues ckV ckW prior) :
    applications.groth16_aggregation.ProverGipaRoundOutput
      F G1 G2 GT
        (AggregateProver.WireIdentity GT)
        (AggregateProver.WireIdentity G1) :=
  Ipp.Extracted.ProverGipaExecution.expectedRoundOutput
    evidence.aLeft evidence.aRight
    evidence.cLeft evidence.cRight
    evidence.wLeft evidence.wRight
    evidence.bLeft evidence.bRight
    evidence.vLeft evidence.vRight
    evidence.publicLeft evidence.publicRight
    evidence.left evidence.right evidence.raw evidence.inverse

def ContinuingRoundEvidence.nextState
    {E FX : Type}
    {algebra : GipaAlgebra F G1 G2 GT}
    {effects :
      applications.groth16_aggregation.ProverGipaEffect
        FX F G1 G2 GT
          (AggregateProver.WireIdentity GT)
          (AggregateProver.WireIdentity G1) E}
    {effect : FX}
    {a : alloc.vec.Vec G1}
    {b : alloc.vec.Vec G2}
    {c : alloc.vec.Vec G1}
    {publicValues : alloc.vec.Vec F}
    {ckV : alloc.vec.Vec G2}
    {ckW : alloc.vec.Vec G1}
    {prior last : F}
    {rounds : alloc.vec.Vec (ShippingLoopRound G1 GT)}
    {rawTranscript inverseTranscript : alloc.vec.Vec F}
    (evidence : ContinuingRoundEvidence algebra effects effect
      a b c publicValues ckV ckW prior) :
    ShippingLoopState F G1 G2 GT E FX :=
  let output := evidence.roundOutput
  (evidence.nextEffect,
    output.a, output.b, output.c, output.public_values, output.ck_v, output.ck_w,
    evidence.raw, evidence.raw,
    ⟨rounds.val ++ [(evidence.left, evidence.right)]⟩,
    ⟨rawTranscript.val ++ [evidence.raw]⟩,
    ⟨inverseTranscript.val ++ [evidence.inverse]⟩,
    none)

/-- The exact chronological evidence row retained by the production semantic
GIPA root for one continuing round. -/
def ContinuingRoundEvidence.retainedRound
    {E FX : Type}
    {algebra : GipaAlgebra F G1 G2 GT}
    {effects :
      applications.groth16_aggregation.ProverGipaEffect
        FX F G1 G2 GT
          (AggregateProver.WireIdentity GT)
          (AggregateProver.WireIdentity G1) E}
    {effect : FX}
    {a : alloc.vec.Vec G1}
    {b : alloc.vec.Vec G2}
    {c : alloc.vec.Vec G1}
    {publicValues : alloc.vec.Vec F}
    {ckV : alloc.vec.Vec G2}
    {ckW : alloc.vec.Vec G1}
    {prior : F}
    (evidence : ContinuingRoundEvidence algebra effects effect
      a b c publicValues ckV ckW prior) :
    applications.groth16_aggregation.ProverGipaRoundEffectEvidence
      F GT (AggregateProver.WireIdentity GT)
        (AggregateProver.WireIdentity G1) :=
  {
    prior_raw_challenge := prior
    left := evidence.left
    right := evidence.right
    raw_challenge := evidence.raw
    inverse := evidence.inverse
  }

/-- One granular round-evidence record determines the exact generated
continuing transition. -/
theorem ContinuingRoundEvidence.body_cont
    {E FX : Type}
    {algebra : GipaAlgebra F G1 G2 GT}
    (algebraExact : algebra.RefinesModels)
    {effects :
      applications.groth16_aggregation.ProverGipaEffect
        FX F G1 G2 GT
          (AggregateProver.WireIdentity GT)
          (AggregateProver.WireIdentity G1) E}
    {effect : FX}
    {a : alloc.vec.Vec G1}
    {b : alloc.vec.Vec G2}
    {c : alloc.vec.Vec G1}
    {publicValues : alloc.vec.Vec F}
    {ckV : alloc.vec.Vec G2}
    {ckW : alloc.vec.Vec G1}
    {prior last : F}
    {rounds : alloc.vec.Vec (ShippingLoopRound G1 GT)}
    {rawTranscript inverseTranscript : alloc.vec.Vec F}
    (evidence : ContinuingRoundEvidence algebra effects effect
      a b c publicValues ckV ckW prior) :
    shippingLoopBody algebra effects
        (effect, a, b, c, publicValues, ckV, ckW, prior, last,
          rounds, rawTranscript, inverseTranscript, none) =
      .ok (.cont (evidence.nextState
        (last := last) (rounds := rounds)
        (rawTranscript := rawTranscript)
        (inverseTranscript := inverseTranscript))) := by
  have hround := GipaAlgebra.round_exact
    algebra algebraExact effects
    evidence.aLeft evidence.aRight
    evidence.cLeft evidence.cRight
    evidence.wLeft evidence.wRight
    evidence.bLeft evidence.bRight
    evidence.vLeft evidence.vRight
    evidence.publicLeft evidence.publicRight
    prior effect evidence.nextEffect
    evidence.left evidence.right evidence.raw evidence.inverse
    evidence.external
  have hclone :
      algebra.cloneF.clone evidence.raw = .ok evidence.raw := by
    rw [algebraExact.cloneFExact]
    rfl
  have hcontinues : 1 < a.val.length := by
    simpa using evidence.continues
  have hsplit :
      (({ val := a.val.length } : Usize) / Usize.ofNat 2 : Result Usize) =
        .ok (Usize.ofNat evidence.n) := by
    simpa [Usize.ofNat] using evidence.splitIndex
  have hsplitA := evidence.splitA
  have hsplitB := evidence.splitB
  have hsplitC := evidence.splitC
  have hsplitPublic := evidence.splitPublic
  have hsplitV := evidence.splitV
  have hsplitW := evidence.splitW
  simp only [ark_ip_proofs.alloc.vec.Vec.deref] at hsplitA hsplitB hsplitC hsplitPublic hsplitV hsplitW
  have hround' := hround
  simp only [finVec, ark_ip_proofs.alloc.vec.Vec.deref] at hround'
  simp [shippingLoopBody,
    applications.groth16_aggregation.prove_tipp_mipp_gipa_core_loop.body,
    ark_ip_proofs.alloc.vec.Vec.len,
    ark_ip_proofs.core.option.Option.is_none,
    hcontinues, hsplit,
    hsplitA, hsplitB, hsplitC, hsplitPublic, hsplitV, hsplitW,
    hround', hclone, ContinuingRoundEvidence.nextState,
    ContinuingRoundEvidence.roundOutput,
    Ipp.Extracted.ProverGipaExecution.expectedRoundOutput, finVec,
    ark_ip_proofs.alloc.vec.Vec.deref, alloc.vec.Vec.push]

/-- When the message vector has length at most one, the generated body
returns its current successful state without consulting an effect. -/
theorem body_done
    {E FX : Type}
    (algebra : GipaAlgebra F G1 G2 GT)
    (effects :
      applications.groth16_aggregation.ProverGipaEffect
        FX F G1 G2 GT
          (AggregateProver.WireIdentity GT)
          (AggregateProver.WireIdentity G1) E)
    (effect : FX)
    (a : alloc.vec.Vec G1)
    (b : alloc.vec.Vec G2)
    (c : alloc.vec.Vec G1)
    (publicValues : alloc.vec.Vec F)
    (ckV : alloc.vec.Vec G2)
    (ckW : alloc.vec.Vec G1)
    (prior last : F)
    (rounds : alloc.vec.Vec (ShippingLoopRound G1 GT))
    (rawTranscript inverseTranscript : alloc.vec.Vec F)
    (stop : ¬ (1#usize : Usize) < Usize.ofNat a.val.length) :
    shippingLoopBody algebra effects
        (effect, a, b, c, publicValues, ckV, ckW, prior, last,
          rounds, rawTranscript, inverseTranscript, none) =
      .ok (.done
        (effect, a, b, c, publicValues, ckV, ckW, last,
          rounds, rawTranscript, inverseTranscript, none)) := by
  have hstop : ¬ 1 < a.val.length := by
    simpa using stop
  simp [shippingLoopBody,
    applications.groth16_aggregation.prove_tipp_mipp_gipa_core_loop.body,
    ark_ip_proofs.alloc.vec.Vec.len,
    hstop]

/-- A finite schedule of granular external round evidence.

Unlike `SuccessfulLoopTrace`, neither constructor stores an equation for the
generated loop body.  The step constructor stores only deterministic split
results and the four external-operation equations in
`RoundEffectBoundary`. -/
inductive ExternalRoundSchedule
    {E FX : Type}
    (algebra : GipaAlgebra F G1 G2 GT)
    (effects :
      applications.groth16_aggregation.ProverGipaEffect
        FX F G1 G2 GT
          (AggregateProver.WireIdentity GT)
          (AggregateProver.WireIdentity G1) E) :
    ShippingLoopState F G1 G2 GT E FX →
      ShippingLoopOutput F G1 G2 GT E FX → Prop where
  | done
      {effect : FX}
      {a : alloc.vec.Vec G1}
      {b : alloc.vec.Vec G2}
      {c : alloc.vec.Vec G1}
      {publicValues : alloc.vec.Vec F}
      {ckV : alloc.vec.Vec G2}
      {ckW : alloc.vec.Vec G1}
      {prior last : F}
      {rounds : alloc.vec.Vec (ShippingLoopRound G1 GT)}
      {rawTranscript inverseTranscript : alloc.vec.Vec F}
      (stop : ¬ (1#usize : Usize) < Usize.ofNat a.val.length) :
      ExternalRoundSchedule algebra effects
        (effect, a, b, c, publicValues, ckV, ckW, prior, last,
          rounds, rawTranscript, inverseTranscript, none)
        (effect, a, b, c, publicValues, ckV, ckW, last,
          rounds, rawTranscript, inverseTranscript, none)
  | step
      {effect : FX}
      {a : alloc.vec.Vec G1}
      {b : alloc.vec.Vec G2}
      {c : alloc.vec.Vec G1}
      {publicValues : alloc.vec.Vec F}
      {ckV : alloc.vec.Vec G2}
      {ckW : alloc.vec.Vec G1}
      {prior last : F}
      {rounds : alloc.vec.Vec (ShippingLoopRound G1 GT)}
      {rawTranscript inverseTranscript : alloc.vec.Vec F}
      (evidence : ContinuingRoundEvidence algebra effects effect
        a b c publicValues ckV ckW prior)
      {output : ShippingLoopOutput F G1 G2 GT E FX}
      (tail : ExternalRoundSchedule algebra effects
        (evidence.nextState
          (last := last) (rounds := rounds)
          (rawTranscript := rawTranscript)
          (inverseTranscript := inverseTranscript))
        output) :
      ExternalRoundSchedule algebra effects
        (effect, a, b, c, publicValues, ckV, ckW, prior, last,
          rounds, rawTranscript, inverseTranscript, none)
        output

/-- The production-retained round vector is exactly the chronological list of
effect rows used to construct the generated loop trace. -/
inductive ExternalRoundSchedule.MatchesRetainedRounds
    {E FX : Type}
    {algebra : GipaAlgebra F G1 G2 GT}
    {effects :
      applications.groth16_aggregation.ProverGipaEffect
        FX F G1 G2 GT
          (AggregateProver.WireIdentity GT)
          (AggregateProver.WireIdentity G1) E} :
    {state : ShippingLoopState F G1 G2 GT E FX} →
    {output : ShippingLoopOutput F G1 G2 GT E FX} →
    (schedule : ExternalRoundSchedule algebra effects state output) →
    List (applications.groth16_aggregation.ProverGipaRoundEffectEvidence
      F GT (AggregateProver.WireIdentity GT)
        (AggregateProver.WireIdentity G1)) → Prop where
  | done
      {effect : FX}
      {a : alloc.vec.Vec G1}
      {b : alloc.vec.Vec G2}
      {c : alloc.vec.Vec G1}
      {publicValues : alloc.vec.Vec F}
      {ckV : alloc.vec.Vec G2}
      {ckW : alloc.vec.Vec G1}
      {prior last : F}
      {rounds : alloc.vec.Vec (ShippingLoopRound G1 GT)}
      {rawTranscript inverseTranscript : alloc.vec.Vec F}
      (stop : ¬ (1#usize : Usize) < Usize.ofNat a.val.length) :
      MatchesRetainedRounds (ExternalRoundSchedule.done stop) []
  | step
      {effect : FX}
      {a : alloc.vec.Vec G1}
      {b : alloc.vec.Vec G2}
      {c : alloc.vec.Vec G1}
      {publicValues : alloc.vec.Vec F}
      {ckV : alloc.vec.Vec G2}
      {ckW : alloc.vec.Vec G1}
      {prior last : F}
      {rounds : alloc.vec.Vec (ShippingLoopRound G1 GT)}
      {rawTranscript inverseTranscript : alloc.vec.Vec F}
      (evidence : ContinuingRoundEvidence algebra effects effect
        a b c publicValues ckV ckW prior)
      {output : ShippingLoopOutput F G1 G2 GT E FX}
      (tail : ExternalRoundSchedule algebra effects
        (evidence.nextState
          (last := last) (rounds := rounds)
          (rawTranscript := rawTranscript)
          (inverseTranscript := inverseTranscript))
        output)
      {retained : List
        (applications.groth16_aggregation.ProverGipaRoundEffectEvidence
          F GT (AggregateProver.WireIdentity GT)
            (AggregateProver.WireIdentity G1))}
      (tailMatches : MatchesRetainedRounds tail retained) :
      MatchesRetainedRounds (ExternalRoundSchedule.step evidence tail)
        (evidence.retainedRound :: retained)

/-- A successful production semantic GIPA root exposes the successful
underlying generated core execution against the retained-effect wrapper. -/
theorem successfulExecution_of_prover_gipa_semantic_execution_core
    {Effect : Type}
    (algebra : GipaAlgebra F G1 G2 GT)
    (algebraExact : algebra.RefinesModels)
    (effects :
      applications.groth16_aggregation.ProverGipaEffect
        Effect F G1 G2 GT
          (AggregateProver.WireIdentity GT)
          (AggregateProver.WireIdentity G1) String)
    (input : applications.groth16_aggregation.ProverGipaCoreInput
      F G1 G2 GT)
    (initialEffect finalEffect : Effect)
    (semantic :
      applications.groth16_aggregation.ProverGipaSemanticExecution
        F G1 G2 GT (AggregateProver.WireIdentity GT)
          (AggregateProver.WireIdentity G1))
    (run :
      applications.groth16_aggregation.prover_gipa_semantic_execution_core
          algebra.cloneF algebra.mulF algebra.addF
          algebra.cloneG1 algebra.mulG1 algebra.addG1
          algebra.cloneG2 algebra.mulG2 algebra.addG2
          algebra.cloneGT algebra.cloneAB algebra.cloneC
          effects input initialEffect =
        .ok (.Ok (semantic, finalEffect))) :
    ∃ execution : Ipp.Extracted.ProverGipaExecution.SuccessfulExecution
        algebra.cloneF algebra.mulF algebra.addF
        algebra.cloneG1 algebra.mulG1 algebra.addG1
        algebra.cloneG2 algebra.mulG2 algebra.addG2
        algebra.cloneGT algebra.cloneAB algebra.cloneC
        (applications.groth16_aggregation.RetainedProverGipaEffect.Insts.Ark_ip_proofsApplicationsGroth16_aggregationProverGipaEffect
          algebra.cloneF effects)
        input
        ({ inner := initialEffect, x0 := none } :
          applications.groth16_aggregation.RetainedProverGipaEffect Effect F),
      execution.output = semantic.output ∧
      execution.finalEffect.inner = finalEffect ∧
      semantic.input = input := by
  have hinputClone :
      applications.groth16_aggregation.ProverGipaCoreInput.Insts.CoreCloneClone.clone
          algebra.cloneF algebra.cloneG1 algebra.cloneG2 algebra.cloneGT input =
        .ok input := by
    rw [algebraExact.cloneFExact, algebraExact.cloneG1Exact,
      algebraExact.cloneG2Exact, algebraExact.cloneGTExact]
    simp [applications.groth16_aggregation.ProverGipaCoreInput.Insts.CoreCloneClone.clone,
      Ipp.Extracted.ProverGipaExecution.cloneModel,
      alloc.vec.CloneVec.clone_identity]
  unfold applications.groth16_aggregation.prover_gipa_semantic_execution_core at run
  rw [hinputClone] at run
  simp only [Result.bind_ok] at run
  generalize hcore :
      applications.groth16_aggregation.prove_tipp_mipp_gipa_core
          algebra.cloneF algebra.mulF algebra.addF
          algebra.cloneG1 algebra.mulG1 algebra.addG1
          algebra.cloneG2 algebra.mulG2 algebra.addG2
          algebra.cloneGT algebra.cloneAB algebra.cloneC
          (applications.groth16_aggregation.RetainedProverGipaEffect.Insts.Ark_ip_proofsApplicationsGroth16_aggregationProverGipaEffect
            algebra.cloneF effects)
          input
          ({ inner := initialEffect, x0 := none } :
            applications.groth16_aggregation.RetainedProverGipaEffect Effect F) =
        coreResult at run
  cases coreResult with
  | fail error => simp_all
  | div => simp_all
  | ok coreResult =>
      rcases coreResult with ⟨coreStatus, retainedEffect⟩
      cases coreStatus with
      | Err error =>
          simp_all [core.result.Result.Insts.CoreOpsTry.branch,
            core.result.Result.Insts.CoreOpsTryTraitFromResidualResultInfallible.from_residual]
      | Ok output =>
          cases hx0 : retainedEffect.x0 with
          | none =>
              simp_all [core.result.Result.Insts.CoreOpsTry.branch,
                core.option.Option.take]
          | some x0 =>
              generalize hevidence :
                  applications.groth16_aggregation.prover_gipa_round_effect_evidence_core
                      algebra.cloneF algebra.cloneGT algebra.cloneAB algebra.cloneC
                      x0 (alloc.vec.Vec.deref output.rounds_chrono)
                      (alloc.vec.Vec.deref output.raw_transcript_chrono)
                      (alloc.vec.Vec.deref output.inv_transcript_chrono) =
                    evidenceResult at run
              cases evidenceResult with
              | fail error =>
                  simp_all [core.result.Result.Insts.CoreOpsTry.branch,
                    core.option.Option.take]
              | div =>
                  simp_all [core.result.Result.Insts.CoreOpsTry.branch,
                    core.option.Option.take]
              | ok retainedRounds =>
                  cases retainedRounds with
                  | none =>
                      simp_all [core.result.Result.Insts.CoreOpsTry.branch,
                        core.option.Option.take]
                  | some rounds =>
                      simp only [hx0, hevidence,
                        core.result.Result.Insts.CoreOpsTry.branch,
                        core.option.Option.take, Result.bind_ok] at run
                      have hresult := core.result.Result.Ok.inj
                        (Result.ok.inj run)
                      have hsemantic :
                          semantic = {
                            input := input
                            output := output
                            x0 := x0
                            rounds_chrono := rounds
                          } := by
                        exact (congrArg Prod.fst hresult).symm
                      have hfinal : retainedEffect.inner = finalEffect := by
                        exact congrArg Prod.snd hresult
                      refine ⟨{
                        output := output
                        finalEffect := retainedEffect
                        run := hcore
                      }, ?_, hfinal, ?_⟩
                      · exact congrArg
                          (fun execution => execution.output) hsemantic.symm
                      · exact congrArg
                          (fun execution => execution.input) hsemantic

/-- Per-round external evidence constructs the finite generated-loop trace by
induction.  No whole-loop equality is consumed. -/
theorem ExternalRoundSchedule.toSuccessfulLoopTrace
    {E FX : Type}
    {algebra : GipaAlgebra F G1 G2 GT}
    (algebraExact : algebra.RefinesModels)
    {effects :
      applications.groth16_aggregation.ProverGipaEffect
        FX F G1 G2 GT
          (AggregateProver.WireIdentity GT)
          (AggregateProver.WireIdentity G1) E}
    {state : ShippingLoopState F G1 G2 GT E FX}
    {output : ShippingLoopOutput F G1 G2 GT E FX}
    (schedule : ExternalRoundSchedule algebra effects state output) :
    Ipp.Extracted.ProverGipaExecution.SuccessfulLoopTrace
      (shippingLoopBody algebra effects) state output := by
  induction schedule with
  | done stop =>
      exact .done
        (body_done algebra effects _ _ _ _ _ _ _ _ _ _ _ _ stop)
  | step evidence tail ih =>
      exact .step (evidence.body_cont algebraExact) ih

/-- Construct the shipping GIPA boundary from granular chronological round
evidence.  Callers provide the extracted execution and its exact input/output
projections, but no `SuccessfulLoopTrace`: the finite trace is derived from
the split and external-operation equations in `schedule`. -/
def gipaExecutionBoundary_of_externalRoundSchedule
    {D : Type} {μ : Nat}
    (statement : Ipp.FsStatement μ F G1 G2 GT)
    (witness : Ipp.Goal.Witness (2 ^ μ)
      (Ipp.SnarkPackV1.Refinement.WitnessRow G1 G2))
    (transcript : Ipp.FsTranscript μ F)
    (observation :
      Observation (F := F) (G1 := G1) (G2 := G2) (GT := GT) D μ)
    (algebra : GipaAlgebra F G1 G2 GT)
    (Effect : Type)
    (effects :
      applications.groth16_aggregation.ProverGipaEffect
        Effect F G1 G2 GT
          (AggregateProver.WireIdentity GT)
          (AggregateProver.WireIdentity G1) String)
    (concreteInput :
      applications.groth16_aggregation.ProverGipaCoreInput F G1 G2 GT)
    (inputExact :
      concreteInput = honestGipaInput statement witness transcript)
    (initialEffect : Effect)
    (execution :
      Ipp.Extracted.ProverGipaExecution.SuccessfulExecution
        algebra.cloneF algebra.mulF algebra.addF
        algebra.cloneG1 algebra.mulG1 algebra.addG1
        algebra.cloneG2 algebra.mulG2 algebra.addG2
        algebra.cloneGT algebra.cloneAB algebra.cloneC
        effects concreteInput initialEffect)
    (algebraExact : algebra.RefinesModels)
    (afterX0 : Effect)
    (x0Exact :
      effects.derive_x0 initialEffect
          concreteInput.randomizer concreteInput.com_a concreteInput.com_b
          concreteInput.com_c concreteInput.ip_ab concreteInput.agg_c =
        .ok (.Ok transcript.x0, afterX0))
    (schedule :
      ExternalRoundSchedule algebra effects
        (honestLoopInitial (E := String)
          statement witness transcript afterX0)
        (honestLoopTerminal (E := String)
          statement witness transcript execution.finalEffect))
    (observedOutput :
      execution.output = observedGipaOutput transcript observation) :
    GipaExecutionBoundary statement witness transcript observation where
  algebra := algebra
  Effect := Effect
  effects := effects
  concreteInput := concreteInput
  inputExact := inputExact
  initialEffect := initialEffect
  execution := execution
  algebraExact := algebraExact
  afterX0 := afterX0
  x0Exact := x0Exact
  loopTrace :=
    ExternalRoundSchedule.toSuccessfulLoopTrace algebraExact schedule
  observedOutput := observedOutput

end

end Ipp.Extracted.ShippingProverExecutionTrace
