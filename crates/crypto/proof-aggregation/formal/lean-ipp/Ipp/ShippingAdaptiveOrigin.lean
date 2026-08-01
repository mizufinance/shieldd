import Ipp.ShippingAdaptiveCall
import Ipp.ShippingGlobalScalarCoupling

/-!
Origin-retaining adaptive execution for one selected shipping verifier call.

The adversary and verifier inhabit one byte-oracle program.  A selected call
retains its complete `ShippingCallData`, so the formal statement/proof view
cannot replace the production call or its raw accepted execution.  SHA-256
and Blake2b queries are tagged separately and therefore support distinct query
bounds.

The final deterministic-program equality is proved as plumbing, without a
cryptographic premise.  No manifest status or published proof root is changed
by this intermediate module.
-/

open OracleSpec OracleComp ENNReal
open scoped OracleSpec.PrimitiveQuery ENNReal

namespace Ipp.ShippingAdaptiveOrigin

noncomputable section

universe u

open Ipp.Bls12377
open Ipp.ShippingAdaptiveCall
open Ipp.ShippingAdaptiveSha
open Ipp.ShippingHashGame
open Ipp.ShippingMultiStatement
open Ipp.ShippingRealVerifier

/-- Ambient sampling, deployed SHA-256 calls, and deployed Blake2b calls in
one query domain. -/
abbrev GlobalByteSourceSpec :=
  unifSpec + (Sha256OracleSpec + Blake2bOracleSpec)

/-- Probabilistic computation whose result may retain heterogeneous production
runtime carriers. VCVio's `OracleComp` semantics are universe-polymorphic;
only the convenience alias `ProbComp` is restricted to `Type 0`. -/
abbrev OriginProbComp (Output : Type u) :=
  OracleComp unifSpec Output

/-- Joint byte-oracle computation retaining a heterogeneous production call. -/
abbrev OriginGlobalComp (Output : Type u) :=
  OracleComp GlobalByteSourceSpec Output

/-- Exactly the SHA-256 points in the joint byte-oracle domain. -/
def IsShaQuery : GlobalByteSourceSpec.Domain → Prop
  | .inr (.inl _) => True
  | _ => False

instance instDecidablePredIsShaQuery : DecidablePred IsShaQuery := by
  intro q
  cases q with
  | inl _ =>
      exact isFalse (by simp [IsShaQuery])
  | inr q =>
      cases q with
      | inl _ =>
          exact isTrue trivial
      | inr _ =>
          exact isFalse (by simp [IsShaQuery])

/-- Exactly the Blake2b points in the joint byte-oracle domain. -/
def IsFsQuery : GlobalByteSourceSpec.Domain → Prop
  | .inr (.inr _) => True
  | _ => False

instance instDecidablePredIsFsQuery : DecidablePred IsFsQuery := by
  intro q
  cases q with
  | inl _ =>
      exact isFalse (by simp [IsFsQuery])
  | inr q =>
      cases q with
      | inl _ =>
          exact isFalse (by simp [IsFsQuery])
      | inr _ =>
          exact isTrue trivial

/-- One production call selected after any preselection oracle interaction.

`data` retains the concrete application call, decoded proof, projection,
adapter carriers, serializers, SRS, and backend inputs.  The proof fields only
certify that this retained call crosses the already-defined exact boundaries;
they do not supply an acceptance decision. -/
structure OriginSelectedCall
    (sha256 : Ipp.ShippingV1.Bytes → Ipp.ShippingV1.Bytes)
    (blake2b : List UInt8 → DigestBytes) where
  D : Type
  μ : Nat
  arity : Nat
  data : CallData D μ arity
  serialization :
    Ipp.ShippingArkworksHash.SerializationContract data.serialization
  refinement : RefinementContracts data
  deployed :
    DeployedChallengePrimitiveContract data serialization blake2b
  sha256_exact : data.contract.sha256 = sha256

namespace OriginSelectedCall

/-- The erased formal view of a selected call.  The original dependent
production package remains available alongside this projection. -/
noncomputable def formalSelection
    {sha256 : Ipp.ShippingV1.Bytes → Ipp.ShippingV1.Bytes}
    {blake2b : List UInt8 → DigestBytes}
    (selected : OriginSelectedCall sha256 blake2b) :
    SelectionAt ShippingStatementKey selected.μ :=
  productionSelection selected.data selected.refinement

