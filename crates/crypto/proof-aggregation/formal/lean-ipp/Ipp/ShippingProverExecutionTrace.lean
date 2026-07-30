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
    (1#usize : Usize) < alloc.vec.Vec.len a
  splitIndex :
    (alloc.vec.Vec.len a / 2#usize : Result Usize) =
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
  simp [shippingLoopBody,
    applications.groth16_aggregation.prove_tipp_mipp_gipa_core_loop.body,
    evidence.continues, evidence.splitIndex,
    evidence.splitA, evidence.splitB, evidence.splitC,
    evidence.splitPublic, evidence.splitV, evidence.splitW,
    hround, hclone, ContinuingRoundEvidence.nextState,
    ContinuingRoundEvidence.roundOutput, alloc.vec.Vec.push]

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
    (stop : ¬ (1#usize : Usize) < alloc.vec.Vec.len a) :
    shippingLoopBody algebra effects
        (effect, a, b, c, publicValues, ckV, ckW, prior, last,
          rounds, rawTranscript, inverseTranscript, none) =
      .ok (.done
        (effect, a, b, c, publicValues, ckV, ckW, last,
          rounds, rawTranscript, inverseTranscript, none)) := by
  simp [shippingLoopBody,
    applications.groth16_aggregation.prove_tipp_mipp_gipa_core_loop.body,
    stop]

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
      (stop : ¬ (1#usize : Usize) < alloc.vec.Vec.len a) :
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

end

end Ipp.Extracted.ShippingProverExecutionTrace
