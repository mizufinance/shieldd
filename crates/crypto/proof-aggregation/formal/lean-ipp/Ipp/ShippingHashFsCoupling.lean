import Ipp.ShippingHashResultCoupling
import Ipp.S1Computational

/-!
Exact coupling of the cache-aware uniform-field execution to the structured
`FsGame` verifier.
-/

open OracleSpec OracleComp ENNReal
open scoped OracleSpec.PrimitiveQuery ENNReal BigOperators

namespace Ipp.ShippingHashGame

noncomputable section

local instance : Fact Ipp.Bls12377.scalarModulus.Prime :=
  ⟨Ipp.Bls12377.arithmeticFacts.scalarPrime⟩

local instance fsSourceUniform
    {G1 G2 GT : Type} :
    IsUniformSpec
      (Ipp.FsSourceSpec Ipp.Bls12377.Fr G1 G2 GT) :=
  IsUniformSpec.ofFintypeInhabited _

/-- Any event can change by at most the total-variation distance between two
probabilistic computations. This `ENNReal` form composes directly with the
quantitative oracle simulation bounds below. -/
theorem probEvent_le_add_of_ofReal_tvDist_le
    {α : Type}
    (predicate : α → Prop) [DecidablePred predicate]
    (left right : ProbComp α)
    (ε : ℝ≥0∞)
    (htv : ENNReal.ofReal (tvDist left right) ≤ ε) :
    Pr[predicate | left] ≤ Pr[predicate | right] + ε := by
  let eventBit : α → Bool :=
    fun value => decide (predicate value)
  have hleft :
      Pr[= true | eventBit <$> left] =
        Pr[predicate | left] := by
    rw [← probEvent_eq_eq_probOutput, probEvent_map]
    apply probEvent_ext
    intro value _
    simp [eventBit]
  have hright :
      Pr[= true | eventBit <$> right] =
        Pr[predicate | right] := by
    rw [← probEvent_eq_eq_probOutput, probEvent_map]
    apply probEvent_ext
    intro value _
    simp [eventBit]
  have hdiff :
      |Pr[= true | eventBit <$> left].toReal -
          Pr[= true | eventBit <$> right].toReal| ≤
        tvDist left right :=
    (abs_probOutput_toReal_sub_le_tvDist
      (eventBit <$> left) (eventBit <$> right)).trans
        (tvDist_map_le eventBit left right)
  have hreal :
      Pr[= true | eventBit <$> left].toReal ≤
        Pr[= true | eventBit <$> right].toReal +
          tvDist left right := by
    have hsub :
        Pr[= true | eventBit <$> left].toReal -
            Pr[= true | eventBit <$> right].toReal ≤
          tvDist left right :=
      (le_abs_self _).trans hdiff
    linarith
  have henn := ENNReal.ofReal_le_ofReal hreal
  have hbase :
      Pr[= true | eventBit <$> left] ≤
        Pr[= true | eventBit <$> right] +
          ENNReal.ofReal (tvDist left right) := by
    simpa [ENNReal.ofReal_add ENNReal.toReal_nonneg
      (tvDist_nonneg left right),
      ENNReal.ofReal_toReal probOutput_ne_top] using henn
  rw [hleft, hright] at hbase
  calc
    _ ≤ Pr[predicate | right] +
        ENNReal.ofReal (tvDist left right) := hbase
    _ ≤ Pr[predicate | right] + ε := by
      gcongr

abbrev FieldBlock :=
  Fin rejectionFuel → Ipp.Bls12377.Fr

abbrev FieldBlockOracleSpec :=
  Fin rejectionFuel →ₒ Ipp.Bls12377.Fr

noncomputable local instance digestBytesSampleable :
    SampleableType DigestBytes :=
  SampleableType.ofFintype DigestBytes

noncomputable local instance digestBlockSampleable :
    SampleableType DigestBlock :=
  SampleableType.ofFintype DigestBlock

noncomputable local instance fieldBlockSampleable :
    SampleableType FieldBlock :=
  SampleableType.ofFintype FieldBlock

local instance : IsUniformSpec FieldBlockOracleSpec :=
  IsUniformSpec.ofFintypeInhabited _

/-- Pure bounded rejection sampler over one complete uniform-field block. -/
def acceptFieldBlock
    (acceptable : Ipp.Bls12377.Fr → Bool)
    (block : FieldBlock) :
    (fuel start : Nat) → start + fuel ≤ rejectionFuel →
      Option Ipp.Bls12377.Fr
  | 0, _, _ => none
  | fuel + 1, start, hbound =>
      have hstart : start < rejectionFuel := by omega
      let value := block ⟨start, hstart⟩
      if acceptable value then
        some value
      else
        acceptFieldBlock acceptable block fuel (start + 1) (by omega)

def acceptFieldBlockFull
    (acceptable : Ipp.Bls12377.Fr → Bool)
    (block : FieldBlock) : Option Ipp.Bls12377.Fr :=
  acceptFieldBlock acceptable block rejectionFuel 0 (by simp)

/-- Oracle form of `acceptFieldBlock`; every recursive step queries the next
strictly larger nonce coordinate. -/
def queryFieldBlockOracle
    (acceptable : Ipp.Bls12377.Fr → Bool) :
    (fuel start : Nat) → start + fuel ≤ rejectionFuel →
      OracleComp FieldBlockOracleSpec (Option Ipp.Bls12377.Fr)
  | 0, _, _ => pure none
  | fuel + 1, start, hbound => do
      have hstart : start < rejectionFuel := by omega
      let value ← FieldBlockOracleSpec.query ⟨start, hstart⟩
      if acceptable value then
        pure (some value)
      else
        queryFieldBlockOracle acceptable fuel (start + 1) (by omega)

def queryFieldBlockOracleFull
    (acceptable : Ipp.Bls12377.Fr → Bool) :
    OracleComp FieldBlockOracleSpec (Option Ipp.Bls12377.Fr) :=
  queryFieldBlockOracle acceptable rejectionFuel 0 (by simp)

theorem evalWithAnswerFn_queryFieldBlockOracle
    (block : FieldBlock)
    (acceptable : Ipp.Bls12377.Fr → Bool)
    (fuel start : Nat)
    (hbound : start + fuel ≤ rejectionFuel) :
    evalWithAnswerFn (QueryImpl.ofFn block)
        (queryFieldBlockOracle acceptable fuel start hbound) =
      acceptFieldBlock acceptable block fuel start hbound := by
  induction fuel generalizing start with
  | zero =>
      rfl
  | succ fuel ih =>
      rw [queryFieldBlockOracle.eq_def, acceptFieldBlock.eq_def,
        evalWithAnswerFn_bind]
      rw [show
        evalWithAnswerFn (QueryImpl.ofFn block)
            (liftM (FieldBlockOracleSpec.query
              ⟨start, by omega⟩)) =
          block ⟨start, by omega⟩ from
        simulateQ_spec_query
          (impl := QueryImpl.ofFn block) ⟨start, by omega⟩]
      by_cases hacceptable :
          acceptable (block ⟨start, by omega⟩) = true
      · simp [hacceptable]
      · simpa [hacceptable] using ih (start + 1) (by omega)

/-- Fresh-query interpretation is exactly the independent uniform-field
retry sampler. -/
theorem evalDist_queryFieldBlockOracle
    (acceptable : Ipp.Bls12377.Fr → Bool)
    (fuel start : Nat)
    (hbound : start + fuel ≤ rejectionFuel) :
    𝒟[queryFieldBlockOracle acceptable fuel start hbound] =
      𝒟[fieldFreshSample fuel acceptable] := by
  induction fuel generalizing start with
  | zero =>
      rw [queryFieldBlockOracle.eq_def, fieldFreshSample, firstSome]
      rfl
  | succ fuel ih =>
      rw [queryFieldBlockOracle.eq_def, fieldFreshSample, firstSome]
      simp only [freshFieldAttempt, map_eq_bind_pure_comp,
        bind_assoc]
      rw [evalDist_bind, evalDist_bind]
      rw [evalDist_query, evalDist_uniformSample]
      refine congrArg _ (funext fun value => ?_)
      by_cases hacceptable : acceptable value = true
      · simp [acceptOption, hacceptable]
      · simpa [acceptOption, hacceptable] using
          ih (start + 1) (by omega)

def FieldBlockCacheFreshFrom
    (cache : FieldBlockOracleSpec.QueryCache) (start : Nat) : Prop :=
  ∀ nonce, start ≤ nonce.val → cache nonce = none

theorem fieldBlockCacheFreshFrom_empty (start : Nat) :
    FieldBlockCacheFreshFrom
      (∅ : FieldBlockOracleSpec.QueryCache) start := by
  intro nonce _
  simp

theorem fieldBlockCacheFreshFrom_cacheQuery
    (cache : FieldBlockOracleSpec.QueryCache)
    (start : Nat) (hstart : start < rejectionFuel)
    (value : Ipp.Bls12377.Fr)
    (hfresh : FieldBlockCacheFreshFrom cache start) :
    FieldBlockCacheFreshFrom
      (cache.cacheQuery ⟨start, hstart⟩ value) (start + 1) := by
  intro nonce hnonce
  have hne : nonce ≠ ⟨start, hstart⟩ := by
    intro heq
    have : nonce.val = start := congrArg Fin.val heq
    omega
  rw [QueryCache.cacheQuery_of_ne _ _ hne]
  exact hfresh nonce (by omega)