/-- The formal projection contains exactly the retained production input,
statement, and decoded proof. -/
theorem formalSelection_exact
    {sha256 : Ipp.ShippingV1.Bytes → Ipp.ShippingV1.Bytes}
    {blake2b : List UInt8 → DigestBytes}
    (selected : OriginSelectedCall sha256 blake2b) :
    let formal := selected.formalSelection
    formal.call = productionStatementKey selected.data.input ∧
      formal.logicalKey =
        productionStatementKey selected.data.input ∧
      formal.statement =
        selected.data.projection.statementOf
          selected.data.input.publicClaim ∧
      formal.proof =
        selected.data.projection.proofOf
          selected.data.input.decodedProof := by
  exact productionSelection_refines_shipping_input
    selected.data selected.refinement

/-- Every challenge framing attached to this selection is byte-for-byte the
shipping framing for the retained production family and context. -/
theorem globalQueryEncoding_exact
    {sha256 : Ipp.ShippingV1.Bytes → Ipp.ShippingV1.Bytes}
    {blake2b : List UInt8 → DigestBytes}
    (selected : OriginSelectedCall sha256 blake2b)
    (attempt : ShippingAttempt) :
    globalQueryEncoding {
        statement := selected.formalSelection.logicalKey
        encoded := selected.formalSelection.encodedKey
        attempt := attempt
      } =
      shippingBlake2bPreimage
        selected.data.input.family
        selected.data.input.challengeContext
        (shippingAttemptPoint attempt) := by
  exact productionSelection_globalQueryEncoding_eq_shipping
    selected.data selected.refinement attempt

/-- The selected production contract uses the same SHA-256 implementation as
the surrounding global byte experiment. -/
theorem sha256_execution_exact
    {sha256 : Ipp.ShippingV1.Bytes → Ipp.ShippingV1.Bytes}
    {blake2b : List UInt8 → DigestBytes}
    (selected : OriginSelectedCall sha256 blake2b) :
    selected.data.contract.sha256 = sha256 :=
  selected.sha256_exact

end OriginSelectedCall

/-- One result generated for the exact retained production call. -/
structure OriginRun
    (sha256 : Ipp.ShippingV1.Bytes → Ipp.ShippingV1.Bytes)
    (blake2b : List UInt8 → DigestBytes) where
  selected : OriginSelectedCall sha256 blake2b
  output :
    Ipp.FsResult selected.μ Fr g1PrimeSubgroup g2PrimeSubgroup
      ArkPairingOutput

/-- Forward only Blake2b verifier queries into the joint byte-oracle source.
Preselection SHA-256 and Blake2b queries remain in the same program. -/
def globalBlake2bFwd :
    (input : Blake2bOracleSpec.Domain) →
      OracleComp GlobalByteSourceSpec (Blake2bOracleSpec.Range input) :=
  fun input =>
    (GlobalByteSourceSpec).query (Sum.inr (Sum.inr input))

/-- Cross-universe forwarding of a Type-0 Blake2b verifier program into the
origin-retaining joint program. `ULift` makes the verifier result available to
the Type-1 continuation without changing a query or answer. -/
def liftBlake2bProgram
    {Output : Type}
    (program : OracleComp Blake2bOracleSpec Output) :
    OriginGlobalComp (ULift Output) :=
  match program with
  | .pure output => .pure (ULift.up output)
  | .roll input continuation =>
      .roll (Sum.inr (Sum.inr input)) fun answer =>
        liftBlake2bProgram (continuation answer)

/-- Cross-universe lift of a Type-0 joint byte program. Every query and
continuation answer is copied exactly; only the terminal output is `ULift`ed. -/
def liftGlobalProgram
    {Output : Type}
    (program : OracleComp GlobalByteSourceSpec Output) :
    OriginGlobalComp (ULift Output) :=
  match program with
  | .pure output => .pure (ULift.up output)
  | .roll q continuation =>
      .roll q fun answer =>
        liftGlobalProgram (continuation answer)

/-- The query-transparent whole program.

The adversary may make arbitrary joint-oracle queries before selecting a
heterogeneous production call.  The program then runs the exact shipping
verifier byte program for that retained call.  Its output is the verifier
result, never an adversary-provided acceptance label. -/
def globalOriginByteProgram
    (sha256 : Ipp.ShippingV1.Bytes → Ipp.ShippingV1.Bytes)
    (blake2b : List UInt8 → DigestBytes)
    (adversary :
      OracleComp GlobalByteSourceSpec
        (OriginSelectedCall sha256 blake2b)) :
    OriginGlobalComp (OriginRun sha256 blake2b) := do
  let selected ← adversary
  let output ←
    liftBlake2bProgram
      (shippingVerifierOracle
        (callEncoder selected.data selected.serialization)
        selected.data.statement selected.data.proof)
  pure { selected := selected, output := output.down }

/-- Separate exact budgets over the same whole program.  Uniform sampling is
counted by neither field; SHA-256 and Blake2b cannot consume each other's
budget. -/
def IsOriginQueryBoundP
    {Output : Type 1}
    (program : OriginGlobalComp Output)
    (predicate : GlobalByteSourceSpec.Domain → Prop)
    [DecidablePred predicate]
    (budget : Nat) : Prop :=
  PFunctor.FreeM.IsRollBound
    (P := GlobalByteSourceSpec.toPFunctor)
    program budget
    (fun q remaining => ¬ predicate q ∨ 0 < remaining)
    (fun q remaining => if predicate q then remaining - 1 else remaining)

structure DistinctQueryBudgets
    (sha256 : Ipp.ShippingV1.Bytes → Ipp.ShippingV1.Bytes)
    (blake2b : List UInt8 → DigestBytes)
    (adversary :
      OracleComp GlobalByteSourceSpec
        (OriginSelectedCall sha256 blake2b))
    (Q_sha Q_fs : Nat) : Prop where
  sha :
    IsOriginQueryBoundP
      (globalOriginByteProgram sha256 blake2b adversary)
      IsShaQuery Q_sha
  fs :
    IsOriginQueryBoundP
      (globalOriginByteProgram sha256 blake2b adversary)
      IsFsQuery Q_fs

/-- Deterministic implementation of every byte query, while forwarding
ambient sampling to `ProbComp`. -/
def deployedGlobalByteImpl
    (sha256 : Ipp.ShippingV1.Bytes → Ipp.ShippingV1.Bytes)
    (blake2b : List UInt8 → DigestBytes) :
    QueryImpl GlobalByteSourceSpec ProbComp := fun
  | Sum.inl t =>
      unifSpec.query t
  | Sum.inr (Sum.inl input) => pure (sha256 input)
  | Sum.inr (Sum.inr input) => pure (blake2b input)

/-- Cross-universe deployed interpretation of the joint byte source.  Ambient
sampling is copied as the same `unifSpec` roll; deployed hash calls select the
same continuation answer directly. -/
def evalDeployedGlobalByte
    {Output : Type u}
    (sha256 : Ipp.ShippingV1.Bytes → Ipp.ShippingV1.Bytes)
    (blake2b : List UInt8 → DigestBytes)
    (program : OracleComp GlobalByteSourceSpec Output) :
    OriginProbComp Output :=
  match program with
  | .pure output => .pure output
  | .roll q continuation =>
      match q with
      | Sum.inl sample =>
          .roll sample fun answer =>
            evalDeployedGlobalByte sha256 blake2b
              (continuation answer)
      | Sum.inr (Sum.inl input) =>
          evalDeployedGlobalByte sha256 blake2b
            (continuation (sha256 input))
      | Sum.inr (Sum.inr input) =>
          evalDeployedGlobalByte sha256 blake2b
            (continuation (blake2b input))

/-- Exact uniform distribution of an origin-retaining probabilistic program.
The sampled Type-0 answer is lifted only while binding in `PMF`; the original
answer is passed to the unchanged continuation. -/
noncomputable def evalOriginPMF
    {Output : Type 1}
    (program : OriginProbComp Output) : PMF Output :=
  match program with
  | .pure output => pure output
  | .roll sample continuation =>
      PMF.map ULift.up
          (IsProbabilitySpec.toPMF (spec := unifSpec) sample) >>= fun answer =>
        evalOriginPMF (continuation answer.down)

/-- Subprobability view of `evalOriginPMF`, used by the generic event API. -/
noncomputable def evalOriginSPMF
    {Output : Type 1}
    (program : OriginProbComp Output) : SPMF Output :=
  liftM (evalOriginPMF program)