set_option maxHeartbeats 2000000 in
set_option maxRecDepth 10000 in
/-- The strictly increasing field-block sampler has identical lazy-cache and
fresh-query distributions. -/
theorem evalDist_randomOracle_queryFieldBlockOracle
    (acceptable : Ipp.Bls12377.Fr → Bool)
    (cache : FieldBlockOracleSpec.QueryCache)
    (fuel start : Nat)
    (hbound : start + fuel ≤ rejectionFuel)
    (hfresh : FieldBlockCacheFreshFrom cache start) :
    𝒟[(simulateQ FieldBlockOracleSpec.randomOracle
          (queryFieldBlockOracle acceptable fuel start hbound)).run'
        cache] =
      𝒟[queryFieldBlockOracle acceptable fuel start hbound] := by
  induction fuel generalizing start cache with
  | zero =>
      simp [queryFieldBlockOracle]
  | succ fuel ih =>
      have hstart : start < rejectionFuel := by omega
      let point : Fin rejectionFuel := ⟨start, hstart⟩
      have hnone : cache point = none :=
        hfresh point (by simp [point])
      have houter :
          𝒟[(uniformSampleImpl (spec := FieldBlockOracleSpec) point :
            ProbComp Ipp.Bls12377.Fr)] =
            𝒟[(liftM (FieldBlockOracleSpec.query point) :
              OracleComp FieldBlockOracleSpec Ipp.Bls12377.Fr)] := by
        change 𝒟[($ᵗ Ipp.Bls12377.Fr)] =
          𝒟[(liftM (FieldBlockOracleSpec.query point) :
            OracleComp FieldBlockOracleSpec Ipp.Bls12377.Fr)]
        rw [evalDist_uniformSample, evalDist_query]
      rw [queryFieldBlockOracle.eq_def]
      simp only
      change
        𝒟[(simulateQ FieldBlockOracleSpec.randomOracle
              ((liftM (FieldBlockOracleSpec.query point) :
                  OracleComp FieldBlockOracleSpec Ipp.Bls12377.Fr) >>=
                fun value =>
                  if acceptable value then
                    pure (some value)
                  else
                    queryFieldBlockOracle acceptable fuel
                      (start + 1) (by omega))).run' cache] =
          𝒟[((liftM (FieldBlockOracleSpec.query point) :
                OracleComp FieldBlockOracleSpec Ipp.Bls12377.Fr) >>=
              fun value =>
                if acceptable value then
                  pure (some value)
                else
                  queryFieldBlockOracle acceptable fuel
                    (start + 1) (by omega))]
      unfold StateT.run'
      rw [simulateQ_bind, simulateQ_spec_query]
      change
        𝒟[Prod.fst <$>
          ((FieldBlockOracleSpec.randomOracle point).run cache >>=
            fun result :
              Ipp.Bls12377.Fr ×
                FieldBlockOracleSpec.QueryCache =>
              (simulateQ FieldBlockOracleSpec.randomOracle
                (if acceptable result.1 then
                  pure (some result.1)
                else
                  queryFieldBlockOracle acceptable fuel
                    (start + 1) (by omega))).run result.2)] =
          𝒟[((liftM (FieldBlockOracleSpec.query point) :
                OracleComp FieldBlockOracleSpec Ipp.Bls12377.Fr) >>=
              fun value =>
                if acceptable value then
                  pure (some value)
                else
                  queryFieldBlockOracle acceptable fuel
                    (start + 1) (by omega))]
      rw [map_bind]
      rw [QueryImpl.withCaching_run_none _ hnone]
      rw [map_eq_bind_pure_comp]
      simp only [bind_assoc, Function.comp_apply, pure_bind]
      rw [queryFieldBlockOracle.eq_def]
      simp only [bind_assoc]
      rw [evalDist_bind, evalDist_bind]
      rw [houter]
      refine congrArg _ (funext fun value => ?_)
      by_cases hacceptable : acceptable value = true
      · simp [hacceptable]
      · simp only [hacceptable]
        rw [← queryFieldBlockOracle.eq_def]
        simpa using
          ih (cache.cacheQuery point value) (start + 1) (by omega)
            (fieldBlockCacheFreshFrom_cacheQuery
              cache start hstart value hfresh)

/-- A uniformly sampled full field block has exactly the existing independent
field retry distribution. -/
theorem evalDist_uniform_acceptFieldBlockFull
    [SampleableType FieldBlock]
    (acceptable : Ipp.Bls12377.Fr → Bool) :
    𝒟[do
        let block ← $ᵗ FieldBlock
        pure (acceptFieldBlockFull acceptable block)] =
      𝒟[fieldFreshSample rejectionFuel acceptable] := by
  calc
    𝒟[do
        let block ← $ᵗ FieldBlock
        pure (acceptFieldBlockFull acceptable block)] =
        𝒟[do
          let block ← $ᵗ FieldBlock
          pure
            (evalWithAnswerFn (QueryImpl.ofFn block)
              (queryFieldBlockOracleFull acceptable))] := by
          refine congrArg _ ?_
          refine congrArg
            (fun k :
              FieldBlock →
                ProbComp (Option Ipp.Bls12377.Fr) =>
              ($ᵗ FieldBlock) >>= k) ?_
          funext block
          congr 1
          symm
          exact evalWithAnswerFn_queryFieldBlockOracle
            block acceptable rejectionFuel 0 (by simp)
    _ =
        𝒟[(simulateQ FieldBlockOracleSpec.randomOracle
          (queryFieldBlockOracleFull acceptable)).run' ∅] := by
          symm
          exact
            evalDist_simulateQ_randomOracle_run'_empty_eq_uniformTable
              (queryFieldBlockOracleFull acceptable)
    _ = 𝒟[queryFieldBlockOracleFull acceptable] := by
          exact evalDist_randomOracle_queryFieldBlockOracle
            acceptable ∅ rejectionFuel 0 (by simp)
              (fieldBlockCacheFreshFrom_empty 0)
    _ = 𝒟[fieldFreshSample rejectionFuel acceptable] :=
          evalDist_queryFieldBlockOracle
            acceptable rejectionFuel 0 (by simp)

#print axioms evalDist_uniform_acceptFieldBlockFull

/-- Distributional equality of miss sources lifts through one exact
`withCaching` query from any cache. -/
theorem evalDist_withCaching_run_of_source_eq
    {D R : Type}
    [DecidableEq D]
    {left right : D → ProbComp R}
    (hsource : ∀ input, 𝒟[left input] = 𝒟[right input])
    (input : D)
    (cache : (D →ₒ R).QueryCache) :
    𝒟[(QueryImpl.withCaching left input).run cache] =
      𝒟[(QueryImpl.withCaching right input).run cache] := by
  cases hcached : cache input with
  | some cached =>
      rw [QueryImpl.withCaching_run_some left hcached,
        QueryImpl.withCaching_run_some right hcached]
  | none =>
      rw [QueryImpl.withCaching_run_none left hcached,
        QueryImpl.withCaching_run_none right hcached]
      rw [evalDist_map, evalDist_map, hsource input]

/-- Distributional equality of miss sources lifts through every computation
over their shared exact cache. -/
theorem evalDist_simulateQ_withCaching_of_source_eq
    {D R α : Type}
    [DecidableEq D]
    {left right : D → ProbComp R}
    (hsource : ∀ input, 𝒟[left input] = 𝒟[right input])
    (oa : OracleComp (D →ₒ R) α)
    (cache : (D →ₒ R).QueryCache) :
    𝒟[(simulateQ (QueryImpl.withCaching left) oa).run' cache] =
      𝒟[(simulateQ (QueryImpl.withCaching right) oa).run' cache] := by
  have hrun :=
    evalDist_simulateQ_run_eq_of_impl_evalDist_eq
      (QueryImpl.withCaching left)
      (QueryImpl.withCaching right)
      (fun input state =>
        evalDist_withCaching_run_of_source_eq
          hsource input state)
      oa cache
  unfold StateT.run'
  rw [evalDist_map, evalDist_map]
  exact congrArg (fun distribution => Prod.fst <$> distribution)
    hrun

def fieldBlockResultProcess
    {G1 G2 GT : Type}
    (base : ChallengeBase Ipp.Bls12377.Fr G1 G2 GT)
    (block : FieldBlock) : Option Ipp.Bls12377.Fr :=
  acceptFieldBlockFull (baseAcceptable base) block

def fieldBlockBaseSource
    [SampleableType FieldBlock]
    {G1 G2 GT : Type}
    (base : ChallengeBase Ipp.Bls12377.Fr G1 G2 GT) :
    ProbComp (Option Ipp.Bls12377.Fr) := do
  let block ← $ᵗ FieldBlock
  pure (fieldBlockResultProcess base block)

theorem fieldBlockBaseSource_evalDist_eq_fieldBaseSource
    [SampleableType FieldBlock]
    {G1 G2 GT : Type}
    (base : ChallengeBase Ipp.Bls12377.Fr G1 G2 GT) :
    𝒟[fieldBlockBaseSource base] =
      𝒟[fieldBaseSource rejectionFuel base] := by
  simpa only [fieldBlockBaseSource, fieldBlockResultProcess,
    fieldBaseSource] using
      (evalDist_uniform_acceptFieldBlockFull
        (baseAcceptable base))

abbrev FieldPayloadBlockOracleSpec (G1 G2 GT : Type) :=
  ChallengeBase Ipp.Bls12377.Fr G1 G2 GT →ₒ FieldBlock

def fieldBlockTranscriptOracle
    {G1 G2 GT : Type}
    [AddCommGroup G1] [Module Ipp.Bls12377.Fr G1]
    [AddCommGroup G2] [Module Ipp.Bls12377.Fr G2]
    [AddCommGroup GT] [Module Ipp.Bls12377.Fr GT]
    {μ : Nat}
    (stmt : Ipp.FsStatement μ Ipp.Bls12377.Fr G1 G2 GT)
    (proof : Ipp.Proof μ Ipp.Bls12377.Fr G1 G2 GT) :
    OracleComp (FieldPayloadBlockOracleSpec G1 G2 GT)
      (Option (Ipp.FsTranscript μ Ipp.Bls12377.Fr)) :=
  simulateQ
    (Ipp.RandomOracleMap.mapRangeImpl
      (@fieldBlockResultProcess G1 G2 GT))
    (resultTranscriptOracle stmt proof)

def fieldBlockIdealVerifier
    {G1 G2 GT : Type}
    [AddCommGroup G1] [Module Ipp.Bls12377.Fr G1]
    [AddCommGroup G2] [Module Ipp.Bls12377.Fr G2]
    [AddCommGroup GT] [Module Ipp.Bls12377.Fr GT]
    [DecidableEq G1] [DecidableEq G2] [DecidableEq GT]
    [SampleableType FieldBlock]
    {μ : Nat}
    (stmt : Ipp.FsStatement μ Ipp.Bls12377.Fr G1 G2 GT)
    (proof : Ipp.Proof μ Ipp.Bls12377.Fr G1 G2 GT) :
    ProbComp (Option (Ipp.FsTranscript μ Ipp.Bls12377.Fr)) :=
  (simulateQ
    (FieldPayloadBlockOracleSpec G1 G2 GT).randomOracle
    (fieldBlockTranscriptOracle stmt proof)).run' ∅

/-- The cache-aware field source and the lazy payload-block oracle are
exactly distribution-equal. -/
theorem fieldResultIdealVerifier_evalDist_eq_fieldBlock
    [SampleableType FieldBlock]
    {G1 G2 GT : Type}
    [AddCommGroup G1] [Module Ipp.Bls12377.Fr G1]
    [AddCommGroup G2] [Module Ipp.Bls12377.Fr G2]
    [AddCommGroup GT] [Module Ipp.Bls12377.Fr GT]
    [DecidableEq G1] [DecidableEq G2] [DecidableEq GT]
    {μ : Nat}
    (stmt : Ipp.FsStatement μ Ipp.Bls12377.Fr G1 G2 GT)
    (proof : Ipp.Proof μ Ipp.Bls12377.Fr G1 G2 GT) :
    𝒟[fieldResultIdealVerifier stmt proof] =
      𝒟[fieldBlockIdealVerifier stmt proof] := by
  have hsource :
      ∀ base : ChallengeBase Ipp.Bls12377.Fr G1 G2 GT,
        𝒟[fieldBaseSource rejectionFuel base] =
          𝒟[fieldBlockBaseSource base] :=
    fun base =>
      (fieldBlockBaseSource_evalDist_eq_fieldBaseSource base).symm
  calc
    𝒟[fieldResultIdealVerifier stmt proof] =
        𝒟[sourceResultIdealVerifier
          (@fieldBlockBaseSource _ G1 G2 GT) stmt proof] := by
          exact evalDist_simulateQ_withCaching_of_source_eq
            hsource (resultTranscriptOracle stmt proof) ∅
    _ = 𝒟[fieldBlockIdealVerifier stmt proof] := by
          symm
          exact Ipp.RandomOracleMap.evalDist_randomOracle_mapRange
            (@fieldBlockResultProcess G1 G2 GT)
            (resultTranscriptOracle stmt proof) ∅

#print axioms fieldResultIdealVerifier_evalDist_eq_fieldBlock

abbrev FieldAttemptOracleSpec (G1 G2 GT : Type) :=
  BoundedAttempt G1 G2 GT →ₒ Ipp.Bls12377.Fr

local instance fieldAttemptOracleUniform
    {G1 G2 GT : Type} :
    IsUniformSpec (FieldAttemptOracleSpec G1 G2 GT) :=
  IsUniformSpec.ofFintypeInhabited _

def queryFieldAttemptOracle
    {G1 G2 GT : Type}
    (base : ChallengeBase Ipp.Bls12377.Fr G1 G2 GT)
    (acceptable : Ipp.Bls12377.Fr → Bool) :
    (fuel start : Nat) → start + fuel ≤ rejectionFuel →
      OracleComp (FieldAttemptOracleSpec G1 G2 GT)
        (Option Ipp.Bls12377.Fr)
  | 0, _, _ => pure none
  | fuel + 1, start, hbound => do
      have hstart : start < rejectionFuel := by omega
      let value ← (FieldAttemptOracleSpec G1 G2 GT).query
        (base, ⟨start, hstart⟩)
      if acceptable value then
        pure (some value)
      else
        queryFieldAttemptOracle base acceptable fuel
          (start + 1) (by omega)

def queryFieldAttemptOracleFull
    {G1 G2 GT : Type}
    (base : ChallengeBase Ipp.Bls12377.Fr G1 G2 GT)
    (acceptable : Ipp.Bls12377.Fr → Bool) :
    OracleComp (FieldAttemptOracleSpec G1 G2 GT)
      (Option Ipp.Bls12377.Fr) :=
  queryFieldAttemptOracle base acceptable rejectionFuel 0 (by simp)

/-- One field-valued attempt is queried per unit of remaining fuel. -/
theorem queryFieldAttemptOracle_isTotalQueryBound
    {G1 G2 GT : Type}
    (base : ChallengeBase Ipp.Bls12377.Fr G1 G2 GT)
    (acceptable : Ipp.Bls12377.Fr → Bool)
    (fuel start : Nat)
    (hbound : start + fuel ≤ rejectionFuel) :
    IsTotalQueryBound
      (queryFieldAttemptOracle base acceptable fuel start hbound)
      fuel := by
  induction fuel generalizing start with
  | zero =>
      exact trivial
  | succ fuel ih =>
      rw [queryFieldAttemptOracle.eq_def,
        isTotalQueryBound_query_bind_iff]
      refine ⟨Nat.succ_pos _, fun value => ?_⟩
      by_cases hacceptable : acceptable value = true
      · simpa only [hacceptable, if_true] using
          (show IsTotalQueryBound
            (pure (some value) :
              OracleComp (FieldAttemptOracleSpec G1 G2 GT)
                (Option Ipp.Bls12377.Fr))
            fuel from trivial)
      · simpa [hacceptable] using
          ih (start + 1) (by omega)

theorem queryFieldAttemptOracleFull_isTotalQueryBound
    {G1 G2 GT : Type}
    (base : ChallengeBase Ipp.Bls12377.Fr G1 G2 GT)
    (acceptable : Ipp.Bls12377.Fr → Bool) :
    IsTotalQueryBound
      (queryFieldAttemptOracleFull base acceptable)
      rejectionFuel := by
  exact queryFieldAttemptOracle_isTotalQueryBound
    base acceptable rejectionFuel 0 (by simp)

theorem evalWithAnswerFn_queryFieldAttemptOracle
    {G1 G2 GT : Type}
    (table : BoundedAttempt G1 G2 GT → Ipp.Bls12377.Fr)
    (base : ChallengeBase Ipp.Bls12377.Fr G1 G2 GT)
    (acceptable : Ipp.Bls12377.Fr → Bool)
    (fuel start : Nat)
    (hbound : start + fuel ≤ rejectionFuel) :
    evalWithAnswerFn (QueryImpl.ofFn table)
        (queryFieldAttemptOracle base acceptable fuel start hbound) =
      acceptFieldBlock acceptable
        (fun nonce => table (base, nonce)) fuel start hbound := by
  induction fuel generalizing start with
  | zero =>
      rfl
  | succ fuel ih =>
      rw [queryFieldAttemptOracle.eq_def,
        acceptFieldBlock.eq_def, evalWithAnswerFn_bind]
      rw [show
        evalWithAnswerFn (QueryImpl.ofFn table)
            (liftM ((FieldAttemptOracleSpec G1 G2 GT).query
              (base, ⟨start, by omega⟩))) =
          table (base, ⟨start, by omega⟩) from
        simulateQ_spec_query
          (impl := QueryImpl.ofFn table)
          (base, ⟨start, by omega⟩)]
      by_cases hacceptable :
          acceptable (table (base, ⟨start, by omega⟩)) = true
      · simp [hacceptable]
      · simpa [hacceptable] using
          ih (start + 1) (by omega)

theorem evalWithAnswerFn_queryFieldAttemptOracleFull
    {G1 G2 GT : Type}
    (table : BoundedAttempt G1 G2 GT → Ipp.Bls12377.Fr)
    (base : ChallengeBase Ipp.Bls12377.Fr G1 G2 GT)
    (acceptable : Ipp.Bls12377.Fr → Bool) :
    evalWithAnswerFn (QueryImpl.ofFn table)
        (queryFieldAttemptOracleFull base acceptable) =
      acceptFieldBlockFull acceptable
        ((Equiv.curry
          (ChallengeBase Ipp.Bls12377.Fr G1 G2 GT)
          (Fin rejectionFuel) Ipp.Bls12377.Fr) table base) := by
  exact evalWithAnswerFn_queryFieldAttemptOracle
    table base acceptable rejectionFuel 0 (by simp)

def fieldAttemptResultImpl
    {G1 G2 GT : Type} :
    QueryImpl (ResultOracleSpec G1 G2 GT)
      (OracleComp (FieldAttemptOracleSpec G1 G2 GT)) :=
  fun base =>
    queryFieldAttemptOracleFull base (baseAcceptable base)

/-- Interpret a field-valued attempt query by sampling one deployed 64-byte
Blake2b response and applying Arkworks' total little-endian reduction. -/
def attemptReductionImpl
    {G1 G2 GT : Type} :
    QueryImpl (FieldAttemptOracleSpec G1 G2 GT)
      (OracleComp (AttemptOracleSpec G1 G2 GT)) :=
  Ipp.RandomOracleMap.mapRangeImpl
    (fun _ digest =>
      Ipp.ShippingScalarReduction.reduceFr digest)

/-- The truthful shipping retry loop is exactly the field-valued retry loop
interpreted through Arkworks scalar reduction. -/
theorem simulateQ_attemptReduction_queryFieldAttemptOracle
    {G1 G2 GT : Type}
    (base : ChallengeBase Ipp.Bls12377.Fr G1 G2 GT)
    (acceptable : Ipp.Bls12377.Fr → Bool)
    (fuel start : Nat)
    (hbound : start + fuel ≤ rejectionFuel) :
    simulateQ (@attemptReductionImpl G1 G2 GT)
        (queryFieldAttemptOracle base acceptable fuel start hbound) =
      queryDecodedAttemptOracle base acceptable fuel start hbound := by
  induction fuel generalizing start with
  | zero =>
      rfl
  | succ fuel ih =>
      rw [queryFieldAttemptOracle.eq_def,
        queryDecodedAttemptOracle.eq_def,
        simulateQ_bind, simulateQ_spec_query]
      simp only [attemptReductionImpl,
        Ipp.RandomOracleMap.mapRangeImpl,
        map_eq_bind_pure_comp, bind_assoc,
        Function.comp_apply]
      refine congrArg
        (fun continuation :
          DigestBytes →
            OracleComp (AttemptOracleSpec G1 G2 GT)
              (Option Ipp.Bls12377.Fr) =>
          (liftM
            ((AttemptOracleSpec G1 G2 GT).query
              (base, ⟨start, by omega⟩)) :
                OracleComp (AttemptOracleSpec G1 G2 GT)
                  DigestBytes) >>= continuation) ?_
      funext digest
      rw [shippingDecodeFr_eq_some]
      by_cases hacceptable :
          acceptable
            (Ipp.ShippingScalarReduction.reduceFr digest) = true
      · simp [hacceptable]
      · simpa [hacceptable] using
          ih (start + 1) (by omega)

theorem simulateQ_attemptReduction_queryFieldAttemptOracleFull
    {G1 G2 GT : Type}
    (base : ChallengeBase Ipp.Bls12377.Fr G1 G2 GT)
    (acceptable : Ipp.Bls12377.Fr → Bool) :
    simulateQ (@attemptReductionImpl G1 G2 GT)
        (queryFieldAttemptOracleFull base acceptable) =
      queryDecodedAttemptOracleFull base acceptable := by
  exact simulateQ_attemptReduction_queryFieldAttemptOracle
    base acceptable rejectionFuel 0 (by simp)

theorem attemptReduction_comp_fieldAttemptResult
    {G1 G2 GT : Type} :
    @attemptReductionImpl G1 G2 GT ∘ₛ
        @fieldAttemptResultImpl G1 G2 GT =
      @attemptResultImpl G1 G2 GT := by
  funext base
  exact simulateQ_attemptReduction_queryFieldAttemptOracleFull
    base (baseAcceptable base)

def fieldAttemptTranscriptOracle
    {G1 G2 GT : Type}
    [AddCommGroup G1] [Module Ipp.Bls12377.Fr G1]
    [AddCommGroup G2] [Module Ipp.Bls12377.Fr G2]
    [AddCommGroup GT] [Module Ipp.Bls12377.Fr GT]
    {μ : Nat}
    (stmt : Ipp.FsStatement μ Ipp.Bls12377.Fr G1 G2 GT)
    (proof : Ipp.Proof μ Ipp.Bls12377.Fr G1 G2 GT) :
    OracleComp (FieldAttemptOracleSpec G1 G2 GT)
      (Option (Ipp.FsTranscript μ Ipp.Bls12377.Fr)) :=
  simulateQ fieldAttemptResultImpl
    (resultTranscriptOracle stmt proof)

/-- The attempt-indexed shipping byte program and the field program have the
same control flow. Their only difference is the explicit modulo-reduction
oracle implementation. -/
theorem simulateQ_attemptReduction_fieldAttemptTranscript
    {G1 G2 GT : Type}
    [AddCommGroup G1] [Module Ipp.Bls12377.Fr G1]
    [AddCommGroup G2] [Module Ipp.Bls12377.Fr G2]
    [AddCommGroup GT] [Module Ipp.Bls12377.Fr GT]
    {μ : Nat}
    (stmt : Ipp.FsStatement μ Ipp.Bls12377.Fr G1 G2 GT)
    (proof : Ipp.Proof μ Ipp.Bls12377.Fr G1 G2 GT) :
    simulateQ (@attemptReductionImpl G1 G2 GT)
        (fieldAttemptTranscriptOracle stmt proof) =
      attemptTranscriptOracle stmt proof := by
  rw [fieldAttemptTranscriptOracle, attemptTranscriptOracle,
    ← QueryImpl.simulateQ_compose,
    attemptReduction_comp_fieldAttemptResult]

/-- A single factored challenge query consumes exactly one oracle query. -/
theorem resultQuery_isTotalQueryBound_one
    {G1 G2 GT : Type}
    (base : ChallengeBase Ipp.Bls12377.Fr G1 G2 GT) :
    IsTotalQueryBound
      (liftM ((ResultOracleSpec G1 G2 GT).query base) :
        OracleComp (ResultOracleSpec G1 G2 GT)
          (Option Ipp.Bls12377.Fr))
      1 := by
  have h :
      IsTotalQueryBound
        ((liftM ((ResultOracleSpec G1 G2 GT).query base) :
            OracleComp (ResultOracleSpec G1 G2 GT)
              (Option Ipp.Bls12377.Fr)) >>= pure)
        1 :=
    (isTotalQueryBound_query_bind_iff).2
      ⟨by omega, fun _ => trivial⟩
  simpa using h

/-- The factored round program asks at most one payload query per round. -/
theorem resultRoundsOracle_isTotalQueryBound
    {G1 G2 GT : Type}
    (μ : Nat) (previous : Ipp.Bls12377.Fr)
    (rounds : Fin μ → Ipp.RoundComs G1 GT) :
    IsTotalQueryBound
      (resultRoundsOracle (G2 := G2) μ previous rounds) μ := by
  induction μ generalizing previous with
  | zero =>
      exact trivial
  | succ μ ih =>
      rw [resultRoundsOracle]
      have hsample :=
        resultQuery_isTotalQueryBound_one
          (G2 := G2)
          (.round previous (rounds 0))
      refine
        (isTotalQueryBound_bind
          (n₁ := 1) (n₂ := μ) hsample ?_).mono (by omega)
      intro sampled
      cases sampled with
      | none =>
          exact trivial
      | some value =>
          exact
            (isTotalQueryBound_bind
              (n₁ := μ) (n₂ := 0)
              (ih value (fun i => rounds i.succ))
              (fun tail => by
                cases tail <;> exact trivial)).mono (by simp)

/-- The factored verifier performs `μ + 4` nonce-free challenge stages. -/
theorem resultTranscriptOracle_isTotalQueryBound
    {G1 G2 GT : Type}
    [AddCommGroup G1] [Module Ipp.Bls12377.Fr G1]
    [AddCommGroup G2] [Module Ipp.Bls12377.Fr G2]
    [AddCommGroup GT] [Module Ipp.Bls12377.Fr GT]
    {μ : Nat}
    (stmt : Ipp.FsStatement μ Ipp.Bls12377.Fr G1 G2 GT)
    (proof : Ipp.Proof μ Ipp.Bls12377.Fr G1 G2 GT) :
    IsTotalQueryBound
      (resultTranscriptOracle stmt proof) (μ + 4) := by
  unfold resultTranscriptOracle
  refine
    (isTotalQueryBound_bind
      (n₁ := 1) (n₂ := 1 + (μ + (1 + 1)))
      (resultQuery_isTotalQueryBound_one
        (G2 := G2)
        (.randomizer
          { comA := proof.ComA.1
            comB := proof.ComB
            comC := proof.ComA.2 }))
      ?_).mono (by omega)
  intro randomizer
  cases randomizer with
  | none =>
      exact trivial
  | some randomizer =>
      refine
        (isTotalQueryBound_bind
          (n₁ := 1) (n₂ := μ + (1 + 1))
          (resultQuery_isTotalQueryBound_one
            (G2 := G2)
            (.x0
              { r := randomizer
                comA := proof.ComA.1
                comB := proof.ComB
                comC := proof.ComA.2
                ipAb := proof.ipAb
                aggC := proof.aggC }))
          ?_).mono (by omega)
      intro x0
      cases x0 with
      | none =>
          exact trivial
      | some x0 =>
          refine
            (isTotalQueryBound_bind
              (n₁ := μ) (n₂ := 1 + 1)
              (resultRoundsOracle_isTotalQueryBound
                (G2 := G2) μ x0 proof.rounds)
              ?_).mono (by omega)
          intro roundResult
          cases roundResult with
          | none =>
              exact trivial
          | some rounds =>
              refine
                (isTotalQueryBound_bind
                  (n₁ := 1) (n₂ := 1)
                  (resultQuery_isTotalQueryBound_one
                    (G2 := G2)
                    (.bridge
                      { lastRawChallenge := rounds.last
                        vFinal := proof.vFinal
                        wFinal := proof.wFinal
                        aFinal := proof.aFinal
                        bFinal := proof.bFinal
                        cFinal := proof.cFinal }))
                  ?_).mono (by omega)
              intro bridge
              cases bridge with
              | none =>
                  exact trivial
              | some bridge =>
                  exact
                    (isTotalQueryBound_bind
                      (n₁ := 1) (n₂ := 0)
                      (resultQuery_isTotalQueryBound_one
                        (G2 := G2)
                        (.kzg
                          { bridgeChallenge := bridge
                            vFinal := proof.vFinal
                            wFinal := proof.wFinal }))
                      (fun kzg => by
                        cases kzg <;> exact trivial)).mono (by omega)

/-- The bounded field-attempt program has the concrete deployed query budget:
`μ + 4` stages, each with at most `2^64` nonce attempts. -/
theorem fieldAttemptTranscriptOracle_isTotalQueryBound
    {G1 G2 GT : Type}
    [AddCommGroup G1] [Module Ipp.Bls12377.Fr G1]
    [AddCommGroup G2] [Module Ipp.Bls12377.Fr G2]
    [AddCommGroup GT] [Module Ipp.Bls12377.Fr GT]
    {μ : Nat}
    (stmt : Ipp.FsStatement μ Ipp.Bls12377.Fr G1 G2 GT)
    (proof : Ipp.Proof μ Ipp.Bls12377.Fr G1 G2 GT) :
    IsTotalQueryBound
      (fieldAttemptTranscriptOracle stmt proof)
      ((μ + 4) * rejectionFuel) := by
  exact IsTotalQueryBound.simulateQ_of_step_le
    (resultTranscriptOracle_isTotalQueryBound stmt proof)
    (fun base =>
      queryFieldAttemptOracle_isTotalQueryBound
        base (baseAcceptable base)
        rejectionFuel 0 (by simp))

theorem evalWithAnswerFn_fieldAttemptTranscript_eq_block
    {G1 G2 GT : Type}
    [AddCommGroup G1] [Module Ipp.Bls12377.Fr G1]
    [AddCommGroup G2] [Module Ipp.Bls12377.Fr G2]
    [AddCommGroup GT] [Module Ipp.Bls12377.Fr GT]
    {μ : Nat}
    (table : BoundedAttempt G1 G2 GT → Ipp.Bls12377.Fr)
    (stmt : Ipp.FsStatement μ Ipp.Bls12377.Fr G1 G2 GT)
    (proof : Ipp.Proof μ Ipp.Bls12377.Fr G1 G2 GT) :
    evalWithAnswerFn (QueryImpl.ofFn table)
        (fieldAttemptTranscriptOracle stmt proof) =
      evalWithAnswerFn
        (QueryImpl.ofFn
          ((Equiv.curry
            (ChallengeBase Ipp.Bls12377.Fr G1 G2 GT)
            (Fin rejectionFuel) Ipp.Bls12377.Fr) table))
        (fieldBlockTranscriptOracle stmt proof) := by
  rw [fieldAttemptTranscriptOracle, fieldBlockTranscriptOracle,
    Ipp.RandomOracleMap.evalWithAnswerFn_simulateQ,
    Ipp.RandomOracleMap.evalWithAnswerFn_simulateQ]
  apply congrArg
    (fun answer =>
      evalWithAnswerFn answer (resultTranscriptOracle stmt proof))
  funext base
  simp only [fieldAttemptResultImpl,
    Ipp.RandomOracleMap.mapRangeImpl]
  have hfine :=
    evalWithAnswerFn_queryFieldAttemptOracleFull
      table base (baseAcceptable base)
  refine hfine.trans ?_
  symm
  calc
    evalWithAnswerFn
        (QueryImpl.ofFn
          ((Equiv.curry
            (ChallengeBase Ipp.Bls12377.Fr G1 G2 GT)
            (Fin rejectionFuel) Ipp.Bls12377.Fr) table))
        (fieldBlockResultProcess base <$>
          liftM ((FieldPayloadBlockOracleSpec G1 G2 GT).query base))
        =
      fieldBlockResultProcess base
        (evalWithAnswerFn
          (QueryImpl.ofFn
            ((Equiv.curry
              (ChallengeBase Ipp.Bls12377.Fr G1 G2 GT)
              (Fin rejectionFuel) Ipp.Bls12377.Fr) table))
          (liftM ((FieldPayloadBlockOracleSpec G1 G2 GT).query
            base))) :=
        evalWithAnswerFn_map _ _ _
    _ =
      fieldBlockResultProcess base
        ((Equiv.curry
          (ChallengeBase Ipp.Bls12377.Fr G1 G2 GT)
          (Fin rejectionFuel) Ipp.Bls12377.Fr) table base) := by
        rw [show
          evalWithAnswerFn
              (QueryImpl.ofFn
                ((Equiv.curry
                  (ChallengeBase Ipp.Bls12377.Fr G1 G2 GT)
                  (Fin rejectionFuel) Ipp.Bls12377.Fr) table))
              (liftM ((FieldPayloadBlockOracleSpec G1 G2 GT).query
                base)) =
            (Equiv.curry
              (ChallengeBase Ipp.Bls12377.Fr G1 G2 GT)
              (Fin rejectionFuel) Ipp.Bls12377.Fr) table base from
          simulateQ_spec_query
            (impl := QueryImpl.ofFn
              ((Equiv.curry
                (ChallengeBase Ipp.Bls12377.Fr G1 G2 GT)
                (Fin rejectionFuel) Ipp.Bls12377.Fr) table)) base]
    _ =
      acceptFieldBlockFull (baseAcceptable base)
        ((Equiv.curry
          (ChallengeBase Ipp.Bls12377.Fr G1 G2 GT)
          (Fin rejectionFuel) Ipp.Bls12377.Fr) table base) := rfl

def fieldAttemptIdealVerifier
    {G1 G2 GT : Type}
    [AddCommGroup G1] [Module Ipp.Bls12377.Fr G1]
    [AddCommGroup G2] [Module Ipp.Bls12377.Fr G2]
    [AddCommGroup GT] [Module Ipp.Bls12377.Fr GT]
    [DecidableEq G1] [DecidableEq G2] [DecidableEq GT]
    {μ : Nat}
    (stmt : Ipp.FsStatement μ Ipp.Bls12377.Fr G1 G2 GT)
    (proof : Ipp.Proof μ Ipp.Bls12377.Fr G1 G2 GT) :
    ProbComp (Option (Ipp.FsTranscript μ Ipp.Bls12377.Fr)) :=
  (simulateQ
    (FieldAttemptOracleSpec G1 G2 GT).randomOracle
    (fieldAttemptTranscriptOracle stmt proof)).run' ∅

/-- Projecting away the quantitative bad flag from the reduced caching
implementation recovers the ordinary lazy oracle with reduced digest
responses. -/
theorem reducedCaching_run'_eq_mappedRandomOracle
    [SampleableType DigestBytes]
    {Domain Output : Type}
    [DecidableEq Domain]
    (program :
      OracleComp
        (Ipp.ShippingScalarReduction.ScalarOracleSpec Domain)
        Output) :
    (simulateQ
      (Ipp.ShippingScalarReduction.reducedCachingOracleImpl
        (Domain := Domain))
      program).run' (∅, false) =
    (simulateQ
      (Ipp.RandomOracleMap.mappedRandomOracle
        (fun _ digest =>
          Ipp.ShippingScalarReduction.reduceFr digest))
      program).run' ∅ := by
  have h :=
    QueryImpl.withCachingAux_run'_eq
      (spec :=
        Ipp.ShippingScalarReduction.ScalarOracleSpec Domain)
      (fun _point =>
        Ipp.ShippingScalarReduction.reduceFr <$>
          ($ᵗ DigestBytes))
      (fun _point _value _cache bad => bad)
      (fun _point _cache bad =>
        (fun value => (value, bad)) <$>
          (Ipp.ShippingScalarReduction.reduceFr <$>
            ($ᵗ DigestBytes)))
      (by
        intro point cache bad
        simp [Functor.map_map])
      program ∅ false
  simpa [
    Ipp.ShippingScalarReduction.reducedCachingOracleImpl,
    Ipp.RandomOracleMap.mappedRandomOracle] using h

/-- Projecting the same flag from the comparison implementation recovers the
ordinary lazy uniform field oracle. -/
theorem uniformCaching_run'_eq_randomOracle
    {Domain Output : Type}
    [DecidableEq Domain]
    (program :
      OracleComp
        (Ipp.ShippingScalarReduction.ScalarOracleSpec Domain)
        Output) :
    (simulateQ
      (Ipp.ShippingScalarReduction.uniformCachingOracleImpl
        (Domain := Domain))
      program).run' (∅, false) =
    (simulateQ
      (Ipp.ShippingScalarReduction.ScalarOracleSpec Domain).randomOracle
      program).run' ∅ := by
  have h :=
    QueryImpl.withCachingAux_run'_eq
      (spec :=
        Ipp.ShippingScalarReduction.ScalarOracleSpec Domain)
      (fun _point => ($ᵗ Ipp.Bls12377.Fr))
      (fun _point _value _cache bad => bad)
      (fun _point _cache bad =>
        (fun value => (value, bad)) <$>
          ($ᵗ Ipp.Bls12377.Fr))
      (by
        intro point cache bad
        simp [Functor.map_map])
      program ∅ false
  simpa [
    Ipp.ShippingScalarReduction.uniformCachingOracleImpl,
    OracleSpec.randomOracle, uniformSampleImpl] using h

/-- The output marginal of the reduced cache-aware experiment is exactly the
attempt-indexed byte-oracle shipping ideal. -/
theorem reducedCaching_fieldAttempt_evalDist_eq_attemptIdeal
    [SampleableType DigestBytes]
    {G1 G2 GT : Type}
    [AddCommGroup G1] [Module Ipp.Bls12377.Fr G1]
    [AddCommGroup G2] [Module Ipp.Bls12377.Fr G2]
    [AddCommGroup GT] [Module Ipp.Bls12377.Fr GT]
    [DecidableEq G1] [DecidableEq G2] [DecidableEq GT]
    {μ : Nat}
    (stmt : Ipp.FsStatement μ Ipp.Bls12377.Fr G1 G2 GT)
    (proof : Ipp.Proof μ Ipp.Bls12377.Fr G1 G2 GT) :
    𝒟[(simulateQ
      (Ipp.ShippingScalarReduction.reducedCachingOracleImpl
        (Domain := BoundedAttempt G1 G2 GT))
      (fieldAttemptTranscriptOracle stmt proof)).run'
        (∅, false)] =
      𝒟[attemptIdealVerifier stmt proof] := by
  calc
    𝒟[(simulateQ
      (Ipp.ShippingScalarReduction.reducedCachingOracleImpl
        (Domain := BoundedAttempt G1 G2 GT))
      (fieldAttemptTranscriptOracle stmt proof)).run'
        (∅, false)] =
      𝒟[(simulateQ
        (Ipp.RandomOracleMap.mappedRandomOracle
          (fun _ digest =>
            Ipp.ShippingScalarReduction.reduceFr digest))
        (fieldAttemptTranscriptOracle stmt proof)).run' ∅] := by
          rw [reducedCaching_run'_eq_mappedRandomOracle]
    _ =
      𝒟[(simulateQ
        (AttemptOracleSpec G1 G2 GT).randomOracle
        (simulateQ (@attemptReductionImpl G1 G2 GT)
          (fieldAttemptTranscriptOracle stmt proof))).run' ∅] := by
          symm
          exact Ipp.RandomOracleMap.evalDist_randomOracle_mapRange
            (fun _ digest =>
              Ipp.ShippingScalarReduction.reduceFr digest)
            (fieldAttemptTranscriptOracle stmt proof) ∅
    _ = 𝒟[attemptIdealVerifier stmt proof] := by
          rw [simulateQ_attemptReduction_fieldAttemptTranscript]
          rfl

/-- The output marginal of the comparison experiment is the ordinary
field-attempt ideal verifier. -/
theorem uniformCaching_fieldAttempt_evalDist_eq_fieldAttemptIdeal
    {G1 G2 GT : Type}
    [AddCommGroup G1] [Module Ipp.Bls12377.Fr G1]
    [AddCommGroup G2] [Module Ipp.Bls12377.Fr G2]
    [AddCommGroup GT] [Module Ipp.Bls12377.Fr GT]
    [DecidableEq G1] [DecidableEq G2] [DecidableEq GT]
    {μ : Nat}
    (stmt : Ipp.FsStatement μ Ipp.Bls12377.Fr G1 G2 GT)
    (proof : Ipp.Proof μ Ipp.Bls12377.Fr G1 G2 GT) :
    𝒟[(simulateQ
      (Ipp.ShippingScalarReduction.uniformCachingOracleImpl
        (Domain := BoundedAttempt G1 G2 GT))
      (fieldAttemptTranscriptOracle stmt proof)).run'
        (∅, false)] =
      𝒟[fieldAttemptIdealVerifier stmt proof] := by
  rw [uniformCaching_run'_eq_randomOracle]
  rfl

theorem probEvent_run'_eq_fst
    {State Output : Type}
    (computation : StateT State ProbComp Output)
    (initial : State)
    (predicate : Output → Prop) :
    Pr[predicate | computation.run' initial] =
      Pr[fun output => predicate output.1 |
        computation.run initial] := by
  rw [StateT.run'_eq, probEvent_map]
  apply probEvent_ext
  intro output _
  rfl

/-- Quantitative replacement of deployed 512-bit modular reduction by a
uniform BLS12-377 scalar oracle. Repeated queries are covered by the common
lazy cache, and the concrete structural query bound is discharged here. -/
theorem attemptIdeal_acceptance_le_fieldAttempt_add_modReduction
    [SampleableType DigestBytes]
    {G1 G2 GT : Type}
    [AddCommGroup G1] [Module Ipp.Bls12377.Fr G1]
    [AddCommGroup G2] [Module Ipp.Bls12377.Fr G2]
    [AddCommGroup GT] [Module Ipp.Bls12377.Fr GT]
    [DecidableEq G1] [DecidableEq G2] [DecidableEq GT]
    {μ : Nat}
    (stmt : Ipp.FsStatement μ Ipp.Bls12377.Fr G1 G2 GT)
    (proof : Ipp.Proof μ Ipp.Bls12377.Fr G1 G2 GT) :
    Pr[optionSatisfies (Ipp.FsAccepts stmt proof) |
        attemptIdealVerifier stmt proof] ≤
      Pr[optionSatisfies (Ipp.FsAccepts stmt proof) |
        fieldAttemptIdealVerifier stmt proof] +
      Ipp.ShippingScalarReduction.modReductionBudget
        ((μ + 4) * rejectionFuel) := by
  classical
  let program :=
    fieldAttemptTranscriptOracle stmt proof
  let reduced :=
    (simulateQ
      (Ipp.ShippingScalarReduction.reducedCachingOracleImpl
        (Domain := BoundedAttempt G1 G2 GT))
      program).run (∅, false)
  let uniform :=
    (simulateQ
      (Ipp.ShippingScalarReduction.uniformCachingOracleImpl
        (Domain := BoundedAttempt G1 G2 GT))
      program).run (∅, false)
  have hquery :
      IsQueryBoundP program (fun _point => True)
        ((μ + 4) * rejectionFuel) :=
    IsTotalQueryBound.isQueryBoundP
      (p := fun _point => True)
      (fieldAttemptTranscriptOracle_isTotalQueryBound stmt proof)
  have htv :
      ENNReal.ofReal (tvDist reduced uniform) ≤
        Ipp.ShippingScalarReduction.modReductionBudget
          ((μ + 4) * rejectionFuel) := by
    exact
      Ipp.ShippingScalarReduction.simulate_reducedCaching_uniformCaching_tvDist_le
        program ((μ + 4) * rejectionFuel) hquery
  have hevent :=
    probEvent_le_add_of_ofReal_tvDist_le
      (fun output =>
        optionSatisfies (Ipp.FsAccepts stmt proof) output.1)
      reduced uniform
      (Ipp.ShippingScalarReduction.modReductionBudget
        ((μ + 4) * rejectionFuel))
      htv
  calc
    Pr[optionSatisfies (Ipp.FsAccepts stmt proof) |
        attemptIdealVerifier stmt proof] =
      Pr[optionSatisfies (Ipp.FsAccepts stmt proof) |
        (simulateQ
          (Ipp.ShippingScalarReduction.reducedCachingOracleImpl
            (Domain := BoundedAttempt G1 G2 GT))
          program).run' (∅, false)] :=
        probEvent_congr' (fun _ _ => Iff.rfl)
          (reducedCaching_fieldAttempt_evalDist_eq_attemptIdeal
            stmt proof).symm
    _ =
      Pr[fun output =>
          optionSatisfies (Ipp.FsAccepts stmt proof) output.1 |
        reduced] := by
          exact probEvent_run'_eq_fst _ _
            (optionSatisfies (Ipp.FsAccepts stmt proof))
    _ ≤
      Pr[fun output =>
          optionSatisfies (Ipp.FsAccepts stmt proof) output.1 |
        uniform] +
        Ipp.ShippingScalarReduction.modReductionBudget
          ((μ + 4) * rejectionFuel) :=
            hevent
    _ =
      Pr[optionSatisfies (Ipp.FsAccepts stmt proof) |
        fieldAttemptIdealVerifier stmt proof] +
        Ipp.ShippingScalarReduction.modReductionBudget
          ((μ + 4) * rejectionFuel) := by
          congr 1
          rw [← probEvent_run'_eq_fst
            (simulateQ
              (Ipp.ShippingScalarReduction.uniformCachingOracleImpl
                (Domain := BoundedAttempt G1 G2 GT))
              program)
            (∅, false)
            (optionSatisfies (Ipp.FsAccepts stmt proof))]
          exact probEvent_congr' (fun _ _ => Iff.rfl)
            (uniformCaching_fieldAttempt_evalDist_eq_fieldAttemptIdeal
              stmt proof)

theorem fieldAttemptIdealVerifier_evalDist_eq_fieldBlock
    {G1 G2 GT : Type}
    [AddCommGroup G1] [Module Ipp.Bls12377.Fr G1]
    [AddCommGroup G2] [Module Ipp.Bls12377.Fr G2]
    [AddCommGroup GT] [Module Ipp.Bls12377.Fr GT]
    [DecidableEq G1] [DecidableEq G2] [DecidableEq GT]
    [Finite (ChallengeBase Ipp.Bls12377.Fr G1 G2 GT)]
    [SampleableType FieldBlock]
    [SampleableType
      (BoundedAttempt G1 G2 GT → Ipp.Bls12377.Fr)]
    [SampleableType
      (ChallengeBase Ipp.Bls12377.Fr G1 G2 GT → FieldBlock)]
    {μ : Nat}
    (stmt : Ipp.FsStatement μ Ipp.Bls12377.Fr G1 G2 GT)
    (proof : Ipp.Proof μ Ipp.Bls12377.Fr G1 G2 GT) :
    𝒟[fieldAttemptIdealVerifier stmt proof] =
      𝒟[fieldBlockIdealVerifier stmt proof] := by
  exact Ipp.RandomOracleCurry.evalDist_randomOracle_curry
    (fieldAttemptTranscriptOracle stmt proof)
    (fieldBlockTranscriptOracle stmt proof)
    (fun table =>
      evalWithAnswerFn_fieldAttemptTranscript_eq_block
        table stmt proof)

#print axioms fieldAttemptIdealVerifier_evalDist_eq_fieldBlock

def fieldAttemptPoint
    {G1 G2 GT : Type}
    (attempt : BoundedAttempt G1 G2 GT) :
    Ipp.ChallengePoint Ipp.Bls12377.Fr G1 G2 GT :=
  basePoint attempt.1 attempt.2.val

theorem fieldAttemptPoint_injective
    {G1 G2 GT : Type} :
    Function.Injective
      (@fieldAttemptPoint G1 G2 GT) := by
  intro left right heq
  have hpair :
      (left.1, left.2.val) = (right.1, right.2.val) :=
    basePoint_pair_injective heq
  apply Prod.ext
  · exact congrArg
      (fun pair :
        ChallengeBase Ipp.Bls12377.Fr G1 G2 GT × Nat =>
          pair.1) hpair
  · apply Fin.ext
    exact congrArg
      (fun pair :
        ChallengeBase Ipp.Bls12377.Fr G1 G2 GT × Nat =>
          pair.2) hpair

/-- The exact bounded field-attempt verifier reindexed into the structured
Fiat--Shamir point domain. -/
def structuredFieldAttemptIdealVerifier
    {G1 G2 GT : Type}
    [AddCommGroup G1] [Module Ipp.Bls12377.Fr G1]
    [AddCommGroup G2] [Module Ipp.Bls12377.Fr G2]
    [AddCommGroup GT] [Module Ipp.Bls12377.Fr GT]
    [DecidableEq G1] [DecidableEq G2] [DecidableEq GT]
    {μ : Nat}
    (stmt : Ipp.FsStatement μ Ipp.Bls12377.Fr G1 G2 GT)
    (proof : Ipp.Proof μ Ipp.Bls12377.Fr G1 G2 GT) :
    ProbComp (Option (Ipp.FsTranscript μ Ipp.Bls12377.Fr)) :=
  (simulateQ
    (Ipp.SnarkpackFsSpec
      Ipp.Bls12377.Fr G1 G2 GT).randomOracle
    (simulateQ
      (Ipp.RandomOracleReindex.reindexImpl
        (@fieldAttemptPoint G1 G2 GT))
      (fieldAttemptTranscriptOracle stmt proof))).run' ∅

theorem structuredFieldAttemptIdealVerifier_evalDist_eq_attempt
    {G1 G2 GT : Type}
    [AddCommGroup G1] [Module Ipp.Bls12377.Fr G1]
    [AddCommGroup G2] [Module Ipp.Bls12377.Fr G2]
    [AddCommGroup GT] [Module Ipp.Bls12377.Fr GT]
    [DecidableEq G1] [DecidableEq G2] [DecidableEq GT]
    {μ : Nat}
    (stmt : Ipp.FsStatement μ Ipp.Bls12377.Fr G1 G2 GT)
    (proof : Ipp.Proof μ Ipp.Bls12377.Fr G1 G2 GT) :
    𝒟[structuredFieldAttemptIdealVerifier stmt proof] =
      𝒟[fieldAttemptIdealVerifier stmt proof] := by
  exact Ipp.RandomOracleReindex.evalDist_randomOracle_reindex
    (@fieldAttemptPoint_injective G1 G2 GT)
    (fieldAttemptTranscriptOracle stmt proof) ∅

#print axioms
  structuredFieldAttemptIdealVerifier_evalDist_eq_attempt

def fieldAttemptSourceImpl
    {G1 G2 GT : Type} :
    QueryImpl (FieldAttemptOracleSpec G1 G2 GT)
      (OracleComp
        (Ipp.FsSourceSpec Ipp.Bls12377.Fr G1 G2 GT)) :=
  fun attempt =>
    (Ipp.FsSourceSpec Ipp.Bls12377.Fr G1 G2 GT).query
      (Sum.inr (fieldAttemptPoint attempt))

/-- One bounded attempt sampler, after reindexing into the actual
`FsSourceSpec`, is exactly `queryAccepting` with nonce metadata erased. -/
theorem simulateQ_queryFieldAttemptOracle_eq_queryAccepting
    {G1 G2 GT : Type}
    (base : ChallengeBase Ipp.Bls12377.Fr G1 G2 GT)
    (acceptable : Ipp.Bls12377.Fr → Bool)
    (fuel start : Nat)
    (hbound : start + fuel ≤ rejectionFuel) :
    simulateQ (@fieldAttemptSourceImpl G1 G2 GT)
        (queryFieldAttemptOracle base acceptable fuel start hbound) =
      Option.map Prod.fst <$>
        Ipp.queryAccepting
          (fun nonce => basePoint base nonce)
          acceptable fuel start := by
  induction fuel generalizing start with
  | zero =>
      rfl
  | succ fuel ih =>
      rw [queryFieldAttemptOracle.eq_def, Ipp.queryAccepting,
        simulateQ_bind, simulateQ_spec_query,
        map_eq_bind_pure_comp]
      simp only [fieldAttemptSourceImpl, fieldAttemptPoint,
        bind_assoc, Function.comp_apply]
      refine congrArg
        (fun continuation :
          Ipp.Bls12377.Fr →
            OracleComp
              (Ipp.FsSourceSpec Ipp.Bls12377.Fr G1 G2 GT)
              (Option Ipp.Bls12377.Fr) =>
          (liftM
            ((Ipp.FsSourceSpec Ipp.Bls12377.Fr G1 G2 GT).query
              (Sum.inr (basePoint base start))) :
                OracleComp
                  (Ipp.FsSourceSpec
                    Ipp.Bls12377.Fr G1 G2 GT)
                  Ipp.Bls12377.Fr) >>= continuation) ?_
      funext value
      by_cases hacceptable : acceptable value = true
      · simp [hacceptable]
      · simpa [hacceptable] using
          ih (start + 1) (by omega)

#print axioms
  simulateQ_queryFieldAttemptOracle_eq_queryAccepting

/-- One nonce-free result query implemented by the actual `FsGame`
`queryAccepting` loop, with operational nonce metadata erased. -/
def fsValueResultImpl
    {G1 G2 GT : Type} :
    QueryImpl (ResultOracleSpec G1 G2 GT)
      (OracleComp
        (Ipp.FsSourceSpec Ipp.Bls12377.Fr G1 G2 GT)) :=
  fun base =>
    Option.map Prod.fst <$>
      Ipp.queryAccepting
        (fun nonce => basePoint base nonce)
        (baseAcceptable base) rejectionFuel 0

@[simp]
theorem fsValueResultImpl_apply
    {G1 G2 GT : Type}
    (base : ChallengeBase Ipp.Bls12377.Fr G1 G2 GT) :
    @fsValueResultImpl G1 G2 GT base =
      Option.map Prod.fst <$>
        Ipp.queryAccepting
          (fun nonce => basePoint base nonce)
          (baseAcceptable base) rejectionFuel 0 := by
  rfl

theorem fieldAttemptSource_comp_result_eq_fsValue
    {G1 G2 GT : Type} :
    @fieldAttemptSourceImpl G1 G2 GT ∘ₛ
        @fieldAttemptResultImpl G1 G2 GT =
      @fsValueResultImpl G1 G2 GT := by
  funext base
  exact simulateQ_queryFieldAttemptOracle_eq_queryAccepting
    base (baseAcceptable base) rejectionFuel 0 (by simp)

def sourceResultTranscriptOracle
    {G1 G2 GT : Type}
    [AddCommGroup G1] [Module Ipp.Bls12377.Fr G1]
    [AddCommGroup G2] [Module Ipp.Bls12377.Fr G2]
    [AddCommGroup GT] [Module Ipp.Bls12377.Fr GT]
    {μ : Nat}
    (stmt : Ipp.FsStatement μ Ipp.Bls12377.Fr G1 G2 GT)
    (proof : Ipp.Proof μ Ipp.Bls12377.Fr G1 G2 GT) :
    OracleComp
      (Ipp.FsSourceSpec Ipp.Bls12377.Fr G1 G2 GT)
      (Option (Ipp.FsTranscript μ Ipp.Bls12377.Fr)) :=
  simulateQ fsValueResultImpl
    (resultTranscriptOracle stmt proof)

/-- Reindexing the bounded attempt verifier directly into `FsSourceSpec`
produces exactly the factored verifier implemented by `queryAccepting`. -/
theorem simulateQ_fieldAttemptTranscript_eq_sourceResult
    {G1 G2 GT : Type}
    [AddCommGroup G1] [Module Ipp.Bls12377.Fr G1]
    [AddCommGroup G2] [Module Ipp.Bls12377.Fr G2]
    [AddCommGroup GT] [Module Ipp.Bls12377.Fr GT]
    {μ : Nat}
    (stmt : Ipp.FsStatement μ Ipp.Bls12377.Fr G1 G2 GT)
    (proof : Ipp.Proof μ Ipp.Bls12377.Fr G1 G2 GT) :
    simulateQ (@fieldAttemptSourceImpl G1 G2 GT)
        (fieldAttemptTranscriptOracle stmt proof) =
      sourceResultTranscriptOracle stmt proof := by
  rw [fieldAttemptTranscriptOracle,
    ← QueryImpl.simulateQ_compose]
  rw [fieldAttemptSource_comp_result_eq_fsValue]
  rfl

#print axioms
  simulateQ_fieldAttemptTranscript_eq_sourceResult

def eraseRoundTranscriptNonces
    {μ : Nat}
    (rounds : Ipp.RoundTranscript μ Ipp.Bls12377.Fr) :
    Ipp.RoundTranscript μ Ipp.Bls12377.Fr := {
  prev := rounds.prev
  answer := rounds.answer
  nonce := fun _ => 0
  last := rounds.last }

/-- Factored nonce-free rounds are exactly the shipping `queryRounds`
computation followed by nonce erasure. -/
theorem sourceResultRounds_eq_queryRounds
    {G1 G2 GT : Type}
    (μ : Nat) (previous : Ipp.Bls12377.Fr)
    (rounds : Fin μ → Ipp.RoundComs G1 GT) :
    simulateQ (@fsValueResultImpl G1 G2 GT)
        (resultRoundsOracle μ previous rounds) =
      Option.map eraseRoundTranscriptNonces <$>
        Ipp.queryRounds (G2 := G2)
          rejectionFuel μ previous rounds := by
  induction μ generalizing previous with
  | zero =>
      simp [resultRoundsOracle, Ipp.queryRounds,
        eraseRoundTranscriptNonces]
      funext index
      exact Fin.elim0 index
  | succ μ ih =>
      rw [resultRoundsOracle, Ipp.queryRounds,
        simulateQ_bind, simulateQ_spec_query]
      simp only [fsValueResultImpl, map_eq_bind_pure_comp,
        bind_assoc, Function.comp_apply]
      refine congrArg
        (fun continuation :
          Option (Ipp.Bls12377.Fr × Nat) →
            OracleComp
              (Ipp.FsSourceSpec Ipp.Bls12377.Fr G1 G2 GT)
              (Option
                (Ipp.RoundTranscript (μ + 1)
                  Ipp.Bls12377.Fr)) =>
          Ipp.queryAccepting
            (fun nonce =>
              Ipp.ChallengePoint.round previous (rounds 0) nonce)
            Ipp.nonzeroB rejectionFuel 0 >>= continuation) ?_
      funext sampled
      cases sampled with
      | none =>
          rfl
      | some pair =>
          rcases pair with ⟨value, nonce⟩
          simp only [Option.map, Prod.fst, pure_bind]
          rw [simulateQ_bind, ih]
          simp only [map_eq_bind_pure_comp, bind_assoc,
            Function.comp_apply]
          refine congrArg
            (fun continuation :
              Option
                  (Ipp.RoundTranscript μ Ipp.Bls12377.Fr) →
                OracleComp
                  (Ipp.FsSourceSpec
                    Ipp.Bls12377.Fr G1 G2 GT)
                  (Option
                    (Ipp.RoundTranscript (μ + 1)
                      Ipp.Bls12377.Fr)) =>
              Ipp.queryRounds (G2 := G2) rejectionFuel μ value
                (fun i => rounds i.succ) >>= continuation) ?_
          funext tail
          cases tail with
          | none =>
              rfl
          | some tail =>
              simp [eraseRoundTranscriptNonces]
              funext index
              exact Fin.cases rfl (fun _ => rfl) index

#print axioms sourceResultRounds_eq_queryRounds

/-- The actual field-valued verifier challenge sequence, retaining the
operational nonce returned by each `queryAccepting` loop. -/
def fsTranscriptOptionOracle
    {G1 G2 GT : Type}
    [AddCommGroup G1] [Module Ipp.Bls12377.Fr G1]
    [AddCommGroup G2] [Module Ipp.Bls12377.Fr G2]
    [AddCommGroup GT] [Module Ipp.Bls12377.Fr GT]
    {μ : Nat}
    (stmt : Ipp.FsStatement μ Ipp.Bls12377.Fr G1 G2 GT)
    (proof : Ipp.Proof μ Ipp.Bls12377.Fr G1 G2 GT) :
    OracleComp
      (Ipp.FsSourceSpec Ipp.Bls12377.Fr G1 G2 GT)
      (Option (Ipp.FsTranscript μ Ipp.Bls12377.Fr)) := do
  let randomizerSample ← Ipp.queryAccepting
    (fun nonce => .randomizer
      { comA := proof.ComA.1
        comB := proof.ComB
        comC := proof.ComA.2 } nonce)
    Ipp.randomizerAcceptedB stmt.rejectionFuel 0
  match randomizerSample with
  | none => pure none
  | some (randomizer, randomizerNonce) =>
    let x0Sample ← Ipp.queryAccepting
      (fun nonce => .x0
        { r := randomizer
          comA := proof.ComA.1
          comB := proof.ComB
          comC := proof.ComA.2
          ipAb := proof.ipAb
          aggC := proof.aggC } nonce)
      Ipp.nonzeroB stmt.rejectionFuel 0
    match x0Sample with
    | none => pure none
    | some (x0, x0Nonce) =>
      let roundSample ← Ipp.queryRounds
        stmt.rejectionFuel μ x0 proof.rounds
      match roundSample with
      | none => pure none
      | some rounds =>
        let bridgeSample ← Ipp.queryAccepting
          (fun nonce => .bridge
            { lastRawChallenge := rounds.last
              vFinal := proof.vFinal
              wFinal := proof.wFinal
              aFinal := proof.aFinal
              bFinal := proof.bFinal
              cFinal := proof.cFinal } nonce)
          Ipp.nonzeroB stmt.rejectionFuel 0
        match bridgeSample with
        | none => pure none
        | some (bridge, bridgeNonce) =>
          let kzgSample ← Ipp.queryAccepting
            (fun nonce => .kzg
              { bridgeChallenge := bridge
                vFinal := proof.vFinal
                wFinal := proof.wFinal } nonce)
            Ipp.nonzeroB stmt.rejectionFuel 0
          match kzgSample with
          | none => pure none
          | some (kzg, kzgNonce) =>
            pure (some {
              randomizer := randomizer
              randomizerNonce := randomizerNonce
              x0 := x0
              x0Nonce := x0Nonce
              roundPrev := rounds.prev
              roundAnswer := rounds.answer
              roundNonce := rounds.nonce
              bridge := bridge
              bridgeNonce := bridgeNonce
              kzg := kzg
              kzgNonce := kzgNonce })

/-- The factored result verifier is exactly the actual `FsGame` challenge
sequence after erasing operational nonce metadata. -/
theorem sourceResultTranscript_eq_fsTranscriptOption
    {G1 G2 GT : Type}
    [AddCommGroup G1] [Module Ipp.Bls12377.Fr G1]
    [AddCommGroup G2] [Module Ipp.Bls12377.Fr G2]
    [AddCommGroup GT] [Module Ipp.Bls12377.Fr GT]
    {μ : Nat}
    (stmt : Ipp.FsStatement μ Ipp.Bls12377.Fr G1 G2 GT)
    (proof : Ipp.Proof μ Ipp.Bls12377.Fr G1 G2 GT)
    (hfuel : stmt.rejectionFuel = rejectionFuel) :
    sourceResultTranscriptOracle stmt proof =
      Option.map eraseTranscriptNonces <$>
        fsTranscriptOptionOracle stmt proof := by
  unfold sourceResultTranscriptOracle resultTranscriptOracle
    fsTranscriptOptionOracle
  rw [hfuel]
  simp only [simulateQ_bind, simulateQ_spec_query,
    map_eq_bind_pure_comp, bind_assoc, Function.comp_apply,
    basePoint, baseAcceptable, fsValueResultImpl_apply]
  refine congrArg
    (fun continuation :
      Option (Ipp.Bls12377.Fr × Nat) →
        OracleComp
          (Ipp.FsSourceSpec Ipp.Bls12377.Fr G1 G2 GT)
          (Option (Ipp.FsTranscript μ Ipp.Bls12377.Fr)) =>
      Ipp.queryAccepting
        (fun nonce =>
          Ipp.ChallengePoint.randomizer
            { comA := proof.ComA.1
              comB := proof.ComB
              comC := proof.ComA.2 } nonce)
        Ipp.randomizerAcceptedB rejectionFuel 0 >>=
          continuation) ?_
  funext randomizerSample
  cases randomizerSample with
  | none =>
      rfl
  | some randomizerPair =>
      rcases randomizerPair with
        ⟨randomizer, randomizerNonce⟩
      simp only [Option.map, Prod.fst, pure_bind,
        simulateQ_bind, simulateQ_spec_query,
        map_eq_bind_pure_comp, bind_assoc,
        Function.comp_apply, basePoint, baseAcceptable,
        fsValueResultImpl_apply]
      refine congrArg
        (fun continuation :
          Option (Ipp.Bls12377.Fr × Nat) →
            OracleComp
              (Ipp.FsSourceSpec Ipp.Bls12377.Fr G1 G2 GT)
              (Option
                (Ipp.FsTranscript μ Ipp.Bls12377.Fr)) =>
          Ipp.queryAccepting
            (fun nonce =>
              Ipp.ChallengePoint.x0
                { r := randomizer
                  comA := proof.ComA.1
                  comB := proof.ComB
                  comC := proof.ComA.2
                  ipAb := proof.ipAb
                  aggC := proof.aggC } nonce)
            Ipp.nonzeroB rejectionFuel 0 >>=
              continuation) ?_
      funext x0Sample
      cases x0Sample with
      | none =>
          rfl
      | some x0Pair =>
          rcases x0Pair with ⟨x0, x0Nonce⟩
          simp only [Option.map, Prod.fst, pure_bind,
            simulateQ_bind]
          have hrounds :=
            sourceResultRounds_eq_queryRounds
              (G1 := G1) (G2 := G2) (GT := GT)
              μ x0 proof.rounds
          rw [hrounds]
          simp only [map_eq_bind_pure_comp, bind_assoc,
            Function.comp_apply]
          refine congrArg
            (fun continuation :
              Option
                  (Ipp.RoundTranscript μ Ipp.Bls12377.Fr) →
                OracleComp
                  (Ipp.FsSourceSpec
                    Ipp.Bls12377.Fr G1 G2 GT)
                  (Option
                    (Ipp.FsTranscript μ Ipp.Bls12377.Fr)) =>
              Ipp.queryRounds (G2 := G2)
                rejectionFuel μ x0 proof.rounds >>=
                  continuation) ?_
          funext roundSample
          cases roundSample with
          | none =>
              rfl
          | some rounds =>
              simp only [Option.map, pure_bind]
              simp only [eraseRoundTranscriptNonces]
              simp only [simulateQ_bind, simulateQ_spec_query,
                map_eq_bind_pure_comp, bind_assoc,
                Function.comp_apply, basePoint, baseAcceptable,
                fsValueResultImpl_apply]
              refine congrArg
                (fun continuation :
                  Option (Ipp.Bls12377.Fr × Nat) →
                    OracleComp
                      (Ipp.FsSourceSpec
                        Ipp.Bls12377.Fr G1 G2 GT)
                      (Option
                        (Ipp.FsTranscript μ
                          Ipp.Bls12377.Fr)) =>
                  Ipp.queryAccepting
                    (fun nonce =>
                      Ipp.ChallengePoint.bridge
                        { lastRawChallenge := rounds.last
                          vFinal := proof.vFinal
                          wFinal := proof.wFinal
                          aFinal := proof.aFinal
                          bFinal := proof.bFinal
                          cFinal := proof.cFinal } nonce)
                    Ipp.nonzeroB rejectionFuel 0 >>=
                      continuation) ?_
              funext bridgeSample
              cases bridgeSample with
              | none =>
                  rfl
              | some bridgePair =>
                  rcases bridgePair with
                    ⟨bridge, bridgeNonce⟩
                  simp only [Option.map, Prod.fst, pure_bind,
                    simulateQ_bind, simulateQ_spec_query,
                    map_eq_bind_pure_comp, bind_assoc,
                    Function.comp_apply, basePoint, baseAcceptable,
                    fsValueResultImpl_apply]
                  refine congrArg
                    (fun continuation :
                      Option (Ipp.Bls12377.Fr × Nat) →
                        OracleComp
                          (Ipp.FsSourceSpec
                            Ipp.Bls12377.Fr G1 G2 GT)
                          (Option
                            (Ipp.FsTranscript μ
                              Ipp.Bls12377.Fr)) =>
                      Ipp.queryAccepting
                        (fun nonce =>
                          Ipp.ChallengePoint.kzg
                            { bridgeChallenge := bridge
                              vFinal := proof.vFinal
                              wFinal := proof.wFinal } nonce)
                        Ipp.nonzeroB rejectionFuel 0 >>=
                          continuation) ?_
                  funext kzgSample
                  cases kzgSample with
                  | none =>
                      rfl
                  | some kzgPair =>
                      rcases kzgPair with ⟨kzg, kzgNonce⟩
                      simp [eraseTranscriptNonces]

#print axioms
  sourceResultTranscript_eq_fsTranscriptOption

def finalizeFsResult
    {G1 G2 GT : Type}
    [AddCommGroup G1] [Module Ipp.Bls12377.Fr G1]
    [AddCommGroup G2] [Module Ipp.Bls12377.Fr G2]
    [AddCommGroup GT] [Module Ipp.Bls12377.Fr GT]
    {μ : Nat}
    (stmt : Ipp.FsStatement μ Ipp.Bls12377.Fr G1 G2 GT)
    (proof : Ipp.Proof μ Ipp.Bls12377.Fr G1 G2 GT) :
    Option (Ipp.FsTranscript μ Ipp.Bls12377.Fr) →
      Ipp.FsResult μ Ipp.Bls12377.Fr G1 G2 GT
  | none => Ipp.rejectedResult proof
  | some transcript => {
      proof := proof
      transcript := transcript
      accept := @ite Bool (Ipp.FsAccepts stmt proof transcript)
        (Classical.propDecidable _) true false }

/-- The shipping `fsVerifier` is exactly the option-valued challenge
sequence followed by its existing accepted/rejected result constructor. -/
private theorem fsVerifier_eq_finalizeFsResult_map_simp
    {G1 G2 GT : Type}
    [AddCommGroup G1] [Module Ipp.Bls12377.Fr G1]
    [AddCommGroup G2] [Module Ipp.Bls12377.Fr G2]
    [AddCommGroup GT] [Module Ipp.Bls12377.Fr GT]
    {μ : Nat}
    (stmt : Ipp.FsStatement μ Ipp.Bls12377.Fr G1 G2 GT)
    (proof : Ipp.Proof μ Ipp.Bls12377.Fr G1 G2 GT) :
    Ipp.fsVerifier stmt proof =
      finalizeFsResult stmt proof <$>
        fsTranscriptOptionOracle stmt proof := by
  unfold Ipp.fsVerifier fsTranscriptOptionOracle
  rw [map_eq_bind_pure_comp, bind_assoc]
  refine bind_congr fun randomizerSample => ?_
  cases randomizerSample with
  | none =>
      simp [finalizeFsResult]
  | some randomizerPair =>
      rcases randomizerPair with
        ⟨randomizer, randomizerNonce⟩
      rw [bind_assoc]
      refine bind_congr fun x0Sample => ?_
      cases x0Sample with
      | none =>
          simp [finalizeFsResult]
      | some x0Pair =>
          rcases x0Pair with ⟨x0, x0Nonce⟩
          rw [bind_assoc]
          refine bind_congr fun roundSample => ?_
          cases roundSample with
          | none =>
              simp [finalizeFsResult]
          | some rounds =>
              rw [bind_assoc]
              refine bind_congr fun bridgeSample => ?_
              cases bridgeSample with
              | none =>
                  simp [finalizeFsResult]
              | some bridgePair =>
                  rcases bridgePair with
                    ⟨bridge, bridgeNonce⟩
                  rw [bind_assoc]
                  refine bind_congr fun kzgSample => ?_
                  cases kzgSample with
                  | none =>
                      simp [finalizeFsResult]
                  | some kzgPair =>
                      rcases kzgPair with
                        ⟨kzg, kzgNonce⟩
                      simp [finalizeFsResult]

theorem fsVerifier_eq_finalizeFsResult_map
    {G1 G2 GT : Type}
    [AddCommGroup G1] [Module Ipp.Bls12377.Fr G1]
    [AddCommGroup G2] [Module Ipp.Bls12377.Fr G2]
    [AddCommGroup GT] [Module Ipp.Bls12377.Fr GT]
    {μ : Nat}
    (stmt : Ipp.FsStatement μ Ipp.Bls12377.Fr G1 G2 GT)
    (proof : Ipp.Proof μ Ipp.Bls12377.Fr G1 G2 GT) :
    Ipp.fsVerifier stmt proof =
      finalizeFsResult stmt proof <$>
        fsTranscriptOptionOracle stmt proof := by
  exact fsVerifier_eq_finalizeFsResult_map_simp stmt proof
/-
  unfold Ipp.fsVerifier fsTranscriptOptionOracle
  simp only [map_eq_bind_pure_comp, bind_assoc,
    Function.comp_apply, pure_bind]
  refine congrArg
    (fun continuation :
      Option (Ipp.Bls12377.Fr × Nat) →
        OracleComp
          (Ipp.FsSourceSpec Ipp.Bls12377.Fr G1 G2 GT)
          (Ipp.FsResult μ Ipp.Bls12377.Fr G1 G2 GT) =>
      Ipp.queryAccepting
        (fun nonce =>
          Ipp.ChallengePoint.randomizer
            { comA := proof.ComA.1
              comB := proof.ComB
              comC := proof.ComA.2 } nonce)
        Ipp.randomizerAcceptedB stmt.rejectionFuel 0 >>=
          continuation) ?_
  funext randomizerSample
  cases randomizerSample with
  | none =>
      rfl
  | some randomizerPair =>
      rcases randomizerPair with
        ⟨randomizer, randomizerNonce⟩
      simp only
      refine congrArg
        (fun continuation :
          Option (Ipp.Bls12377.Fr × Nat) →
            OracleComp
              (Ipp.FsSourceSpec Ipp.Bls12377.Fr G1 G2 GT)
              (Ipp.FsResult μ Ipp.Bls12377.Fr G1 G2 GT) =>
          Ipp.queryAccepting
            (fun nonce =>
              Ipp.ChallengePoint.x0
                { r := randomizer
                  comA := proof.ComA.1
                  comB := proof.ComB
                  comC := proof.ComA.2
                  ipAb := proof.ipAb
                  aggC := proof.aggC } nonce)
            Ipp.nonzeroB stmt.rejectionFuel 0 >>=
              continuation) ?_
      funext x0Sample
      cases x0Sample with
      | none =>
          rfl
      | some x0Pair =>
          rcases x0Pair with ⟨x0, x0Nonce⟩
          simp only [bind_assoc]
          refine congrArg
            (fun continuation :
              Option
                  (Ipp.RoundTranscript μ Ipp.Bls12377.Fr) →
                OracleComp
                  (Ipp.FsSourceSpec
                    Ipp.Bls12377.Fr G1 G2 GT)
                  (Ipp.FsResult μ Ipp.Bls12377.Fr G1 G2 GT) =>
              Ipp.queryRounds (G2 := G2)
                stmt.rejectionFuel μ x0 proof.rounds >>=
                  continuation) ?_
          funext roundSample
          cases roundSample with
          | none =>
              rfl
          | some rounds =>
              simp only [bind_assoc]
              refine congrArg
                (fun continuation :
                  Option (Ipp.Bls12377.Fr × Nat) →
                    OracleComp
                      (Ipp.FsSourceSpec
                        Ipp.Bls12377.Fr G1 G2 GT)
                      (Ipp.FsResult μ
                        Ipp.Bls12377.Fr G1 G2 GT) =>
                  Ipp.queryAccepting
                    (fun nonce =>
                      Ipp.ChallengePoint.bridge
                        { lastRawChallenge := rounds.last
                          vFinal := proof.vFinal
                          wFinal := proof.wFinal
                          aFinal := proof.aFinal
                          bFinal := proof.bFinal
                          cFinal := proof.cFinal } nonce)
                    Ipp.nonzeroB stmt.rejectionFuel 0 >>=
                      continuation) ?_
              funext bridgeSample
              cases bridgeSample with
              | none =>
                  rfl
              | some bridgePair =>
                  rcases bridgePair with
                    ⟨bridge, bridgeNonce⟩
                  simp only [bind_assoc]
                  refine congrArg
                    (fun continuation :
                      Option (Ipp.Bls12377.Fr × Nat) →
                        OracleComp
                          (Ipp.FsSourceSpec
                            Ipp.Bls12377.Fr G1 G2 GT)
                          (Ipp.FsResult μ
                            Ipp.Bls12377.Fr G1 G2 GT) =>
                      Ipp.queryAccepting
                        (fun nonce =>
                          Ipp.ChallengePoint.kzg
                            { bridgeChallenge := bridge
                              vFinal := proof.vFinal
                              wFinal := proof.wFinal } nonce)
                        Ipp.nonzeroB stmt.rejectionFuel 0 >>=
                          continuation) ?_
                  funext kzgSample
                  cases kzgSample with
                  | none =>
                      rfl
                  | some kzgPair =>
                      rcases kzgPair with ⟨kzg, kzgNonce⟩
                      simp only [bind_assoc]
                      rfl
-/

#print axioms fsVerifier_eq_finalizeFsResult_map

/-- The structured branch of `fsSourceOracle`, with its cache state exposed.
This is the exact lazy oracle used when a computation issues no ambient
`unifSpec` queries. -/
def restrictedFsRandomOracle
    (Point F : Type)
    [DecidableEq Point] :
    QueryImpl (Point →ₒ F)
      (StateT (Point →ₒ F).QueryCache
        (OracleComp (unifSpec + (Point →ₒ F)))) :=
  QueryImpl.withCaching (Ipp.fsSourceImpl Point F)

/-- Distributional simulation congruence across different outer oracle
specifications. The simulated query domain and state are shared; only the
source of each stateful query may differ. -/
theorem evalDist_simulateQ_run_cross
    {ι₁ ι₂ κ : Type}
    {outer₁ : OracleSpec ι₁}
    {outer₂ : OracleSpec ι₂}
    {inner : OracleSpec κ}
    [IsUniformSpec outer₁]
    [IsUniformSpec outer₂]
    {σ α : Type}
    (impl₁ :
      QueryImpl inner (StateT σ (OracleComp outer₁)))
    (impl₂ :
      QueryImpl inner (StateT σ (OracleComp outer₂)))
    (hquery : ∀ (q : inner.Domain) (state : σ),
      𝒟[(impl₁ q).run state] =
        𝒟[(impl₂ q).run state])
    (computation : OracleComp inner α)
    (state : σ) :
    𝒟[(simulateQ impl₁ computation).run state] =
      𝒟[(simulateQ impl₂ computation).run state] := by
  induction computation using OracleComp.inductionOn
      generalizing state with
  | pure output =>
      rfl
  | query_bind q continuation ih =>
      simp only [simulateQ_query_bind, StateT.run_bind]
      rw [evalDist_bind, evalDist_bind]
      congr 1
      · exact hquery q state
      · funext result
        exact ih result.1 result.2

/-- One cached structured query has the same distribution whether its fresh
answer comes from the standalone structured uniform oracle or from the
structured branch of `FsSourceSpec`. -/
theorem randomOracle_query_evalDist_eq_restricted
    {Point F : Type}
    [DecidableEq Point]
    [Nonempty F]
    [Inhabited F]
    [Fintype F]
    [SampleableType F]
    [IsUniformSpec (unifSpec + (Point →ₒ F))]
    (point : Point)
    (cache : (Point →ₒ F).QueryCache) :
    𝒟[((Point →ₒ F).randomOracle point).run cache] =
      𝒟[((restrictedFsRandomOracle Point F) point).run cache] := by
  letI : IsUniformSpec (Point →ₒ F) :=
    IsUniformSpec.ofFintypeInhabited _
  unfold restrictedFsRandomOracle
  cases hcached : cache point with
  | none =>
      rw [QueryImpl.withCaching_run_none _ hcached,
        QueryImpl.withCaching_run_none _ hcached]
      rw [evalDist_map, evalDist_map]
      have hsource :
          𝒟[($ᵗ F)] =
            𝒟[(liftM
              ((unifSpec + (Point →ₒ F)).query
                (Sum.inr point)) :
                  OracleComp
                    (unifSpec + (Point →ₒ F)) F)] := by
        let standalone :
            OracleComp (Point →ₒ F) F :=
          liftM ((Point →ₒ F).query point)
        calc
          𝒟[($ᵗ F)] = 𝒟[standalone] := by
            simp [standalone, evalDist_uniformSample,
              evalDist_query]
          _ =
              𝒟[liftComp standalone
                (unifSpec + (Point →ₒ F))] := by
            symm
            exact evalDist_liftComp standalone
          _ =
              𝒟[(liftM
                ((unifSpec + (Point →ₒ F)).query
                  (Sum.inr point)) :
                    OracleComp
                      (unifSpec + (Point →ₒ F)) F)] := by
            rfl
      change
        (fun value : F =>
          (value, cache.cacheQuery point value)) <$>
            𝒟[($ᵗ F)] =
          (fun value : F =>
            (value, cache.cacheQuery point value)) <$>
              𝒟[(liftM
                ((unifSpec + (Point →ₒ F)).query
                  (Sum.inr point)) :
                    OracleComp
                      (unifSpec + (Point →ₒ F)) F)]
      exact congrArg
        (fun distribution =>
          (fun value : F =>
            (value, cache.cacheQuery point value)) <$>
              distribution)
        hsource
  | some cached =>
      rw [QueryImpl.withCaching_run_some _ hcached,
        QueryImpl.withCaching_run_some _ hcached]
      rfl

/-- A standalone lazy structured oracle and the restricted `FsSourceSpec`
oracle have exactly the same output-and-cache distribution. -/
theorem randomOracle_evalDist_eq_restricted
    {Point F α : Type}
    [DecidableEq Point]
    [Nonempty F]
    [Inhabited F]
    [Fintype F]
    [SampleableType F]
    [IsUniformSpec (unifSpec + (Point →ₒ F))]
    (computation : OracleComp (Point →ₒ F) α)
    (cache : (Point →ₒ F).QueryCache) :
    𝒟[(simulateQ (Point →ₒ F).randomOracle
          computation).run cache] =
      𝒟[(simulateQ (restrictedFsRandomOracle Point F)
          computation).run cache] :=
  evalDist_simulateQ_run_cross
    (Point →ₒ F).randomOracle
    (restrictedFsRandomOracle Point F)
    randomOracle_query_evalDist_eq_restricted
    computation cache

/-- Restricting the shipping FS source interpreter to structured queries is
definitionally the same cached oracle as `restrictedFsRandomOracle`. -/
theorem fsSourceOracle_comp_structured
    (Point F : Type)
    [DecidableEq Point] :
    Ipp.fsSourceOracle Point F ∘ₛ
        Ipp.fsSourceImpl Point F =
      restrictedFsRandomOracle Point F := by
  funext point
  simp [Ipp.fsSourceOracle, Ipp.fsSourceImpl,
    restrictedFsRandomOracle, QueryImpl.add_apply_inr]

/-- On computations containing only structured queries, `fsRandomFunction`
is exactly the restricted cached source interpreter, before taking
probabilities. -/
theorem fsRandomFunction_structured_eq
    {Point F α : Type}
    [DecidableEq Point]
    (computation : OracleComp (Point →ₒ F) α) :
    Ipp.fsRandomFunction
        (simulateQ (Ipp.fsSourceImpl Point F) computation) =
      (simulateQ (restrictedFsRandomOracle Point F)
        computation).run' ∅ := by
  unfold Ipp.fsRandomFunction
  rw [← QueryImpl.simulateQ_compose]
  rw [fsSourceOracle_comp_structured]
  rfl

/-- Therefore standalone structured random-oracle execution is
distribution-identical to the `FsGame` shared-cache wrapper on a
structured-only computation. -/
theorem randomOracle_evalDist_eq_fsRandomFunction
    {Point F α : Type}
    [DecidableEq Point]
    [Nonempty F]
    [Inhabited F]
    [Fintype F]
    [SampleableType F]
    [IsUniformSpec (unifSpec + (Point →ₒ F))]
    (computation : OracleComp (Point →ₒ F) α) :
    𝒟[(simulateQ (Point →ₒ F).randomOracle
          computation).run' ∅] =
      𝒟[Ipp.fsRandomFunction
        (simulateQ (Ipp.fsSourceImpl Point F) computation)] := by
  rw [fsRandomFunction_structured_eq]
  unfold StateT.run'
  rw [evalDist_map, evalDist_map]
  exact congrArg (fun distribution => Prod.fst <$> distribution)
    (randomOracle_evalDist_eq_restricted computation ∅)

#print axioms randomOracle_evalDist_eq_fsRandomFunction

/-- Composing the actual structured FS embedding with the bounded-attempt
reindexer is exactly the direct attempt source used above. -/
theorem fsSourceImpl_comp_reindex_eq_fieldAttemptSource
    {G1 G2 GT : Type} :
    Ipp.fsSourceImpl
        (Ipp.ChallengePoint Ipp.Bls12377.Fr G1 G2 GT)
        Ipp.Bls12377.Fr ∘ₛ
      Ipp.RandomOracleReindex.reindexImpl
        (@fieldAttemptPoint G1 G2 GT) =
      @fieldAttemptSourceImpl G1 G2 GT := by
  funext attempt
  rfl

/-- The reindexed attempt computation, embedded into `FsSourceSpec`, is
exactly the factored shipping challenge computation. -/
theorem structuredAttempt_embeds_eq_sourceResult
    {G1 G2 GT : Type}
    [AddCommGroup G1] [Module Ipp.Bls12377.Fr G1]
    [AddCommGroup G2] [Module Ipp.Bls12377.Fr G2]
    [AddCommGroup GT] [Module Ipp.Bls12377.Fr GT]
    {μ : Nat}
    (stmt : Ipp.FsStatement μ Ipp.Bls12377.Fr G1 G2 GT)
    (proof : Ipp.Proof μ Ipp.Bls12377.Fr G1 G2 GT) :
    simulateQ
        (Ipp.fsSourceImpl
          (Ipp.ChallengePoint Ipp.Bls12377.Fr G1 G2 GT)
          Ipp.Bls12377.Fr)
        (simulateQ
          (Ipp.RandomOracleReindex.reindexImpl
            (@fieldAttemptPoint G1 G2 GT))
          (fieldAttemptTranscriptOracle stmt proof)) =
      sourceResultTranscriptOracle stmt proof := by
  rw [← QueryImpl.simulateQ_compose]
  rw [fsSourceImpl_comp_reindex_eq_fieldAttemptSource]
  exact simulateQ_fieldAttemptTranscript_eq_sourceResult
    stmt proof

/-- The exact field-attempt ideal experiment is the same probability space as
the real `FsGame` shared-cache wrapper applied to the factored shipping
challenge computation. -/
theorem structuredFieldAttempt_evalDist_eq_fsRandomFunction_sourceResult
    {G1 G2 GT : Type}
    [AddCommGroup G1] [Module Ipp.Bls12377.Fr G1]
    [AddCommGroup G2] [Module Ipp.Bls12377.Fr G2]
    [AddCommGroup GT] [Module Ipp.Bls12377.Fr GT]
    [DecidableEq G1] [DecidableEq G2] [DecidableEq GT]
    {μ : Nat}
    (stmt : Ipp.FsStatement μ Ipp.Bls12377.Fr G1 G2 GT)
    (proof : Ipp.Proof μ Ipp.Bls12377.Fr G1 G2 GT) :
    𝒟[structuredFieldAttemptIdealVerifier stmt proof] =
      𝒟[Ipp.fsRandomFunction
        (sourceResultTranscriptOracle stmt proof)] := by
  unfold structuredFieldAttemptIdealVerifier
  have h :=
    randomOracle_evalDist_eq_fsRandomFunction
      (computation :=
        simulateQ
          (Ipp.RandomOracleReindex.reindexImpl
            (@fieldAttemptPoint G1 G2 GT))
          (fieldAttemptTranscriptOracle stmt proof))
  rw [structuredAttempt_embeds_eq_sourceResult stmt proof] at h
  exact h

#print axioms
  structuredFieldAttempt_evalDist_eq_fsRandomFunction_sourceResult

/-- `fsRandomFunction` commutes exactly with deterministic output mapping. -/
theorem fsRandomFunction_map
    {Point F α β : Type}
    [DecidableEq Point]
    (process : α → β)
    (computation :
      OracleComp (unifSpec + (Point →ₒ F)) α) :
    Ipp.fsRandomFunction (process <$> computation) =
      process <$> Ipp.fsRandomFunction computation := by
  unfold Ipp.fsRandomFunction
  rw [simulateQ_map, StateT.run_map]
  simp [Functor.map_map, Function.comp_def]

/-- The factored result constructor accepts exactly successful transcripts
satisfying the formal verifier predicate. -/
theorem finalizeFsResult_accept_iff
    {G1 G2 GT : Type}
    [AddCommGroup G1] [Module Ipp.Bls12377.Fr G1]
    [AddCommGroup G2] [Module Ipp.Bls12377.Fr G2]
    [AddCommGroup GT] [Module Ipp.Bls12377.Fr GT]
    {μ : Nat}
    (stmt : Ipp.FsStatement μ Ipp.Bls12377.Fr G1 G2 GT)
    (proof : Ipp.Proof μ Ipp.Bls12377.Fr G1 G2 GT)
    (sample : Option
      (Ipp.FsTranscript μ Ipp.Bls12377.Fr)) :
    (finalizeFsResult stmt proof sample).accept = true ↔
      optionSatisfies (Ipp.FsAccepts stmt proof) sample := by
  cases sample <;>
    simp [finalizeFsResult, optionSatisfies,
      Ipp.rejectedResult]

/-- Erasing operational nonce metadata preserves the option-valued
acceptance event, including the fail-closed `none` case. -/
theorem optionSatisfies_eraseTranscriptNonces_iff
    {G1 G2 GT : Type}
    [AddCommGroup G1] [Module Ipp.Bls12377.Fr G1]
    [AddCommGroup G2] [Module Ipp.Bls12377.Fr G2]
    [AddCommGroup GT] [Module Ipp.Bls12377.Fr GT]
    {μ : Nat}
    (stmt : Ipp.FsStatement μ Ipp.Bls12377.Fr G1 G2 GT)
    (proof : Ipp.Proof μ Ipp.Bls12377.Fr G1 G2 GT)
    (sample : Option
      (Ipp.FsTranscript μ Ipp.Bls12377.Fr)) :
    optionSatisfies (Ipp.FsAccepts stmt proof)
        (Option.map eraseTranscriptNonces sample) ↔
      optionSatisfies (Ipp.FsAccepts stmt proof) sample := by
  cases sample with
  | none =>
      rfl
  | some transcript =>
      exact fsAccepts_eraseTranscriptNonces_iff
        stmt proof transcript

/-- The factored nonce-free computation has exactly the same acceptance
probability as the nonce-retaining challenge sequence. -/
theorem sourceResult_acceptance_eq_fsTranscript
    {G1 G2 GT : Type}
    [AddCommGroup G1] [Module Ipp.Bls12377.Fr G1]
    [AddCommGroup G2] [Module Ipp.Bls12377.Fr G2]
    [AddCommGroup GT] [Module Ipp.Bls12377.Fr GT]
    [DecidableEq G1] [DecidableEq G2] [DecidableEq GT]
    {μ : Nat}
    (stmt : Ipp.FsStatement μ Ipp.Bls12377.Fr G1 G2 GT)
    (proof : Ipp.Proof μ Ipp.Bls12377.Fr G1 G2 GT)
    (hfuel : stmt.rejectionFuel = rejectionFuel) :
    Pr[optionSatisfies (Ipp.FsAccepts stmt proof) |
        Ipp.fsRandomFunction
          (sourceResultTranscriptOracle stmt proof)] =
      Pr[optionSatisfies (Ipp.FsAccepts stmt proof) |
        Ipp.fsRandomFunction
          (fsTranscriptOptionOracle stmt proof)] := by
  rw [sourceResultTranscript_eq_fsTranscriptOption
    stmt proof hfuel]
  rw [fsRandomFunction_map]
  rw [probEvent_map]
  apply probEvent_ext
  intro sample _
  exact optionSatisfies_eraseTranscriptNonces_iff
    stmt proof sample

/-- The nonce-retaining option computation and `fsVerifier` have identical
acceptance probability. -/
theorem fsTranscript_acceptance_eq_fsVerifier
    {G1 G2 GT : Type}
    [AddCommGroup G1] [Module Ipp.Bls12377.Fr G1]
    [AddCommGroup G2] [Module Ipp.Bls12377.Fr G2]
    [AddCommGroup GT] [Module Ipp.Bls12377.Fr GT]
    [DecidableEq G1] [DecidableEq G2] [DecidableEq GT]
    {μ : Nat}
    (stmt : Ipp.FsStatement μ Ipp.Bls12377.Fr G1 G2 GT)
    (proof : Ipp.Proof μ Ipp.Bls12377.Fr G1 G2 GT) :
    Pr[optionSatisfies (Ipp.FsAccepts stmt proof) |
        Ipp.fsRandomFunction
          (fsTranscriptOptionOracle stmt proof)] =
      Pr[fun result => result.accept = true |
        Ipp.fsRandomFunction (Ipp.fsVerifier stmt proof)] := by
  rw [fsVerifier_eq_finalizeFsResult_map stmt proof]
  rw [fsRandomFunction_map]
  rw [probEvent_map]
  symm
  apply probEvent_ext
  intro sample _
  exact finalizeFsResult_accept_iff stmt proof sample

/-- Query logging in `fsProbComp` preserves the verifier acceptance
probability for the fixed shipping proof. -/
theorem fsVerifier_acceptance_eq_fsProbComp
    {G1 G2 GT : Type}
    [AddCommGroup G1] [Module Ipp.Bls12377.Fr G1]
    [AddCommGroup G2] [Module Ipp.Bls12377.Fr G2]
    [AddCommGroup GT] [Module Ipp.Bls12377.Fr GT]
    [DecidableEq G1] [DecidableEq G2] [DecidableEq GT]
    {μ : Nat}
    (stmt : Ipp.FsStatement μ Ipp.Bls12377.Fr G1 G2 GT)
    (proof : Ipp.Proof μ Ipp.Bls12377.Fr G1 G2 GT) :
    Pr[fun result => result.accept = true |
        Ipp.fsRandomFunction (Ipp.fsVerifier stmt proof)] =
      Pr[Ipp.Accepted |
        Ipp.fsProbComp stmt
          (pure proof :
            OracleComp
              (Ipp.FsSourceSpec
                Ipp.Bls12377.Fr G1 G2 GT)
              (Ipp.Proof μ
                Ipp.Bls12377.Fr G1 G2 GT))] := by
  symm
  simpa [Ipp.fsProbComp, Ipp.FsGame, Ipp.Accepted] using
    (probEvent_fst_replayFirstRun
      (main :=
        Ipp.fsRandomFunction (Ipp.fsVerifier stmt proof))
      (p := fun result => result.accept = true))

#print axioms sourceResult_acceptance_eq_fsTranscript
#print axioms fsTranscript_acceptance_eq_fsVerifier
#print axioms fsVerifier_acceptance_eq_fsProbComp

/-- The cache-aware uniform-field ideal verifier has exactly the acceptance
probability of the formal `FsGame` for the fixed shipping proof. -/
theorem fieldResultIdeal_acceptance_eq_fsProbComp
    [SampleableType FieldBlock]
    {G1 G2 GT : Type}
    [AddCommGroup G1] [Module Ipp.Bls12377.Fr G1]
    [AddCommGroup G2] [Module Ipp.Bls12377.Fr G2]
    [AddCommGroup GT] [Module Ipp.Bls12377.Fr GT]
    [DecidableEq G1] [DecidableEq G2] [DecidableEq GT]
    [Finite
      (ChallengeBase Ipp.Bls12377.Fr G1 G2 GT)]
    [SampleableType
      (BoundedAttempt G1 G2 GT → Ipp.Bls12377.Fr)]
    [SampleableType
      (ChallengeBase Ipp.Bls12377.Fr G1 G2 GT →
        FieldBlock)]
    {μ : Nat}
    (stmt : Ipp.FsStatement μ Ipp.Bls12377.Fr G1 G2 GT)
    (proof : Ipp.Proof μ Ipp.Bls12377.Fr G1 G2 GT)
    (hfuel : stmt.rejectionFuel = rejectionFuel) :
    Pr[optionSatisfies (Ipp.FsAccepts stmt proof) |
        fieldResultIdealVerifier stmt proof] =
      Pr[Ipp.Accepted |
        Ipp.fsProbComp stmt
          (pure proof :
            OracleComp
              (Ipp.FsSourceSpec
                Ipp.Bls12377.Fr G1 G2 GT)
              (Ipp.Proof μ
                Ipp.Bls12377.Fr G1 G2 GT))] := by
  have hfield :
      𝒟[fieldResultIdealVerifier stmt proof] =
        𝒟[structuredFieldAttemptIdealVerifier
          stmt proof] :=
    (fieldResultIdealVerifier_evalDist_eq_fieldBlock
      stmt proof).trans
      ((fieldAttemptIdealVerifier_evalDist_eq_fieldBlock
        stmt proof).symm.trans
        (structuredFieldAttemptIdealVerifier_evalDist_eq_attempt
          stmt proof).symm)
  calc
    Pr[optionSatisfies (Ipp.FsAccepts stmt proof) |
        fieldResultIdealVerifier stmt proof] =
        Pr[optionSatisfies (Ipp.FsAccepts stmt proof) |
          structuredFieldAttemptIdealVerifier stmt proof] :=
            probEvent_congr' (fun _ _ => Iff.rfl) hfield
    _ =
        Pr[optionSatisfies (Ipp.FsAccepts stmt proof) |
          Ipp.fsRandomFunction
            (sourceResultTranscriptOracle stmt proof)] :=
              probEvent_congr' (fun _ _ => Iff.rfl)
                (structuredFieldAttempt_evalDist_eq_fsRandomFunction_sourceResult
                  stmt proof)
    _ =
        Pr[optionSatisfies (Ipp.FsAccepts stmt proof) |
          Ipp.fsRandomFunction
            (fsTranscriptOptionOracle stmt proof)] :=
              sourceResult_acceptance_eq_fsTranscript
                stmt proof hfuel
    _ =
        Pr[fun result => result.accept = true |
          Ipp.fsRandomFunction
            (Ipp.fsVerifier stmt proof)] :=
              fsTranscript_acceptance_eq_fsVerifier
                stmt proof
    _ =
        Pr[Ipp.Accepted |
          Ipp.fsProbComp stmt
            (pure proof :
              OracleComp
                (Ipp.FsSourceSpec
                  Ipp.Bls12377.Fr G1 G2 GT)
                (Ipp.Proof μ
                  Ipp.Bls12377.Fr G1 G2 GT))] :=
              fsVerifier_acceptance_eq_fsProbComp
                stmt proof

#print axioms fieldResultIdeal_acceptance_eq_fsProbComp

/-- The attempt-indexed uniform-field experiment has exactly the formal
`FsGame` acceptance probability.  Both finite encodings are independently
coupled to the same payload-block experiment. -/
theorem fieldAttemptIdeal_acceptance_eq_fsProbComp
    [SampleableType FieldBlock]
    {G1 G2 GT : Type}
    [AddCommGroup G1] [Module Ipp.Bls12377.Fr G1]
    [AddCommGroup G2] [Module Ipp.Bls12377.Fr G2]
    [AddCommGroup GT] [Module Ipp.Bls12377.Fr GT]
    [DecidableEq G1] [DecidableEq G2] [DecidableEq GT]
    [Finite
      (ChallengeBase Ipp.Bls12377.Fr G1 G2 GT)]
    [SampleableType
      (BoundedAttempt G1 G2 GT → Ipp.Bls12377.Fr)]
    [SampleableType
      (ChallengeBase Ipp.Bls12377.Fr G1 G2 GT →
        FieldBlock)]
    {μ : Nat}
    (stmt : Ipp.FsStatement μ Ipp.Bls12377.Fr G1 G2 GT)
    (proof : Ipp.Proof μ Ipp.Bls12377.Fr G1 G2 GT)
    (hfuel : stmt.rejectionFuel = rejectionFuel) :
    Pr[optionSatisfies (Ipp.FsAccepts stmt proof) |
        fieldAttemptIdealVerifier stmt proof] =
      Pr[Ipp.Accepted |
        Ipp.fsProbComp stmt
          (pure proof :
            OracleComp
              (Ipp.FsSourceSpec
                Ipp.Bls12377.Fr G1 G2 GT)
              (Ipp.Proof μ
                Ipp.Bls12377.Fr G1 G2 GT))] := by
  have hfield :
      𝒟[fieldAttemptIdealVerifier stmt proof] =
        𝒟[fieldResultIdealVerifier stmt proof] :=
    (fieldAttemptIdealVerifier_evalDist_eq_fieldBlock
      stmt proof).trans
      (fieldResultIdealVerifier_evalDist_eq_fieldBlock
        stmt proof).symm
  exact
    (probEvent_congr' (fun _ _ => Iff.rfl) hfield).trans
      (fieldResultIdeal_acceptance_eq_fsProbComp
        stmt proof hfuel)

#print axioms fieldAttemptIdeal_acceptance_eq_fsProbComp

/-- The finite attempt encoder induced by a challenge-point byte encoder. -/
def pointAttemptEncode
    {G1 G2 GT : Type}
    (encode :
      Ipp.ChallengePoint Ipp.Bls12377.Fr G1 G2 GT →
        List UInt8)
    (attempt : BoundedAttempt G1 G2 GT) :
    List UInt8 :=
  encode (fieldAttemptPoint attempt)

/-- Reindexing one finite decoded-attempt loop into byte queries is exactly
the shipping byte sampler, after erasing its operational nonce result. -/
theorem simulateQ_queryDecodedAttempt_eq_shippingQuery
    {G1 G2 GT : Type}
    (encode :
      Ipp.ChallengePoint Ipp.Bls12377.Fr G1 G2 GT →
        List UInt8)
    (base :
      ChallengeBase Ipp.Bls12377.Fr G1 G2 GT)
    (acceptable : Ipp.Bls12377.Fr → Bool)
    (fuel start : Nat)
    (hbound : start + fuel ≤ rejectionFuel) :
    simulateQ
        (Ipp.RandomOracleReindex.reindexImpl
          (pointAttemptEncode encode))
        (queryDecodedAttemptOracle base acceptable
          fuel start hbound) =
      Option.map Prod.fst <$>
        queryDecodedPointOracle encode
          (fun nonce => basePoint base nonce)
          acceptable fuel start := by
  induction fuel generalizing start with
  | zero =>
      rfl
  | succ fuel ih =>
      rw [queryDecodedAttemptOracle.eq_def,
        queryDecodedPointOracle.eq_def,
        simulateQ_bind, simulateQ_spec_query,
        map_eq_bind_pure_comp]
      simp only [Ipp.RandomOracleReindex.reindexImpl,
        pointAttemptEncode, fieldAttemptPoint,
        bind_assoc, Function.comp_apply]
      refine congrArg
        (fun continuation :
          DigestBytes →
            OracleComp Blake2bOracleSpec
              (Option Ipp.Bls12377.Fr) =>
          (liftM
            (Blake2bOracleSpec.query
              (encode (basePoint base start))) :
                OracleComp Blake2bOracleSpec DigestBytes) >>=
            continuation) ?_
      funext digest
      rw [shippingDecodeFr_eq_some]
      by_cases hacceptable :
          acceptable
            (Ipp.ShippingScalarReduction.reduceFr digest) = true
      · simp [hacceptable]
      · simpa [hacceptable] using
          ih (start + 1) (by omega)

def shippingValueResultImpl
    {G1 G2 GT : Type}
    (encode :
      Ipp.ChallengePoint Ipp.Bls12377.Fr G1 G2 GT →
        List UInt8) :
    QueryImpl (ResultOracleSpec G1 G2 GT)
      (OracleComp Blake2bOracleSpec) :=
  fun base =>
    Option.map Prod.fst <$>
      queryDecodedPointOracle encode
        (fun nonce => basePoint base nonce)
        (baseAcceptable base) rejectionFuel 0

theorem reindexAttempt_comp_result_eq_shippingValue
    {G1 G2 GT : Type}
    (encode :
      Ipp.ChallengePoint Ipp.Bls12377.Fr G1 G2 GT →
        List UInt8) :
    Ipp.RandomOracleReindex.reindexImpl
        (pointAttemptEncode encode) ∘ₛ
      @attemptResultImpl G1 G2 GT =
        shippingValueResultImpl encode := by
  funext base
  exact simulateQ_queryDecodedAttempt_eq_shippingQuery
    encode base (baseAcceptable base)
      rejectionFuel 0 (by simp)

/-- The nonce-erased finite-attempt transcript, reindexed into byte queries,
is exactly the factored shipping value computation. -/
theorem reindexedAttemptTranscript_eq_shippingValue
    {G1 G2 GT : Type}
    [AddCommGroup G1] [Module Ipp.Bls12377.Fr G1]
    [AddCommGroup G2] [Module Ipp.Bls12377.Fr G2]
    [AddCommGroup GT] [Module Ipp.Bls12377.Fr GT]
    {μ : Nat}
    (encode :
      Ipp.ChallengePoint Ipp.Bls12377.Fr G1 G2 GT →
        List UInt8)
    (stmt : Ipp.FsStatement μ Ipp.Bls12377.Fr G1 G2 GT)
    (proof : Ipp.Proof μ Ipp.Bls12377.Fr G1 G2 GT) :
    simulateQ
        (Ipp.RandomOracleReindex.reindexImpl
          (pointAttemptEncode encode))
        (attemptTranscriptOracle stmt proof) =
      simulateQ (shippingValueResultImpl encode)
        (resultTranscriptOracle stmt proof) := by
  rw [attemptTranscriptOracle,
    ← QueryImpl.simulateQ_compose]
  rw [reindexAttempt_comp_result_eq_shippingValue]

/-- Factored nonce-free byte rounds are exactly the shipping byte round
sampler followed by operational nonce erasure. -/
theorem shippingValueRounds_eq_shippingQueryRounds
    {G1 G2 GT : Type}
    (encode :
      Ipp.ChallengePoint Ipp.Bls12377.Fr G1 G2 GT →
        List UInt8)
    (μ : Nat)
    (previous : Ipp.Bls12377.Fr)
    (rounds : Fin μ → Ipp.RoundComs G1 GT) :
    simulateQ (shippingValueResultImpl encode)
        (resultRoundsOracle μ previous rounds) =
      Option.map eraseRoundTranscriptNonces <$>
        shippingQueryRoundsOracle encode rejectionFuel
          μ previous rounds := by
  induction μ generalizing previous with
  | zero =>
      simp [resultRoundsOracle, shippingQueryRoundsOracle,
        eraseRoundTranscriptNonces]
      funext index
      exact Fin.elim0 index
  | succ μ ih =>
      rw [resultRoundsOracle, shippingQueryRoundsOracle,
        simulateQ_bind, simulateQ_spec_query]
      simp only [shippingValueResultImpl,
        map_eq_bind_pure_comp, bind_assoc,
        Function.comp_apply]
      refine congrArg
        (fun continuation :
          Option (Ipp.Bls12377.Fr × Nat) →
            OracleComp Blake2bOracleSpec
              (Option
                (Ipp.RoundTranscript (μ + 1)
                  Ipp.Bls12377.Fr)) =>
          queryDecodedPointOracle encode
            (fun nonce =>
              Ipp.ChallengePoint.round previous
                (rounds 0) nonce)
            Ipp.nonzeroB rejectionFuel 0 >>=
              continuation) ?_
      funext sampled
      cases sampled with
      | none =>
          rfl
      | some pair =>
          rcases pair with ⟨value, nonce⟩
          simp only [Option.map, pure_bind]
          rw [simulateQ_bind, ih]
          simp only [map_eq_bind_pure_comp,
            bind_assoc, Function.comp_apply]
          refine congrArg
            (fun continuation :
              Option
                  (Ipp.RoundTranscript μ
                    Ipp.Bls12377.Fr) →
                OracleComp Blake2bOracleSpec
                  (Option
                    (Ipp.RoundTranscript (μ + 1)
                      Ipp.Bls12377.Fr)) =>
              shippingQueryRoundsOracle encode
                rejectionFuel μ value
                  (fun i => rounds i.succ) >>=
                    continuation) ?_
          funext tail
          cases tail with
          | none =>
              rfl
          | some tail =>
              simp [eraseRoundTranscriptNonces]
              funext index
              exact Fin.cases rfl (fun _ => rfl) index

/-- Option-valued form of the shipping byte verifier. It preserves the exact
stage order and operational nonces while separating challenge construction
from the final accepted/rejected result. -/
def shippingTranscriptOptionOracle
    {G1 G2 GT : Type}
    [AddCommGroup G1] [Module Ipp.Bls12377.Fr G1]
    [AddCommGroup G2] [Module Ipp.Bls12377.Fr G2]
    [AddCommGroup GT] [Module Ipp.Bls12377.Fr GT]
    {μ : Nat}
    (encode :
      Ipp.ChallengePoint Ipp.Bls12377.Fr G1 G2 GT →
        List UInt8)
    (stmt : Ipp.FsStatement μ Ipp.Bls12377.Fr G1 G2 GT)
    (proof : Ipp.Proof μ Ipp.Bls12377.Fr G1 G2 GT) :
    OracleComp Blake2bOracleSpec
      (Option (Ipp.FsTranscript μ Ipp.Bls12377.Fr)) := do
  let randomizerSample ← queryDecodedPointOracle encode
    (fun nonce => .randomizer
      { comA := proof.ComA.1
        comB := proof.ComB
        comC := proof.ComA.2 } nonce)
    Ipp.randomizerAcceptedB stmt.rejectionFuel 0
  match randomizerSample with
  | none => pure none
  | some (randomizer, randomizerNonce) =>
    let x0Sample ← queryDecodedPointOracle encode
      (fun nonce => .x0
        { r := randomizer
          comA := proof.ComA.1
          comB := proof.ComB
          comC := proof.ComA.2
          ipAb := proof.ipAb
          aggC := proof.aggC } nonce)
      Ipp.nonzeroB stmt.rejectionFuel 0
    match x0Sample with
    | none => pure none
    | some (x0, x0Nonce) =>
      let roundSample ← shippingQueryRoundsOracle encode
        stmt.rejectionFuel μ x0 proof.rounds
      match roundSample with
      | none => pure none
      | some rounds =>
        let bridgeSample ← queryDecodedPointOracle encode
          (fun nonce => .bridge
            { lastRawChallenge := rounds.last
              vFinal := proof.vFinal
              wFinal := proof.wFinal
              aFinal := proof.aFinal
              bFinal := proof.bFinal
              cFinal := proof.cFinal } nonce)
          Ipp.nonzeroB stmt.rejectionFuel 0
        match bridgeSample with
        | none => pure none
        | some (bridge, bridgeNonce) =>
          let kzgSample ← queryDecodedPointOracle encode
            (fun nonce => .kzg
              { bridgeChallenge := bridge
                vFinal := proof.vFinal
                wFinal := proof.wFinal } nonce)
            Ipp.nonzeroB stmt.rejectionFuel 0
          match kzgSample with
          | none => pure none
          | some (kzg, kzgNonce) =>
            pure (some {
              randomizer := randomizer
              randomizerNonce := randomizerNonce
              x0 := x0
              x0Nonce := x0Nonce
              roundPrev := rounds.prev
              roundAnswer := rounds.answer
              roundNonce := rounds.nonce
              bridge := bridge
              bridgeNonce := bridgeNonce
              kzg := kzg
              kzgNonce := kzgNonce })

/-- The factored finite-attempt byte execution is exactly the shipping
nonce-retaining transcript computation after erasing operational nonces. -/
theorem shippingValueTranscript_eq_shippingTranscriptOption
    {G1 G2 GT : Type}
    [AddCommGroup G1] [Module Ipp.Bls12377.Fr G1]
    [AddCommGroup G2] [Module Ipp.Bls12377.Fr G2]
    [AddCommGroup GT] [Module Ipp.Bls12377.Fr GT]
    {μ : Nat}
    (encode :
      Ipp.ChallengePoint Ipp.Bls12377.Fr G1 G2 GT →
        List UInt8)
    (stmt : Ipp.FsStatement μ Ipp.Bls12377.Fr G1 G2 GT)
    (proof : Ipp.Proof μ Ipp.Bls12377.Fr G1 G2 GT)
    (hfuel : stmt.rejectionFuel = rejectionFuel) :
    simulateQ (shippingValueResultImpl encode)
        (resultTranscriptOracle stmt proof) =
      Option.map eraseTranscriptNonces <$>
        shippingTranscriptOptionOracle encode stmt proof := by
  unfold resultTranscriptOracle
    shippingTranscriptOptionOracle
  rw [hfuel]
  simp only [simulateQ_bind, simulateQ_spec_query,
    map_eq_bind_pure_comp, bind_assoc,
    Function.comp_apply, basePoint, baseAcceptable,
    shippingValueResultImpl]
  refine congrArg
    (fun continuation :
      Option (Ipp.Bls12377.Fr × Nat) →
        OracleComp Blake2bOracleSpec
          (Option
            (Ipp.FsTranscript μ Ipp.Bls12377.Fr)) =>
      queryDecodedPointOracle encode
        (fun nonce =>
          Ipp.ChallengePoint.randomizer
            { comA := proof.ComA.1
              comB := proof.ComB
              comC := proof.ComA.2 } nonce)
        Ipp.randomizerAcceptedB rejectionFuel 0 >>=
          continuation) ?_
  funext randomizerSample
  cases randomizerSample with
  | none =>
      rfl
  | some randomizerPair =>
      rcases randomizerPair with
        ⟨randomizer, randomizerNonce⟩
      simp only [Option.map, pure_bind,
        simulateQ_bind, simulateQ_spec_query,
        map_eq_bind_pure_comp, bind_assoc,
        Function.comp_apply, basePoint, baseAcceptable,
        shippingValueResultImpl]
      refine congrArg
        (fun continuation :
          Option (Ipp.Bls12377.Fr × Nat) →
            OracleComp Blake2bOracleSpec
              (Option
                (Ipp.FsTranscript μ
                  Ipp.Bls12377.Fr)) =>
          queryDecodedPointOracle encode
            (fun nonce =>
              Ipp.ChallengePoint.x0
                { r := randomizer
                  comA := proof.ComA.1
                  comB := proof.ComB
                  comC := proof.ComA.2
                  ipAb := proof.ipAb
                  aggC := proof.aggC } nonce)
            Ipp.nonzeroB rejectionFuel 0 >>=
              continuation) ?_
      funext x0Sample
      cases x0Sample with
      | none =>
          rfl
      | some x0Pair =>
          rcases x0Pair with ⟨x0, x0Nonce⟩
          simp only [Option.map, pure_bind,
            simulateQ_bind]
          have hrounds :=
            shippingValueRounds_eq_shippingQueryRounds
              encode μ x0 proof.rounds
          rw [hrounds]
          simp only [map_eq_bind_pure_comp,
            bind_assoc, Function.comp_apply]
          refine congrArg
            (fun continuation :
              Option
                  (Ipp.RoundTranscript μ
                    Ipp.Bls12377.Fr) →
                OracleComp Blake2bOracleSpec
                  (Option
                    (Ipp.FsTranscript μ
                      Ipp.Bls12377.Fr)) =>
              shippingQueryRoundsOracle encode
                rejectionFuel μ x0 proof.rounds >>=
                  continuation) ?_
          funext roundSample
          cases roundSample with
          | none =>
              rfl
          | some rounds =>
              simp only [Option.map, pure_bind]
              simp only [eraseRoundTranscriptNonces]
              simp only [simulateQ_bind,
                simulateQ_spec_query,
                map_eq_bind_pure_comp, bind_assoc,
                Function.comp_apply, basePoint,
                baseAcceptable, shippingValueResultImpl]
              refine congrArg
                (fun continuation :
                  Option (Ipp.Bls12377.Fr × Nat) →
                    OracleComp Blake2bOracleSpec
                      (Option
                        (Ipp.FsTranscript μ
                          Ipp.Bls12377.Fr)) =>
                  queryDecodedPointOracle encode
                    (fun nonce =>
                      Ipp.ChallengePoint.bridge
                        { lastRawChallenge := rounds.last
                          vFinal := proof.vFinal
                          wFinal := proof.wFinal
                          aFinal := proof.aFinal
                          bFinal := proof.bFinal
                          cFinal := proof.cFinal } nonce)
                    Ipp.nonzeroB rejectionFuel 0 >>=
                      continuation) ?_
              funext bridgeSample
              cases bridgeSample with
              | none =>
                  rfl
              | some bridgePair =>
                  rcases bridgePair with
                    ⟨bridge, bridgeNonce⟩
                  simp only [Option.map, pure_bind,
                    simulateQ_bind,
                    simulateQ_spec_query,
                    map_eq_bind_pure_comp, bind_assoc,
                    Function.comp_apply, basePoint,
                    baseAcceptable,
                    shippingValueResultImpl]
                  refine congrArg
                    (fun continuation :
                      Option
                          (Ipp.Bls12377.Fr × Nat) →
                        OracleComp Blake2bOracleSpec
                          (Option
                            (Ipp.FsTranscript μ
                              Ipp.Bls12377.Fr)) =>
                      queryDecodedPointOracle encode
                        (fun nonce =>
                          Ipp.ChallengePoint.kzg
                            { bridgeChallenge := bridge
                              vFinal := proof.vFinal
                              wFinal := proof.wFinal }
                            nonce)
                        Ipp.nonzeroB rejectionFuel 0 >>=
                          continuation) ?_
                  funext kzgSample
                  cases kzgSample with
                  | none =>
                      rfl
                  | some kzgPair =>
                      rcases kzgPair with
                        ⟨kzg, kzgNonce⟩
                      simp [eraseTranscriptNonces]

/-- The shipping byte verifier is exactly its option-valued challenge
sequence followed by the existing accepted/rejected result constructor. -/
theorem shippingVerifierOracle_eq_finalizeFsResult_map
    {G1 G2 GT : Type}
    [AddCommGroup G1] [Module Ipp.Bls12377.Fr G1]
    [AddCommGroup G2] [Module Ipp.Bls12377.Fr G2]
    [AddCommGroup GT] [Module Ipp.Bls12377.Fr GT]
    {μ : Nat}
    (encode :
      Ipp.ChallengePoint Ipp.Bls12377.Fr G1 G2 GT →
        List UInt8)
    (stmt : Ipp.FsStatement μ Ipp.Bls12377.Fr G1 G2 GT)
    (proof : Ipp.Proof μ Ipp.Bls12377.Fr G1 G2 GT) :
    shippingVerifierOracle encode stmt proof =
      finalizeFsResult stmt proof <$>
        shippingTranscriptOptionOracle encode
          stmt proof := by
  unfold shippingVerifierOracle
    shippingTranscriptOptionOracle
  rw [map_eq_bind_pure_comp, bind_assoc]
  refine bind_congr fun randomizerSample => ?_
  cases randomizerSample with
  | none =>
      simp [finalizeFsResult, Ipp.rejectedResult]
  | some randomizerPair =>
      rcases randomizerPair with
        ⟨randomizer, randomizerNonce⟩
      rw [bind_assoc]
      refine bind_congr fun x0Sample => ?_
      cases x0Sample with
      | none =>
          simp [finalizeFsResult, Ipp.rejectedResult]
      | some x0Pair =>
          rcases x0Pair with ⟨x0, x0Nonce⟩
          rw [bind_assoc]
          refine bind_congr fun roundSample => ?_
          cases roundSample with
          | none =>
              simp [finalizeFsResult,
                Ipp.rejectedResult]
          | some rounds =>
              rw [bind_assoc]
              refine bind_congr fun bridgeSample => ?_
              cases bridgeSample with
              | none =>
                  simp [finalizeFsResult,
                    Ipp.rejectedResult]
              | some bridgePair =>
                  rcases bridgePair with
                    ⟨bridge, bridgeNonce⟩
                  rw [bind_assoc]
                  refine bind_congr fun kzgSample => ?_
                  cases kzgSample with
                  | none =>
                      simp [finalizeFsResult,
                        Ipp.rejectedResult]
                  | some kzgPair =>
                      rcases kzgPair with
                        ⟨kzg, kzgNonce⟩
                      simp [finalizeFsResult]

/-- Output-only ideal execution of the option-valued shipping transcript
computation. -/
def shippingOptionIdealVerifier
    {G1 G2 GT : Type}
    [AddCommGroup G1] [Module Ipp.Bls12377.Fr G1]
    [AddCommGroup G2] [Module Ipp.Bls12377.Fr G2]
    [AddCommGroup GT] [Module Ipp.Bls12377.Fr GT]
    [SampleableType DigestBytes]
    {μ : Nat}
    (encode :
      Ipp.ChallengePoint Ipp.Bls12377.Fr G1 G2 GT →
        List UInt8)
    (stmt : Ipp.FsStatement μ Ipp.Bls12377.Fr G1 G2 GT)
    (proof : Ipp.Proof μ Ipp.Bls12377.Fr G1 G2 GT) :
    ProbComp
      (Option (Ipp.FsTranscript μ Ipp.Bls12377.Fr)) :=
  (simulateQ Blake2bOracleSpec.randomOracle
    (shippingTranscriptOptionOracle encode
      stmt proof)).run' ∅

/-- The finite typed byte-attempt ideal experiment is exactly the output-only
shipping transcript experiment after nonce erasure. -/
theorem reindexedByteIdealVerifier_eq_erase_shippingOption
    {G1 G2 GT : Type}
    [AddCommGroup G1] [Module Ipp.Bls12377.Fr G1]
    [AddCommGroup G2] [Module Ipp.Bls12377.Fr G2]
    [AddCommGroup GT] [Module Ipp.Bls12377.Fr GT]
    [DecidableEq G1] [DecidableEq G2] [DecidableEq GT]
    [SampleableType DigestBytes]
    {μ : Nat}
    (encode :
      Ipp.ChallengePoint Ipp.Bls12377.Fr G1 G2 GT →
        List UInt8)
    (stmt : Ipp.FsStatement μ Ipp.Bls12377.Fr G1 G2 GT)
    (proof : Ipp.Proof μ Ipp.Bls12377.Fr G1 G2 GT)
    (hfuel : stmt.rejectionFuel = rejectionFuel) :
    reindexedByteIdealVerifier
        (pointAttemptEncode encode) stmt proof =
      Option.map eraseTranscriptNonces <$>
        shippingOptionIdealVerifier encode stmt proof := by
  unfold reindexedByteIdealVerifier
    shippingOptionIdealVerifier
  rw [reindexedAttemptTranscript_eq_shippingValue
    encode stmt proof]
  rw [shippingValueTranscript_eq_shippingTranscriptOption
    encode stmt proof hfuel]
  rw [simulateQ_map, StateT.run'_eq, StateT.run'_eq,
    StateT.run_map, Functor.map_map]
  simp

/-- Nonce erasure leaves the reindexed byte ideal's acceptance probability
equal to the option-valued shipping experiment. -/
theorem reindexedByteIdeal_acceptance_eq_shippingOption
    {G1 G2 GT : Type}
    [AddCommGroup G1] [Module Ipp.Bls12377.Fr G1]
    [AddCommGroup G2] [Module Ipp.Bls12377.Fr G2]
    [AddCommGroup GT] [Module Ipp.Bls12377.Fr GT]
    [DecidableEq G1] [DecidableEq G2] [DecidableEq GT]
    [SampleableType DigestBytes]
    {μ : Nat}
    (encode :
      Ipp.ChallengePoint Ipp.Bls12377.Fr G1 G2 GT →
        List UInt8)
    (stmt : Ipp.FsStatement μ Ipp.Bls12377.Fr G1 G2 GT)
    (proof : Ipp.Proof μ Ipp.Bls12377.Fr G1 G2 GT)
    (hfuel : stmt.rejectionFuel = rejectionFuel) :
    Pr[optionSatisfies (Ipp.FsAccepts stmt proof) |
        reindexedByteIdealVerifier
          (pointAttemptEncode encode) stmt proof] =
      Pr[optionSatisfies (Ipp.FsAccepts stmt proof) |
        shippingOptionIdealVerifier encode stmt proof] := by
  rw [reindexedByteIdealVerifier_eq_erase_shippingOption
    encode stmt proof hfuel]
  rw [probEvent_map]
  apply probEvent_ext
  intro sample _
  exact optionSatisfies_eraseTranscriptNonces_iff
    stmt proof sample

/-- The complete shipping ideal result wrapper and the option-valued
transcript experiment have identical acceptance probability. -/
theorem shippingIdeal_acceptance_eq_shippingOption
    {G1 G2 GT : Type}
    [AddCommGroup G1] [Module Ipp.Bls12377.Fr G1]
    [AddCommGroup G2] [Module Ipp.Bls12377.Fr G2]
    [AddCommGroup GT] [Module Ipp.Bls12377.Fr GT]
    [DecidableEq G1] [DecidableEq G2] [DecidableEq GT]
    [SampleableType DigestBytes]
    {μ : Nat}
    (encode :
      Ipp.ChallengePoint Ipp.Bls12377.Fr G1 G2 GT →
        List UInt8)
    (stmt : Ipp.FsStatement μ Ipp.Bls12377.Fr G1 G2 GT)
    (proof : Ipp.Proof μ Ipp.Bls12377.Fr G1 G2 GT) :
    Pr[fun output => output.1.accept = true |
        shippingIdealVerifier encode stmt proof] =
      Pr[optionSatisfies (Ipp.FsAccepts stmt proof) |
        shippingOptionIdealVerifier encode stmt proof] := by
  unfold shippingIdealVerifier
    shippingOptionIdealVerifier
  rw [shippingVerifierOracle_eq_finalizeFsResult_map
    encode stmt proof]
  rw [simulateQ_map, StateT.run_map]
  unfold StateT.run'
  rw [probEvent_map, probEvent_map]
  apply probEvent_ext
  intro output _
  simpa using
    (finalizeFsResult_accept_iff
      stmt proof output.1)

/-- An injective concrete challenge-point encoding makes the complete
shipping byte-oracle verifier acceptance-dominated by the formal `FsGame`
plus the exact statistical loss from reducing uniform 512-bit digests modulo
the BLS12-377 scalar modulus. -/
theorem shippingIdeal_acceptance_le_fsProbComp_add_modReduction
    [SampleableType DigestBytes]
    [SampleableType DigestBlock]
    [SampleableType FieldBlock]
    {G1 G2 GT : Type}
    [AddCommGroup G1] [Module Ipp.Bls12377.Fr G1]
    [AddCommGroup G2] [Module Ipp.Bls12377.Fr G2]
    [AddCommGroup GT] [Module Ipp.Bls12377.Fr GT]
    [DecidableEq G1] [DecidableEq G2] [DecidableEq GT]
    [Finite
      (ChallengeBase Ipp.Bls12377.Fr G1 G2 GT)]
    [SampleableType
      (BoundedAttempt G1 G2 GT → DigestBytes)]
    [SampleableType
      (ChallengeBase Ipp.Bls12377.Fr G1 G2 GT →
        DigestBlock)]
    [SampleableType
      (BoundedAttempt G1 G2 GT → Ipp.Bls12377.Fr)]
    [SampleableType
      (ChallengeBase Ipp.Bls12377.Fr G1 G2 GT →
        FieldBlock)]
    {μ : Nat}
    (encode :
      Ipp.ChallengePoint Ipp.Bls12377.Fr G1 G2 GT →
        List UInt8)
    (hinjective : Function.Injective (pointAttemptEncode encode))
    (stmt : Ipp.FsStatement μ Ipp.Bls12377.Fr G1 G2 GT)
    (proof : Ipp.Proof μ Ipp.Bls12377.Fr G1 G2 GT)
    (hfuel : stmt.rejectionFuel = rejectionFuel) :
    Pr[fun output => output.1.accept = true |
        shippingIdealVerifier encode stmt proof] ≤
      Pr[Ipp.Accepted |
        Ipp.fsProbComp stmt
          (pure proof :
            OracleComp
              (Ipp.FsSourceSpec
                Ipp.Bls12377.Fr G1 G2 GT)
              (Ipp.Proof μ
                Ipp.Bls12377.Fr G1 G2 GT))] +
        Ipp.ShippingScalarReduction.modReductionBudget
          ((μ + 4) * rejectionFuel) := by
  calc
    Pr[fun output => output.1.accept = true |
        shippingIdealVerifier encode stmt proof] =
        Pr[optionSatisfies (Ipp.FsAccepts stmt proof) |
          shippingOptionIdealVerifier encode stmt proof] :=
            shippingIdeal_acceptance_eq_shippingOption
              encode stmt proof
    _ =
        Pr[optionSatisfies (Ipp.FsAccepts stmt proof) |
          reindexedByteIdealVerifier
            (pointAttemptEncode encode) stmt proof] :=
              (reindexedByteIdeal_acceptance_eq_shippingOption
                encode stmt proof hfuel).symm
    _ =
        Pr[optionSatisfies (Ipp.FsAccepts stmt proof) |
          attemptIdealVerifier stmt proof] :=
            probEvent_congr' (fun _ _ => Iff.rfl)
              (reindexedByteIdealVerifier_evalDist_eq_attempt
                (pointAttemptEncode encode) hinjective stmt proof)
    _ ≤
        Pr[optionSatisfies (Ipp.FsAccepts stmt proof) |
          fieldAttemptIdealVerifier stmt proof] +
        Ipp.ShippingScalarReduction.modReductionBudget
          ((μ + 4) * rejectionFuel) :=
            attemptIdeal_acceptance_le_fieldAttempt_add_modReduction
              stmt proof
    _ =
        Pr[Ipp.Accepted |
          Ipp.fsProbComp stmt
            (pure proof :
              OracleComp
                (Ipp.FsSourceSpec
                  Ipp.Bls12377.Fr G1 G2 GT)
                (Ipp.Proof μ
                  Ipp.Bls12377.Fr G1 G2 GT))] +
        Ipp.ShippingScalarReduction.modReductionBudget
          ((μ + 4) * rejectionFuel) := by
            congr 1
            exact fieldAttemptIdeal_acceptance_eq_fsProbComp
              stmt proof hfuel

/-- Replacing deployed hashing by the ideal byte oracle contributes the
computational hash advantages.  Reducing ideal 512-bit responses modulo the
scalar field contributes the separate, explicit statistical term. -/
theorem shippingReal_acceptance_le_fsProbComp_add_modReduction_add_hashAdvantage
    [SampleableType DigestBytes]
    [SampleableType DigestBlock]
    [SampleableType FieldBlock]
    {G1 G2 GT : Type}
    [AddCommGroup G1] [Module Ipp.Bls12377.Fr G1]
    [AddCommGroup G2] [Module Ipp.Bls12377.Fr G2]
    [AddCommGroup GT] [Module Ipp.Bls12377.Fr GT]
    [DecidableEq G1] [DecidableEq G2] [DecidableEq GT]
    [Finite
      (ChallengeBase Ipp.Bls12377.Fr G1 G2 GT)]
    [SampleableType
      (BoundedAttempt G1 G2 GT → DigestBytes)]
    [SampleableType
      (ChallengeBase Ipp.Bls12377.Fr G1 G2 GT →
        DigestBlock)]
    [SampleableType
      (BoundedAttempt G1 G2 GT → Ipp.Bls12377.Fr)]
    [SampleableType
      (ChallengeBase Ipp.Bls12377.Fr G1 G2 GT →
        FieldBlock)]
    {μ : Nat}
    (encode :
      Ipp.ChallengePoint Ipp.Bls12377.Fr G1 G2 GT →
        List UInt8)
    (hinjective : Function.Injective (pointAttemptEncode encode))
    (stmt : Ipp.FsStatement μ Ipp.Bls12377.Fr G1 G2 GT)
    (proof : Ipp.Proof μ Ipp.Bls12377.Fr G1 G2 GT)
    (hfuel : stmt.rejectionFuel = rejectionFuel)
    (realAccept : ℝ≥0∞)
    (coupling : Coupling realAccept
      Pr[fun output => output.1.accept = true |
        shippingIdealVerifier encode stmt proof]) :
    realAccept ≤
      Pr[Ipp.Accepted |
        Ipp.fsProbComp stmt
          (pure proof :
            OracleComp
              (Ipp.FsSourceSpec
                Ipp.Bls12377.Fr G1 G2 GT)
              (Ipp.Proof μ
                Ipp.Bls12377.Fr G1 G2 GT))] +
        Ipp.ShippingScalarReduction.modReductionBudget
          ((μ + 4) * rejectionFuel) +
        coupling.advantages.total := by
  calc
    realAccept ≤
        Pr[fun output => output.1.accept = true |
          shippingIdealVerifier encode stmt proof] +
          coupling.advantages.total :=
            coupling.real_le_ideal_add
    _ ≤
        Pr[Ipp.Accepted |
          Ipp.fsProbComp stmt
            (pure proof :
              OracleComp
                (Ipp.FsSourceSpec
                  Ipp.Bls12377.Fr G1 G2 GT)
                (Ipp.Proof μ
                  Ipp.Bls12377.Fr G1 G2 GT))] +
          Ipp.ShippingScalarReduction.modReductionBudget
            ((μ + 4) * rejectionFuel) +
          coupling.advantages.total := by
            gcongr
            exact shippingIdeal_acceptance_le_fsProbComp_add_modReduction
              encode hinjective stmt proof hfuel

/-- Final deployed-hash lift of the S1 invalid-goal theorem for the shipping
BLS12-377 scalar field.  The exact fork expression, modulo-reduction loss,
and both hash advantages remain visible. -/
theorem shipping_invalid_goal_quantitative_bound
    [SampleableType DigestBytes]
    [SampleableType DigestBlock]
    [SampleableType FieldBlock]
    {G1 G2 GT : Type}
    [AddCommGroup G1] [Module Ipp.Bls12377.Fr G1]
    [AddCommGroup G2] [Module Ipp.Bls12377.Fr G2]
    [AddCommGroup GT] [Module Ipp.Bls12377.Fr GT]
    [DecidableEq G1] [DecidableEq G2] [DecidableEq GT]
    [(Ipp.FsSourceSpec
      Ipp.Bls12377.Fr G1 G2 GT).DecidableEq]
    [∀ j, SampleableType
      ((Ipp.FsSourceSpec
        Ipp.Bls12377.Fr G1 G2 GT).Range j)]
    [unifSpec ⊂ₒ
      Ipp.FsSourceSpec Ipp.Bls12377.Fr G1 G2 GT]
    [IsUniformSpec (Ipp.FsWrappedSpec Ipp.Bls12377.Fr)]
    [∀ j, SampleableType
      ((Ipp.FsWrappedSpec Ipp.Bls12377.Fr).Range j)]
    [unifSpec ⊂ₒ Ipp.FsWrappedSpec Ipp.Bls12377.Fr]
    [unifSpec ˡ⊂ₒ Ipp.FsWrappedSpec Ipp.Bls12377.Fr]
    [Finite
      (ChallengeBase Ipp.Bls12377.Fr G1 G2 GT)]
    [SampleableType
      (BoundedAttempt G1 G2 GT → DigestBytes)]
    [SampleableType
      (ChallengeBase Ipp.Bls12377.Fr G1 G2 GT →
        DigestBlock)]
    [SampleableType
      (BoundedAttempt G1 G2 GT → Ipp.Bls12377.Fr)]
    [SampleableType
      (ChallengeBase Ipp.Bls12377.Fr G1 G2 GT →
        FieldBlock)]
    {μ : Nat}
    (encode :
      Ipp.ChallengePoint Ipp.Bls12377.Fr G1 G2 GT →
        List UInt8)
    (hinjective : Function.Injective (pointAttemptEncode encode))
    (stmt : Ipp.FsStatement μ Ipp.Bls12377.Fr G1 G2 GT)
    (proof : Ipp.Proof μ Ipp.Bls12377.Fr G1 G2 GT)
    (hfuel : stmt.rejectionFuel = rejectionFuel)
    (qb :
      (Ipp.FsWrappedSpec Ipp.Bls12377.Fr).Domain → Nat)
    (badZ : Finset Ipp.Bls12377.Fr)
    (dZ : Nat)
    (hbindV : Ipp.KzgStructuredKeyBinding stmt.srsV stmt.acceptV)
    (hbindW : Ipp.KzgStructuredKeyBinding stmt.srsW stmt.acceptW)
    (hbindA : Ipp.PairingCommitmentBinding
      (Ipp.u4ACommitAtom stmt.e)
      (fun i => (stmt.srsV i, stmt.srsV i)))
    (hbindB : ∀ r : Ipp.Bls12377.Fr,
      Ipp.PairingCommitmentBinding
        (Ipp.u4BCommitAtom stmt.e)
        (fun i => (r ^ (i : Nat))⁻¹ • stmt.srsW i))
    (hZcard : badZ.card ≤ dZ)
    (hquery : IsTotalQueryBound
      (Ipp.FsGame stmt
        (pure proof :
          OracleComp
            (Ipp.FsSourceSpec
              Ipp.Bls12377.Fr G1 G2 GT)
            (Ipp.Proof μ
              Ipp.Bls12377.Fr G1 G2 GT)))
      (Ipp.Q (qb (Sum.inr ()))))
    (hinvalid :
      ¬Ipp.SnarkPackV1.Refinement.HasValidRepresentation
        stmt proof)
    (realAccept : ℝ≥0∞)
    (coupling : Coupling realAccept
      Pr[fun output => output.1.accept = true |
        shippingIdealVerifier encode stmt proof]) :
    realAccept ≤
        Pr[Ipp.Accepted |
          Ipp.fsProbComp stmt
            (pure proof :
              OracleComp
                  (Ipp.FsSourceSpec
                    Ipp.Bls12377.Fr G1 G2 GT)
                  (Ipp.Proof μ
                    Ipp.Bls12377.Fr G1 G2 GT))] +
          Ipp.ShippingScalarReduction.modReductionBudget
            ((μ + 4) * rejectionFuel) +
          coupling.advantages.total ∧
      ¬ 0 <
        ((Ipp.forkTreeStep (qb (Sum.inr ()) + 1)
          (Fintype.card Ipp.Bls12377.Fr))^[μ])
          (Pr[Ipp.Accepted |
              Ipp.fsProbComp stmt
                (pure proof :
                  OracleComp
                    (Ipp.FsSourceSpec
                      Ipp.Bls12377.Fr G1 G2 GT)
                    (Ipp.Proof μ
                      Ipp.Bls12377.Fr G1 G2 GT))] -
            Ipp.S1.badEventError
              (F := Ipp.Bls12377.Fr)
              (qb (Sum.inr ())) (2 ^ μ - 1) dZ) := by
  refine
    ⟨shippingReal_acceptance_le_fsProbComp_add_modReduction_add_hashAdvantage
      encode hinjective stmt proof hfuel realAccept coupling, ?_⟩
  exact Ipp.S1.invalid_proof_fork_bound_nonpositive
    stmt proof
    qb badZ dZ hbindV hbindW hbindA hbindB
    hZcard hquery hinvalid

/-- Sound shipping lift with satisfiable, experiment-relative KZG and GIPA
binding losses.  Unlike `shipping_invalid_goal_quantitative_bound`, this root
does not consume globally injective finite-group commitment maps. -/
theorem shipping_invalid_goal_quantitative_bound_computational
    [SampleableType DigestBytes]
    [SampleableType DigestBlock]
    [SampleableType FieldBlock]
    {G1 G2 GT : Type}
    [AddCommGroup G1] [Module Ipp.Bls12377.Fr G1]
    [AddCommGroup G2] [Module Ipp.Bls12377.Fr G2]
    [AddCommGroup GT] [Module Ipp.Bls12377.Fr GT]
    [DecidableEq G1] [DecidableEq G2] [DecidableEq GT]
    [(Ipp.FsSourceSpec
      Ipp.Bls12377.Fr G1 G2 GT).DecidableEq]
    [∀ j, SampleableType
      ((Ipp.FsSourceSpec
        Ipp.Bls12377.Fr G1 G2 GT).Range j)]
    [unifSpec ⊂ₒ
      Ipp.FsSourceSpec Ipp.Bls12377.Fr G1 G2 GT]
    [IsUniformSpec (Ipp.FsWrappedSpec Ipp.Bls12377.Fr)]
    [∀ j, SampleableType
      ((Ipp.FsWrappedSpec Ipp.Bls12377.Fr).Range j)]
    [unifSpec ⊂ₒ Ipp.FsWrappedSpec Ipp.Bls12377.Fr]
    [unifSpec ˡ⊂ₒ Ipp.FsWrappedSpec Ipp.Bls12377.Fr]
    [Finite
      (ChallengeBase Ipp.Bls12377.Fr G1 G2 GT)]
    [SampleableType
      (BoundedAttempt G1 G2 GT → DigestBytes)]
    [SampleableType
      (ChallengeBase Ipp.Bls12377.Fr G1 G2 GT →
        DigestBlock)]
    [SampleableType
      (BoundedAttempt G1 G2 GT → Ipp.Bls12377.Fr)]
    [SampleableType
      (ChallengeBase Ipp.Bls12377.Fr G1 G2 GT →
        FieldBlock)]
    {μ : Nat}
    (encode :
      Ipp.ChallengePoint Ipp.Bls12377.Fr G1 G2 GT →
        List UInt8)
    (hinjective : Function.Injective (pointAttemptEncode encode))
    (stmt : Ipp.FsStatement μ Ipp.Bls12377.Fr G1 G2 GT)
    (proof : Ipp.Proof μ Ipp.Bls12377.Fr G1 G2 GT)
    (hfuel : stmt.rejectionFuel = rejectionFuel)
    (qb :
      (Ipp.FsWrappedSpec Ipp.Bls12377.Fr).Domain → Nat)
    (badZ : Finset Ipp.Bls12377.Fr)
    (dZ : Nat)
    (hZcard : badZ.card ≤ dZ)
    (hquery : IsTotalQueryBound
      (Ipp.FsGame stmt
        (pure proof :
          OracleComp
            (Ipp.FsSourceSpec
              Ipp.Bls12377.Fr G1 G2 GT)
            (Ipp.Proof μ
              Ipp.Bls12377.Fr G1 G2 GT)))
      (Ipp.Q (qb (Sum.inr ()))))
    (security : Ipp.S1.S1ExtractionSecurity stmt
      (pure proof :
        OracleComp
          (Ipp.FsSourceSpec
            Ipp.Bls12377.Fr G1 G2 GT)
          (Ipp.Proof μ
            Ipp.Bls12377.Fr G1 G2 GT))
      qb badZ)
    (hinvalid :
      ¬Ipp.SnarkPackV1.Refinement.HasValidRepresentation
        stmt proof)
    (realAccept : ℝ≥0∞)
    (coupling : Coupling realAccept
      Pr[fun output => output.1.accept = true |
        shippingIdealVerifier encode stmt proof]) :
    realAccept ≤
        Pr[Ipp.Accepted |
          Ipp.fsProbComp stmt
            (pure proof :
              OracleComp
                  (Ipp.FsSourceSpec
                    Ipp.Bls12377.Fr G1 G2 GT)
                  (Ipp.Proof μ
                    Ipp.Bls12377.Fr G1 G2 GT))] +
          Ipp.ShippingScalarReduction.modReductionBudget
            ((μ + 4) * rejectionFuel) +
          coupling.advantages.total ∧
      ((Ipp.forkTreeStep (qb (Sum.inr ()) + 1)
        (Fintype.card Ipp.Bls12377.Fr))^[μ])
        (Pr[Ipp.Accepted |
            Ipp.fsProbComp stmt
              (pure proof :
                OracleComp
                  (Ipp.FsSourceSpec
                    Ipp.Bls12377.Fr G1 G2 GT)
                  (Ipp.Proof μ
                    Ipp.Bls12377.Fr G1 G2 GT))] -
          Ipp.S1.badEventError
            (F := Ipp.Bls12377.Fr)
            (qb (Sum.inr ())) (2 ^ μ - 1) dZ) ≤
        security.total := by
  refine
    ⟨shippingReal_acceptance_le_fsProbComp_add_modReduction_add_hashAdvantage
      encode hinjective stmt proof hfuel realAccept coupling, ?_⟩
  exact Ipp.S1.invalid_proof_fork_bound_le_extraction_advantage
    stmt proof qb badZ dZ hZcard hquery security hinvalid

/-- The deployed family/context challenge framing is injective on every
bounded attempt consumed by the shipping sampler. -/
theorem pointAttemptEncode_shippingPreimage_injective
    (context : Ipp.ChallengeEncoding.Context) :
    Function.Injective
      (pointAttemptEncode (shippingPreimage context)) := by
  simpa [pointAttemptEncode, fieldAttemptPoint,
    shippingAttemptPreimage, shippingAttemptPoint] using
      shippingAttemptPreimage_injective context

/-- The concrete family-prefixed Blake2b encoder is injective on every
bounded attempt consumed by the deployed verifier. -/
theorem pointAttemptEncode_shippingBlake2bPreimage_injective
    (family : Ipp.ShippingV1.Family)
    (context : Ipp.ChallengeEncoding.Context) :
    Function.Injective
      (pointAttemptEncode
        (shippingBlake2bPreimage family context)) := by
  intro left right heq
  apply pointAttemptEncode_shippingPreimage_injective context
  exact List.append_right_injective
    (family.transcriptDomain.getD []) heq

#print axioms
  simulateQ_queryDecodedAttempt_eq_shippingQuery
#print axioms
  reindexedAttemptTranscript_eq_shippingValue
#print axioms
  shippingValueRounds_eq_shippingQueryRounds
#print axioms
  shippingValueTranscript_eq_shippingTranscriptOption
#print axioms
  shippingVerifierOracle_eq_finalizeFsResult_map
#print axioms
  reindexedByteIdealVerifier_eq_erase_shippingOption
#print axioms
  shippingIdeal_acceptance_eq_shippingOption
#print axioms
  shippingIdeal_acceptance_le_fsProbComp_add_modReduction
#print axioms
  shippingReal_acceptance_le_fsProbComp_add_modReduction_add_hashAdvantage
#print axioms
  shipping_invalid_goal_quantitative_bound
#print axioms
  pointAttemptEncode_shippingPreimage_injective
#print axioms
  pointAttemptEncode_shippingBlake2bPreimage_injective
end

end Ipp.ShippingHashGame