/-- The cross-universe deployed interpreter preserves program sequencing. -/
theorem evalDeployedGlobalByte_bind
    {Input Output : Type u}
    (sha256 : Ipp.ShippingV1.Bytes → Ipp.ShippingV1.Bytes)
    (blake2b : List UInt8 → DigestBytes)
    (program : OracleComp GlobalByteSourceSpec Input)
    (next : Input → OracleComp GlobalByteSourceSpec Output) :
    evalDeployedGlobalByte sha256 blake2b (program >>= next) =
      evalDeployedGlobalByte sha256 blake2b program >>= fun input =>
        evalDeployedGlobalByte sha256 blake2b (next input) := by
  induction program using PFunctor.FreeM.inductionOn with
  | pure input => rfl
  | roll q continuation ih =>
      cases q with
      | inl sample =>
          change
            PFunctor.FreeM.roll (P := unifSpec.toPFunctor) sample
                (fun answer =>
                  evalDeployedGlobalByte sha256 blake2b
                    (continuation answer >>= next)) =
              PFunctor.FreeM.roll (P := unifSpec.toPFunctor) sample
                (fun answer =>
                  evalDeployedGlobalByte sha256 blake2b
                      (continuation answer) >>= fun input =>
                    evalDeployedGlobalByte sha256 blake2b
                      (next input))
          apply congrArg
            (PFunctor.FreeM.roll (P := unifSpec.toPFunctor) sample)
          funext answer
          exact ih answer
      | inr q =>
          cases q with
          | inl input =>
              change
                evalDeployedGlobalByte sha256 blake2b
                    (continuation (sha256 input) >>= next) =
                  evalDeployedGlobalByte sha256 blake2b
                      (continuation (sha256 input)) >>= fun value =>
                    evalDeployedGlobalByte sha256 blake2b
                      (next value)
              exact ih (sha256 input)
          | inr input =>
              change
                evalDeployedGlobalByte sha256 blake2b
                    (continuation (blake2b input) >>= next) =
                  evalDeployedGlobalByte sha256 blake2b
                      (continuation (blake2b input)) >>= fun value =>
                    evalDeployedGlobalByte sha256 blake2b
                      (next value)
              exact ih (blake2b input)

/-- Forwarding a verifier program and then installing both deployed hashes is
exactly deterministic evaluation with deployed Blake2b, wrapped only by
`ULift`. -/
theorem evalDeployedGlobalByte_liftBlake2bProgram
    {Output : Type}
    (sha256 : Ipp.ShippingV1.Bytes → Ipp.ShippingV1.Bytes)
    (blake2b : List UInt8 → DigestBytes)
    (program : OracleComp Blake2bOracleSpec Output) :
    evalDeployedGlobalByte sha256 blake2b
        (liftBlake2bProgram program) =
      (pure (ULift.up (evalWithAnswerFn blake2b program)) :
        OriginProbComp (ULift Output)) := by
  induction program using PFunctor.FreeM.inductionOn with
  | pure output => rfl
  | roll input continuation ih =>
      simpa [liftBlake2bProgram, evalDeployedGlobalByte,
        evalWithAnswerFn, simulateQ, PFunctor.FreeM.mapM] using
        ih (blake2b input)

/-- Concrete deployed experiment.

Preselection executes against the joint deployed byte implementation.  After
selection, the result is produced by `shippingRealCallVerifier` with that
same Blake2b function and the retained call's exact encoder. -/
def deployedOriginExperiment
    (sha256 : Ipp.ShippingV1.Bytes → Ipp.ShippingV1.Bytes)
    (blake2b : List UInt8 → DigestBytes)
    (adversary :
      OracleComp GlobalByteSourceSpec
        (OriginSelectedCall sha256 blake2b)) :
    OriginProbComp (OriginRun sha256 blake2b) := do
  let selected ←
    evalDeployedGlobalByte sha256 blake2b adversary
  let output :=
    evalWithAnswerFn blake2b
      (shippingVerifierOracle
        (callEncoder selected.data selected.serialization)
        selected.data.statement selected.data.proof)
  pure { selected := selected, output := output }

/-- Acceptance is a predicate of the concrete verifier output and the raw
production execution tied to the retained `CallData`. -/
def AcceptedOriginRun
    {sha256 : Ipp.ShippingV1.Bytes → Ipp.ShippingV1.Bytes}
    {blake2b : List UInt8 → DigestBytes}
    (run : OriginRun sha256 blake2b) : Prop :=
  run.output ∈ support
      (shippingRealCallVerifier
        run.selected.data run.selected.serialization blake2b) ∧
    AcceptedCallOutput run.selected.data run.output

/-- An explicit accepted witness retains the concrete raw execution rather
than reducing it to a formal accept bit. -/
structure OriginAcceptedWitness
    {sha256 : Ipp.ShippingV1.Bytes → Ipp.ShippingV1.Bytes}
    {blake2b : List UInt8 → DigestBytes}
    (run : OriginRun sha256 blake2b) where
  emitted :
    run.output ∈ support
      (shippingRealCallVerifier
        run.selected.data run.selected.serialization blake2b)
  raw :
    RawAcceptedExecution
      run.selected.data run.output.transcript

theorem OriginAcceptedWitness.accepted
    {sha256 : Ipp.ShippingV1.Bytes → Ipp.ShippingV1.Bytes}
    {blake2b : List UInt8 → DigestBytes}
    {run : OriginRun sha256 blake2b}
    (witness : OriginAcceptedWitness run) :
    AcceptedOriginRun run :=
  ⟨witness.emitted, ⟨witness.raw⟩⟩

/-- Exact deterministic coupling proposition between the query-transparent
global program and concrete `shippingRealCallVerifier` execution. -/
def DeployedGlobalProgramMatchesReal
    (sha256 : Ipp.ShippingV1.Bytes → Ipp.ShippingV1.Bytes)
    (blake2b : List UInt8 → DigestBytes)
    (adversary :
      OracleComp GlobalByteSourceSpec
        (OriginSelectedCall sha256 blake2b)) : Prop :=
  evalDeployedGlobalByte sha256 blake2b
      (globalOriginByteProgram sha256 blake2b adversary) =
    deployedOriginExperiment sha256 blake2b adversary

/-- The query-transparent joint program and the concrete real-call experiment
are the same deployed computation.  This closes the deterministic plumbing
step without any cryptographic premise. -/
theorem deployedGlobalProgram_matches_real
    (sha256 : Ipp.ShippingV1.Bytes → Ipp.ShippingV1.Bytes)
    (blake2b : List UInt8 → DigestBytes)
    (adversary :
      OracleComp GlobalByteSourceSpec
        (OriginSelectedCall sha256 blake2b)) :
    DeployedGlobalProgramMatchesReal sha256 blake2b adversary := by
  unfold DeployedGlobalProgramMatchesReal
  unfold globalOriginByteProgram deployedOriginExperiment
  rw [evalDeployedGlobalByte_bind]
  apply bind_congr
  intro selected
  rw [evalDeployedGlobalByte_bind,
    evalDeployedGlobalByte_liftBlake2bProgram]
  rfl

/-! ## Structured-field modular-reduction target

The following hop starts only after deployed Blake2b queries have been
reindexed to `GlobalFsQuery`.  That byte-to-structured reindexing and the
deployed-hash replacement are intentionally not claimed here.

Ambient sampling cannot in general be pulled in front of an adaptively
interleaved field-oracle program: a later sampling query may depend on an
earlier field answer.  Both scalar worlds therefore interpret the complete
`unifSpec + GlobalFieldOracleSpec` program directly.  Their ambient handlers
are identical, while only right-tagged field queries consume `Q_fs`.
-/

/-- Exactly the structured field-oracle points in the full adaptive source. -/
def IsGlobalFieldQuery : GlobalFsSourceSpec.Domain → Prop
  | .inl _ => False
  | .inr _ => True

instance instDecidablePredIsGlobalFieldQuery :
    DecidablePred IsGlobalFieldQuery := by
  intro q
  cases q with
  | inl _ =>
      exact isFalse (by simp [IsGlobalFieldQuery])
  | inr _ =>
      exact isTrue trivial

/-- The unchanged ambient sampler, lifted through the shared scalar-cache
state. -/
def ambientSamplingWithGlobalScalarCache :
    QueryImpl unifSpec
      (StateT GlobalScalarCacheState ProbComp) :=
  (HasQuery.toQueryImpl (spec := unifSpec) (m := ProbComp)).liftTarget
    (StateT GlobalScalarCacheState ProbComp)

/-- Full-source interpreter using uniform 512-bit blocks followed by exact
Arkworks scalar reduction on fresh structured field queries. -/
def globalReducedFsSourceImpl
    [SampleableType Ipp.ShippingScalarReduction.DigestBytes] :
    QueryImpl GlobalFsSourceSpec
      (StateT GlobalScalarCacheState ProbComp) :=
  ambientSamplingWithGlobalScalarCache +
    Ipp.ShippingScalarReduction.reducedCachingOracleImpl
      (Domain := GlobalFsQuery)

/-- Full-source interpreter using an exactly uniform BLS12-377 scalar on
fresh structured field queries. -/
def globalUniformFsSourceImpl :
    QueryImpl GlobalFsSourceSpec
      (StateT GlobalScalarCacheState ProbComp) :=
  ambientSamplingWithGlobalScalarCache +
    Ipp.ShippingScalarReduction.uniformCachingOracleImpl
      (Domain := GlobalFsQuery)

/-- The complete adaptive program under reduced-digest field answers. -/
def globalReducedFsSourceExperiment
    {Output : Type}
    [SampleableType Ipp.ShippingScalarReduction.DigestBytes]
    (program : OracleComp GlobalFsSourceSpec Output) :
    ProbComp (Output × GlobalScalarCacheState) :=
  (simulateQ globalReducedFsSourceImpl program).run (∅, false)

/-- The same complete adaptive program under exactly uniform field answers. -/
def globalUniformFsSourceExperiment
    {Output : Type}
    (program : OracleComp GlobalFsSourceSpec Output) :
    ProbComp (Output × GlobalScalarCacheState) :=
  (simulateQ globalUniformFsSourceImpl program).run (∅, false)

/-- Neither an ambient sample nor a reduced cached field query changes the
auxiliary bad flag. -/
theorem globalReducedFsSourceImpl_preserves_bad
    [SampleableType Ipp.ShippingScalarReduction.DigestBytes]
    (q : GlobalFsSourceSpec.Domain)
    (state : GlobalScalarCacheState)
    (output :
      GlobalFsSourceSpec.Range q × GlobalScalarCacheState)
    (houtput :
      output ∈ support
        ((globalReducedFsSourceImpl q).run state)) :
    output.2.2 = state.2 := by
  cases q with
  | inl point =>
      simp only [globalReducedFsSourceImpl,
        QueryImpl.add_apply_inl,
        ambientSamplingWithGlobalScalarCache,
        QueryImpl.liftTarget_apply, liftM, monadLift] at houtput
      change output ∈ support ((StateT.lift _).run state) at houtput
      rw [StateT.run_lift, mem_support_bind_iff] at houtput
      obtain ⟨value, _hvalue, hpure⟩ := houtput
      rw [mem_support_pure_iff] at hpure
      have hstate : output.2 = state :=
        congrArg Prod.snd hpure
      simp [hstate]
  | inr point =>
      exact
        Ipp.ShippingScalarReduction.reducedCachingOracleImpl_preserves_bad
          point state output
          (by
            simpa [globalReducedFsSourceImpl] using houtput)

/-- A charged full-source step is exactly one cache-aware modular-reduction
step.  Ambient samples are excluded by `IsGlobalFieldQuery`. -/
theorem globalReducedFsSourceImpl_step_tvDist_le
    [SampleableType Ipp.ShippingScalarReduction.DigestBytes]
    (q : GlobalFsSourceSpec.Domain)
    (hquery : IsGlobalFieldQuery q)
    (cache : GlobalFieldOracleSpec.QueryCache) :
    ENNReal.ofReal
        (tvDist
          ((globalReducedFsSourceImpl q).run (cache, false))
          ((globalUniformFsSourceImpl q).run (cache, false))) ≤
      Ipp.ShippingScalarReduction.modReductionBias := by
  cases q with
  | inl _ =>
      simp [IsGlobalFieldQuery] at hquery
  | inr point =>
      simpa [globalReducedFsSourceImpl,
        globalUniformFsSourceImpl] using
        (Ipp.ShippingScalarReduction.reducedCachingOracleImpl_step_tvDist_le
          point cache)

/-- Modular reduction over the complete preselection-plus-verifier program.

Only structured field queries consume `Q_fs`; arbitrary interleaved ambient
sampling is preserved identically and consumes no scalar-reduction budget. -/
theorem globalReducedFsSource_uniformFsSource_tvDist_le
    {Output : Type}
    [SampleableType Ipp.ShippingScalarReduction.DigestBytes]
    (program : OracleComp GlobalFsSourceSpec Output)
    (Q_fs : Nat)
    (hbound :
      IsQueryBoundP program IsGlobalFieldQuery Q_fs) :
    ENNReal.ofReal
        (tvDist
          (globalReducedFsSourceExperiment program)
          (globalUniformFsSourceExperiment program)) ≤
      Ipp.ShippingScalarReduction.modReductionBudget Q_fs := by
  have hbadZero :
      Pr[fun output : Output × GlobalScalarCacheState =>
          output.2.2 = true |
        globalReducedFsSourceExperiment program] = 0 := by
    apply probEvent_eq_zero
    intro output houtput hbad
    have hpreserved : output.2.2 = false := by
      have hinv :=
        OracleComp.simulateQ_run_preserves_inv_of_query
          globalReducedFsSourceImpl
          (fun state : GlobalScalarCacheState =>
            state.2 = false)
          (fun q state hstate result hresult => by
            change result.2.2 = false
            rw [globalReducedFsSourceImpl_preserves_bad
              q state result hresult]
            exact hstate)
          program (∅, false) rfl
      exact hinv output houtput
    simp_all
  have hquantitative :=
    OracleComp.ProgramLogic.Relational.ofReal_tvDist_simulateQ_run_le_queryBound_mul_slack_plus_probEvent_bad
        (spec' := unifSpec)
        globalReducedFsSourceImpl
        globalUniformFsSourceImpl
        Ipp.ShippingScalarReduction.modReductionBias
        IsGlobalFieldQuery
        (fun q hquery cache =>
          globalReducedFsSourceImpl_step_tvDist_le
            q hquery cache)
        (fun q hquery state => by
          cases q with
          | inl _ =>
              rfl
          | inr _ =>
              simp [IsGlobalFieldQuery] at hquery)
        (fun q state hbad output houtput => by
          rw [globalReducedFsSourceImpl_preserves_bad
            q state output houtput]
          exact hbad)
        program hbound (∅, false)
  have hbadZero' :
      Pr[fun output : Output × GlobalScalarCacheState =>
          output.2.2 = true |
        (simulateQ globalReducedFsSourceImpl program).run
          (∅, false)] = 0 := by
    simpa [globalReducedFsSourceExperiment] using hbadZero
  rw [hbadZero', add_zero] at hquantitative
  simpa [globalReducedFsSourceExperiment,
    globalUniformFsSourceExperiment,
    Ipp.ShippingScalarReduction.modReductionBudget] using hquantitative

/-- Event form of the same full-source hop. -/
theorem globalReducedFsSource_event_le_uniform_add_modReduction
    {Output : Type}
    [SampleableType Ipp.ShippingScalarReduction.DigestBytes]
    (predicate : Output → Prop)
    [DecidablePred predicate]
    (program : OracleComp GlobalFsSourceSpec Output)
    (Q_fs : Nat)
    (hbound :
      IsQueryBoundP program IsGlobalFieldQuery Q_fs) :
    Pr[fun output => predicate output.1 |
        globalReducedFsSourceExperiment program] ≤
      Pr[fun output => predicate output.1 |
          globalUniformFsSourceExperiment program] +
        Ipp.ShippingScalarReduction.modReductionBudget Q_fs := by
  apply Ipp.ShippingHashGame.probEvent_le_add_of_ofReal_tvDist_le
  exact globalReducedFsSource_uniformFsSource_tvDist_le
    program Q_fs hbound

/-- Honest handoff after byte-query reindexing.  Constructing this package
requires a separate theorem that projects the retained byte-level execution
to this exact full structured program; this interface does not assume that
projection. -/
structure StructuredFieldProgram (Output : Type) where
  program : OracleComp GlobalFsSourceSpec Output
  Q_fs : Nat
  queryBound :
    IsQueryBoundP program IsGlobalFieldQuery Q_fs

theorem StructuredFieldProgram.modularReduction
    {Output : Type}
    [SampleableType Ipp.ShippingScalarReduction.DigestBytes]
    (target : StructuredFieldProgram Output)
    (predicate : Output → Prop)
    [DecidablePred predicate] :
    Pr[fun output => predicate output.1 |
        globalReducedFsSourceExperiment target.program] ≤
      Pr[fun output => predicate output.1 |
          globalUniformFsSourceExperiment target.program] +
        Ipp.ShippingScalarReduction.modReductionBudget target.Q_fs :=
  globalReducedFsSource_event_le_uniform_add_modReduction
    predicate target.program target.Q_fs target.queryBound

end

end Ipp.ShippingAdaptiveOrigin
