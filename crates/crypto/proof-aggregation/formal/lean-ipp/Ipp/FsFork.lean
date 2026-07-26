/-
U5d(4): cached single-index Fiat--Shamir wrapping and replay-tree assembly.

The wrapper runs the complete adversary-and-verifier computation through one
structured cache. Only cache misses reach the single forkable challenge index;
their structured points are recorded in miss order.

Spec rows: `tipp-mipp.gipa`, `fs.stage-labels`.
-/
import Ipp.FsGame
import Ipp.Composition
import VCVio.OracleComp.QueryTracking.CachingOracle

open OracleSpec OracleComp Function
open scoped OracleSpec.PrimitiveQuery

namespace Ipp

noncomputable section

variable {F G1 G2 GT : Type}

/-- The structured point carrier recorded by the U5d(4) wrapper (DESIGN
§U5d(4); `fs.stage-labels`, `tipp-mipp.gipa`). -/
abbrev FsPoint := ChallengePoint F G1 G2 GT

/-- Uniform sampling plus the one fixed challenge-oracle index forked by U5c. -/
abbrev FsWrappedSpec (F : Type) : OracleSpec (Nat ⊕ Unit) :=
  unifSpec + (Unit →ₒ F)

/-- Output and chronological structured-query trace of a wrapped computation. -/
structure WrappedFsRun (Point α : Type) where
  out : α
  trace : List Point
deriving DecidableEq

/-- Forward ambient uniform sampling while threading the structured cache. -/
def fsSourceUnifFwd (Point F : Type) [DecidableEq Point] :
    QueryImpl unifSpec
      (StateT (Point →ₒ F).QueryCache
        (OracleComp (unifSpec + (Point →ₒ F)))) :=
  fun n => monadLift
    ((unifSpec + (Point →ₒ F)).query (Sum.inl n) :
      OracleComp (unifSpec + (Point →ₒ F)) _)

/-- The miss source for the structured cache. -/
def fsSourceImpl (Point F : Type) :
    QueryImpl (Point →ₒ F) (OracleComp (unifSpec + (Point →ₒ F))) :=
  fun point => (unifSpec + (Point →ₒ F)).query (Sum.inr point)

/-- The shared-cache interpretation used by `fsRandomFunction`. -/
def fsSourceOracle (Point F : Type) [DecidableEq Point] :
    QueryImpl (unifSpec + (Point →ₒ F))
      (StateT (Point →ₒ F).QueryCache
        (OracleComp (unifSpec + (Point →ₒ F)))) :=
  fsSourceUnifFwd Point F + QueryImpl.withCaching (fsSourceImpl Point F)

/-- Lazy random-function semantics for one shared structured oracle. The
`withCaching` state surrounds the whole computation, so adversary queries and
verifier re-queries consult the same cache. -/
def fsRandomFunction {Point α : Type} [DecidableEq Point]
    (oa : OracleComp (unifSpec + (Point →ₒ F)) α) :
    OracleComp (unifSpec + (Point →ₒ F)) α := do
  let (out, _cache) ← StateT.run
    (simulateQ (fsSourceOracle Point F) oa) ∅
  pure out

private theorem fsSourceImpl_isTotalQueryBound (Point F : Type) (point : Point) :
    IsTotalQueryBound (fsSourceImpl Point F point) 1 := by
  unfold fsSourceImpl
  exact (OracleComp.isQueryBound_query_iff (Sum.inr point) 1 _ _).mpr Nat.one_pos

private theorem fsSourceUnifFwd_run_isTotalQueryBound {Point F : Type}
    [DecidableEq Point] (n : unifSpec.Domain) (cache : (Point →ₒ F).QueryCache) :
    IsTotalQueryBound ((fsSourceUnifFwd Point F n).run cache) 1 := by
  change IsTotalQueryBound
    (liftM ((unifSpec + (Point →ₒ F)).query (Sum.inl n)) :
      OracleComp (unifSpec + (Point →ₒ F)) _) 1
  exact (OracleComp.isQueryBound_query_iff (Sum.inl n) 1 _ _).mpr Nat.one_pos

private theorem fsSourceOracle_structured_run_isTotalQueryBound {Point F : Type}
    [DecidableEq Point] (point : Point) (cache : (Point →ₒ F).QueryCache) :
    IsTotalQueryBound ((QueryImpl.withCaching (fsSourceImpl Point F) point).run cache) 1 :=
  QueryImpl.isTotalQueryBound_run_withCaching (fsSourceImpl Point F) point
    (fsSourceImpl_isTotalQueryBound Point F point) cache

/-- Caching structured queries and forwarding ambient queries preserve a whole-game cap. -/
theorem fsRandomFunction_isTotalQueryBound {Point α : Type} [DecidableEq Point]
    [IsUniformSpec (unifSpec + (Point →ₒ F))]
    (oa : OracleComp (unifSpec + (Point →ₒ F)) α) {n : Nat}
    (h : IsTotalQueryBound oa n) :
    IsTotalQueryBound (fsRandomFunction oa) n := by
  unfold fsRandomFunction
  simp only [bind_pure_comp]
  apply (isQueryBound_map_iff _ _ _ _ _).mpr
  refine IsTotalQueryBound.simulateQ_run_of_step h ?_ ∅
  intro t cache
  cases t with
  | inl n => exact fsSourceUnifFwd_run_isTotalQueryBound n cache
  | inr point => exact fsSourceOracle_structured_run_isTotalQueryBound point cache

/-- The shared structured cache only grows during a source computation. -/
private theorem fsSourceOracle_cache_le {Point α : Type} [DecidableEq Point]
    (oa : OracleComp (unifSpec + (Point →ₒ F)) α)
    (cache0 : (Point →ₒ F).QueryCache)
    (z : α × (Point →ₒ F).QueryCache)
    (h : z ∈ support ((simulateQ (fsSourceOracle Point F) oa).run cache0)) :
    cache0 ≤ z.2 := by
  induction oa using OracleComp.inductionOn generalizing cache0 z with
  | pure a =>
      simp only [simulateQ_pure, StateT.run_pure, support_pure,
        Set.mem_singleton_iff] at h
      subst z
      exact le_rfl
  | query_bind t next ih =>
      rw [simulateQ_query_bind, StateT.run_bind, support_bind] at h
      simp only [Set.mem_iUnion] at h
      obtain ⟨⟨u, cache1⟩, hstep, hrest⟩ := h
      have hle : cache0 ≤ cache1 := by
        cases t with
        | inl n =>
            simp [fsSourceOracle, fsSourceUnifFwd,
              QueryImpl.add_apply_inl] at hstep
            obtain ⟨_, hstep⟩ := hstep
            have hc : cache0 = cache1 := congrArg Prod.snd hstep
            subst cache1
            exact le_rfl
        | inr point =>
            exact QueryImpl.withCaching_cache_le
              (fsSourceImpl Point F) point cache0 (u, cache1) hstep
      exact le_trans hle (ih u cache1 z hrest)

/-- A structured query result is installed in the cache, on both hits and
misses. -/
private theorem fsSourceOracle_query_caches {Point : Type} [DecidableEq Point]
    (point : Point) (cache0 : (Point →ₒ F).QueryCache)
    (value : F) (cache1 : (Point →ₒ F).QueryCache)
    (h : (value, cache1) ∈ support
      (((fsSourceOracle Point F) (Sum.inr point)).run cache0)) :
    cache1 point = some value := by
  change (value, cache1) ∈ support
    ((QueryImpl.withCaching (fsSourceImpl Point F) point).run cache0) at h
  cases hc : cache0 point with
  | some cached =>
      rw [QueryImpl.withCaching_run_some _ hc] at h
      simp only [support_pure, Set.mem_singleton_iff] at h
      obtain ⟨rfl, rfl⟩ := Prod.mk.inj h
      exact hc
  | none =>
      rw [QueryImpl.withCaching_run_none _ hc] at h
      rw [support_map] at h
      obtain ⟨sample, _, h⟩ := h
      obtain ⟨rfl, rfl⟩ := Prod.mk.inj h
      exact QueryCache.cacheQuery_self cache0 point sample

/-- One forwarded ambient-uniform step logs that query and leaves the
structured cache unchanged. -/
private lemma fsSource_support_step_inl {Point : Type} [DecidableEq Point]
    (n : Nat) (cache : (Point →ₒ F).QueryCache)
    (z : ((unifSpec + (Point →ₒ F)).Range (Sum.inl n) ×
      (Point →ₒ F).QueryCache) × QueryLog (unifSpec + (Point →ₒ F))) :
    z ∈ support (replayFirstRun
      (((fsSourceOracle Point F) (Sum.inl n)).run cache)) ↔
    ∃ u, z = ((u, cache), [⟨Sum.inl n, u⟩]) := by
  have hrun : ((fsSourceOracle Point F) (Sum.inl n)).run cache =
      (liftM ((unifSpec + (Point →ₒ F)).query (Sum.inl n)) :
        OracleComp (unifSpec + (Point →ₒ F)) _) >>= fun u => pure (u, cache) := by
    simp [fsSourceOracle, fsSourceUnifFwd, QueryImpl.add_apply_inl]
  rw [hrun]
  change z ∈ support ((simulateQ (unifSpec + (Point →ₒ F)).loggingOracle
    ((liftM ((unifSpec + (Point →ₒ F)).query (Sum.inl n)) :
      OracleComp (unifSpec + (Point →ₒ F)) _) >>= fun u => pure (u, cache))).run) ↔ _
  rw [OracleComp.run_simulateQ_loggingOracle_query_bind
    (spec := unifSpec + (Point →ₒ F)) (Sum.inl n) (fun u => pure (u, cache))]
  simp only [support_bind, support_map, support_query, Set.mem_univ,
    simulateQ_pure, WriterT.run_pure', support_pure, Set.image_singleton,
    Set.iUnion_const]
  refine ⟨?_, ?_⟩
  · rintro ⟨_, ⟨u, rfl⟩, hzeq⟩; exact ⟨u, hzeq⟩
  · rintro ⟨u, rfl⟩; exact ⟨_, ⟨u, rfl⟩, rfl⟩

/-- A structured cache hit emits no source query; a miss emits exactly its
structured point and installs that logged answer. -/
private lemma fsSource_support_step_inr {Point : Type} [DecidableEq Point]
    (point : Point) (cache : (Point →ₒ F).QueryCache)
    (z : (F × (Point →ₒ F).QueryCache) ×
      QueryLog (unifSpec + (Point →ₒ F))) :
    z ∈ support (replayFirstRun
      (((fsSourceOracle Point F) (Sum.inr point)).run cache)) ↔
    (∃ value, cache point = some value ∧ z = ((value, cache), [])) ∨
    (cache point = none ∧ ∃ value,
      z = ((value, cache.cacheQuery point value), [⟨Sum.inr point, value⟩])) := by
  by_cases hcache : cache point = none
  · have hrun : ((fsSourceOracle Point F) (Sum.inr point)).run cache =
        (liftM ((unifSpec + (Point →ₒ F)).query (Sum.inr point)) :
          OracleComp (unifSpec + (Point →ₒ F)) F) >>= fun value =>
            pure (value, cache.cacheQuery point value) := by
      simp [fsSourceOracle, QueryImpl.add_apply_inr, QueryImpl.withCaching_apply,
        StateT.run_bind, StateT.run_get, fsSourceImpl, hcache]
    rw [hrun]
    simp [replayFirstRun, OracleSpec.loggingOracle,
      QueryImpl.withLogging_apply, OracleQuery.cont_query, Function.id_def,
      hcache]
    constructor <;> rintro ⟨value, rfl⟩ <;> exact ⟨value, rfl⟩
  · rcases Option.ne_none_iff_exists.mp hcache with ⟨value, hvalue⟩
    have hrun : ((fsSourceOracle Point F) (Sum.inr point)).run cache =
        pure (value, cache) := by
      simp [fsSourceOracle, QueryImpl.add_apply_inr, QueryImpl.withCaching_apply,
        StateT.run_bind, StateT.run_get, ← hvalue]
    rw [hrun]
    change z ∈ support (replayFirstRun
      (pure (value, cache) : OracleComp (unifSpec + (Point →ₒ F)) _)) ↔ _
    simp only [replayFirstRun, simulateQ_pure, WriterT.run_pure', support_pure]
    refine ⟨?_, ?_⟩
    · rintro rfl; exact Or.inl ⟨value, hvalue.symm, rfl⟩
    · rintro (⟨value', hv', hzeq⟩ | ⟨h0, _⟩)
      · have hvv : value = value' := by
          rw [← hvalue] at hv'
          exact (Option.some_inj.mp hv'.symm).symm
        rw [hzeq, hvv]
        simp
      · exact absurd h0 (Option.ne_none_iff_exists.mpr ⟨value, hvalue⟩)

/-- Generic invariant lifting for the cached source interpreter followed by
source-query logging. -/
private theorem fsSource_preservesInv {Point α : Type} [DecidableEq Point]
    (Inv : (Point →ₒ F).QueryCache →
      QueryLog (unifSpec + (Point →ₒ F)) → Prop)
    (hstep : ∀ t (cache : (Point →ₒ F).QueryCache)
      (log : QueryLog (unifSpec + (Point →ₒ F))), Inv cache log →
      ∀ z ∈ support (replayFirstRun (((fsSourceOracle Point F) t).run cache)),
        Inv z.1.2 (log ++ z.2))
    (oa : OracleComp (unifSpec + (Point →ₒ F)) α)
    (cache0 : (Point →ₒ F).QueryCache)
    (log0 : QueryLog (unifSpec + (Point →ₒ F)))
    (hinit : Inv cache0 log0)
    {z : (α × (Point →ₒ F).QueryCache) ×
      QueryLog (unifSpec + (Point →ₒ F))}
    (h : z ∈ support (replayFirstRun
      ((simulateQ (fsSourceOracle Point F) oa).run cache0))) :
    Inv z.1.2 (log0 ++ z.2) := by
  classical
  induction oa using OracleComp.inductionOn generalizing cache0 log0 z with
  | pure x =>
      simp only [simulateQ_pure, StateT.run_pure, replayFirstRun,
        WriterT.run_pure', support_pure, Set.mem_singleton_iff] at h
      subst h
      simpa using hinit
  | query_bind t next ih =>
      have hoa : (simulateQ (fsSourceOracle Point F)
            ((liftM (query t) : OracleComp _ _) >>= next)).run cache0 =
          (((fsSourceOracle Point F) t).run cache0) >>= fun tc =>
            (simulateQ (fsSourceOracle Point F) (next tc.1)).run tc.2 := by
        simp [simulateQ_bind, simulateQ_query, StateT.run_bind,
          monad_norm, OracleQuery.cont_query, OracleQuery.input_query]
      unfold replayFirstRun at h
      rw [hoa, simulateQ_bind, WriterT.run_bind', support_bind] at h
      simp only [Set.mem_iUnion, support_map, Set.mem_image] at h
      obtain ⟨stepLog, hstepLog, restLog, hrestLog, hz⟩ := h
      have hpres : Inv stepLog.1.2 (log0 ++ stepLog.2) :=
        hstep t cache0 log0 hinit stepLog hstepLog
      have hrest : (restLog.1, restLog.2) ∈ support (replayFirstRun
          ((simulateQ (fsSourceOracle Point F) (next stepLog.1.1)).run
            stepLog.1.2)) := hrestLog
      have hih := ih stepLog.1.1 stepLog.1.2 (log0 ++ stepLog.2)
        hpres hrest
      have hz' : z = (restLog.1, stepLog.2 ++ restLog.2) := by
        have heq : (restLog.1, stepLog.2 ++ restLog.2) =
            Prod.map id (stepLog.2 ++ ·) restLog := rfl
        rw [heq]
        exact hz.symm
      rw [hz']
      change Inv restLog.1.2 (log0 ++ (stepLog.2 ++ restLog.2))
      rw [← List.append_assoc]
      exact hih

/-- Every structured cache-miss answer in the random-function source log is
present with the same value in the final shared cache. -/
private theorem fsSource_log_cached {Point α : Type} [DecidableEq Point]
    (oa : OracleComp (unifSpec + (Point →ₒ F)) α)
    (cache0 : (Point →ₒ F).QueryCache)
    {z : (α × (Point →ₒ F).QueryCache) ×
      QueryLog (unifSpec + (Point →ₒ F))}
    (h : z ∈ support (replayFirstRun
      ((simulateQ (fsSourceOracle Point F) oa).run cache0))) :
    ∀ point value, QueryAnswered z.2 (Sum.inr point) value →
      z.1.2 point = some value := by
  let Inv : (Point →ₒ F).QueryCache →
      QueryLog (unifSpec + (Point →ₒ F)) → Prop := fun cache log =>
    ∀ point value, QueryAnswered log (Sum.inr point) value →
      cache point = some value
  have hinv := fsSource_preservesInv Inv (hstep := ?_) oa cache0 []
    (by intro point value hmem; simp [QueryAnswered] at hmem) h
  simpa [Inv] using hinv
  intro t cache log hlog step hstepMem
  cases t with
  | inl n =>
      have hs := (fsSource_support_step_inl (F := F) n cache step).mp hstepMem
      obtain ⟨u, rfl⟩ := hs
      intro point value hmem
      unfold QueryAnswered at hmem
      rw [List.mem_append] at hmem
      rcases hmem with hold | hnew
      · exact hlog point value hold
      · simp only [List.mem_singleton] at hnew
        have hinput := congrArg Sigma.fst hnew
        cases hinput
  | inr point =>
      have hs := (fsSource_support_step_inr (F := F) point cache step).mp hstepMem
      rcases hs with ⟨cached, hcached, rfl⟩ | ⟨hmiss, sampled, rfl⟩
      · simpa using hlog
      · intro point' value hmem
        change QueryAnswered (log ++ [⟨Sum.inr point, sampled⟩])
          (Sum.inr point') value at hmem
        change (cache.cacheQuery point sampled) point' = some value
        unfold QueryAnswered at hmem
        rw [List.mem_append] at hmem
        rcases hmem with hold | hnew
        · have hold' : QueryAnswered log (Sum.inr point') value := hold
          have hc := hlog point' value hold'
          by_cases heq : point' = point
          · subst point'
            rw [hmiss] at hc
            simp at hc
          · rw [QueryCache.cacheQuery_of_ne _ _ heq]
            exact hc
        · simp only [List.mem_singleton] at hnew
          obtain ⟨heq, hvalue⟩ := Sigma.mk.inj hnew
          have hp : point' = point := Sum.inr.inj heq
          subst point'
          have hv : value = sampled := eq_of_heq hvalue
          subst value
          exact QueryCache.cacheQuery_self cache point sampled

/-- Conversely, every final cache entry that was absent initially appears as
an exact structured miss entry in the source log. -/
private theorem fsSource_cache_logged {Point α : Type} [DecidableEq Point]
    (oa : OracleComp (unifSpec + (Point →ₒ F)) α)
    {z : (α × (Point →ₒ F).QueryCache) ×
      QueryLog (unifSpec + (Point →ₒ F))}
    (h : z ∈ support (replayFirstRun
      ((simulateQ (fsSourceOracle Point F) oa).run ∅))) :
    ∀ point value, z.1.2 point = some value →
      QueryAnswered z.2 (Sum.inr point) value := by
  let Inv : (Point →ₒ F).QueryCache →
      QueryLog (unifSpec + (Point →ₒ F)) → Prop := fun cache log =>
    ∀ point value, cache point = some value →
      QueryAnswered log (Sum.inr point) value
  have hinv := fsSource_preservesInv Inv (hstep := ?_) oa ∅ []
    (by intro point value hcache; simp at hcache) h
  simpa [Inv] using hinv
  intro t cache log hlog step hstepMem
  cases t with
  | inl n =>
      have hs := (fsSource_support_step_inl (F := F) n cache step).mp hstepMem
      obtain ⟨u, rfl⟩ := hs
      intro point value hcache
      apply List.mem_append_left
      exact hlog point value hcache
  | inr point =>
      have hs := (fsSource_support_step_inr (F := F) point cache step).mp hstepMem
      rcases hs with ⟨cached, hcached, rfl⟩ | ⟨hmiss, sampled, rfl⟩
      · simpa using hlog
      · intro point' value hcache
        change (cache.cacheQuery point sampled) point' = some value at hcache
        change QueryAnswered (log ++ [⟨Sum.inr point, sampled⟩])
          (Sum.inr point') value
        by_cases heq : point' = point
        · subst point'
          have hself : (cache.cacheQuery point sampled) point = some sampled :=
            QueryCache.cacheQuery_self cache point sampled
          have hvalue : value = sampled := Option.some.inj (hcache.symm.trans hself)
          subst value
          apply List.mem_append_right
          simp
        · have hold : cache point' = some value := by
            rwa [QueryCache.cacheQuery_of_ne _ _ heq] at hcache
          apply List.mem_append_left
          exact hlog point' value hold

/-- A successful bounded nonce loop leaves its accepted answer cached at the
exact nonce-bearing point. -/
private theorem queryAccepting_cached
    {F G1 G2 GT : Type} [DecidableEq F] [DecidableEq G1]
    [DecidableEq G2] [DecidableEq GT]
    (mkPoint : Nat → FsPoint (F := F) (G1 := G1) (G2 := G2) (GT := GT))
    (acceptable : F → Bool) : (fuel nonce : Nat) →
    (cache0 : (FsPoint (F := F) (G1 := G1) (G2 := G2) (GT := GT) →ₒ F).QueryCache) →
    {x : F} → {used : Nat} →
    {cache1 : (FsPoint (F := F) (G1 := G1) (G2 := G2) (GT := GT) →ₒ F).QueryCache} →
    (some (x, used), cache1) ∈ support ((simulateQ
      (fsSourceOracle (FsPoint (F := F) (G1 := G1) (G2 := G2) (GT := GT)) F)
      (queryAccepting mkPoint acceptable fuel nonce)).run cache0) →
    cache1 (mkPoint used) = some x
  | 0, _, _, _, _, _, h => by simp [queryAccepting] at h
  | fuel + 1, nonce, cache0, x, used, cache2, h => by
      rw [queryAccepting, simulateQ_bind, StateT.run_bind, support_bind] at h
      simp only [Set.mem_iUnion] at h
      obtain ⟨⟨answer, cache1⟩, hanswer, hrest⟩ := h
      split at hrest
      · have hanswer' : (answer, cache1) ∈ support
            (((fsSourceOracle
              (FsPoint (F := F) (G1 := G1) (G2 := G2) (GT := GT)) F)
              (Sum.inr (mkPoint nonce))).run cache0) := by
          simpa [simulateQ_query] using hanswer
        have hcached := fsSourceOracle_query_caches (F := F) (mkPoint nonce)
          cache0 answer cache1 hanswer'
        simp only [simulateQ_pure, StateT.run_pure, support_pure,
          Set.mem_singleton_iff] at hrest
        obtain ⟨rfl, rfl⟩ := hrest
        exact hcached
      · exact queryAccepting_cached mkPoint acceptable fuel (nonce + 1)
          cache1 hrest

/-- Every accepted chronological round answer remains in the shared cache at
its exact nonce-bearing Rust preimage. Round level is only the vector index. -/
private theorem queryRounds_cached
    {F G1 G2 GT : Type} [Zero F]
    [DecidableEq F] [DecidableEq G1] [DecidableEq G2] [DecidableEq GT]
    (fuel μ : Nat) (prev : F) (rounds : Fin μ → RoundComs G1 GT)
    (cache0 : (FsPoint (F := F) (G1 := G1) (G2 := G2) (GT := GT) →ₒ F).QueryCache)
    {out : RoundTranscript μ F}
    {cache1 : (FsPoint (F := F) (G1 := G1) (G2 := G2) (GT := GT) →ₒ F).QueryCache}
    (h : (some out, cache1) ∈ support ((simulateQ
      (fsSourceOracle (FsPoint (F := F) (G1 := G1) (G2 := G2) (GT := GT)) F)
      (queryRounds (G2 := G2) fuel μ prev rounds)).run cache0)) :
    (∀ i : Fin μ, cache1 (.round (out.prev i) (rounds i) (out.nonce i)) =
      some (out.answer i)) ∧ TranscriptChaining prev out.prev out.answer := by
  induction μ generalizing prev cache0 with
  | zero =>
      constructor
      · intro i; exact Fin.elim0 i
      · constructor
        · intro hμ; omega
        · intro j hj; omega
  | succ μ ih =>
      rw [queryRounds, simulateQ_bind, StateT.run_bind, support_bind] at h
      simp only [Set.mem_iUnion] at h
      obtain ⟨⟨sample, cache2⟩, hsample, hrest⟩ := h
      cases sample with
      | none => simp at hrest
      | some pair =>
        rcases pair with ⟨x, nonce⟩
        rw [simulateQ_bind, StateT.run_bind, support_bind] at hrest
        simp only [Set.mem_iUnion] at hrest
        obtain ⟨⟨tailOpt, cache3⟩, htail, hpure⟩ := hrest
        cases tailOpt with
        | none => simp at hpure
        | some tail =>
          simp only [simulateQ_pure, StateT.run_pure, support_pure,
            Set.mem_singleton_iff] at hpure
          obtain ⟨rfl, rfl⟩ := hpure
          have htailFacts := ih x (fun k => rounds k.succ) cache2 htail
          constructor
          · intro i
            refine Fin.cases ?_ (fun j => ?_) i
            · have hcached := queryAccepting_cached
                (fun n => ChallengePoint.round prev (rounds 0) n) nonzeroB
                fuel 0 cache0 hsample
              exact (fsSourceOracle_cache_le
                (oa := queryRounds (G2 := G2) fuel μ x (fun k => rounds k.succ))
                cache2 (some tail, cache1) htail) hcached
            · simpa using htailFacts.1 j
          · constructor
            · intro hμ
              rfl
            · intro j hj
              cases j with
              | zero =>
                  simpa using htailFacts.2.zero (by omega)
              | succ j =>
                  simpa using htailFacts.2.succ j (by omega)

/-- The verifier's chronological round answers are the values stored at its
structured round points in the final shared cache. Acceptance also exposes the
same leaf relation as the uncached verifier. -/
private theorem fsVerifier_cached
    [Field F] [AddCommGroup G1] [Module F G1]
    [AddCommGroup G2] [Module F G2] [AddCommGroup GT] [Module F GT]
    [DecidableEq F] [DecidableEq G1] [DecidableEq G2] [DecidableEq GT]
    {μ : Nat}
    (stmt : FsStatement μ F G1 G2 GT) (proof : Proof μ F G1 G2 GT)
    (cache0 : (FsPoint (F := F) (G1 := G1) (G2 := G2) (GT := GT) →ₒ F).QueryCache)
    {z : FsResult μ F G1 G2 GT ×
      (FsPoint (F := F) (G1 := G1) (G2 := G2) (GT := GT) →ₒ F).QueryCache}
    (h : z ∈ support ((simulateQ
      (fsSourceOracle
        (FsPoint (F := F) (G1 := G1) (G2 := G2) (GT := GT)) F)
      (fsVerifier stmt proof)).run cache0)) :
    z.1.accept = true →
      ((((∀ i : Fin μ, z.2 (.round (z.1.transcript.roundPrev i)
          (z.1.proof.rounds i) (z.1.transcript.roundNonce i)) =
            some (z.1.transcript.roundAnswer i)) ∧
        TranscriptChaining z.1.transcript.x0 z.1.transcript.roundPrev
          z.1.transcript.roundAnswer ∧
        LeafData stmt z.1.proof z.1.transcript ∧ ChallengesAccepted z.1) ∧
      z.2 (.randomizer
        { comA := stmt.ComA.1, comB := stmt.ComB, comC := stmt.ComA.2 }
        z.1.transcript.randomizerNonce) = some z.1.transcript.randomizer ∧
      z.2 (.x0
        { r := z.1.transcript.randomizer, comA := stmt.ComA.1, comB := stmt.ComB,
          comC := stmt.ComA.2, ipAb := z.1.proof.ipAb, aggC := z.1.proof.aggC }
        z.1.transcript.x0Nonce) = some z.1.transcript.x0) ∧
      z.2 (.kzg
        { bridgeChallenge := z.1.transcript.bridge, vFinal := z.1.proof.vFinal,
          wFinal := z.1.proof.wFinal }
        z.1.transcript.kzgNonce) = some z.1.transcript.kzg) ∧
      FsAccepts stmt z.1.proof z.1.transcript := by
  rw [fsVerifier, simulateQ_bind, StateT.run_bind, support_bind] at h
  simp only [Set.mem_iUnion] at h
  obtain ⟨⟨rOpt, cache1⟩, hr, hrest⟩ := h
  cases rOpt with
  | none =>
      simp only [simulateQ_pure, StateT.run_pure, support_pure,
        Set.mem_singleton_iff] at hrest
      subst z
      simp [rejectedResult]
  | some rPair =>
    rcases rPair with ⟨r, rNonce⟩
    rw [simulateQ_bind, StateT.run_bind, support_bind] at hrest
    simp only [Set.mem_iUnion] at hrest
    obtain ⟨⟨xOpt, cache2⟩, hx, hxrest⟩ := hrest
    cases xOpt with
    | none =>
      simp only [simulateQ_pure, StateT.run_pure, support_pure,
        Set.mem_singleton_iff] at hxrest
      subst z
      simp [rejectedResult]
    | some xPair =>
      rcases xPair with ⟨x0, x0Nonce⟩
      rw [simulateQ_bind, StateT.run_bind, support_bind] at hxrest
      simp only [Set.mem_iUnion] at hxrest
      obtain ⟨⟨roundOpt, cache3⟩, hround, hrrest⟩ := hxrest
      cases roundOpt with
      | none =>
        simp only [simulateQ_pure, StateT.run_pure, support_pure,
          Set.mem_singleton_iff] at hrrest
        subst z
        simp [rejectedResult]
      | some rounds =>
        rw [simulateQ_bind, StateT.run_bind, support_bind] at hrrest
        simp only [Set.mem_iUnion] at hrrest
        obtain ⟨⟨bridgeOpt, cache4⟩, hbridge, hbrest⟩ := hrrest
        cases bridgeOpt with
        | none =>
          simp only [simulateQ_pure, StateT.run_pure, support_pure,
            Set.mem_singleton_iff] at hbrest
          subst z
          simp [rejectedResult]
        | some bridgePair =>
          rcases bridgePair with ⟨bridge, bridgeNonce⟩
          rw [simulateQ_bind, StateT.run_bind, support_bind] at hbrest
          simp only [Set.mem_iUnion] at hbrest
          obtain ⟨⟨zOpt, cache5⟩, hz, hzrest⟩ := hbrest
          cases zOpt with
          | none =>
            simp only [simulateQ_pure, StateT.run_pure, support_pure,
              Set.mem_singleton_iff] at hzrest
            subst z
            simp [rejectedResult]
          | some zPair =>
            rcases zPair with ⟨kzg, kzgNonce⟩
            simp only [simulateQ_pure, StateT.run_pure, support_pure,
              Set.mem_singleton_iff] at hzrest
            subst z
            intro haccept
            let transcript : FsTranscript μ F :=
              { randomizer := r, randomizerNonce := rNonce
                x0 := x0, x0Nonce := x0Nonce
                roundPrev := rounds.prev, roundAnswer := rounds.answer,
                roundNonce := rounds.nonce
                bridge := bridge, bridgeNonce := bridgeNonce
                kzg := kzg, kzgNonce := kzgNonce }
            have hacc : FsAccepts stmt proof transcript := by
              simpa [transcript] using haccept
            have hround' := queryRounds_cached stmt.rejectionFuel μ x0 proof.rounds
              cache2 hround
            have hrCached := queryAccepting_cached
              (fun nonce => ChallengePoint.randomizer
                { comA := stmt.ComA.1, comB := stmt.ComB, comC := stmt.ComA.2 } nonce)
              randomizerAcceptedB stmt.rejectionFuel 0 cache0 hr
            have hxCached := queryAccepting_cached
              (fun nonce => ChallengePoint.x0
                { r := r, comA := stmt.ComA.1, comB := stmt.ComB, comC := stmt.ComA.2,
                  ipAb := proof.ipAb, aggC := proof.aggC } nonce)
              nonzeroB stmt.rejectionFuel 0 cache1 hx
            have hkzgCached := queryAccepting_cached
              (fun nonce => ChallengePoint.kzg
                { bridgeChallenge := bridge, vFinal := proof.vFinal,
                  wFinal := proof.wFinal } nonce)
              nonzeroB stmt.rejectionFuel 0 cache4 hz
            have hxLe := fsSourceOracle_cache_le
              (oa := queryAccepting
                (fun nonce => ChallengePoint.x0
                  { r := r, comA := stmt.ComA.1, comB := stmt.ComB,
                    comC := stmt.ComA.2, ipAb := proof.ipAb, aggC := proof.aggC } nonce)
                nonzeroB stmt.rejectionFuel 0)
              cache1 (some (x0, x0Nonce), cache2) hx
            have hroundLe := fsSourceOracle_cache_le
              (oa := queryRounds (G2 := G2) stmt.rejectionFuel μ x0 proof.rounds)
              cache2 (some rounds, cache3) hround
            have hbridgeLe := fsSourceOracle_cache_le
              (oa := queryAccepting
                (fun nonce => ChallengePoint.bridge
                  { lastRawChallenge := rounds.last, vFinal := proof.vFinal,
                    wFinal := proof.wFinal, aFinal := proof.aFinal,
                    bFinal := proof.bFinal, cFinal := proof.cFinal } nonce)
                nonzeroB stmt.rejectionFuel 0)
              cache3 (some (bridge, bridgeNonce), cache4) hbridge
            have hkzgLe := fsSourceOracle_cache_le
              (oa := queryAccepting
                (fun nonce => ChallengePoint.kzg
                  { bridgeChallenge := bridge, vFinal := proof.vFinal,
                    wFinal := proof.wFinal } nonce)
                nonzeroB stmt.rejectionFuel 0)
              cache4 (some (kzg, kzgNonce), cache5) hz
            have hfinalLe := le_trans hroundLe (le_trans hbridgeLe hkzgLe)
            refine ⟨⟨⟨⟨?_, ?_, hacc.2.2.2.2.2.2.1, ?_⟩, ?_, ?_⟩, ?_⟩, ?_⟩
            · intro i
              exact hkzgLe (hbridgeLe (hround'.1 i))
            · simpa [transcript] using hround'.2
            · exact ⟨hacc.1, hacc.2.1, hacc.2.2.1, hacc.2.2.2.1,
                hacc.2.2.2.2.1, hacc.2.2.2.2.2.1⟩
            · simpa [transcript] using hfinalLe (hxLe hrCached)
            · simpa [transcript] using hfinalLe hxCached
            · simpa [transcript] using hkzgCached
            · simpa [transcript] using hacc

/-- Cache/acceptance postcondition for the complete adversary-plus-verifier
game, with the verifier starting from the adversary's live cache. -/
private theorem fsGame_cached
    [Field F] [AddCommGroup G1] [Module F G1]
    [AddCommGroup G2] [Module F G2] [AddCommGroup GT] [Module F GT]
    [DecidableEq F] [DecidableEq G1] [DecidableEq G2] [DecidableEq GT]
    {μ : Nat}
    (stmt : FsStatement μ F G1 G2 GT)
    (adv : OracleComp (unifSpec + SnarkpackFsSpec F G1 G2 GT) (Proof μ F G1 G2 GT))
    (cache0 : (FsPoint (F := F) (G1 := G1) (G2 := G2) (GT := GT) →ₒ F).QueryCache)
    {z : FsResult μ F G1 G2 GT ×
      (FsPoint (F := F) (G1 := G1) (G2 := G2) (GT := GT) →ₒ F).QueryCache}
    (h : z ∈ support ((simulateQ
      (fsSourceOracle
        (FsPoint (F := F) (G1 := G1) (G2 := G2) (GT := GT)) F)
      (FsGame stmt adv)).run cache0)) :
    z.1.accept = true →
      ((((∀ i : Fin μ, z.2 (.round (z.1.transcript.roundPrev i)
          (z.1.proof.rounds i) (z.1.transcript.roundNonce i)) =
            some (z.1.transcript.roundAnswer i)) ∧
        TranscriptChaining z.1.transcript.x0 z.1.transcript.roundPrev
          z.1.transcript.roundAnswer ∧
        LeafData stmt z.1.proof z.1.transcript ∧ ChallengesAccepted z.1) ∧
      z.2 (.randomizer
        { comA := stmt.ComA.1, comB := stmt.ComB, comC := stmt.ComA.2 }
        z.1.transcript.randomizerNonce) = some z.1.transcript.randomizer ∧
      z.2 (.x0
        { r := z.1.transcript.randomizer, comA := stmt.ComA.1, comB := stmt.ComB,
          comC := stmt.ComA.2, ipAb := z.1.proof.ipAb, aggC := z.1.proof.aggC }
        z.1.transcript.x0Nonce) = some z.1.transcript.x0) ∧
      z.2 (.kzg
        { bridgeChallenge := z.1.transcript.bridge, vFinal := z.1.proof.vFinal,
          wFinal := z.1.proof.wFinal }
        z.1.transcript.kzgNonce) = some z.1.transcript.kzg) ∧
      FsAccepts stmt z.1.proof z.1.transcript := by
  rw [FsGame, simulateQ_bind, StateT.run_bind, support_bind] at h
  simp only [Set.mem_iUnion] at h
  obtain ⟨⟨proof, cache1⟩, _, hverifier⟩ := h
  exact fsVerifier_cached stmt proof cache1 hverifier

/-- Replay-visible random-function runs couple the exact miss log, final
cache, verifier round answers, accepted leaf data, and the terminal KZG query. -/
private theorem fsRandomFunction_replay_cached
    [Field F] [AddCommGroup G1] [Module F G1]
    [AddCommGroup G2] [Module F G2] [AddCommGroup GT] [Module F GT]
    [DecidableEq F] [DecidableEq G1] [DecidableEq G2] [DecidableEq GT]
    {μ : Nat}
    (stmt : FsStatement μ F G1 G2 GT)
    (adv : OracleComp (unifSpec + SnarkpackFsSpec F G1 G2 GT) (Proof μ F G1 G2 GT))
    {out : FsResult μ F G1 G2 GT}
    {sourceLog : QueryLog (unifSpec + SnarkpackFsSpec F G1 G2 GT)}
    (h : (out, sourceLog) ∈ support
      (replayFirstRun (fsRandomFunction (FsGame stmt adv)))) :
    ∃ cache : (FsPoint (F := F) (G1 := G1) (G2 := G2) (GT := GT) →ₒ F).QueryCache,
      (∀ point value, QueryAnswered sourceLog (Sum.inr point) value →
        cache point = some value) ∧
      (∀ point value, cache point = some value →
        QueryAnswered sourceLog (Sum.inr point) value) ∧
      (out.accept = true →
        ((((∀ i : Fin μ, cache (.round (out.transcript.roundPrev i)
            (out.proof.rounds i) (out.transcript.roundNonce i)) =
              some (out.transcript.roundAnswer i)) ∧
          TranscriptChaining out.transcript.x0 out.transcript.roundPrev
            out.transcript.roundAnswer ∧
          LeafData stmt out.proof out.transcript ∧ ChallengesAccepted out) ∧
        cache (.randomizer
          { comA := stmt.ComA.1, comB := stmt.ComB, comC := stmt.ComA.2 }
          out.transcript.randomizerNonce) = some out.transcript.randomizer ∧
        cache (.x0
          { r := out.transcript.randomizer, comA := stmt.ComA.1, comB := stmt.ComB,
            comC := stmt.ComA.2, ipAb := out.proof.ipAb, aggC := out.proof.aggC }
          out.transcript.x0Nonce) = some out.transcript.x0) ∧
        cache (.kzg
          { bridgeChallenge := out.transcript.bridge, vFinal := out.proof.vFinal,
            wFinal := out.proof.wFinal }
          out.transcript.kzgNonce) = some out.transcript.kzg) ∧
        FsAccepts stmt out.proof out.transcript) := by
  unfold replayFirstRun fsRandomFunction at h
  simp only [bind_pure_comp, simulateQ_map, WriterT.run_map', support_map] at h
  obtain ⟨stateLog, hstateLog, heq⟩ := h
  have hout : out = stateLog.1.1 := by
    have := congrArg Prod.fst heq
    simpa [Prod.map_apply] using this.symm
  have hlog : sourceLog = stateLog.2 := by
    have := congrArg Prod.snd heq
    simpa [Prod.map_apply] using this.symm
  subst out
  subst sourceLog
  have hstate : stateLog.1 ∈ support ((simulateQ
      (fsSourceOracle
        (FsPoint (F := F) (G1 := G1) (G2 := G2) (GT := GT)) F)
      (FsGame stmt adv)).run ∅) := by
    have hm : stateLog.1 ∈ support (Prod.fst <$> replayFirstRun
        ((simulateQ
          (fsSourceOracle
            (FsPoint (F := F) (G1 := G1) (G2 := G2) (GT := GT)) F)
          (FsGame stmt adv)).run ∅)) := by
      rw [support_map]
      exact ⟨stateLog, hstateLog, rfl⟩
    simpa using hm
  have hgame := fsGame_cached stmt adv ∅ hstate
  refine ⟨stateLog.1.2, ?_, ?_, hgame⟩
  · exact fsSource_log_cached (FsGame stmt adv) ∅ hstateLog
  · exact fsSource_cache_logged (FsGame stmt adv) hstateLog

/-- Forward ambient uniform sampling without changing the structured trace. -/
def fsUnifFwd (Point F : Type) :
    QueryImpl unifSpec (StateT (List Point) (OracleComp (FsWrappedSpec F))) :=
  fun n => (FsWrappedSpec F).query (Sum.inl n)

/-- Erase each structured cache miss to the fixed `Unit` index and append its
point to the miss trace. Cache hits never reach this adapter. -/
def fsMissImpl (Point F : Type) :
    QueryImpl (Point →ₒ F)
      (StateT (List Point) (OracleComp (FsWrappedSpec F))) :=
  fun point => do
    let value : F ← monadLift
      ((FsWrappedSpec F).query (Sum.inr ()) : OracleComp (FsWrappedSpec F) F)
    modify (· ++ [point])
    pure value

/-- Run the wrapper from an existing chronological point prefix. -/
def wrapFsFrom {Point α : Type}
    (oa : OracleComp (unifSpec + (Point →ₒ F)) α) (initial : List Point) :
    OracleComp (FsWrappedSpec F) (WrappedFsRun Point α) := do
  let (out, trace) ← StateT.run
    (simulateQ (fsUnifFwd Point F + fsMissImpl Point F) oa) initial
  pure { out := out, trace := trace }

/-- Route a structured FS computation through one challenge index and retain
the structured query sequence (DESIGN §U5d(4); `fs.stage-labels`). -/
def wrapFs {Point α : Type} [DecidableEq Point]
    (oa : OracleComp (unifSpec + (Point →ₒ F)) α) :
    OracleComp (FsWrappedSpec F) (WrappedFsRun Point α) :=
  wrapFsFrom (fsRandomFunction oa) []

private theorem fsUnifFwd_run_isTotalQueryBound {Point F : Type}
    (n : unifSpec.Domain) (trace : List Point) :
    IsTotalQueryBound ((fsUnifFwd Point F n).run trace) 1 := by
  change IsTotalQueryBound
    (liftM ((FsWrappedSpec F).query (Sum.inl n)) : OracleComp (FsWrappedSpec F) _) 1
  exact (OracleComp.isQueryBound_query_iff (Sum.inl n) 1 _ _).mpr Nat.one_pos

private theorem fsMissImpl_run_isTotalQueryBound {Point F : Type}
    (point : Point) (trace : List Point) :
    IsTotalQueryBound ((fsMissImpl Point F point).run trace) 1 := by
  change IsTotalQueryBound
    ((fun value : F => (value, trace ++ [point])) <$>
      (liftM ((FsWrappedSpec F).query (Sum.inr ())) : OracleComp (FsWrappedSpec F) F)) 1
  apply (isQueryBound_map_iff _ _ _ _ _).mpr
  exact (OracleComp.isQueryBound_query_iff (Sum.inr ()) 1 _ _).mpr Nat.one_pos

/-- The wrapper only erases cached structured misses, so it preserves the cap. -/
theorem wrapFsFrom_isTotalQueryBound {Point α : Type}
    [IsUniformSpec (FsWrappedSpec F)]
    (oa : OracleComp (unifSpec + (Point →ₒ F)) α) (initial : List Point) {n : Nat}
    (h : IsTotalQueryBound oa n) :
    IsTotalQueryBound (wrapFsFrom oa initial) n := by
  unfold wrapFsFrom
  simp only [bind_pure_comp]
  apply (isQueryBound_map_iff _ _ _ _ _).mpr
  refine IsTotalQueryBound.simulateQ_run_of_step h ?_ initial
  intro t trace
  cases t with
  | inl n => exact fsUnifFwd_run_isTotalQueryBound n trace
  | inr point => exact fsMissImpl_run_isTotalQueryBound point trace

/-- Caching followed by the single-index wrapper preserves a whole-game cap. -/
theorem wrapFs_isTotalQueryBound {Point α : Type} [DecidableEq Point]
    [IsUniformSpec (unifSpec + (Point →ₒ F))] [IsUniformSpec (FsWrappedSpec F)]
    (oa : OracleComp (unifSpec + (Point →ₒ F)) α) {n : Nat}
    (h : IsTotalQueryBound oa n) :
    IsTotalQueryBound (wrapFs oa) n := by
  unfold wrapFs
  exact wrapFsFrom_isTotalQueryBound (fsRandomFunction oa) []
    (fsRandomFunction_isTotalQueryBound oa h)

/-- Structured cache-miss points in random-function source-log order. -/
def fsPointTrace {Point : Type} :
    QueryLog (unifSpec + (Point →ₒ F)) → List Point
  | [] => []
  | ⟨Sum.inl _, _⟩ :: rest => fsPointTrace rest
  | ⟨Sum.inr point, _⟩ :: rest => point :: fsPointTrace rest

/-- A structured answered query contributes its point to the structured miss
trace. -/
theorem fsPointTrace_mem_of_queryAnswered {Point : Type}
    {log : QueryLog (unifSpec + (Point →ₒ F))} {point : Point} {answer : F}
    (h : QueryAnswered log (Sum.inr point) answer) :
    point ∈ fsPointTrace log := by
  induction log with
  | nil => simp [QueryAnswered] at h
  | cons entry rest ih =>
      rcases entry with ⟨t, value⟩
      cases t with
      | inl n =>
          simp only [fsPointTrace]
          apply ih
          simpa [QueryAnswered] using h
      | inr point' =>
          simp only [fsPointTrace, List.mem_cons]
          simp only [QueryAnswered, List.mem_cons] at h
          rcases h with hhead | htail
          · left
            exact Sum.inr.inj (congrArg Sigma.fst hhead)
          · exact Or.inr (ih htail)

/-- Removing ambient entries cannot increase the log length. -/
theorem fsPointTrace_length_le {Point : Type}
    (log : QueryLog (unifSpec + (Point →ₒ F))) :
    (fsPointTrace log).length ≤ log.length := by
  induction log with
  | nil => exact Nat.le_refl 0
  | cons entry rest ih =>
      rcases entry with ⟨t, value⟩
      cases t with
      | inl n => simpa [fsPointTrace] using Nat.le_succ_of_le ih
      | inr point => simpa [fsPointTrace] using Nat.succ_le_succ ih

/-- Erase structured cache-miss indices to the wrapper's fixed `Unit` index. -/
def flattenFsLog {Point : Type} :
    QueryLog (unifSpec + (Point →ₒ F)) → QueryLog (FsWrappedSpec F)
  | [] => []
  | ⟨Sum.inl n, value⟩ :: rest =>
      ⟨Sum.inl n, value⟩ :: flattenFsLog rest
  | ⟨Sum.inr _, value⟩ :: rest =>
      ⟨Sum.inr (), value⟩ :: flattenFsLog rest

/-- The `i`th structured miss point and the `i`th erased `Unit` answer are
the same source-log entry. -/
private theorem fsPointTrace_flatten_at {Point : Type} [DecidableEq F]
    (sourceLog : QueryLog (unifSpec + (Point →ₒ F)))
    (i : Nat) (hi : i < (fsPointTrace sourceLog).length) :
    ∃ value : F,
      QueryAnswered sourceLog
        (Sum.inr ((fsPointTrace sourceLog)[i]'hi)) value ∧
      QueryLog.getQueryValue? (flattenFsLog sourceLog) (Sum.inr ()) i =
        some value := by
  induction sourceLog generalizing i with
  | nil => simp [fsPointTrace] at hi
  | cons entry rest ih =>
      rcases entry with ⟨t, value⟩
      cases t with
      | inl n =>
          have hi' : i < (fsPointTrace rest).length := by
            simpa [fsPointTrace] using hi
          obtain ⟨answer, hmem, hget⟩ := ih i hi'
          refine ⟨answer, ?_, ?_⟩
          · exact List.mem_cons_of_mem _ hmem
          · change QueryLog.getQueryValue?
              ((⟨Sum.inl n, value⟩ :
                (j : Nat ⊕ Unit) × (FsWrappedSpec F).Range j) ::
                flattenFsLog rest) (Sum.inr ()) i =
                some answer
            rw [QueryLog.getQueryValue?_cons_of_ne]
            · exact hget
            · exact Sum.inl_ne_inr
      | inr point =>
          cases i with
          | zero =>
              refine ⟨value, ?_, ?_⟩
              · change QueryAnswered (⟨Sum.inr point, value⟩ :: rest)
                  (Sum.inr point) value
                simp [QueryAnswered]
              · exact QueryLog.getQueryValue?_cons_self_zero
                  (Sum.inr ()) value (flattenFsLog rest)
          | succ i =>
              have hi' : i < (fsPointTrace rest).length := by
                simpa [fsPointTrace] using hi
              obtain ⟨answer, hmem, hget⟩ := ih i hi'
              refine ⟨answer, ?_, ?_⟩
              · exact List.mem_cons_of_mem _ hmem
              · change QueryLog.getQueryValue?
                  ((⟨Sum.inr (), value⟩ :
                    (j : Nat ⊕ Unit) × (FsWrappedSpec F).Range j) ::
                    flattenFsLog rest) (Sum.inr ()) (i + 1) =
                    some answer
                rw [QueryLog.getQueryValue?_cons_self_succ]
                exact hget

/-- Support-level erasure bijection for a computation that already emits only
structured cache misses. -/
private theorem wrapFsFrom_support_iff {Point α : Type}
    (oa : OracleComp (unifSpec + (Point →ₒ F)) α)
    (initial expected : List Point) (out : α)
    (sourceLog : QueryLog (unifSpec + (Point →ₒ F))) :
    ({ out := out, trace := expected ++ fsPointTrace sourceLog },
        flattenFsLog sourceLog) ∈
        support (replayFirstRun (wrapFsFrom oa initial)) ↔
      (out, sourceLog) ∈ support (replayFirstRun oa) ∧
        initial = expected := by
  induction oa using OracleComp.inductionOn generalizing initial expected out sourceLog with
  | pure x =>
      cases sourceLog with
      | nil => simp [replayFirstRun, wrapFsFrom, fsPointTrace, flattenFsLog, eq_comm]
      | cons q rest =>
          rcases q with ⟨t, value⟩
          cases t <;> simp [replayFirstRun, wrapFsFrom, fsPointTrace, flattenFsLog]
  | query_bind t next ih =>
      cases t with
      | inl n =>
          cases sourceLog with
          | nil =>
              simp [replayFirstRun, wrapFsFrom, fsUnifFwd,
                OracleSpec.loggingOracle, QueryImpl.withLogging_apply, flattenFsLog]
          | cons q rest =>
              rcases q with ⟨t, value⟩
              cases t with
              | inl n' =>
                  simp [replayFirstRun, wrapFsFrom, fsUnifFwd,
                    OracleSpec.loggingOracle, QueryImpl.withLogging_apply,
                    fsPointTrace, flattenFsLog]
                  constructor
                  · rintro ⟨i, hw, hn, hv⟩
                    have hi := (ih i initial expected out rest).mp (by
                      simpa [replayFirstRun, wrapFsFrom] using hw)
                    exact ⟨⟨i, hi.1, hn, hv⟩, hi.2⟩
                  · rintro ⟨⟨i, hs, hn, hv⟩, hie⟩
                    refine ⟨i, ?_, hn, hv⟩
                    simpa [replayFirstRun, wrapFsFrom] using
                      (ih i initial expected out rest).mpr ⟨hs, hie⟩
              | inr point =>
                  simp [replayFirstRun, wrapFsFrom, fsUnifFwd,
                    OracleSpec.loggingOracle, QueryImpl.withLogging_apply,
                    fsPointTrace, flattenFsLog]
      | inr point =>
          cases sourceLog with
          | nil =>
              simp [replayFirstRun, wrapFsFrom, fsMissImpl,
                OracleSpec.loggingOracle, QueryImpl.withLogging_apply, flattenFsLog]
          | cons q rest =>
              rcases q with ⟨t, value⟩
              cases t with
              | inl n =>
                  simp [replayFirstRun, wrapFsFrom, fsMissImpl,
                    OracleSpec.loggingOracle, QueryImpl.withLogging_apply,
                    fsPointTrace, flattenFsLog]
              | inr point' =>
                  simp [replayFirstRun, wrapFsFrom, fsMissImpl,
                    OracleSpec.loggingOracle, QueryImpl.withLogging_apply,
                    fsPointTrace, flattenFsLog]
                  have hrec := ih value (initial ++ [point]) (expected ++ [point']) out rest
                  constructor
                  · intro hw
                    have hr := hrec.mp (by
                      simpa [replayFirstRun, wrapFsFrom, List.append_assoc] using hw)
                    have hparts := List.append_inj' hr.2 (by simp)
                    have hip : initial = expected := hparts.1
                    have hpoint : point = point' := by simpa using hparts.2
                    exact ⟨⟨hr.1, hpoint⟩, hip⟩
                  · rintro ⟨⟨hs, hpoint⟩, hip⟩
                    subst expected
                    subst point'
                    simpa [replayFirstRun, wrapFsFrom, List.append_assoc] using
                      hrec.mpr ⟨hs, rfl⟩

/-- Support correspondence with lazy random-function semantics. `sourceLog`
contains only structured cache misses; the wrapped run has exactly those
points and their `Unit`-index answers, in order. -/
theorem wrapFs_support_iff {Point α : Type} [DecidableEq Point]
    (oa : OracleComp (unifSpec + (Point →ₒ F)) α)
    (out : α) (sourceLog : QueryLog (unifSpec + (Point →ₒ F))) :
    ({ out := out, trace := fsPointTrace sourceLog }, flattenFsLog sourceLog) ∈
        support (replayFirstRun (wrapFs oa)) ↔
      (out, sourceLog) ∈ support (replayFirstRun (fsRandomFunction oa)) := by
  simpa [wrapFs] using
    wrapFsFrom_support_iff (fsRandomFunction oa) [] [] out sourceLog

/-- `wrapFsFrom` is the pushforward of the source computation and its query
log under structured-point erasure. -/
private theorem probEvent_wrapFsFrom_eq {Point α : Type} [DecidableEq F] [Fintype F]
    [hSource : IsUniformSpec (unifSpec + (Point →ₒ F))]
    [hWrapped : IsUniformSpec (FsWrappedSpec F)]
    (oa : OracleComp (unifSpec + (Point →ₒ F)) α)
    (initial : List Point)
    (q : (WrappedFsRun Point α × QueryLog (FsWrappedSpec F)) → Prop) :
    Pr[fun z => q ({ out := z.1, trace := initial ++ fsPointTrace z.2 },
        flattenFsLog z.2) | replayFirstRun oa] =
      Pr[q | replayFirstRun (wrapFsFrom oa initial)] := by
  classical
  induction oa using OracleComp.inductionOn generalizing initial q with
  | pure x =>
      simp [replayFirstRun, wrapFsFrom, fsPointTrace, flattenFsLog]
  | query_bind t next ih =>
      cases t with
      | inl n =>
          simp [replayFirstRun, wrapFsFrom, fsUnifFwd,
            OracleSpec.loggingOracle, QueryImpl.withLogging_apply,
            probEvent_bind_eq_tsum]
          apply Finset.sum_congr rfl
          intro x _hx
          let q' : (WrappedFsRun Point α × QueryLog (FsWrappedSpec F)) → Prop :=
            fun z => q (z.1, (⟨Sum.inl n, x⟩ :: z.2))
          have hcard :
              @Fintype.card _ (hSource.fintype.fintype_B (Sum.inl n)) =
                @Fintype.card _ (hWrapped.fintype.fintype_B (Sum.inl n)) :=
            @Fintype.card_congr _ _
              (hSource.fintype.fintype_B (Sum.inl n))
              (hWrapped.fintype.fintype_B (Sum.inl n))
              (Equiv.refl (unifSpec n))
          congr 1
          · exact congrArg (fun k : Nat => (k : ENNReal)⁻¹)
              hcard
          · simpa [q', replayFirstRun, wrapFsFrom, Function.comp_def] using
              (ih x initial q')
      | inr point =>
          simp [replayFirstRun, wrapFsFrom, fsMissImpl,
            OracleSpec.loggingOracle, QueryImpl.withLogging_apply,
            probEvent_bind_eq_tsum]
          apply Finset.sum_congr (by ext; simp)
          intro x _hx
          let q' : (WrappedFsRun Point α × QueryLog (FsWrappedSpec F)) → Prop :=
            fun z => q (z.1, (⟨Sum.inr (), x⟩ :: z.2))
          have hcard :
              @Fintype.card _ (hSource.fintype.fintype_B (Sum.inr point)) =
                @Fintype.card _ (hWrapped.fintype.fintype_B (Sum.inr ())) :=
            @Fintype.card_congr _ _
              (hSource.fintype.fintype_B (Sum.inr point))
              (hWrapped.fintype.fintype_B (Sum.inr ()))
              (Equiv.refl F)
          congr 1
          · exact congrArg (fun k : Nat => (k : ENNReal)⁻¹) hcard
          · simpa [q', replayFirstRun, wrapFsFrom, Function.comp_def,
              List.append_assoc] using (ih x (initial ++ [point]) q')

/-- `wrapFs` preserves the exact mass of every event pulled back along its
structured-log erasure map. -/
theorem probEvent_wrapFs_eq {Point α : Type} [DecidableEq Point]
    [DecidableEq F] [Fintype F]
    [IsUniformSpec (unifSpec + (Point →ₒ F))]
    [IsUniformSpec (FsWrappedSpec F)]
    (oa : OracleComp (unifSpec + (Point →ₒ F)) α)
    (q : (WrappedFsRun Point α × QueryLog (FsWrappedSpec F)) → Prop) :
    Pr[fun z => q ({ out := z.1, trace := fsPointTrace z.2 },
        flattenFsLog z.2) | replayFirstRun (fsRandomFunction oa)] =
      Pr[q | replayFirstRun (wrapFs oa)] := by
  simpa [wrapFs] using
    (probEvent_wrapFsFrom_eq (fsRandomFunction oa) [] q)

/-- Every wrapped support point has a source-log representative; its trace and
erased log are exactly the two projections of that representative. -/
private theorem wrapFsFrom_support_exists_source {Point α : Type}
    (oa : OracleComp (unifSpec + (Point →ₒ F)) α) (initial : List Point)
    {run : WrappedFsRun Point α} {log : QueryLog (FsWrappedSpec F)}
    (h : (run, log) ∈ support (replayFirstRun (wrapFsFrom oa initial))) :
    ∃ sourceLog : QueryLog (unifSpec + (Point →ₒ F)),
      run.trace = initial ++ fsPointTrace sourceLog ∧
      log = flattenFsLog sourceLog := by
  induction oa using OracleComp.inductionOn generalizing initial run log with
  | pure x =>
      simp [replayFirstRun, wrapFsFrom] at h
      obtain ⟨rfl, rfl⟩ := h
      exact ⟨[], by simp [fsPointTrace], by simp [flattenFsLog]⟩
  | query_bind t next ih =>
      cases t with
      | inl n =>
          simp [replayFirstRun, wrapFsFrom, fsUnifFwd,
            OracleSpec.loggingOracle, QueryImpl.withLogging_apply] at h
          obtain ⟨u, out, trace, logTail, hs, rfl, rfl⟩ := h
          obtain ⟨sourceLog, htrace, hlog⟩ :=
            ih u (initial := initial)
              (run := { out := out, trace := trace }) (log := logTail) (by
              simpa [replayFirstRun, wrapFsFrom] using hs)
          refine ⟨⟨Sum.inl n, u⟩ :: sourceLog, ?_, ?_⟩
          · simpa [fsPointTrace] using htrace
          · simpa [flattenFsLog] using congrArg (List.cons ⟨Sum.inl n, u⟩) hlog
      | inr point =>
          simp [replayFirstRun, wrapFsFrom, fsMissImpl,
            OracleSpec.loggingOracle, QueryImpl.withLogging_apply] at h
          obtain ⟨value, out, trace, logTail, hs, rfl, rfl⟩ := h
          obtain ⟨sourceLog, htrace, hlog⟩ :=
            ih value (initial := initial ++ [point])
              (run := { out := out, trace := trace }) (log := logTail) (by
              simpa [replayFirstRun, wrapFsFrom] using hs)
          refine ⟨⟨Sum.inr point, value⟩ :: sourceLog, ?_, ?_⟩
          · simpa [fsPointTrace, List.append_assoc] using htrace
          · simpa [flattenFsLog] using congrArg (List.cons ⟨Sum.inr (), value⟩) hlog

theorem wrapFs_support_exists_source {Point α : Type} [DecidableEq Point]
    (oa : OracleComp (unifSpec + (Point →ₒ F)) α)
    {run : WrappedFsRun Point α} {log : QueryLog (FsWrappedSpec F)}
    (h : (run, log) ∈ support (replayFirstRun (wrapFs oa))) :
    ∃ sourceLog : QueryLog (unifSpec + (Point →ₒ F)),
      run.trace = fsPointTrace sourceLog ∧ log = flattenFsLog sourceLog ∧
      (run.out, sourceLog) ∈ support
        (replayFirstRun (fsRandomFunction oa)) := by
  obtain ⟨sourceLog, htrace, hlog⟩ :=
    wrapFsFrom_support_exists_source (fsRandomFunction oa) [] (by
      simpa [wrapFs] using h)
  refine ⟨sourceLog, by simpa using htrace, hlog, ?_⟩
  apply (wrapFs_support_iff oa run.out sourceLog).mp
  have hrun : ({ out := run.out, trace := fsPointTrace sourceLog } :
      WrappedFsRun Point α) = run := by
    cases run
    simp_all
  rw [hrun, ← hlog]
  exact h

/-- Number of structured misses strictly before an absolute wrapped-log
position. -/
def structuredMissCountBefore (log : QueryLog (FsWrappedSpec F)) (n : Nat) : Nat :=
  (QueryLog.getQ (log.take n) (· = Sum.inr ())).length

/-- A wrapped execution only appends to its supplied structured trace. -/
private theorem wrapFsFrom_initial_prefix {Point α : Type}
    (oa : OracleComp (unifSpec + (Point →ₒ F)) α) (initial : List Point)
    {run : WrappedFsRun Point α} {log : QueryLog (FsWrappedSpec F)}
    (h : (run, log) ∈ support (replayFirstRun (wrapFsFrom oa initial))) :
    run.trace.take initial.length = initial := by
  induction oa using OracleComp.inductionOn generalizing initial run log with
  | pure x =>
      simp [replayFirstRun, wrapFsFrom] at h
      obtain ⟨rfl, rfl⟩ := h
      simp
  | query_bind t next ih =>
      cases t with
      | inl q =>
          simp [replayFirstRun, wrapFsFrom, fsUnifFwd,
            OracleSpec.loggingOracle, QueryImpl.withLogging_apply] at h
          obtain ⟨u, out, trace, tail, htail, rfl, rfl⟩ := h
          apply ih u initial
          simpa [replayFirstRun, wrapFsFrom] using htail
      | inr point =>
          simp [replayFirstRun, wrapFsFrom, fsMissImpl,
            OracleSpec.loggingOracle, QueryImpl.withLogging_apply] at h
          obtain ⟨u, out, trace, tail, htail, rfl, rfl⟩ := h
          have htail' : (({ out := out, trace := trace }, tail) ∈
              support (replayFirstRun (wrapFsFrom (next u) (initial ++ [point])))) := by
            simp [replayFirstRun, wrapFsFrom]
            exact htail
          have hp := ih u (initial ++ [point]) htail'
          calc
            trace.take initial.length =
                (trace.take (initial ++ [point]).length).take initial.length := by
                  rw [List.take_take]
                  simp
            _ = (initial ++ [point]).take initial.length := by rw [hp]
            _ = initial := by simp

/-- Erasing structured inputs and retaining them in state does not create new
computation outputs. -/
private theorem wrapFsFrom_output_mem_support {Point α : Type}
    (oa : OracleComp (unifSpec + (Point →ₒ F)) α) (initial : List Point)
    {run : WrappedFsRun Point α} {log : QueryLog (FsWrappedSpec F)}
    (h : (run, log) ∈ support (replayFirstRun (wrapFsFrom oa initial))) :
    run.out ∈ support oa := by
  induction oa using OracleComp.inductionOn generalizing initial run log with
  | pure x =>
      simp [replayFirstRun, wrapFsFrom] at h
      obtain ⟨rfl, rfl⟩ := h
      simp
  | query_bind t next ih =>
      cases t with
      | inl q =>
          simp [replayFirstRun, wrapFsFrom, fsUnifFwd,
            OracleSpec.loggingOracle, QueryImpl.withLogging_apply] at h
          obtain ⟨u, out, trace, tail, htail, rfl, rfl⟩ := h
          rw [support_bind]
          simp only [Set.mem_iUnion]
          refine ⟨u, ?_, ?_⟩
          · simp only [support_liftM]
            exact ⟨u, rfl⟩
          apply ih u initial (run := { out := out, trace := trace }) (log := tail)
          simpa [replayFirstRun, wrapFsFrom] using htail
      | inr point =>
          simp [replayFirstRun, wrapFsFrom, fsMissImpl,
            OracleSpec.loggingOracle, QueryImpl.withLogging_apply] at h
          obtain ⟨u, out, trace, tail, htail, rfl, rfl⟩ := h
          rw [support_bind]
          simp only [Set.mem_iUnion]
          refine ⟨u, ?_, ?_⟩
          · simp only [support_liftM]
            exact ⟨u, rfl⟩
          apply ih u (initial ++ [point])
            (run := { out := out, trace := trace }) (log := tail)
          simp [replayFirstRun, wrapFsFrom]
          exact htail

/-- Deterministic replay transports an equal wrapped-answer prefix to the
structured-point prefix generated before and at the next structured miss.
The answer at `n` itself may differ: the queried point is determined before
that answer is returned. -/
private theorem wrapFsFrom_trace_prefix_of_log_prefix {Point α : Type}
    (oa : OracleComp (unifSpec + (Point →ₒ F)) α) (initial : List Point)
    {runA runB : WrappedFsRun Point α}
    {logA logB : QueryLog (FsWrappedSpec F)} (n : Nat)
    (hsupportA : (runA, logA) ∈ support (replayFirstRun (wrapFsFrom oa initial)))
    (hsupportB : (runB, logB) ∈ support (replayFirstRun (wrapFsFrom oa initial)))
    (hprefix : ∀ m, m < n → logA[m]? = logB[m]?)
    (hinputA : QueryLog.inputAt? logA n = some (Sum.inr ()))
    (hinputB : QueryLog.inputAt? logB n = some (Sum.inr ())) :
    runA.trace.take (initial.length + structuredMissCountBefore logA n + 1) =
      runB.trace.take (initial.length + structuredMissCountBefore logA n + 1) := by
  induction oa using OracleComp.inductionOn generalizing initial runA runB logA logB n with
  | pure x =>
      simp [replayFirstRun, wrapFsFrom] at hsupportA hsupportB
      obtain ⟨rfl, rfl⟩ := hsupportA
      simp [QueryLog.inputAt?] at hinputA
  | query_bind t next ih =>
      cases t with
      | inl q =>
          simp [replayFirstRun, wrapFsFrom, fsUnifFwd,
            OracleSpec.loggingOracle, QueryImpl.withLogging_apply] at hsupportA hsupportB
          obtain ⟨uA, outA, traceA, logTailA, hsA, rfl, rfl⟩ := hsupportA
          obtain ⟨uB, outB, traceB, logTailB, hsB, rfl, rfl⟩ := hsupportB
          cases n with
          | zero => simp [QueryLog.inputAt?] at hinputA
          | succ n =>
              have hhead := hprefix 0 (Nat.zero_lt_succ n)
              simp only [List.getElem?_cons_zero, Option.some.injEq] at hhead
              cases hhead
              apply ih uA (initial := initial) (n := n)
                  (by simpa [replayFirstRun, wrapFsFrom] using hsA)
                  (by simpa [replayFirstRun, wrapFsFrom] using hsB)
              · intro m hm
                simpa using hprefix (m + 1) (Nat.succ_lt_succ hm)
              · simpa [QueryLog.inputAt?] using hinputA
              · simpa [QueryLog.inputAt?] using hinputB
      | inr point =>
          simp [replayFirstRun, wrapFsFrom, fsMissImpl,
            OracleSpec.loggingOracle, QueryImpl.withLogging_apply] at hsupportA hsupportB
          obtain ⟨uA, outA, traceA, logTailA, hsA, rfl, rfl⟩ := hsupportA
          obtain ⟨uB, outB, traceB, logTailB, hsB, rfl, rfl⟩ := hsupportB
          cases n with
          | zero =>
              have hpA := wrapFsFrom_initial_prefix (next uA)
                (initial ++ [point]) (by
                  simp [replayFirstRun, wrapFsFrom]
                  exact ⟨outA, traceA, hsA, rfl⟩)
              have hpB := wrapFsFrom_initial_prefix (next uB)
                (initial ++ [point]) (by
                  simp [replayFirstRun, wrapFsFrom]
                  exact ⟨outB, traceB, hsB, rfl⟩)
              simpa [structuredMissCountBefore] using hpA.trans hpB.symm
          | succ n =>
              have hhead := hprefix 0 (Nat.zero_lt_succ n)
              simp only [List.getElem?_cons_zero, Option.some.injEq] at hhead
              cases hhead
              simpa [structuredMissCountBefore, List.take_succ_cons,
                Nat.add_assoc, Nat.add_left_comm, Nat.add_comm] using
                ih uA (initial := initial ++ [point]) (n := n)
                  (by
                    simp [replayFirstRun, wrapFsFrom]
                    exact ⟨outA, traceA, hsA, rfl⟩)
                  (by
                    simp [replayFirstRun, wrapFsFrom]
                    exact ⟨outB, traceB, hsB, rfl⟩)
                  (by
                    intro m hm
                    simpa using hprefix (m + 1) (Nat.succ_lt_succ hm))
                  (by simpa [QueryLog.inputAt?] using hinputA)
                  (by simpa [QueryLog.inputAt?] using hinputB)

/-- Equality of the wrapped answer log strictly before `n` fixes the generated
structured trace through the structured query at `n`. -/
theorem trace_prefix_of_log_prefix {Point α : Type} [DecidableEq Point]
    (oa : OracleComp (unifSpec + (Point →ₒ F)) α)
    {runA runB : WrappedFsRun Point α}
    {logA logB : QueryLog (FsWrappedSpec F)} (n : Nat)
    (hsupportA : (runA, logA) ∈ support (replayFirstRun (wrapFs oa)))
    (hsupportB : (runB, logB) ∈ support (replayFirstRun (wrapFs oa)))
    (hprefix : ∀ m, m < n → logA[m]? = logB[m]?)
    (hinputA : QueryLog.inputAt? logA n = some (Sum.inr ()))
    (hinputB : QueryLog.inputAt? logB n = some (Sum.inr ())) :
    runA.trace.take (structuredMissCountBefore logA n + 1) =
      runB.trace.take (structuredMissCountBefore logA n + 1) := by
  simpa [wrapFs] using wrapFsFrom_trace_prefix_of_log_prefix
    (fsRandomFunction oa) [] n hsupportA hsupportB hprefix hinputA hinputB

/-- If the selected absolute position has filtered rank `s`, every earlier
structured ordinal has a genuine absolute position below it, carrying the
same answer exposed by `getQueryValue?`. -/
theorem filtered_rank_position
    [DecidableEq F]
    (log : QueryLog (FsWrappedSpec F)) (slotPos s : Nat)
    (hrank : structuredMissCountBefore log slotPos = s) :
    ∀ i, i < s → ∃ pos value, pos < slotPos ∧
      log[pos]? = some ⟨Sum.inr (), value⟩ ∧
      QueryLog.getQueryValue? log (Sum.inr ()) i = some value := by
  induction log generalizing slotPos s with
  | nil =>
      simp [structuredMissCountBefore] at hrank
      omega
  | cons entry rest ih =>
      rcases entry with ⟨t, value⟩
      cases slotPos with
      | zero =>
          simp [structuredMissCountBefore] at hrank
          omega
      | succ slotPos =>
          cases t with
          | inl q =>
              have hrank' : structuredMissCountBefore rest slotPos = s := by
                simpa [structuredMissCountBefore] using hrank
              intro i hi
              obtain ⟨pos, answer, hpos, hentry, hvalue⟩ :=
                ih slotPos s hrank' i hi
              refine ⟨pos + 1, answer, Nat.succ_lt_succ hpos, ?_, ?_⟩
              · simpa using hentry
              · rw [QueryLog.getQueryValue?_cons_of_ne]
                · exact hvalue
                · exact Sum.inl_ne_inr
          | inr u =>
              cases u
              have hrank' : structuredMissCountBefore rest slotPos + 1 = s := by
                simpa [structuredMissCountBefore, Nat.add_comm] using hrank
              intro i hi
              cases i with
              | zero =>
                  refine ⟨0, value, Nat.zero_lt_succ slotPos, ?_, ?_⟩
                  · rfl
                  · exact QueryLog.getQueryValue?_cons_self_zero
                      (Sum.inr ()) value rest
              | succ i =>
                  have hi' : i < structuredMissCountBefore rest slotPos := by omega
                  obtain ⟨pos, answer, hpos, hentry, hvalue⟩ :=
                    ih slotPos (structuredMissCountBefore rest slotPos) rfl i hi'
                  refine ⟨pos + 1, answer, Nat.succ_lt_succ hpos, ?_, ?_⟩
                  · simpa using hentry
                  · simpa [Nat.add_comm] using
                      (QueryLog.getQueryValue?_cons_self_succ
                        (Sum.inr ()) value rest i).trans hvalue

/-- The round-`level` point determined by a wrapped FS output, when the level
is within the proof transcript (DESIGN §U5d(4); `fs.stage-labels`). -/
def wrappedRoundPoint {μ : Nat}
    (level : Nat)
    (run : WrappedFsRun
      (FsPoint (F := F) (G1 := G1) (G2 := G2) (GT := GT))
      (FsResult μ F G1 G2 GT)) :
    Option (FsPoint (F := F) (G1 := G1) (G2 := G2) (GT := GT)) := by
  if hlevel : level < μ then
    let i : Fin μ := ⟨level, hlevel⟩
    exact some (.round (run.out.transcript.roundPrev i) (run.out.proof.rounds i)
      (run.out.transcript.roundNonce i))
  else
    exact none

/-- First occurrence of the run's round point in the structured side trace,
bounded for U5c's `Fin (qb + 1)` selector (DESIGN §U5d(4)). -/
def roundSlot [DecidableEq F] [DecidableEq G1] [DecidableEq G2] [DecidableEq GT]
    {μ : Nat} (qb level : Nat)
    (run : WrappedFsRun
      (FsPoint (F := F) (G1 := G1) (G2 := G2) (GT := GT))
      (FsResult μ F G1 G2 GT)) : Option (Fin (qb + 1)) := by
  match wrappedRoundPoint level run with
  | none => exact none
  | some point =>
      if hmem : point ∈ run.trace then
        let idx := run.trace.findIdx (· == point)
        if hidx : idx < qb + 1 then exact some ⟨idx, hidx⟩ else exact none
      else
        exact none

/-- Explicit U5a-accounted bad event: the requested round is absent/out of
bounds, or its first trace occurrence exceeds the fork budget. -/
def RoundPointUnqueried [DecidableEq F] [DecidableEq G1] [DecidableEq G2] [DecidableEq GT]
    {μ : Nat} (qb level : Nat)
    (run : WrappedFsRun
      (FsPoint (F := F) (G1 := G1) (G2 := G2) (GT := GT))
      (FsResult μ F G1 G2 GT)) : Prop :=
  match wrappedRoundPoint level run with
  | none => True
  | some point => point ∉ run.trace ∨ qb + 1 ≤ run.trace.findIdx (· == point)

/-- Every round selector either returns its bounded first occurrence or lies
in the explicit `RoundPointUnqueried` event. -/
theorem roundSlot_some_or_unqueried
    [DecidableEq F] [DecidableEq G1] [DecidableEq G2] [DecidableEq GT]
    {μ : Nat} (qb level : Nat)
    (run : WrappedFsRun
      (FsPoint (F := F) (G1 := G1) (G2 := G2) (GT := GT))
      (FsResult μ F G1 G2 GT)) :
    (∃ s, roundSlot qb level run = some s) ∨
      RoundPointUnqueried qb level run := by
  unfold roundSlot RoundPointUnqueried
  split
  · exact Or.inr trivial
  · rename_i point hpoint
    split
    · rename_i hmem
      dsimp only
      split
      · rename_i hidx
        exact Or.inl ⟨_, rfl⟩
      · rename_i hidx
        exact Or.inr (Or.inr (Nat.le_of_not_gt hidx))
    · rename_i hmem
      exact Or.inr (Or.inl hmem)

/-- A source support point and its wrapped image carry the U5d(3) accepted
leaf postcondition used by the round selector and tree assembly. -/
theorem wrapped_source_leaf_data
    [Field F] [AddCommGroup G1] [Module F G1]
    [AddCommGroup G2] [Module F G2] [AddCommGroup GT] [Module F GT]
    [DecidableEq F] [DecidableEq G1] [DecidableEq G2] [DecidableEq GT]
    {μ : Nat}
    (stmt : FsStatement μ F G1 G2 GT)
    (adv : OracleComp (unifSpec + SnarkpackFsSpec F G1 G2 GT) (Proof μ F G1 G2 GT))
    {out : FsResult μ F G1 G2 GT}
    {sourceLog : QueryLog (unifSpec + SnarkpackFsSpec F G1 G2 GT)}
    (h : (out, sourceLog) ∈ support
      (replayFirstRun (fsRandomFunction (FsGame stmt adv)))) :
    (({ out := out, trace := fsPointTrace sourceLog }, flattenFsLog sourceLog) ∈
        support (replayFirstRun (wrapFs (FsGame stmt adv)))) ∧
      accepted_run_leaf_data stmt out sourceLog := by
  refine ⟨(wrapFs_support_iff (FsGame stmt adv) out sourceLog).2 h, ?_⟩
  obtain ⟨cache, _, hcacheLog, haccepted⟩ :=
    fsRandomFunction_replay_cached stmt adv h
  intro haccept
  have hrun := (haccepted haccept).1.1.1
  refine ⟨?_, ?_, hrun.2.2.1, hrun.2.2.2⟩
  · intro i
    exact hcacheLog _ _ (hrun.1 i)
  · intro i
    exact ⟨rfl, rfl⟩

/-- An accepting source run's KZG transcript value occurs in the structured
miss log at the exact KZG point. -/
theorem accepted_source_kzg_query
    [Field F] [AddCommGroup G1] [Module F G1]
    [AddCommGroup G2] [Module F G2] [AddCommGroup GT] [Module F GT]
    [DecidableEq F] [DecidableEq G1] [DecidableEq G2] [DecidableEq GT]
    {μ : Nat}
    (stmt : FsStatement μ F G1 G2 GT)
    (adv : OracleComp (unifSpec + SnarkpackFsSpec F G1 G2 GT)
      (Proof μ F G1 G2 GT))
    {out : FsResult μ F G1 G2 GT}
    {sourceLog : QueryLog (unifSpec + SnarkpackFsSpec F G1 G2 GT)}
    (h : (out, sourceLog) ∈ support
      (replayFirstRun (fsRandomFunction (FsGame stmt adv))))
    (haccept : out.accept = true) :
    QueryAnswered sourceLog
      (Sum.inr (.kzg
        { bridgeChallenge := out.transcript.bridge, vFinal := out.proof.vFinal,
          wFinal := out.proof.wFinal }
        out.transcript.kzgNonce)) out.transcript.kzg := by
  obtain ⟨_cache, _hlogCache, hcacheLog, haccepted⟩ :=
    fsRandomFunction_replay_cached stmt adv h
  exact hcacheLog _ _ (haccepted haccept).1.2

/-- An accepting source run's randomizer transcript value occurs in the
structured miss log at the exact randomizer point. -/
theorem accepted_source_randomizer_query
    [Field F] [AddCommGroup G1] [Module F G1]
    [AddCommGroup G2] [Module F G2] [AddCommGroup GT] [Module F GT]
    [DecidableEq F] [DecidableEq G1] [DecidableEq G2] [DecidableEq GT]
    {μ : Nat}
    (stmt : FsStatement μ F G1 G2 GT)
    (adv : OracleComp (unifSpec + SnarkpackFsSpec F G1 G2 GT)
      (Proof μ F G1 G2 GT))
    {out : FsResult μ F G1 G2 GT}
    {sourceLog : QueryLog (unifSpec + SnarkpackFsSpec F G1 G2 GT)}
    (h : (out, sourceLog) ∈ support
      (replayFirstRun (fsRandomFunction (FsGame stmt adv))))
    (haccept : out.accept = true) :
    QueryAnswered sourceLog
      (Sum.inr (.randomizer
        { comA := stmt.ComA.1, comB := stmt.ComB, comC := stmt.ComA.2 }
        out.transcript.randomizerNonce)) out.transcript.randomizer := by
  obtain ⟨_cache, _hlogCache, hcacheLog, haccepted⟩ :=
    fsRandomFunction_replay_cached stmt adv h
  exact hcacheLog _ _ (haccepted haccept).1.1.2.1

/-- An accepting source run's x0 transcript value occurs in the structured
miss log at the exact x0 point. -/
theorem accepted_source_x0_query
    [Field F] [AddCommGroup G1] [Module F G1]
    [AddCommGroup G2] [Module F G2] [AddCommGroup GT] [Module F GT]
    [DecidableEq F] [DecidableEq G1] [DecidableEq G2] [DecidableEq GT]
    {μ : Nat}
    (stmt : FsStatement μ F G1 G2 GT)
    (adv : OracleComp (unifSpec + SnarkpackFsSpec F G1 G2 GT)
      (Proof μ F G1 G2 GT))
    {out : FsResult μ F G1 G2 GT}
    {sourceLog : QueryLog (unifSpec + SnarkpackFsSpec F G1 G2 GT)}
    (h : (out, sourceLog) ∈ support
      (replayFirstRun (fsRandomFunction (FsGame stmt adv))))
    (haccept : out.accept = true) :
    QueryAnswered sourceLog
      (Sum.inr (.x0
        { r := out.transcript.randomizer, comA := stmt.ComA.1,
          comB := stmt.ComB, comC := stmt.ComA.2,
          ipAb := out.proof.ipAb, aggC := out.proof.aggC }
        out.transcript.x0Nonce)) out.transcript.x0 := by
  obtain ⟨_cache, _hlogCache, hcacheLog, haccepted⟩ :=
    fsRandomFunction_replay_cached stmt adv h
  exact hcacheLog _ _ (haccepted haccept).1.1.2.2

/-- An accepting wrapped support run satisfies the verifier relation, including
the aggregate Groth16 pairing equation consumed by the S1 capstone. -/
theorem wrapped_support_accepts
    [Field F] [AddCommGroup G1] [Module F G1]
    [AddCommGroup G2] [Module F G2] [AddCommGroup GT] [Module F GT]
    [DecidableEq F] [DecidableEq G1] [DecidableEq G2] [DecidableEq GT]
    {μ : Nat}
    (stmt : FsStatement μ F G1 G2 GT)
    (adv : OracleComp (unifSpec + SnarkpackFsSpec F G1 G2 GT) (Proof μ F G1 G2 GT))
    {run : WrappedFsRun
      (FsPoint (F := F) (G1 := G1) (G2 := G2) (GT := GT))
      (FsResult μ F G1 G2 GT)}
    {log : QueryLog (FsWrappedSpec F)}
    (h : (run, log) ∈ support (replayFirstRun (wrapFs (FsGame stmt adv))))
    (haccept : run.out.accept = true) :
    FsAccepts stmt run.out.proof run.out.transcript := by
  obtain ⟨sourceLog, _, _, hsource⟩ :=
    wrapFs_support_exists_source (FsGame stmt adv) h
  exact ((fsRandomFunction_replay_cached stmt adv hsource).choose_spec.2.2
    haccept).2

/-- Every accepted supported wrapped run exposes the verifier's chronological
round chaining: round zero follows x0 and each successor follows the preceding
round answer. -/
theorem wrapped_supports_transcript_chaining
    [Field F] [AddCommGroup G1] [Module F G1]
    [AddCommGroup G2] [Module F G2] [AddCommGroup GT] [Module F GT]
    [DecidableEq F] [DecidableEq G1] [DecidableEq G2] [DecidableEq GT]
    {μ : Nat}
    (stmt : FsStatement μ F G1 G2 GT)
    (adv : OracleComp (unifSpec + SnarkpackFsSpec F G1 G2 GT) (Proof μ F G1 G2 GT))
    {run : WrappedFsRun
      (FsPoint (F := F) (G1 := G1) (G2 := G2) (GT := GT))
      (FsResult μ F G1 G2 GT)}
    {log : QueryLog (FsWrappedSpec F)}
    (h : (run, log) ∈ support (replayFirstRun (wrapFs (FsGame stmt adv))))
    (haccept : run.out.accept = true) :
    TranscriptChaining run.out.transcript.x0 run.out.transcript.roundPrev
      run.out.transcript.roundAnswer := by
  have hout : run.out ∈ support (fsRandomFunction (FsGame stmt adv)) := by
    apply wrapFsFrom_output_mem_support (fsRandomFunction (FsGame stmt adv)) []
    simpa [wrapFs] using h
  have hm : run.out ∈ support
      (Prod.fst <$> replayFirstRun (fsRandomFunction (FsGame stmt adv))) := by
    simpa using hout
  rw [support_map] at hm
  obtain ⟨sourceRun, hsource, houtEq⟩ := hm
  rcases sourceRun with ⟨out, sourceLog⟩
  change out = run.out at houtEq
  subst out
  exact ((fsRandomFunction_replay_cached stmt adv hsource).choose_spec.2.2
    haccept).1.1.1.2.1

/-- Accepting source runs therefore have a bounded round selector unless they
fall in the explicit unqueried/out-of-budget event; its probability is U5a. -/
theorem accepted_roundSlot_some_or_unqueried
    [Field F] [AddCommGroup G1] [Module F G1]
    [AddCommGroup G2] [Module F G2] [AddCommGroup GT] [Module F GT]
    [DecidableEq F] [DecidableEq G1] [DecidableEq G2] [DecidableEq GT]
    {μ : Nat}
    (stmt : FsStatement μ F G1 G2 GT)
    (adv : OracleComp (unifSpec + SnarkpackFsSpec F G1 G2 GT) (Proof μ F G1 G2 GT))
    (qb level : Nat)
    {out : FsResult μ F G1 G2 GT}
    {sourceLog : QueryLog (unifSpec + SnarkpackFsSpec F G1 G2 GT)}
    (h : (out, sourceLog) ∈ support
      (replayFirstRun (fsRandomFunction (FsGame stmt adv))))
    (haccept : out.accept = true) :
    let run : WrappedFsRun
        (FsPoint (F := F) (G1 := G1) (G2 := G2) (GT := GT))
        (FsResult μ F G1 G2 GT) :=
      { out := out, trace := fsPointTrace sourceLog }
    (∃ s, roundSlot qb level run = some s) ∨
      RoundPointUnqueried qb level run := by
  intro run
  have _hleaf := (wrapped_source_leaf_data stmt adv h).2 haccept
  exact roundSlot_some_or_unqueried qb level run

/-- The answer at the cache miss selected by `roundSlot` is exactly the
verifier's chronological transcript answer at that round. This is the cached
managed-RO selector fact required by U5d(4)/R6. -/
theorem roundSlot_answer_eq_transcript
    [Field F] [AddCommGroup G1] [Module F G1]
    [AddCommGroup G2] [Module F G2] [AddCommGroup GT] [Module F GT]
    [DecidableEq F] [DecidableEq G1] [DecidableEq G2] [DecidableEq GT]
    {μ : Nat}
    (stmt : FsStatement μ F G1 G2 GT)
    (adv : OracleComp (unifSpec + SnarkpackFsSpec F G1 G2 GT) (Proof μ F G1 G2 GT))
    (qb : Nat) (level : Fin μ)
    {out : FsResult μ F G1 G2 GT}
    {sourceLog : QueryLog (unifSpec + SnarkpackFsSpec F G1 G2 GT)}
    (h : (out, sourceLog) ∈ support
      (replayFirstRun (fsRandomFunction (FsGame stmt adv))))
    (haccept : out.accept = true)
    {slot : Fin (qb + 1)}
    (hslot : roundSlot qb (level : Nat)
      ({ out := out, trace := fsPointTrace sourceLog } :
        WrappedFsRun
          (FsPoint (F := F) (G1 := G1) (G2 := G2) (GT := GT))
          (FsResult μ F G1 G2 GT)) = some slot) :
    QueryLog.getQueryValue? (flattenFsLog sourceLog) (Sum.inr ()) (slot : Nat) =
      some (out.transcript.roundAnswer level) := by
  let point : FsPoint (F := F) (G1 := G1) (G2 := G2) (GT := GT) :=
    .round (out.transcript.roundPrev level) (out.proof.rounds level)
      (out.transcript.roundNonce level)
  let points := fsPointTrace sourceLog
  have hslot' : point ∈ points ∧
      ∃ hidx : points.findIdx (· == point) < qb + 1,
        (⟨points.findIdx (· == point), hidx⟩ : Fin (qb + 1)) = slot := by
    simpa [roundSlot, wrappedRoundPoint, level.isLt, point, points] using hslot
  obtain ⟨hmem, hidxBound, hslotEq⟩ := hslot'
  have hidxTrace : points.findIdx (· == point) < points.length :=
    List.findIdx_lt_length_of_exists ⟨point, hmem, by simp⟩
  have hpointAt : points[points.findIdx (· == point)]'hidxTrace = point := by
    simpa [points] using
      (List.findIdx_getElem (xs := points) (p := fun x => x == point)
        (w := hidxTrace))
  obtain ⟨answer, hanswered, houter⟩ :=
    fsPointTrace_flatten_at sourceLog (points.findIdx (· == point))
      (by simpa [points] using hidxTrace)
  have hanswered' : QueryAnswered sourceLog (Sum.inr point) answer := by
    change QueryAnswered sourceLog
      (Sum.inr (points[points.findIdx (· == point)]'hidxTrace)) answer at hanswered
    rw [hpointAt] at hanswered
    exact hanswered
  obtain ⟨cache, hlogCache, _, haccepted⟩ :=
    fsRandomFunction_replay_cached stmt adv h
  have hround := (haccepted haccept).1.1.1.1
  have hcacheAnswer := hlogCache point answer hanswered'
  have hcacheTranscript : cache point = some (out.transcript.roundAnswer level) := by
    simpa [point] using hround level
  have hanswer : answer = out.transcript.roundAnswer level :=
    Option.some.inj (hcacheAnswer.symm.trans hcacheTranscript)
  cases hslotEq
  simpa [hanswer] using houter

/-- One sound U5d(4) node: four distinct nonzero oracle answers are the raw
public/B-message fold scalars consumed by `AcceptTree.node`; their inverses
fold the verifier commitments (`tipp-mipp.gipa`). -/
theorem acceptTree_node_of_answers
    {K1 K2 Msg1 Msg2 P M IPv : Type}
    [Field F]
    [AddCommGroup K1] [Module F K1] [AddCommGroup K2] [Module F K2]
    [AddCommGroup Msg1] [Module F Msg1] [AddCommGroup Msg2] [Module F Msg2]
    [AddCommGroup P] [Module F P]
    [AddCommGroup M] [Module F M] [AddCommGroup IPv] [Module F IPv]
    (cmA : K1 →ₗ[F] Msg1 →ₗ[F] M) (cmB : K2 →ₗ[F] Msg2 →ₗ[F] M)
    (cmT : IPv →ₗ[F] M) (ip : Msg1 →ₗ[F] (Msg2 × P) →ₗ[F] IPv)
    {μ : Nat} {ckA : Fin (2 ^ (μ + 1)) → K1}
    {ckB : Fin (2 ^ (μ + 1)) → K2} {pub : Fin (2 ^ (μ + 1)) → P}
    {ComA ComB ComT : M}
    (LA RA LB RB LT RT : M) (answer : Fin 4 → F)
    (hinjective : Function.Injective answer)
    (hnonzero : ∀ k, answer k ≠ 0)
    (child : ∀ k, AcceptTree cmA cmB cmT ip μ
      (foldPow (K1 := K1) μ (answer k) ckA)
      (foldPow (K1 := K2) μ (answer k)⁻¹ ckB)
      (foldPow (K1 := P) μ (answer k) pub)
      (foldCom (answer k)⁻¹ LA ComA RA)
      (foldCom (answer k)⁻¹ LB ComB RB)
      (foldCom (answer k)⁻¹ LT ComT RT)) :
    AcceptTree cmA cmB cmT ip (μ + 1) ckA ckB pub ComA ComB ComT := by
  exact .node LA RA LB RB LT RT answer hinjective hnonzero child

/-- The three lane equalities supplied by `leaf_accept_to_base` from U5d(3)
leaf data. With lane-native folds (DESIGN §U5d(4) lane-nativity) these are
the FULL lane values — the tagged `AcceptTree.base` equalities follow by
the lane-pure embeddings. -/
def LeafBaseComponents
    [Field F] [AddCommGroup G1] [Module F G1]
    [AddCommGroup G2] [Module F G2] [AddCommGroup GT] [Module F GT]
    {μ : Nat}
    (stmt : FsStatement μ F G1 G2 GT) (proof : Proof μ F G1 G2 GT)
    (transcript : FsTranscript μ F) : Prop :=
  let folded := terminalFold stmt.ComA stmt.ComB proof transcript.roundAnswer
  let xV := reversedView transcript.roundAnswer
  let xW := fun i => gipaChallenge (reversedView transcript.roundAnswer i)
  let rShift := transcript.randomizer⁻¹
  (folded.comA =
      u4ALaneAtom stmt.e
        ((foldKey xV (fun i => (stmt.srsV i, stmt.srsV i))) 0)
        (proof.aFinal, proof.cFinal)) ∧
  (folded.comB =
      u4BLaneAtom stmt.e
        ((foldKey xW (fun i => rShift ^ (i : Nat) • stmt.srsW i)) 0)
        proof.bFinal) ∧
  (folded.comT =
      u4TLanePairing stmt.e (proof.aFinal, proof.cFinal)
        (proof.bFinal,
          terminalR transcript.randomizer (reversedView transcript.roundAnswer)))

/-- U5d(4) leaf assembly up to the full-tag purity boundary. -/
theorem leafData_to_base_components
    [Field F] [AddCommGroup G1] [Module F G1]
    [AddCommGroup G2] [Module F G2] [AddCommGroup GT] [Module F GT]
    {μ : Nat}
    (stmt : FsStatement μ F G1 G2 GT) (proof : Proof μ F G1 G2 GT)
    (transcript : FsTranscript μ F)
    (hbindV : KzgStructuredKeyBinding stmt.srsV stmt.acceptV)
    (hbindW : KzgStructuredKeyBinding stmt.srsW stmt.acceptW)
    (hleaf : LeafData stmt proof transcript) :
    LeafBaseComponents stmt proof transcript := by
  dsimp [LeafData] at hleaf
  dsimp [LeafBaseComponents]
  obtain ⟨h1, h2, h3, h4, h5, hkzgV, hkzgW⟩ := hleaf
  have hbase := leaf_accept_to_base stmt.e stmt.srsV stmt.srsW stmt.acceptV
    stmt.acceptW transcript.kzg (reversedView transcript.roundAnswer)
    (fun i => gipaChallenge (reversedView transcript.roundAnswer i))
    transcript.randomizer⁻¹ proof.vFinal proof.vOpening proof.wFinal proof.wOpening
    proof.aFinal proof.cFinal proof.bFinal
    (terminalR transcript.randomizer (reversedView transcript.roundAnswer))
    (terminalFold stmt.ComA stmt.ComB proof transcript.roundAnswer).comA.1
    (terminalFold stmt.ComA stmt.ComB proof transcript.roundAnswer).comB
    (terminalFold stmt.ComA stmt.ComB proof transcript.roundAnswer).comT.1
    (terminalFold stmt.ComA stmt.ComB proof transcript.roundAnswer).comA.2
    (terminalFold stmt.ComA stmt.ComB proof transcript.roundAnswer).comT.2
    h1 h2 h3 h4 h5 hbindV hbindW hkzgV hkzgW
  obtain ⟨hA1, hA2⟩ := Prod.ext_iff.mp hbase.1
  obtain ⟨hT1, hT2⟩ := Prod.ext_iff.mp hbase.2.2
  exact ⟨Prod.ext hA1 hA2, hbase.2.1, Prod.ext hT1 hT2⟩

/-- `foldKey` over a reversed transcript consumes the chronological head
first, exactly as one `AcceptTree` node folds its key vector. -/
theorem foldKey_reversedView_succ
    {F G : Type} [Field F] [AddCommGroup G] [Module F G]
    {μ : Nat} (x : Fin (μ + 1) → F) (srs : Fin (2 ^ (μ + 1)) → G) :
    foldKey (reversedView x) srs =
      foldKey (reversedView (fun i : Fin μ => x i.succ))
        (foldPow (K1 := G) μ (x 0) srs) := by
  simp only [foldKey]
  congr 2
  · funext j
    simp only [reversedView, Fin.rev_castSucc]
  · simp only [reversedView]
    apply congrArg x
    apply Fin.ext
    simp [Fin.rev]

/-- The inverse randomizer power family is the power family of the inverse. -/
theorem inv_pow_eq_pow_inv {F : Type} [Field F] (r : F) (i : Nat) :
    (r ^ i)⁻¹ = r⁻¹ ^ i := by
  exact (inv_pow r i).symm

/-- Chronological verifier folds through exactly `level` rounds, with `depth`
rounds left. The equality argument keeps the changing power-of-two size
visible to the induction. -/
def foldRoundsUpTo
    {F G1 GT : Type} [Field F]
    [AddCommGroup G1] [Module F G1] [AddCommGroup GT] [Module F GT]
    {μ : Nat} (x : Fin μ → F) (rounds : Fin μ → RoundComs G1 GT)
    (initial : FoldedValues G1 GT) :
    (level depth : Nat) → level + depth = μ → FoldedValues G1 GT
  | 0, _, _ => initial
  | level + 1, depth, h =>
      foldOne (x ⟨level, by omega⟩) (rounds ⟨level, by omega⟩)
        (foldRoundsUpTo x rounds initial level (depth + 1) (by omega))

/-- Key/public vector after the chronological prefix of transcript folds. -/
def foldKeysUpTo
    {F G : Type} [Field F] [AddCommGroup G] [Module F G]
    {μ : Nat} (challenge : F → F) (x : Fin μ → F)
    (initial : Fin (2 ^ μ) → G) :
    (level depth : Nat) → level + depth = μ → Fin (2 ^ depth) → G
  | 0, depth, h => fun i =>
      initial (Fin.cast (congrArg (fun n : Nat => 2 ^ n)
        (by omega : depth = μ)) i)
  | level + 1, depth, h =>
      foldPow (K1 := G) depth (challenge (x ⟨level, by omega⟩))
        (foldKeysUpTo challenge x initial level (depth + 1) (by omega))

@[simp]
theorem foldRoundsUpTo_succ
    {F G1 GT : Type} [Field F]
    [AddCommGroup G1] [Module F G1] [AddCommGroup GT] [Module F GT]
    {μ level depth : Nat} (h : level + 1 + depth = μ)
    (x : Fin μ → F) (rounds : Fin μ → RoundComs G1 GT)
    (initial : FoldedValues G1 GT) :
    foldRoundsUpTo x rounds initial (level + 1) depth h =
      foldOne (x ⟨level, by omega⟩) (rounds ⟨level, by omega⟩)
        (foldRoundsUpTo x rounds initial level (depth + 1) (by omega)) := rfl

@[simp]
theorem foldKeysUpTo_succ
    {F G : Type} [Field F] [AddCommGroup G] [Module F G]
    {μ level depth : Nat} (h : level + 1 + depth = μ)
    (challenge : F → F) (x : Fin μ → F) (initial : Fin (2 ^ μ) → G) :
    foldKeysUpTo challenge x initial (level + 1) depth h =
      foldPow (K1 := G) depth (challenge (x ⟨level, by omega⟩))
        (foldKeysUpTo challenge x initial level (depth + 1) (by omega)) := rfl

private theorem foldRoundsUpTo_castSucc
    {F G1 GT : Type} [Field F]
    [AddCommGroup G1] [Module F G1] [AddCommGroup GT] [Module F GT]
    {μ level depth : Nat} (h : level + depth = μ)
    (x : Fin (μ + 1) → F) (rounds : Fin (μ + 1) → RoundComs G1 GT)
    (initial : FoldedValues G1 GT) :
    foldRoundsUpTo x rounds initial level (depth + 1) (by omega) =
      foldRoundsUpTo (fun i => x i.castSucc) (fun i => rounds i.castSucc)
        initial level depth h := by
  induction level generalizing depth with
  | zero => rfl
  | succ level ih =>
      rw [foldRoundsUpTo_succ, foldRoundsUpTo_succ]
      congr 1
      simpa using ih (depth := depth + 1) (by omega)

/-- Completing the chronological accumulator is the verifier's terminal fold. -/
private theorem foldRoundsUpTo_complete_aux
    {F G1 GT : Type} [Field F]
    [AddCommGroup G1] [Module F G1] [AddCommGroup GT] [Module F GT]
    {μ : Nat} (x : Fin μ → F) (rounds : Fin μ → RoundComs G1 GT)
    (initial : FoldedValues G1 GT) :
    foldRoundsUpTo x rounds initial μ 0 (by omega) =
      foldRounds μ x rounds initial := by
  induction μ generalizing initial with
  | zero => rfl
  | succ μ ih =>
      rw [foldRoundsUpTo_succ, foldRounds_succ_last]
      congr 1
      exact (foldRoundsUpTo_castSucc (μ := μ) (level := μ) (depth := 0)
        (h := rfl) x rounds initial).trans
        (ih (fun i => x i.castSucc) (fun i => rounds i.castSucc) initial)

theorem foldRoundsUpTo_complete
    {F G1 G2 GT : Type} [Field F]
    [AddCommGroup G1] [Module F G1] [AddCommGroup GT] [Module F GT]
    {μ : Nat} (ComA : GT × GT) (ComB : GT) (proof : Proof μ F G1 G2 GT)
    (x : Fin μ → F) :
    foldRoundsUpTo x proof.rounds
        { comA := ComA, comB := ComB, comT := (proof.ipAb, proof.aggC) }
        μ 0 (by omega) =
      terminalFold ComA ComB proof x := by
  exact foldRoundsUpTo_complete_aux x proof.rounds _

theorem foldKeysUpTo_congr
    {F G : Type} [Field F] [AddCommGroup G] [Module F G]
    {μ level depth : Nat} (h : level + depth = μ)
    (challenge : F → F) (x y : Fin μ → F) (initial : Fin (2 ^ μ) → G)
    (hxy : ∀ j, (hj : j < level) →
      x ⟨j, Nat.lt_of_lt_of_le hj (by omega)⟩ =
        y ⟨j, Nat.lt_of_lt_of_le hj (by omega)⟩) :
    foldKeysUpTo challenge x initial level depth h =
      foldKeysUpTo challenge y initial level depth h := by
  induction level generalizing depth with
  | zero => rfl
  | succ level ih =>
      rw [foldKeysUpTo_succ, foldKeysUpTo_succ, hxy level (by omega)]
      congr 1
      exact ih (depth := depth + 1) (by omega)
        (fun j hj => hxy j (by omega))

theorem foldRoundsUpTo_congr
    {F G1 GT : Type} [Field F]
    [AddCommGroup G1] [Module F G1] [AddCommGroup GT] [Module F GT]
    {μ level depth : Nat} (h : level + depth = μ)
    (x y : Fin μ → F) (rounds rounds' : Fin μ → RoundComs G1 GT)
    (initial : FoldedValues G1 GT)
    (hx : ∀ j, (hj : j < level) →
      x ⟨j, Nat.lt_of_lt_of_le hj (by omega)⟩ =
        y ⟨j, Nat.lt_of_lt_of_le hj (by omega)⟩)
    (hr : ∀ j, (hj : j < level) →
      rounds ⟨j, Nat.lt_of_lt_of_le hj (by omega)⟩ =
        rounds' ⟨j, Nat.lt_of_lt_of_le hj (by omega)⟩) :
    foldRoundsUpTo x rounds initial level depth h =
      foldRoundsUpTo y rounds' initial level depth h := by
  induction level generalizing depth with
  | zero => rfl
  | succ level ih =>
      rw [foldRoundsUpTo_succ, foldRoundsUpTo_succ,
        hx level (by omega), hr level (by omega)]
      congr 1
      exact ih (depth := depth + 1) (by omega)
        (fun j hj => hx j (by omega)) (fun j hj => hr j (by omega))

private theorem foldKeysUpTo_tail
    {F G : Type} [Field F] [AddCommGroup G] [Module F G]
    {μ level depth : Nat} (h : level + depth = μ)
    (challenge : F → F) (x : Fin (μ + 1) → F)
    (initial : Fin (2 ^ (μ + 1)) → G) :
    foldKeysUpTo challenge x initial (level + 1) depth (by omega) =
      foldKeysUpTo challenge (fun i => x i.succ)
        (foldPow (K1 := G) μ (challenge (x 0)) initial) level depth h := by
  induction level generalizing depth with
  | zero =>
      have hd : μ = depth := by omega
      subst hd
      funext i
      simp only [foldKeysUpTo_succ]
      simp [foldKeysUpTo]
  | succ level ih =>
      rw [foldKeysUpTo_succ, foldKeysUpTo_succ]
      congr 1
      exact ih (depth := depth + 1) (by omega)

/-- Completing all chronological key folds is `foldKey` over the reversed
transcript view used by the KZG/leaf equations. -/
theorem foldKeysUpTo_complete
    {F G : Type} [Field F] [AddCommGroup G] [Module F G]
    {μ : Nat} (challenge : F → F) (x : Fin μ → F)
    (initial : Fin (2 ^ μ) → G) :
    foldKeysUpTo challenge x initial μ 0 (by omega) =
      foldKey (reversedView (fun i => challenge (x i))) initial := by
  induction μ with
  | zero => simp [foldKeysUpTo, foldKey]
  | succ μ ih =>
      rw [foldKeysUpTo_tail (μ := μ) (level := μ) (depth := 0) (h := rfl)]
      rw [ih]
      exact (foldKey_reversedView_succ (fun i => challenge (x i)) initial).symm

/-- First-occurrence position of a structured point in the run's miss
trace, `none` when never missed. -/
def tracePos [DecidableEq F] [DecidableEq G1] [DecidableEq G2] [DecidableEq GT]
    {μ : Nat}
    (point : FsPoint (F := F) (G1 := G1) (G2 := G2) (GT := GT))
    (run : WrappedFsRun
      (FsPoint (F := F) (G1 := G1) (G2 := G2) (GT := GT))
      (FsResult μ F G1 G2 GT)) : Option Nat :=
  if point ∈ run.trace then some (run.trace.findIdx (· == point)) else none

/-- The accepted randomizer point of a run (stage `aggregate.randomizer`;
payload construction mirrors `fsVerifier`). -/
def wrappedRandomizerPoint {μ : Nat}
    [Field F] [AddCommGroup G1] [Module F G1] [AddCommGroup G2] [Module F G2]
    [AddCommGroup GT] [Module F GT]
    (stmt : FsStatement μ F G1 G2 GT)
    (run : WrappedFsRun
      (FsPoint (F := F) (G1 := G1) (G2 := G2) (GT := GT))
      (FsResult μ F G1 G2 GT)) :
    FsPoint (F := F) (G1 := G1) (G2 := G2) (GT := GT) :=
  .randomizer { comA := stmt.ComA.1, comB := stmt.ComB, comC := stmt.ComA.2 }
    run.out.transcript.randomizerNonce

/-- The accepted x0 point of a run (stage `tipp-mipp.x0`; payload
construction mirrors `fsVerifier`). -/
def wrappedX0Point {μ : Nat}
    [Field F] [AddCommGroup G1] [Module F G1] [AddCommGroup G2] [Module F G2]
    [AddCommGroup GT] [Module F GT]
    (stmt : FsStatement μ F G1 G2 GT)
    (run : WrappedFsRun
      (FsPoint (F := F) (G1 := G1) (G2 := G2) (GT := GT))
      (FsResult μ F G1 G2 GT)) :
    FsPoint (F := F) (G1 := G1) (G2 := G2) (GT := GT) :=
  .x0 { r := run.out.transcript.randomizer, comA := stmt.ComA.1,
        comB := stmt.ComB, comC := stmt.ComA.2,
        ipAb := run.out.proof.ipAb, aggC := run.out.proof.aggC }
    run.out.transcript.x0Nonce

/-- Dependency-order good event (DESIGN §R7 item 4, added per the R6
boundary analysis): the randomizer and x0 misses precede every in-budget
round slot, so forked children share the pre-slot prefix that determines
`r` and `x0`. An adversary CAN violate this by pre-querying round points;
the violation probability is bounded in U5a (`dependency_order_bound`),
not here. Spec rows `groth16.randomizer`, `fs.challenge-preimage`. -/
def DependencyOrdered
    [Field F] [AddCommGroup G1] [Module F G1] [AddCommGroup G2] [Module F G2]
    [AddCommGroup GT] [Module F GT]
    [DecidableEq F] [DecidableEq G1] [DecidableEq G2] [DecidableEq GT]
    {μ : Nat} (qb : Nat) (stmt : FsStatement μ F G1 G2 GT)
    (run : WrappedFsRun
      (FsPoint (F := F) (G1 := G1) (G2 := G2) (GT := GT))
      (FsResult μ F G1 G2 GT)) : Prop :=
  ∀ level (s : Fin (qb + 1)), roundSlot qb level run = some s →
    (∃ ir, tracePos (wrappedRandomizerPoint stmt run) run = some ir ∧
      ir < (s : Nat)) ∧
    (∃ ix, tracePos (wrappedX0Point stmt run) run = some ix ∧
      ix < (s : Nat))

/-- Chronological round-slot good event: first occurrences of accepted round
points follow protocol round order. Pre-querying a later round point can
violate this; U5a accounts for that guessing event. -/
def RoundSlotOrdered
    [DecidableEq F] [DecidableEq G1] [DecidableEq G2] [DecidableEq GT]
    {μ : Nat} (qb : Nat)
    (run : WrappedFsRun
      (FsPoint (F := F) (G1 := G1) (G2 := G2) (GT := GT))
      (FsResult μ F G1 G2 GT)) : Prop :=
  ∀ earlier later, earlier < later → later < μ → ∀ {s t},
    roundSlot qb earlier run = some s →
    roundSlot qb later run = some t → s < t

/-- Collision-freedom of the structured random-function answers: distinct
miss ordinals carry distinct answers. Under caching every traced point
misses at most once, so this is exactly "no two distinct queried points
share an answer" — the RO birthday event, bounded in U5a
(`answer_collision_bound`, ≤ (qb+1)²/|F| by union bound). Without it,
equal chained answers cannot pin the x0/randomizer payloads (Design
review 3 blocker: two distinct pre-queried x0 points may collide). -/
def StructuredAnswersInjective [DecidableEq F]
    (n : Nat) (log : QueryLog (FsWrappedSpec F)) : Prop :=
  ∀ i j : Nat, i < n → j < n →
    QueryLog.getQueryValue? log (Sum.inr ()) i =
      QueryLog.getQueryValue? log (Sum.inr ()) j → i = j

/-- Acceptance and the explicit U5a exclusions required on every wrapped
run used by U5d(4): accepted challenges, in-budget and chronologically ordered
round slots, the dependency-order event, and structured-answer collision freedom
(`fs.stage-labels`, `tipp-mipp.gipa`, `groth16.randomizer`). -/
def WrappedRunGood
    [Field F] [AddCommGroup G1] [Module F G1] [AddCommGroup G2] [Module F G2]
    [AddCommGroup GT] [Module F GT]
    [DecidableEq F] [DecidableEq G1] [DecidableEq G2] [DecidableEq GT]
    {μ : Nat} (qb : Nat) (stmt : FsStatement μ F G1 G2 GT)
    (run : WrappedFsRun
      (FsPoint (F := F) (G1 := G1) (G2 := G2) (GT := GT))
      (FsResult μ F G1 G2 GT))
    (log : QueryLog (FsWrappedSpec F)) : Prop :=
  run.out.accept = true ∧
    ChallengesAccepted run.out ∧
    (∀ level, level < μ → ¬RoundPointUnqueried qb level run) ∧
    RoundSlotOrdered qb run ∧
    DependencyOrdered qb stmt run ∧
    StructuredAnswersInjective (F := F) run.trace.length log

private theorem take_eq_of_getElem?_eq {α : Type} {xs ys : List α} (n : Nat)
    (h : ∀ i, i < n → xs[i]? = ys[i]?) : xs.take n = ys.take n := by
  induction n generalizing xs ys with
  | zero => simp
  | succ n ih =>
      cases xs with
      | nil =>
          have hnil := h 0 (Nat.zero_lt_succ n)
          cases ys <;> simp_all
      | cons x xs =>
          cases ys with
          | nil =>
              have hnil := h 0 (Nat.zero_lt_succ n)
              simp at hnil
          | cons y ys =>
              have hhead := h 0 (Nat.zero_lt_succ n)
              simp only [List.getElem?_cons_zero, Option.some.injEq] at hhead
              subst y
              simp only [List.take_succ_cons, List.cons.injEq, true_and]
              apply ih
              intro i hi
              simpa using h (i + 1) (Nat.succ_lt_succ hi)

/-- Equal wrapped prefixes with the same structured rank expose equal answers
at every earlier structured ordinal. -/
private theorem structuredValue_eq_of_prefix [DecidableEq F]
    (logA logB : QueryLog (FsWrappedSpec F)) (slotPos s i : Nat)
    (hrankA : structuredMissCountBefore logA slotPos = s)
    (hrankB : structuredMissCountBefore logB slotPos = s)
    (hprefix : ∀ n, n < slotPos → logA[n]? = logB[n]?)
    (hi : i < s) :
    QueryLog.getQueryValue? logA (Sum.inr ()) i =
      QueryLog.getQueryValue? logB (Sum.inr ()) i := by
  have htake : logA.take slotPos = logB.take slotPos :=
    take_eq_of_getElem?_eq slotPos hprefix
  have hiA : i < (QueryLog.getQ (logA.take slotPos) (· = Sum.inr ())).length := by
    unfold structuredMissCountBefore at hrankA
    omega
  have hiB : i < (QueryLog.getQ (logB.take slotPos) (· = Sum.inr ())).length := by
    unfold structuredMissCountBefore at hrankB
    omega
  have hfullA :
      (QueryLog.getQ logA (· = Sum.inr ()))[i]? =
        (QueryLog.getQ (logA.take slotPos) (· = Sum.inr ()))[i]? := by
    conv_lhs => rw [← List.take_append_drop slotPos logA, QueryLog.getQ_append]
    exact List.getElem?_append_left hiA
  have hfullB :
      (QueryLog.getQ logB (· = Sum.inr ()))[i]? =
        (QueryLog.getQ (logB.take slotPos) (· = Sum.inr ()))[i]? := by
    conv_lhs => rw [← List.take_append_drop slotPos logB, QueryLog.getQ_append]
    exact List.getElem?_append_left hiB
  have hget :
      (QueryLog.getQ logA (· = Sum.inr ()))[i]? =
        (QueryLog.getQ logB (· = Sum.inr ()))[i]? := by
    rw [hfullA, hfullB, htake]
  cases hA : QueryLog.getQueryValue? logA (Sum.inr ()) i with
  | none =>
      cases hB : QueryLog.getQueryValue? logB (Sum.inr ()) i with
      | none => rfl
      | some answer =>
          have hentryB := QueryLog.getQ_getElem?_eq_of_getQueryValue?_eq_some
            logB (Sum.inr ()) i answer hB
          have hentryA := hget.trans hentryB
          have := QueryLog.getQueryValue?_eq_some_of_getQ_getElem?
            logA (Sum.inr ()) i answer hentryA
          simp [hA] at this
  | some answer =>
      have hentryA := QueryLog.getQ_getElem?_eq_of_getQueryValue?_eq_some
        logA (Sum.inr ()) i answer hA
      have hentryB := hget.symm.trans hentryA
      have hB := QueryLog.getQueryValue?_eq_some_of_getQ_getElem?
        logB (Sum.inr ()) i answer hentryB
      exact hB.symm

/-- A successful selector identifies the first trace ordinal of that round. -/
theorem roundSlot_tracePos
    [DecidableEq F] [DecidableEq G1] [DecidableEq G2] [DecidableEq GT]
    {μ qb level : Nat}
    (run : WrappedFsRun
      (FsPoint (F := F) (G1 := G1) (G2 := G2) (GT := GT))
      (FsResult μ F G1 G2 GT))
    (hlevel : level < μ) {s : Fin (qb + 1)}
    (hslot : roundSlot qb level run = some s) :
    tracePos (.round
      (run.out.transcript.roundPrev ⟨level, hlevel⟩)
      (run.out.proof.rounds ⟨level, hlevel⟩)
      (run.out.transcript.roundNonce ⟨level, hlevel⟩)) run = some (s : Nat) := by
  have h := hslot
  simp [roundSlot, wrappedRoundPoint, hlevel] at h
  obtain ⟨hmem, _hbound, heq⟩ := h
  unfold tracePos
  rw [if_pos hmem]
  exact congrArg some (congrArg Fin.val heq)

/-- Wrapped-support form of the selector-answer theorem. -/
theorem wrapped_roundSlot_answer_eq_transcript
    [Field F] [AddCommGroup G1] [Module F G1]
    [AddCommGroup G2] [Module F G2] [AddCommGroup GT] [Module F GT]
    [DecidableEq F] [DecidableEq G1] [DecidableEq G2] [DecidableEq GT]
    {μ qb : Nat}
    (stmt : FsStatement μ F G1 G2 GT)
    (adv : OracleComp (unifSpec + SnarkpackFsSpec F G1 G2 GT) (Proof μ F G1 G2 GT))
    (level : Fin μ)
    {run : WrappedFsRun
      (FsPoint (F := F) (G1 := G1) (G2 := G2) (GT := GT))
      (FsResult μ F G1 G2 GT)}
    {log : QueryLog (FsWrappedSpec F)} {slot : Fin (qb + 1)}
    (hsupport : (run, log) ∈ support
      (replayFirstRun (wrapFs (FsGame stmt adv))))
    (haccept : run.out.accept = true)
    (hslot : roundSlot qb (level : Nat) run = some slot) :
    QueryLog.getQueryValue? log (Sum.inr ()) (slot : Nat) =
      some (run.out.transcript.roundAnswer level) := by
  obtain ⟨sourceLog, htrace, hlog, hsource⟩ :=
    wrapFs_support_exists_source (FsGame stmt adv) hsupport
  have hrun : ({ out := run.out, trace := fsPointTrace sourceLog } :
      WrappedFsRun
        (FsPoint (F := F) (G1 := G1) (G2 := G2) (GT := GT))
        (FsResult μ F G1 G2 GT)) = run := by
    cases run
    simp_all
  simpa [hlog, hrun] using
    roundSlot_answer_eq_transcript stmt adv qb level hsource haccept (by
      simpa [hrun] using hslot)

/-- A point with a recorded first trace position occurs there. -/
theorem tracePos_get
    [DecidableEq F] [DecidableEq G1] [DecidableEq G2] [DecidableEq GT]
    {μ : Nat}
    {run : WrappedFsRun
      (FsPoint (F := F) (G1 := G1) (G2 := G2) (GT := GT))
      (FsResult μ F G1 G2 GT)}
    {point : FsPoint (F := F) (G1 := G1) (G2 := G2) (GT := GT)} {i : Nat}
    (hpos : tracePos point run = some i) :
    ∃ hi : i < run.trace.length, run.trace[i] = point := by
  unfold tracePos at hpos
  split at hpos
  · rename_i hmem
    have hi : run.trace.findIdx (· == point) < run.trace.length :=
      List.findIdx_lt_length_of_exists ⟨point, hmem, by simp⟩
    have heq : i = run.trace.findIdx (· == point) := (Option.some.inj hpos).symm
    subst i
    have hp := List.findIdx_getElem
      (xs := run.trace) (p := fun x => x == point) (w := hi)
    have hpoint : run.trace[run.trace.findIdx (· == point)] = point := by
      simpa using hp
    exact ⟨hi, hpoint⟩
  · exact False.elim (by simpa using hpos)

/-- The selected round point itself is shared by two replay children, even
though the selected answers at that point are deliberately different. -/
private theorem selectedRoundPoint_eq_of_prefix
    [DecidableEq F] [DecidableEq G1] [DecidableEq G2] [DecidableEq GT]
    {μ qb level slotPos : Nat} (hlevel : level < μ)
    {runA runB : WrappedFsRun
      (FsPoint (F := F) (G1 := G1) (G2 := G2) (GT := GT))
      (FsResult μ F G1 G2 GT)}
    {logA : QueryLog (FsWrappedSpec F)} {s : Fin (qb + 1)}
    (hslotA : roundSlot qb level runA = some s)
    (hslotB : roundSlot qb level runB = some s)
    (hrank : structuredMissCountBefore logA slotPos = (s : Nat))
    (htrace : runA.trace.take (structuredMissCountBefore logA slotPos + 1) =
      runB.trace.take (structuredMissCountBefore logA slotPos + 1)) :
    (ChallengePoint.round
        (runA.out.transcript.roundPrev ⟨level, hlevel⟩)
        (runA.out.proof.rounds ⟨level, hlevel⟩)
        (runA.out.transcript.roundNonce ⟨level, hlevel⟩) :
      FsPoint (F := F) (G1 := G1) (G2 := G2) (GT := GT)) =
      (ChallengePoint.round
        (runB.out.transcript.roundPrev ⟨level, hlevel⟩)
        (runB.out.proof.rounds ⟨level, hlevel⟩)
        (runB.out.transcript.roundNonce ⟨level, hlevel⟩) :
      FsPoint (F := F) (G1 := G1) (G2 := G2) (GT := GT)) := by
  have hposA := roundSlot_tracePos runA hlevel hslotA
  have hposB := roundSlot_tracePos runB hlevel hslotB
  obtain ⟨hlenA, hpointA⟩ := tracePos_get hposA
  obtain ⟨hlenB, hpointB⟩ := tracePos_get hposB
  rw [hrank] at htrace
  have hget := congrArg (fun xs => xs[(s : Nat)]?) htrace
  have hsle : (s : Nat) ≤ (s : Nat) := le_rfl
  have htraceAt : runA.trace[(s : Nat)]? = runB.trace[(s : Nat)]? := by
    simpa [List.getElem?_take, hsle] using hget
  have hsomeA : runA.trace[(s : Nat)]? = some (.round
      (runA.out.transcript.roundPrev ⟨level, hlevel⟩)
      (runA.out.proof.rounds ⟨level, hlevel⟩)
      (runA.out.transcript.roundNonce ⟨level, hlevel⟩)) := by
    simp [hlenA, hpointA]
  have hsomeB : runB.trace[(s : Nat)]? = some (.round
      (runB.out.transcript.roundPrev ⟨level, hlevel⟩)
      (runB.out.proof.rounds ⟨level, hlevel⟩)
      (runB.out.transcript.roundNonce ⟨level, hlevel⟩)) := by
    simp [hlenB, hpointB]
  exact Option.some.inj (hsomeA.symm.trans (htraceAt.trans hsomeB))

/-- The wrapped log answer at the accepted randomizer point is the transcript
randomizer. -/
theorem wrappedRandomizer_answer_at_tracePos
    [Field F] [AddCommGroup G1] [Module F G1]
    [AddCommGroup G2] [Module F G2] [AddCommGroup GT] [Module F GT]
    [DecidableEq F] [DecidableEq G1] [DecidableEq G2] [DecidableEq GT]
    {μ : Nat}
    (stmt : FsStatement μ F G1 G2 GT)
    (adv : OracleComp (unifSpec + SnarkpackFsSpec F G1 G2 GT) (Proof μ F G1 G2 GT))
    {run : WrappedFsRun
      (FsPoint (F := F) (G1 := G1) (G2 := G2) (GT := GT))
      (FsResult μ F G1 G2 GT)}
    {log : QueryLog (FsWrappedSpec F)} {i : Nat}
    (hsupport : (run, log) ∈ support
      (replayFirstRun (wrapFs (FsGame stmt adv))))
    (haccept : run.out.accept = true)
    (hpos : tracePos (wrappedRandomizerPoint stmt run) run = some i) :
    QueryLog.getQueryValue? log (Sum.inr ()) i =
      some run.out.transcript.randomizer := by
  obtain ⟨sourceLog, htrace, hlog, hsource⟩ :=
    wrapFs_support_exists_source (FsGame stmt adv) hsupport
  obtain ⟨hi, hpoint⟩ := tracePos_get hpos
  have hi' : i < (fsPointTrace sourceLog).length := by simpa [htrace] using hi
  obtain ⟨answer, hanswered, hvalue⟩ := fsPointTrace_flatten_at sourceLog i hi'
  have hpoint' : (fsPointTrace sourceLog)[i] = wrappedRandomizerPoint stmt run := by
    simpa [htrace] using hpoint
  rw [hpoint'] at hanswered
  obtain ⟨cache, hcache, _, haccepted⟩ :=
    fsRandomFunction_replay_cached stmt adv hsource
  have hcached := (haccepted haccept).1.1.2.1
  have hanswer : answer = run.out.transcript.randomizer :=
    Option.some.inj ((hcache _ _ hanswered).symm.trans (by
      simpa [wrappedRandomizerPoint] using hcached))
  simpa [hlog, hanswer] using hvalue

/-- The wrapped log answer at the accepted x0 point is the transcript x0. -/
theorem wrappedX0_answer_at_tracePos
    [Field F] [AddCommGroup G1] [Module F G1]
    [AddCommGroup G2] [Module F G2] [AddCommGroup GT] [Module F GT]
    [DecidableEq F] [DecidableEq G1] [DecidableEq G2] [DecidableEq GT]
    {μ : Nat}
    (stmt : FsStatement μ F G1 G2 GT)
    (adv : OracleComp (unifSpec + SnarkpackFsSpec F G1 G2 GT) (Proof μ F G1 G2 GT))
    {run : WrappedFsRun
      (FsPoint (F := F) (G1 := G1) (G2 := G2) (GT := GT))
      (FsResult μ F G1 G2 GT)}
    {log : QueryLog (FsWrappedSpec F)} {i : Nat}
    (hsupport : (run, log) ∈ support
      (replayFirstRun (wrapFs (FsGame stmt adv))))
    (haccept : run.out.accept = true)
    (hpos : tracePos (wrappedX0Point stmt run) run = some i) :
    QueryLog.getQueryValue? log (Sum.inr ()) i = some run.out.transcript.x0 := by
  obtain ⟨sourceLog, htrace, hlog, hsource⟩ :=
    wrapFs_support_exists_source (FsGame stmt adv) hsupport
  obtain ⟨hi, hpoint⟩ := tracePos_get hpos
  have hi' : i < (fsPointTrace sourceLog).length := by simpa [htrace] using hi
  obtain ⟨answer, hanswered, hvalue⟩ := fsPointTrace_flatten_at sourceLog i hi'
  have hpoint' : (fsPointTrace sourceLog)[i] = wrappedX0Point stmt run := by
    simpa [htrace] using hpoint
  rw [hpoint'] at hanswered
  obtain ⟨cache, hcache, _, haccepted⟩ :=
    fsRandomFunction_replay_cached stmt adv hsource
  have hcached := (haccepted haccept).1.1.2.2
  have hanswer : answer = run.out.transcript.x0 :=
    Option.some.inj ((hcache _ _ hanswered).symm.trans (by
      simpa [wrappedX0Point] using hcached))
  simpa [hlog, hanswer] using hvalue

/-- Collision freedom pins two pre-slot structured points once their answers
and the replay prefixes agree. -/
private theorem structuredPoint_eq_of_prefix
    [DecidableEq F] [DecidableEq G1] [DecidableEq G2] [DecidableEq GT]
    {μ slotPos s iA iB : Nat}
    {runA runB : WrappedFsRun
      (FsPoint (F := F) (G1 := G1) (G2 := G2) (GT := GT))
      (FsResult μ F G1 G2 GT)}
    {logA logB : QueryLog (FsWrappedSpec F)}
    {pointA pointB : FsPoint (F := F) (G1 := G1) (G2 := G2) (GT := GT)}
    (hrankA : structuredMissCountBefore logA slotPos = s)
    (hrankB : structuredMissCountBefore logB slotPos = s)
    (hprefix : ∀ n, n < slotPos → logA[n]? = logB[n]?)
    (htrace : runA.trace.take (s + 1) = runB.trace.take (s + 1))
    (hinjective : StructuredAnswersInjective (F := F) runA.trace.length logA)
    (hposA : tracePos pointA runA = some iA) (hiA : iA < s)
    (hposB : tracePos pointB runB = some iB) (hiB : iB < s)
    {answer : F}
    (hanswerA : QueryLog.getQueryValue? logA (Sum.inr ()) iA = some answer)
    (hanswerB : QueryLog.getQueryValue? logB (Sum.inr ()) iB = some answer) :
    pointA = pointB ∧ iA = iB := by
  obtain ⟨hlenA, hpointA⟩ := tracePos_get hposA
  obtain ⟨hlenB, hpointB⟩ := tracePos_get hposB
  have traceAt (i : Nat) (hi : i < s) : runA.trace[i]? = runB.trace[i]? := by
    have hget := congrArg (fun xs => xs[i]?) htrace
    have his : i ≤ s := Nat.le_of_lt hi
    simpa [List.getElem?_take, his] using hget
  have hsomeB : runB.trace[iB]? = some pointB := by simp [hlenB, hpointB]
  have hpointBInA : runA.trace[iB]? = some pointB := (traceAt iB hiB).trans hsomeB
  have hlenBInA : iB < runA.trace.length := by
    by_contra h
    simp [Nat.not_lt.mp h] at hpointBInA
  have htransport := structuredValue_eq_of_prefix logA logB slotPos s iB
    hrankA hrankB hprefix hiB
  have hsameA : QueryLog.getQueryValue? logA (Sum.inr ()) iA =
      QueryLog.getQueryValue? logA (Sum.inr ()) iB :=
    hanswerA.trans (htransport.trans hanswerB).symm
  have hiEq : iA = iB := hinjective iA iB hlenA hlenBInA hsameA
  subst iB
  have hsomeA : runA.trace[iA]? = some pointA := by simp [hlenA, hpointA]
  exact ⟨Option.some.inj (hsomeA.symm.trans ((traceAt iA hiA).trans hsomeB)), rfl⟩

/-- A reference point inside the shared prefix pins an equal-answer point in
the other child even when that child's own ordinal is not known to precede the
current fork. -/
private theorem structuredPoint_eq_to_shared_prefix
    [DecidableEq F] [DecidableEq G1] [DecidableEq G2] [DecidableEq GT]
    {μ slotPos s iA iB : Nat}
    {runA runB : WrappedFsRun
      (FsPoint (F := F) (G1 := G1) (G2 := G2) (GT := GT))
      (FsResult μ F G1 G2 GT)}
    {logA logB : QueryLog (FsWrappedSpec F)}
    {pointA pointB : FsPoint (F := F) (G1 := G1) (G2 := G2) (GT := GT)}
    (hrankA : structuredMissCountBefore logA slotPos = s)
    (hrankB : structuredMissCountBefore logB slotPos = s)
    (hprefix : ∀ n, n < slotPos → logA[n]? = logB[n]?)
    (htrace : runA.trace.take (s + 1) = runB.trace.take (s + 1))
    (hinjective : StructuredAnswersInjective (F := F) runB.trace.length logB)
    (hposA : tracePos pointA runA = some iA) (hiA : iA < s)
    (hposB : tracePos pointB runB = some iB)
    {answer : F}
    (hanswerA : QueryLog.getQueryValue? logA (Sum.inr ()) iA = some answer)
    (hanswerB : QueryLog.getQueryValue? logB (Sum.inr ()) iB = some answer) :
    pointA = pointB ∧ iA = iB := by
  obtain ⟨hlenA, hpointA⟩ := tracePos_get hposA
  obtain ⟨hlenB, hpointB⟩ := tracePos_get hposB
  have hget := congrArg (fun xs => xs[iA]?) htrace
  have htraceAt : runA.trace[iA]? = runB.trace[iA]? := by
    simpa [List.getElem?_take, Nat.le_of_lt hiA] using hget
  have hsomeA : runA.trace[iA]? = some pointA := by simp [hlenA, hpointA]
  have hpointAInB : runB.trace[iA]? = some pointA :=
    htraceAt.symm.trans hsomeA
  have hlenAInB : iA < runB.trace.length := by
    by_contra h
    simp [Nat.not_lt.mp h] at hpointAInB
  have htransport := structuredValue_eq_of_prefix logA logB slotPos s iA
    hrankA hrankB hprefix hiA
  have hsameB : QueryLog.getQueryValue? logB (Sum.inr ()) iA =
      QueryLog.getQueryValue? logB (Sum.inr ()) iB :=
    htransport.symm.trans (hanswerA.trans hanswerB.symm)
  have hiEq : iA = iB := hinjective iA iB hlenAInB hlenB hsameB
  subst iB
  have hsomeB : runB.trace[iA]? = some pointB := by simp [hlenB, hpointB]
  exact ⟨Option.some.inj (hpointAInB.symm.trans hsomeB), rfl⟩

/-- At one fork node, equality of the chained x0 answers pins the complete x0
payload, hence the randomizer and the two root T-lane values. -/
theorem sharedRootData_of_x0
    [Field F] [AddCommGroup G1] [Module F G1]
    [AddCommGroup G2] [Module F G2] [AddCommGroup GT] [Module F GT]
    [DecidableEq F] [DecidableEq G1] [DecidableEq G2] [DecidableEq GT]
    {μ qb level slotPos : Nat}
    (stmt : FsStatement μ F G1 G2 GT)
    (adv : OracleComp (unifSpec + SnarkpackFsSpec F G1 G2 GT) (Proof μ F G1 G2 GT))
    {runA runB : WrappedFsRun
      (FsPoint (F := F) (G1 := G1) (G2 := G2) (GT := GT))
      (FsResult μ F G1 G2 GT)}
    {logA logB : QueryLog (FsWrappedSpec F)} {s : Fin (qb + 1)}
    (hsupportA : (runA, logA) ∈ support
      (replayFirstRun (wrapFs (FsGame stmt adv))))
    (hsupportB : (runB, logB) ∈ support
      (replayFirstRun (wrapFs (FsGame stmt adv))))
    (hacceptA : runA.out.accept = true) (hacceptB : runB.out.accept = true)
    (hslotA : roundSlot qb level runA = some s)
    (hslotB : roundSlot qb level runB = some s)
    (hrankA : structuredMissCountBefore logA slotPos = (s : Nat))
    (hrankB : structuredMissCountBefore logB slotPos = (s : Nat))
    (hprefix : ∀ n, n < slotPos → logA[n]? = logB[n]?)
    (hinputA : QueryLog.inputAt? logA slotPos = some (Sum.inr ()))
    (hinputB : QueryLog.inputAt? logB slotPos = some (Sum.inr ()))
    (hdepA : DependencyOrdered qb stmt runA)
    (hdepB : DependencyOrdered qb stmt runB)
    (hinjective : StructuredAnswersInjective (F := F) runA.trace.length logA)
    (hx0 : runA.out.transcript.x0 = runB.out.transcript.x0) :
    runA.out.transcript.randomizer = runB.out.transcript.randomizer ∧
      runA.out.proof.ipAb = runB.out.proof.ipAb ∧
      runA.out.proof.aggC = runB.out.proof.aggC := by
  obtain ⟨_, ⟨iA, hposA, hiA⟩⟩ := hdepA level s hslotA
  obtain ⟨_, ⟨iB, hposB, hiB⟩⟩ := hdepB level s hslotB
  have htrace := trace_prefix_of_log_prefix (FsGame stmt adv) slotPos
    hsupportA hsupportB hprefix hinputA hinputB
  rw [hrankA] at htrace
  have hanswerA := wrappedX0_answer_at_tracePos stmt adv hsupportA hacceptA hposA
  have hanswerB := wrappedX0_answer_at_tracePos stmt adv hsupportB hacceptB hposB
  have hpoint := (structuredPoint_eq_of_prefix hrankA hrankB hprefix htrace
    hinjective hposA hiA hposB hiB hanswerA (by simpa [hx0] using hanswerB)
    ).1
  change ChallengePoint.x0 _ _ = ChallengePoint.x0 _ _ at hpoint
  injection hpoint with hpayload _
  injection hpayload with hr _ _ _ hip hagg
  exact ⟨hr, hip, hagg⟩

/-- Data fixed by the replay path before a subtree at `level`: root payloads,
each earlier round record, its selector ordinal, and transcript chaining. -/
structure PathPrefix
    [Field F] [AddCommGroup G1] [Module F G1]
    [AddCommGroup G2] [Module F G2] [AddCommGroup GT] [Module F GT]
    [DecidableEq F] [DecidableEq G1] [DecidableEq G2] [DecidableEq GT]
    {μ : Nat} (qb level : Nat) (slot : Nat → Fin (qb + 1))
    (root run : WrappedFsRun
      (FsPoint (F := F) (G1 := G1) (G2 := G2) (GT := GT))
      (FsResult μ F G1 G2 GT)) : Prop where
  slot_strict : ∀ a b, a < b → b < level → slot a < slot b
  randomizer : run.out.transcript.randomizer = root.out.transcript.randomizer
  x0 : run.out.transcript.x0 = root.out.transcript.x0
  ipAb : run.out.proof.ipAb = root.out.proof.ipAb
  aggC : run.out.proof.aggC = root.out.proof.aggC
  round : ∀ (j : Nat) (hj : j < level) (hjμ : j < μ),
    run.out.transcript.roundAnswer ⟨j, hjμ⟩ =
        root.out.transcript.roundAnswer ⟨j, hjμ⟩ ∧
      run.out.proof.rounds ⟨j, hjμ⟩ = root.out.proof.rounds ⟨j, hjμ⟩ ∧
      run.out.transcript.roundNonce ⟨j, hjμ⟩ =
        root.out.transcript.roundNonce ⟨j, hjμ⟩ ∧
      run.out.transcript.roundPrev ⟨j, hjμ⟩ =
        root.out.transcript.roundPrev ⟨j, hjμ⟩ ∧
      roundSlot qb j root = some (slot j) ∧
      roundSlot qb j run = some (slot j)
  chaining : TranscriptChaining run.out.transcript.x0
    run.out.transcript.roundPrev run.out.transcript.roundAnswer

theorem PathPrefix.refl
    [Field F] [AddCommGroup G1] [Module F G1]
    [AddCommGroup G2] [Module F G2] [AddCommGroup GT] [Module F GT]
    [DecidableEq F] [DecidableEq G1] [DecidableEq G2] [DecidableEq GT]
    {μ qb level : Nat}
    (run : WrappedFsRun
      (FsPoint (F := F) (G1 := G1) (G2 := G2) (GT := GT))
      (FsResult μ F G1 G2 GT))
    (slot : Nat → Fin (qb + 1))
    (hstrict : ∀ a b, a < b → b < level → slot a < slot b)
    (hslots : ∀ j, j < level → j < μ → roundSlot qb j run = some (slot j))
    (hchain : TranscriptChaining run.out.transcript.x0
      run.out.transcript.roundPrev run.out.transcript.roundAnswer) :
    PathPrefix qb level slot run run := by
  refine ⟨hstrict, rfl, rfl, rfl, rfl, ?_, hchain⟩
  intro j hj hjμ
  have hs := hslots j hj hjμ
  exact ⟨rfl, rfl, rfl, rfl, hs, hs⟩

private def extendPathSlot {qb : Nat} (level : Nat)
    (slot : Nat → Fin (qb + 1)) (s : Fin (qb + 1)) : Nat → Fin (qb + 1) :=
  fun j => if j = level then s else slot j

/-- Extend a path record by the current node after the current round point and
answer have been identified. -/
theorem PathPrefix.extend
    [Field F] [AddCommGroup G1] [Module F G1]
    [AddCommGroup G2] [Module F G2] [AddCommGroup GT] [Module F GT]
    [DecidableEq F] [DecidableEq G1] [DecidableEq G2] [DecidableEq GT]
    {μ qb level : Nat} (hlevel : level < μ)
    {root run : WrappedFsRun
      (FsPoint (F := F) (G1 := G1) (G2 := G2) (GT := GT))
      (FsResult μ F G1 G2 GT)}
    {slot : Nat → Fin (qb + 1)} {s : Fin (qb + 1)}
    (hpath : PathPrefix qb level slot root run)
    (hgreater : ∀ j, j < level → slot j < s)
    (hanswer : run.out.transcript.roundAnswer ⟨level, hlevel⟩ =
      root.out.transcript.roundAnswer ⟨level, hlevel⟩)
    (hround : run.out.proof.rounds ⟨level, hlevel⟩ =
      root.out.proof.rounds ⟨level, hlevel⟩)
    (hnonce : run.out.transcript.roundNonce ⟨level, hlevel⟩ =
      root.out.transcript.roundNonce ⟨level, hlevel⟩)
    (hprev : run.out.transcript.roundPrev ⟨level, hlevel⟩ =
      root.out.transcript.roundPrev ⟨level, hlevel⟩)
    (hslotRoot : roundSlot qb level root = some s)
    (hslotRun : roundSlot qb level run = some s) :
    PathPrefix qb (level + 1) (extendPathSlot level slot s) root run := by
  refine ⟨?_, hpath.randomizer, hpath.x0, hpath.ipAb, hpath.aggC, ?_,
    hpath.chaining⟩
  · intro a b hab hb
    by_cases hbeq : b = level
    · subst b
      have ha : a ≠ level := by omega
      simp [extendPathSlot, ha, hgreater a hab]
    · have hb' : b < level := by omega
      have hae : a ≠ level := by omega
      simp [extendPathSlot, hae, hbeq, hpath.slot_strict a b hab hb']
  · intro j hj hjμ
    by_cases hjeq : j = level
    · subst j
      simpa [extendPathSlot] using
        And.intro hanswer (And.intro hround
          (And.intro hnonce (And.intro hprev (And.intro hslotRoot hslotRun))))
    · have hj' : j < level := by omega
      simpa [extendPathSlot, hjeq] using hpath.round j hj' hjμ

/-- A fork preserves every earlier path record in all four replay children.
The proof walks the transcript chain backwards from the shared current round
point, using collision freedom to pin each predecessor point. -/
theorem PathPrefix.preserveChild
    [Field F] [AddCommGroup G1] [Module F G1]
    [AddCommGroup G2] [Module F G2] [AddCommGroup GT] [Module F GT]
    [DecidableEq F] [DecidableEq G1] [DecidableEq G2] [DecidableEq GT]
    {μ qb level slotPos : Nat} (hlevel : level < μ)
    (stmt : FsStatement μ F G1 G2 GT)
    (adv : OracleComp (unifSpec + SnarkpackFsSpec F G1 G2 GT) (Proof μ F G1 G2 GT))
    {root runA runB : WrappedFsRun
      (FsPoint (F := F) (G1 := G1) (G2 := G2) (GT := GT))
      (FsResult μ F G1 G2 GT)}
    {logA logB : QueryLog (FsWrappedSpec F)}
    {slot : Nat → Fin (qb + 1)} {s : Fin (qb + 1)}
    (hsupportA : (runA, logA) ∈ support
      (replayFirstRun (wrapFs (FsGame stmt adv))))
    (hsupportB : (runB, logB) ∈ support
      (replayFirstRun (wrapFs (FsGame stmt adv))))
    (hgoodA : WrappedRunGood qb stmt runA logA)
    (hgoodB : WrappedRunGood qb stmt runB logB)
    (hpath : PathPrefix qb level slot root runA)
    (hgreater : ∀ j, j < level → slot j < s)
    (hslotA : roundSlot qb level runA = some s)
    (hslotB : roundSlot qb level runB = some s)
    (hrankA : structuredMissCountBefore logA slotPos = (s : Nat))
    (hrankB : structuredMissCountBefore logB slotPos = (s : Nat))
    (hprefix : ∀ n, n < slotPos → logA[n]? = logB[n]?)
    (hinputA : QueryLog.inputAt? logA slotPos = some (Sum.inr ()))
    (hinputB : QueryLog.inputAt? logB slotPos = some (Sum.inr ())) :
    PathPrefix qb level slot root runB := by
  have htrace := trace_prefix_of_log_prefix (FsGame stmt adv) slotPos
    hsupportA hsupportB hprefix hinputA hinputB
  have hselected := selectedRoundPoint_eq_of_prefix hlevel hslotA hslotB hrankA htrace
  injection hselected with hprevLevel _ _
  have hchainB := wrapped_supports_transcript_chaining stmt adv hsupportB hgoodB.1
  let P : (j : Nat) → j ≤ level → Prop := fun j hj =>
    runB.out.transcript.roundPrev ⟨j, Nat.lt_of_le_of_lt hj hlevel⟩ =
        runA.out.transcript.roundPrev ⟨j, Nat.lt_of_le_of_lt hj hlevel⟩ ∧
      ∀ t, (hjt : j ≤ t) → (ht : t < level) →
        runB.out.transcript.roundAnswer ⟨t, Nat.lt_trans ht hlevel⟩ =
            runA.out.transcript.roundAnswer ⟨t, Nat.lt_trans ht hlevel⟩ ∧
          runB.out.proof.rounds ⟨t, Nat.lt_trans ht hlevel⟩ =
            runA.out.proof.rounds ⟨t, Nat.lt_trans ht hlevel⟩ ∧
          runB.out.transcript.roundNonce ⟨t, Nat.lt_trans ht hlevel⟩ =
            runA.out.transcript.roundNonce ⟨t, Nat.lt_trans ht hlevel⟩ ∧
          runB.out.transcript.roundPrev ⟨t, Nat.lt_trans ht hlevel⟩ =
            runA.out.transcript.roundPrev ⟨t, Nat.lt_trans ht hlevel⟩ ∧
          roundSlot qb t runB = some (slot t)
  have hrecover : P 0 (Nat.zero_le level) := by
    apply Nat.decreasingInduction (motive := P)
    · intro k hk ih
      dsimp [P] at ih ⊢
      have hkμ : k < μ := by omega
      have hksμ : k + 1 < μ := by omega
      have hanswerBA :
          runB.out.transcript.roundAnswer ⟨k, hkμ⟩ =
            runA.out.transcript.roundAnswer ⟨k, hkμ⟩ := by
        calc
          _ = runB.out.transcript.roundPrev ⟨k + 1, hksμ⟩ :=
            (roundPrev_succ hchainB k hksμ).symm
          _ = runA.out.transcript.roundPrev ⟨k + 1, hksμ⟩ := by
            simpa using ih.1
          _ = runA.out.transcript.roundAnswer ⟨k, hkμ⟩ :=
            roundPrev_succ hpath.chaining k hksμ
      have hroundA := hpath.round k hk hkμ
      obtain ⟨q, hq⟩ := (roundSlot_some_or_unqueried qb k runB).resolve_right
        (hgoodB.2.2.1 k hkμ)
      have hposA := roundSlot_tracePos runA hkμ hroundA.2.2.2.2.2
      have hposB := roundSlot_tracePos runB hkμ hq
      have hlogA := wrapped_roundSlot_answer_eq_transcript stmt adv ⟨k, hkμ⟩
        hsupportA hgoodA.1 hroundA.2.2.2.2.2
      have hlogB := wrapped_roundSlot_answer_eq_transcript stmt adv ⟨k, hkμ⟩
        hsupportB hgoodB.1 hq
      have htrace' : runA.trace.take ((s : Nat) + 1) =
          runB.trace.take ((s : Nat) + 1) := by simpa [hrankA] using htrace
      have hpin := structuredPoint_eq_to_shared_prefix hrankA hrankB hprefix htrace'
        hgoodB.2.2.2.2.2 hposA (by exact_mod_cast hgreater k hk) hposB hlogA
        (by simpa [hanswerBA] using hlogB)
      injection hpin.1 with hp hr hn
      have hqeq : q = slot k := by
        apply Fin.ext
        exact hpin.2.symm
      refine ⟨hp.symm, ?_⟩
      intro t hkt ht
      by_cases htk : t = k
      · subst t
        exact ⟨hanswerBA, hr.symm, hn.symm, hp.symm, by simpa [hqeq] using hq⟩
      · exact ih.2 t (by omega) ht
    · dsimp [P]
      exact ⟨hprevLevel.symm, by intro t htl ht; omega⟩
    · exact Nat.zero_le level
  dsimp [P] at hrecover
  have hx0BA : runB.out.transcript.x0 = runA.out.transcript.x0 := by
    have hzeroB := roundPrev_zero hchainB (by omega : 0 < μ)
    have hzeroA := roundPrev_zero hpath.chaining (by omega : 0 < μ)
    exact hzeroB.symm.trans (hrecover.1.trans hzeroA)
  have hroot := sharedRootData_of_x0 stmt adv hsupportA hsupportB hgoodA.1 hgoodB.1
    hslotA hslotB hrankA hrankB hprefix hinputA hinputB
    hgoodA.2.2.2.2.1 hgoodB.2.2.2.2.1 hgoodA.2.2.2.2.2 hx0BA.symm
  refine ⟨hpath.slot_strict, hroot.1.symm.trans hpath.randomizer,
    hx0BA.trans hpath.x0, hroot.2.1.symm.trans hpath.ipAb,
    hroot.2.2.symm.trans hpath.aggC, ?_, hchainB⟩
  intro j hj hjμ
  have hfields := hrecover.2 j (Nat.zero_le j) hj
  have hrootFields := hpath.round j hj hjμ
  exact ⟨hfields.1.trans hrootFields.1,
    hfields.2.1.trans hrootFields.2.1,
    hfields.2.2.1.trans hrootFields.2.2.1,
    hfields.2.2.2.1.trans hrootFields.2.2.2.1,
    hrootFields.2.2.2.2.1, hfields.2.2.2.2⟩

private theorem tree_to_acceptTree_aux
    [Field F] [AddCommGroup G1] [Module F G1]
    [AddCommGroup G2] [Module F G2] [AddCommGroup GT] [Module F GT]
    [DecidableEq F] [DecidableEq G1] [DecidableEq G2] [DecidableEq GT]
    {μ : Nat}
    (stmt : FsStatement μ F G1 G2 GT)
    (adv : OracleComp (unifSpec + SnarkpackFsSpec F G1 G2 GT) (Proof μ F G1 G2 GT))
    (qb : (FsWrappedSpec F).Domain → Nat)
    (hbindV : KzgStructuredKeyBinding stmt.srsV stmt.acceptV)
    (hbindW : KzgStructuredKeyBinding stmt.srsW stmt.acceptW)
    {depth level : Nat} (hsize : level + depth = μ)
    {lower : Option (Fin (qb (Sum.inr ()) + 1))}
    {tree : RunTree (FsWrappedSpec F)
      (WrappedFsRun
        (FsPoint (F := F) (G1 := G1) (G2 := G2) (GT := GT))
        (FsResult μ F G1 G2 GT)) depth}
    (hconsistent : TreeConsistent (wrapFs (FsGame stmt adv)) qb (Sum.inr ())
      (fun level run => roundSlot (qb (Sum.inr ())) level run)
      (fun run => WrappedRunGood (qb (Sum.inr ())) stmt run.1 run.2)
      level lower tree)
    (hgood : tree.All (fun run => WrappedRunGood (qb (Sum.inr ())) stmt run.1 run.2))
    (root : WrappedFsRun
      (FsPoint (F := F) (G1 := G1) (G2 := G2) (GT := GT))
      (FsResult μ F G1 G2 GT))
    (slot : Nat → Fin (qb (Sum.inr ()) + 1))
    (hpath : PathPrefix (qb (Sum.inr ())) level slot root tree.root.1)
    (hlower : lower = if level = 0 then none else some (slot (level - 1))) :
    let r := root.out.transcript.randomizer
    let folded := foldRoundsUpTo root.out.transcript.roundAnswer root.out.proof.rounds
      { comA := stmt.ComA, comB := stmt.ComB,
        comT := (root.out.proof.ipAb, root.out.proof.aggC) }
      level depth hsize
    AcceptTree (u4ACommitAtom stmt.e) (u4BCommitAtom stmt.e) u4TCommitMap
      (u4TLanePairing stmt.e) depth
      (foldKeysUpTo id root.out.transcript.roundAnswer
        (fun i => (stmt.srsV i, stmt.srsV i)) level depth hsize)
      (foldKeysUpTo gipaChallenge root.out.transcript.roundAnswer
        (fun i => (r ^ (i : Nat))⁻¹ • stmt.srsW i) level depth hsize)
      (foldKeysUpTo id root.out.transcript.roundAnswer
        (fun i => r ^ (i : Nat)) level depth hsize)
      (u4AEmbedding folded.comA) (u4BEmbedding folded.comB)
      (u4TCommitMap folded.comT) := by
  induction hconsistent generalizing root slot with
  | leaf level lower run hsupport hgate =>
      have hlevel : level = μ := by omega
      subst level
      dsimp only [RunTree.root] at hpath hgood ⊢
      obtain ⟨sourceLog, htrace, hlog, hsource⟩ :=
        wrapFs_support_exists_source (FsGame stmt adv) hsupport
      have hleaf : LeafData stmt run.1.out.proof run.1.out.transcript := by
        exact ((wrapped_source_leaf_data stmt adv hsource).2 hgood.1).2.2.1
      have hbase := leafData_to_base_components stmt run.1.out.proof
        run.1.out.transcript hbindV hbindW hleaf
      have hx (j : Nat) (hj : j < μ) :
          root.out.transcript.roundAnswer ⟨j, hj⟩ =
            run.1.out.transcript.roundAnswer ⟨j, hj⟩ :=
        (hpath.round j (by omega) hj).1.symm
      have hrounds (j : Nat) (hj : j < μ) :
          root.out.proof.rounds ⟨j, hj⟩ = run.1.out.proof.rounds ⟨j, hj⟩ :=
        (hpath.round j (by omega) hj).2.1.symm
      have hfold :
          foldRoundsUpTo root.out.transcript.roundAnswer root.out.proof.rounds
              { comA := stmt.ComA, comB := stmt.ComB,
                comT := (root.out.proof.ipAb, root.out.proof.aggC) }
              μ 0 hsize =
            terminalFold stmt.ComA stmt.ComB run.1.out.proof
              run.1.out.transcript.roundAnswer := by
        calc
          _ = foldRoundsUpTo run.1.out.transcript.roundAnswer run.1.out.proof.rounds
                { comA := stmt.ComA, comB := stmt.ComB,
                  comT := (run.1.out.proof.ipAb, run.1.out.proof.aggC) }
                μ 0 (by omega) := by
              rw [← hpath.ipAb, ← hpath.aggC]
              apply foldRoundsUpTo_congr
              · exact hx
              · exact hrounds
          _ = _ := foldRoundsUpTo_complete stmt.ComA stmt.ComB run.1.out.proof _
      have hkeyA :
          foldKeysUpTo id root.out.transcript.roundAnswer
              (fun i => (stmt.srsV i, stmt.srsV i)) μ 0 hsize =
            foldKey (reversedView run.1.out.transcript.roundAnswer)
              (fun i => (stmt.srsV i, stmt.srsV i)) := by
        calc
          _ = foldKeysUpTo id run.1.out.transcript.roundAnswer
                (fun i => (stmt.srsV i, stmt.srsV i)) μ 0 (by omega) := by
              apply foldKeysUpTo_congr
              exact hx
          _ = _ := foldKeysUpTo_complete id _ _
      have hkeyB :
          foldKeysUpTo gipaChallenge root.out.transcript.roundAnswer
              (fun i => (root.out.transcript.randomizer ^ (i : Nat))⁻¹ • stmt.srsW i)
              μ 0 hsize =
            foldKey (fun i => gipaChallenge
                (reversedView run.1.out.transcript.roundAnswer i))
              (fun i => run.1.out.transcript.randomizer⁻¹ ^ (i : Nat) • stmt.srsW i) := by
        calc
          _ = foldKeysUpTo gipaChallenge run.1.out.transcript.roundAnswer
                (fun i => (run.1.out.transcript.randomizer ^ (i : Nat))⁻¹ • stmt.srsW i)
                μ 0 (by omega) := by
              rw [← hpath.randomizer]
              apply foldKeysUpTo_congr
              exact hx
          _ = foldKey (reversedView (fun i =>
                gipaChallenge (run.1.out.transcript.roundAnswer i)))
                (fun i => (run.1.out.transcript.randomizer ^ (i : Nat))⁻¹ • stmt.srsW i) :=
              foldKeysUpTo_complete gipaChallenge _ _
          _ = _ := by
            congr 2
            funext i
            rw [inv_pow_eq_pow_inv]
      have hpub :
          foldKeysUpTo id root.out.transcript.roundAnswer
              (fun i => root.out.transcript.randomizer ^ (i : Nat)) μ 0 hsize =
            foldKey (reversedView run.1.out.transcript.roundAnswer)
              (fun i => run.1.out.transcript.randomizer ^ (i : Nat)) := by
        calc
          _ = foldKeysUpTo id run.1.out.transcript.roundAnswer
                (fun i => run.1.out.transcript.randomizer ^ (i : Nat)) μ 0 (by omega) := by
              rw [← hpath.randomizer]
              apply foldKeysUpTo_congr
              exact hx
          _ = foldKey (reversedView run.1.out.transcript.roundAnswer)
                (fun i => run.1.out.transcript.randomizer ^ (i : Nat)) :=
              foldKeysUpTo_complete id _ _
      have hpub0 :
          (foldKeysUpTo id root.out.transcript.roundAnswer
              (fun i => root.out.transcript.randomizer ^ (i : Nat)) μ 0 hsize) 0 =
            terminalR run.1.out.transcript.randomizer
              (reversedView run.1.out.transcript.roundAnswer) :=
        (congrFun hpub 0).trans (foldKey_public_eq_terminalR _ _)
      refine .base (run.1.out.proof.aFinal, run.1.out.proof.cFinal)
        run.1.out.proof.bFinal ?_ ?_ ?_
      · change u4AEmbedding _ = u4AEmbedding (u4ALaneAtom stmt.e _ _)
        apply congrArg u4AEmbedding
        calc
          _ = (terminalFold stmt.ComA stmt.ComB run.1.out.proof
                run.1.out.transcript.roundAnswer).comA := congrArg FoldedValues.comA hfold
          _ = u4ALaneAtom stmt.e
                ((foldKey (reversedView run.1.out.transcript.roundAnswer)
                  (fun i => (stmt.srsV i, stmt.srsV i))) 0)
                (run.1.out.proof.aFinal, run.1.out.proof.cFinal) := hbase.1
          _ = _ := by rw [hkeyA]
      · change u4BEmbedding _ = u4BEmbedding (u4BLaneAtom stmt.e _ _)
        apply congrArg u4BEmbedding
        calc
          _ = (terminalFold stmt.ComA stmt.ComB run.1.out.proof
                run.1.out.transcript.roundAnswer).comB := congrArg FoldedValues.comB hfold
          _ = u4BLaneAtom stmt.e
                ((foldKey (fun i => gipaChallenge
                    (reversedView run.1.out.transcript.roundAnswer i))
                  (fun i => run.1.out.transcript.randomizer⁻¹ ^ (i : Nat) • stmt.srsW i)) 0)
                run.1.out.proof.bFinal := hbase.2.1
          _ = _ := by rw [hkeyB]
      · change u4TCommitMap _ = u4TCommitMap (u4TLanePairing stmt.e _ (_, _))
        apply congrArg u4TCommitMap
        calc
          _ = (terminalFold stmt.ComA stmt.ComB run.1.out.proof
                run.1.out.transcript.roundAnswer).comT := congrArg FoldedValues.comT hfold
          _ = u4TLanePairing stmt.e
                (run.1.out.proof.aFinal, run.1.out.proof.cFinal)
                (run.1.out.proof.bFinal,
                  terminalR run.1.out.transcript.randomizer
                    (reversedView run.1.out.transcript.roundAnswer)) := hbase.2.2
          _ = _ := by rw [hpub0]
  | @node level lower depth children s answers cursor slotPos hcf hinjective hanswers
      hcursor hprefix hslotPos hslotInput hslotRank hprefixValues hstrict hchildren ih =>
      dsimp only [RunTree.root] at hpath ⊢
      change Fin 4 → F at answers
      have hlevel : level < μ := by omega
      have hlevelPos : 0 < level ∨ level = 0 := Nat.eq_zero_or_pos level |>.symm
      have hgreater : ∀ j, j < level → slot j < s := by
        intro j hj
        rcases hlevelPos with hpos | rfl
        · have hlower' : lower = some (slot (level - 1)) := by
            simpa [Nat.ne_of_gt hpos] using hlower
          have hlast : slot (level - 1) < s := hstrict _ hlower'
          by_cases hjlast : j = level - 1
          · simpa [hjlast] using hlast
          · exact lt_trans (hpath.slot_strict j (level - 1) (by omega) (by omega)) hlast
        · omega
      have hsupport (k : Fin 4) : (children k).root ∈ support
          (replayFirstRun (wrapFs (FsGame stmt adv))) :=
        (TreeConsistent.all_support (wrapFs (FsGame stmt adv)) qb (Sum.inr ())
          (fun level run => roundSlot (qb (Sum.inr ())) level run)
          (fun run => WrappedRunGood (qb (Sum.inr ())) stmt run.1 run.2)
          (hchildren k)).root
      have hgoodRoot (k : Fin 4) :
          WrappedRunGood (qb (Sum.inr ())) stmt (children k).root.1 (children k).root.2 :=
        (hgood k).root
      have hrank (k : Fin 4) :
          structuredMissCountBefore (children k).root.2 slotPos = (s : Nat) := by
        simpa [structuredMissCountBefore] using hslotRank k
      have hpathK (k : Fin 4) :
          PathPrefix (qb (Sum.inr ())) level slot root (children k).root.1 := by
        exact PathPrefix.preserveChild hlevel stmt adv (hsupport 0) (hsupport k)
          (hgoodRoot 0) (hgoodRoot k) hpath hgreater (hcf 0) (hcf k)
          (hrank 0) (hrank k) (hprefixValues 0 k)
          (hslotInput 0) (hslotInput k)
      have hanswer (k : Fin 4) :
          (children k).root.1.out.transcript.roundAnswer ⟨level, hlevel⟩ = answers k := by
        have ha := wrapped_roundSlot_answer_eq_transcript stmt adv ⟨level, hlevel⟩
          (hsupport k) (hgoodRoot k).1 (hcf k)
        exact Option.some.inj (ha.symm.trans (hanswers k))
      have htrace (k : Fin 4) :
          (children 0).root.1.trace.take ((s : Nat) + 1) =
            (children k).root.1.trace.take ((s : Nat) + 1) := by
        have ht := trace_prefix_of_log_prefix (FsGame stmt adv) slotPos
          (hsupport 0) (hsupport k) (hprefixValues 0 k)
          (hslotInput 0) (hslotInput k)
        simpa [hrank 0] using ht
      have hround (k : Fin 4) :
          (children k).root.1.out.proof.rounds ⟨level, hlevel⟩ =
            (children 0).root.1.out.proof.rounds ⟨level, hlevel⟩ := by
        have hp := selectedRoundPoint_eq_of_prefix hlevel (hcf 0) (hcf k)
          (hrank 0) (by simpa [hrank 0] using htrace k)
        injection hp with _ hr _
        exact hr.symm
      have hkeyA (k : Fin 4) :
          foldKeysUpTo id (children k).root.1.out.transcript.roundAnswer
              (fun i => (stmt.srsV i, stmt.srsV i)) (level + 1) depth (by omega) =
            foldPow depth (answers k)
              (foldKeysUpTo id root.out.transcript.roundAnswer
                (fun i => (stmt.srsV i, stmt.srsV i)) level (depth + 1) (by omega)) := by
        rw [foldKeysUpTo_succ, hanswer]
        congr 1
        apply foldKeysUpTo_congr
        intro j hj
        exact (hpathK k).round j hj (by omega) |>.1
      have hkeyB (k : Fin 4) :
          foldKeysUpTo gipaChallenge (children k).root.1.out.transcript.roundAnswer
              (fun i => ((children k).root.1.out.transcript.randomizer ^ (i : Nat))⁻¹ •
                stmt.srsW i) (level + 1) depth (by omega) =
            foldPow depth (answers k)⁻¹
              (foldKeysUpTo gipaChallenge root.out.transcript.roundAnswer
                (fun i => (root.out.transcript.randomizer ^ (i : Nat))⁻¹ • stmt.srsW i)
                level (depth + 1) (by omega)) := by
        rw [foldKeysUpTo_succ, hanswer, gipaChallenge]
        congr 1
        rw [(hpathK k).randomizer]
        apply foldKeysUpTo_congr
        intro j hj
        exact (hpathK k).round j hj (by omega) |>.1
      have hpub (k : Fin 4) :
          foldKeysUpTo id (children k).root.1.out.transcript.roundAnswer
              (fun i => (children k).root.1.out.transcript.randomizer ^ (i : Nat))
              (level + 1) depth (by omega) =
            foldPow depth (answers k)
              (foldKeysUpTo id root.out.transcript.roundAnswer
                (fun i => root.out.transcript.randomizer ^ (i : Nat))
                level (depth + 1) (by omega)) := by
        rw [foldKeysUpTo_succ, hanswer]
        congr 1
        rw [(hpathK k).randomizer]
        apply foldKeysUpTo_congr
        intro j hj
        exact (hpathK k).round j hj (by omega) |>.1
      have hfold (k : Fin 4) :
          foldRoundsUpTo (children k).root.1.out.transcript.roundAnswer
              (children k).root.1.out.proof.rounds
              { comA := stmt.ComA, comB := stmt.ComB,
                comT := ((children k).root.1.out.proof.ipAb,
                  (children k).root.1.out.proof.aggC) }
              (level + 1) depth (by omega) =
            foldOne (answers k)
              ((children 0).root.1.out.proof.rounds ⟨level, hlevel⟩)
              (foldRoundsUpTo root.out.transcript.roundAnswer root.out.proof.rounds
                { comA := stmt.ComA, comB := stmt.ComB,
                  comT := (root.out.proof.ipAb, root.out.proof.aggC) }
                level (depth + 1) (by omega)) := by
        rw [foldRoundsUpTo_succ, hanswer, hround]
        congr 1
        rw [(hpathK k).ipAb, (hpathK k).aggC]
        apply foldRoundsUpTo_congr
        · intro j hj
          exact (hpathK k).round j hj (by omega) |>.1
        · intro j hj
          exact (hpathK k).round j hj (by omega) |>.2.1
      have hchild (k : Fin 4) :
          AcceptTree (u4ACommitAtom stmt.e) (u4BCommitAtom stmt.e) u4TCommitMap
            (u4TLanePairing stmt.e) depth
            (foldPow depth (answers k)
              (foldKeysUpTo id root.out.transcript.roundAnswer
                (fun i => (stmt.srsV i, stmt.srsV i)) level (depth + 1) (by omega)))
            (foldPow depth (answers k)⁻¹
              (foldKeysUpTo gipaChallenge root.out.transcript.roundAnswer
                (fun i => (root.out.transcript.randomizer ^ (i : Nat))⁻¹ • stmt.srsW i)
                level (depth + 1) (by omega)))
            (foldPow depth (answers k)
              (foldKeysUpTo id root.out.transcript.roundAnswer
                (fun i => root.out.transcript.randomizer ^ (i : Nat))
                level (depth + 1) (by omega)))
            (foldCom (answers k)⁻¹
              (u4AEmbedding ((children 0).root.1.out.proof.rounds ⟨level, hlevel⟩).LA)
              (u4AEmbedding (foldRoundsUpTo root.out.transcript.roundAnswer
                root.out.proof.rounds
                { comA := stmt.ComA, comB := stmt.ComB,
                  comT := (root.out.proof.ipAb, root.out.proof.aggC) }
                level (depth + 1) (by omega)).comA)
              (u4AEmbedding ((children 0).root.1.out.proof.rounds ⟨level, hlevel⟩).RA))
            (foldCom (answers k)⁻¹
              (u4BEmbedding ((children 0).root.1.out.proof.rounds ⟨level, hlevel⟩).LB)
              (u4BEmbedding (foldRoundsUpTo root.out.transcript.roundAnswer
                root.out.proof.rounds
                { comA := stmt.ComA, comB := stmt.ComB,
                  comT := (root.out.proof.ipAb, root.out.proof.aggC) }
                level (depth + 1) (by omega)).comB)
              (u4BEmbedding ((children 0).root.1.out.proof.rounds ⟨level, hlevel⟩).RB))
            (foldCom (answers k)⁻¹
              (u4TCommitMap ((children 0).root.1.out.proof.rounds ⟨level, hlevel⟩).LT)
              (u4TCommitMap (foldRoundsUpTo root.out.transcript.roundAnswer
                root.out.proof.rounds
                { comA := stmt.ComA, comB := stmt.ComB,
                  comT := (root.out.proof.ipAb, root.out.proof.aggC) }
                level (depth + 1) (by omega)).comT)
              (u4TCommitMap ((children 0).root.1.out.proof.rounds ⟨level, hlevel⟩).RT)) := by
        have hself : PathPrefix (qb (Sum.inr ())) level slot
            (children k).root.1 (children k).root.1 :=
          PathPrefix.refl (children k).root.1 slot (hpathK k).slot_strict
            (fun j hj hjμ => ((hpathK k).round j hj hjμ).2.2.2.2.2)
            (hpathK k).chaining
        have hext := PathPrefix.extend hlevel hself hgreater rfl rfl rfl rfl
          (hcf k) (hcf k)
        have hc := ih k (hsize := by omega) (hgood k) (children k).root.1
          (extendPathSlot level slot s) hext (by simp [extendPathSlot])
        dsimp only at hc
        rw [hkeyA k, hkeyB k, hpub k, hfold k] at hc
        simpa only [foldOne, foldCom_map] using hc
      apply acceptTree_node_of_answers (u4ACommitAtom stmt.e) (u4BCommitAtom stmt.e)
        u4TCommitMap (u4TLanePairing stmt.e)
        (u4AEmbedding ((children 0).root.1.out.proof.rounds ⟨level, hlevel⟩).LA)
        (u4AEmbedding ((children 0).root.1.out.proof.rounds ⟨level, hlevel⟩).RA)
        (u4BEmbedding ((children 0).root.1.out.proof.rounds ⟨level, hlevel⟩).LB)
        (u4BEmbedding ((children 0).root.1.out.proof.rounds ⟨level, hlevel⟩).RB)
        (u4TCommitMap ((children 0).root.1.out.proof.rounds ⟨level, hlevel⟩).LT)
        (u4TCommitMap ((children 0).root.1.out.proof.rounds ⟨level, hlevel⟩).RT)
        answers hinjective
      · intro k
        rw [← hanswer k]
        exact (hgoodRoot k).2.1.2.2.2.1 ⟨level, hlevel⟩
      · exact hchild

/-- Assemble the wrapped U5c replay tree into the product-lane `AcceptTree`
consumed by `u4_capstone` (DESIGN §U5d(4); `tipp-mipp.gipa`,
`fs.stage-labels`).

The proof threads ancestor-prefix correspondence, shared root data, and the
three truncated fold accumulators through the replay-tree induction. -/
theorem tree_to_acceptTree
    [Field F] [AddCommGroup G1] [Module F G1]
    [AddCommGroup G2] [Module F G2] [AddCommGroup GT] [Module F GT]
    [DecidableEq F] [DecidableEq G1] [DecidableEq G2] [DecidableEq GT]
    {μ : Nat}
    (stmt : FsStatement μ F G1 G2 GT)
    (adv : OracleComp (unifSpec + SnarkpackFsSpec F G1 G2 GT) (Proof μ F G1 G2 GT))
    (qb : (FsWrappedSpec F).Domain → Nat)
    (hbindV : KzgStructuredKeyBinding stmt.srsV stmt.acceptV)
    (hbindW : KzgStructuredKeyBinding stmt.srsW stmt.acceptW)
    {tree : RunTree (FsWrappedSpec F)
      (WrappedFsRun
        (FsPoint (F := F) (G1 := G1) (G2 := G2) (GT := GT))
        (FsResult μ F G1 G2 GT)) μ}
    (hconsistent : TreeConsistent (wrapFs (FsGame stmt adv)) qb (Sum.inr ())
      (fun level run => roundSlot (qb (Sum.inr ())) level run)
      (fun run => WrappedRunGood (qb (Sum.inr ())) stmt run.1 run.2)
      0 none tree) :
    let r := tree.root.1.out.transcript.randomizer
    AcceptTree (u4ACommitAtom stmt.e) (u4BCommitAtom stmt.e) u4TCommitMap
      (u4TLanePairing stmt.e) μ
      (fun i => (stmt.srsV i, stmt.srsV i))
      (fun i => (r ^ (i : Nat))⁻¹ • stmt.srsW i)
      (fun i => r ^ (i : Nat))
      (u4AEmbedding stmt.ComA) (u4BEmbedding stmt.ComB)
      (u4TCommitMap (tree.root.1.out.proof.ipAb, tree.root.1.out.proof.aggC)) := by
  have hsupport := TreeConsistent.all_support (wrapFs (FsGame stmt adv)) qb
    (Sum.inr ()) (fun level run => roundSlot (qb (Sum.inr ())) level run)
    (fun run => WrappedRunGood (qb (Sum.inr ())) stmt run.1 run.2) hconsistent
  have hgood := hconsistent.all_leafOk
  have hchain := wrapped_supports_transcript_chaining stmt adv hsupport.root hgood.root.1
  apply tree_to_acceptTree_aux stmt adv qb hbindV hbindW (hsize := by omega)
    hconsistent hgood tree.root.1 (fun _ => 0)
  · exact PathPrefix.refl tree.root.1 (fun _ => 0)
      (by intro a b hab hb; omega) (by intro j hj; omega) hchain
  · rfl

noncomputable local instance wrappedRunGoodDecidablePred
    [Field F] [AddCommGroup G1] [Module F G1]
    [AddCommGroup G2] [Module F G2] [AddCommGroup GT] [Module F GT]
    [DecidableEq F] [DecidableEq G1] [DecidableEq G2] [DecidableEq GT]
    {μ : Nat} (stmt : FsStatement μ F G1 G2 GT) (qb : Nat) :
    DecidablePred (fun run :
      WrappedFsRun
        (FsPoint (F := F) (G1 := G1) (G2 := G2) (GT := GT))
        (FsResult μ F G1 G2 GT) × QueryLog (FsWrappedSpec F) =>
      WrappedRunGood qb stmt run.1 run.2) :=
  fun _ => Classical.propDecidable _

/-- A bounded `roundSlot` always points at a recorded wrapped query. -/
theorem fs_roundSlot_reachable
    [Field F] [AddCommGroup G1] [Module F G1]
    [AddCommGroup G2] [Module F G2] [AddCommGroup GT] [Module F GT]
    [DecidableEq F] [DecidableEq G1] [DecidableEq G2] [DecidableEq GT]
    {μ : Nat}
    (stmt : FsStatement μ F G1 G2 GT)
    (adv : OracleComp (unifSpec + SnarkpackFsSpec F G1 G2 GT)
      (Proof μ F G1 G2 GT))
    (qb : (FsWrappedSpec F).Domain → Nat) (level : Nat) :
    CfReachable (wrapFs (FsGame stmt adv)) qb (Sum.inr ())
      (roundSlot (qb (Sum.inr ())) level) := by
  intro run log hrun slot hslot
  obtain ⟨sourceLog, htrace, hlog, _⟩ :=
    wrapFs_support_exists_source (FsGame stmt adv) hrun
  have hrun' : ({ out := run.out, trace := fsPointTrace sourceLog } :
      WrappedFsRun
        (FsPoint (F := F) (G1 := G1) (G2 := G2) (GT := GT))
        (FsResult μ F G1 G2 GT)) = run := by
    cases run
    simp_all
  have hslot' : roundSlot (qb (Sum.inr ())) level
      ({ out := run.out, trace := fsPointTrace sourceLog } :
        WrappedFsRun
          (FsPoint (F := F) (G1 := G1) (G2 := G2) (GT := GT))
          (FsResult μ F G1 G2 GT)) = some slot := by
    simpa [hrun'] using hslot
  have hlevel : level < μ := by
    by_contra hμ
    simp [roundSlot, wrappedRoundPoint, hμ] at hslot'
  have hpos := roundSlot_tracePos
    ({ out := run.out, trace := fsPointTrace sourceLog } :
      WrappedFsRun
        (FsPoint (F := F) (G1 := G1) (G2 := G2) (GT := GT))
        (FsResult μ F G1 G2 GT)) hlevel hslot'
  obtain ⟨hi, _⟩ := tracePos_get hpos
  have hi' : (slot : Nat) < (fsPointTrace sourceLog).length := by
    simpa [hrun'] using hi
  obtain ⟨value, _, hvalue⟩ := fsPointTrace_flatten_at sourceLog (slot : Nat) hi'
  rw [hlog]
  exact Option.isSome_iff_exists.mpr ⟨value, hvalue⟩

/-- `WrappedRunGood` excludes exactly the unqueried alternative. -/
theorem fs_roundSlot_selector_total
    [Field F] [AddCommGroup G1] [Module F G1]
    [AddCommGroup G2] [Module F G2] [AddCommGroup GT] [Module F GT]
    [DecidableEq F] [DecidableEq G1] [DecidableEq G2] [DecidableEq GT]
    {μ : Nat}
    (stmt : FsStatement μ F G1 G2 GT)
    (adv : OracleComp (unifSpec + SnarkpackFsSpec F G1 G2 GT)
      (Proof μ F G1 G2 GT))
    (qb : Nat) {first :
      WrappedFsRun
        (FsPoint (F := F) (G1 := G1) (G2 := G2) (GT := GT))
        (FsResult μ F G1 G2 GT) × QueryLog (FsWrappedSpec F)}
    (_hfirst : first ∈ support
      (replayFirstRun (wrapFs (FsGame stmt adv))))
    (hgood : WrappedRunGood qb stmt first.1 first.2) :
    ∀ level, level < μ → ∃ s, roundSlot qb level first.1 = some s := by
  intro level hlevel
  exact (roundSlot_some_or_unqueried qb level first.1).resolve_right
    (hgood.2.2.1 level hlevel)

/-- The chronological-round conjunct in every successful leaf gate supplies
the cross-level selector order required by combined replay. -/
theorem fs_roundSlot_order
    [Field F] [AddCommGroup G1] [Module F G1]
    [AddCommGroup G2] [Module F G2] [AddCommGroup GT] [Module F GT]
    [DecidableEq F] [DecidableEq G1] [DecidableEq G2] [DecidableEq GT]
    [IsUniformSpec (FsWrappedSpec F)]
    [∀ j, SampleableType ((FsWrappedSpec F).Range j)]
    [unifSpec ⊂ₒ FsWrappedSpec F]
    {μ : Nat}
    (stmt : FsStatement μ F G1 G2 GT)
    (adv : OracleComp (unifSpec + SnarkpackFsSpec F G1 G2 GT)
      (Proof μ F G1 G2 GT))
    (qb : (FsWrappedSpec F).Domain → Nat) :
    ∀ {depth} (hdepth : depth < μ)
      {tree : RunTree (FsWrappedSpec F)
        (WrappedFsRun
          (FsPoint (F := F) (G1 := G1) (G2 := G2) (GT := GT))
          (FsResult μ F G1 G2 GT)) depth}
      {outerLog : QueryLog (FsWrappedSpec F)},
      (some tree, outerLog) ∈ support (replayFirstRun
        (forkTreeCombined μ (wrapFs (FsGame stmt adv)) qb (Sum.inr ())
          (fun level run => roundSlot (qb (Sum.inr ())) level run)
          (fun run => WrappedRunGood (qb (Sum.inr ())) stmt run.1 run.2)
          depth (Nat.le_of_lt hdepth))) →
      ∀ {selected next},
        roundSlot (qb (Sum.inr ())) (combinedLevel μ depth hdepth)
          tree.root.1 = some selected →
        treeFirstSlot
          (fun level run => roundSlot (qb (Sum.inr ())) level run)
          μ depth tree = some next →
        selected < next := by
  intro depth hdepth tree outerLog hrun selected next hselected hfirst
  have hgood := forkTreeCombined_support_all_leafOk μ depth
    (Nat.le_of_lt hdepth) (wrapFs (FsGame stmt adv)) qb (Sum.inr ())
    (fun level run => roundSlot (qb (Sum.inr ())) level run)
    (fun run => WrappedRunGood (qb (Sum.inr ())) stmt run.1 run.2)
    (fun level _ => fs_roundSlot_reachable stmt adv qb level) hrun
  have hrootGood := hgood.root
  have hpos : 0 < depth := by
    by_contra h
    have : depth = 0 := Nat.eq_zero_of_not_pos h
    subst depth
    simp [treeFirstSlot] at hfirst
  have hnext : roundSlot (qb (Sum.inr ())) (μ - depth) tree.root.1 = some next := by
    simpa [treeFirstSlot, hpos] using hfirst
  have hearlier : μ - (depth + 1) < μ - depth := by omega
  have hlater : μ - depth < μ := by omega
  apply hrootGood.2.2.2.1 (μ - (depth + 1)) (μ - depth) hearlier hlater
  · simpa [combinedLevel] using hselected
  · exact hnext

/-- FS specialization of the combined-tree probability recurrence. Cross-round
slot order is discharged from `WrappedRunGood`, not supplied by the caller. -/
theorem fsFork_bound
    [Field F] [AddCommGroup G1] [Module F G1]
    [AddCommGroup G2] [Module F G2] [AddCommGroup GT] [Module F GT]
    [DecidableEq F] [DecidableEq G1] [DecidableEq G2] [DecidableEq GT]
    [IsUniformSpec (FsWrappedSpec F)]
    [∀ j, SampleableType ((FsWrappedSpec F).Range j)]
    [unifSpec ⊂ₒ FsWrappedSpec F] [unifSpec ˡ⊂ₒ FsWrappedSpec F]
    {μ : Nat}
    (stmt : FsStatement μ F G1 G2 GT)
    (adv : OracleComp (unifSpec + SnarkpackFsSpec F G1 G2 GT)
      (Proof μ F G1 G2 GT))
    (qb : (FsWrappedSpec F).Domain → Nat) :
    ((forkTreeStep (qb (Sum.inr ()) + 1)
        (Fintype.card ((FsWrappedSpec F).Range (Sum.inr ()))))^[μ])
        (Pr[fun run => WrappedRunGood (qb (Sum.inr ())) stmt run.1 run.2 |
          replayFirstRun (wrapFs (FsGame stmt adv))]) ≤
      Pr[fun tree : Option (RunTree (FsWrappedSpec F)
          (WrappedFsRun
            (FsPoint (F := F) (G1 := G1) (G2 := G2) (GT := GT))
            (FsResult μ F G1 G2 GT)) μ) => tree.isSome |
        forkTreeCombined μ (wrapFs (FsGame stmt adv)) qb (Sum.inr ())
          (fun level run => roundSlot (qb (Sum.inr ())) level run)
          (fun run => WrappedRunGood (qb (Sum.inr ())) stmt run.1 run.2)
          μ (Nat.le_refl μ)] := by
  apply forkTree_bound μ (wrapFs (FsGame stmt adv)) qb (Sum.inr ())
    (fun level run => roundSlot (qb (Sum.inr ())) level run)
    (fun run => WrappedRunGood (qb (Sum.inr ())) stmt run.1 run.2)
  · intro level hlevel
    exact fs_roundSlot_reachable stmt adv qb level
  · intro first hfirst hgood
    exact fs_roundSlot_selector_total stmt adv (qb (Sum.inr ())) hfirst hgood
  · exact fs_roundSlot_order stmt adv qb

/-- Support-level U5d endpoint: successful wrapped combined-tree construction,
together with accepting good leaves, yields the exact `AcceptTree` statement
consumed by `u4_capstone`. Probability accounting is deferred to U5e. -/
theorem fsFork_success_acceptTree
    [Field F] [AddCommGroup G1] [Module F G1]
    [AddCommGroup G2] [Module F G2] [AddCommGroup GT] [Module F GT]
    [DecidableEq F] [DecidableEq G1] [DecidableEq G2] [DecidableEq GT]
    [IsUniformSpec (FsWrappedSpec F)]
    [∀ j, SampleableType ((FsWrappedSpec F).Range j)]
    [unifSpec ⊂ₒ FsWrappedSpec F]
    {μ : Nat}
    (stmt : FsStatement μ F G1 G2 GT)
    (adv : OracleComp (unifSpec + SnarkpackFsSpec F G1 G2 GT) (Proof μ F G1 G2 GT))
    (qb : (FsWrappedSpec F).Domain → Nat)
    (hbindV : KzgStructuredKeyBinding stmt.srsV stmt.acceptV)
    (hbindW : KzgStructuredKeyBinding stmt.srsW stmt.acceptW)
    {tree : RunTree (FsWrappedSpec F)
      (WrappedFsRun
        (FsPoint (F := F) (G1 := G1) (G2 := G2) (GT := GT))
        (FsResult μ F G1 G2 GT)) μ}
    (hsuccess : some tree ∈ support
      (forkTreeCombined μ (wrapFs (FsGame stmt adv)) qb (Sum.inr ())
        (fun level run => roundSlot (qb (Sum.inr ())) level run)
        (fun run => WrappedRunGood (qb (Sum.inr ())) stmt run.1 run.2)
        μ (Nat.le_refl μ))) :
    let r := tree.root.1.out.transcript.randomizer
    AcceptTree (u4ACommitAtom stmt.e) (u4BCommitAtom stmt.e) u4TCommitMap
      (u4TLanePairing stmt.e) μ
      (fun i => (stmt.srsV i, stmt.srsV i))
      (fun i => (r ^ (i : Nat))⁻¹ • stmt.srsW i)
      (fun i => r ^ (i : Nat))
      (u4AEmbedding stmt.ComA) (u4BEmbedding stmt.ComB)
      (u4TCommitMap (tree.root.1.out.proof.ipAb, tree.root.1.out.proof.aggC)) := by
  apply tree_to_acceptTree stmt adv qb hbindV hbindW
    (forkTreeCombined_support_props μ (wrapFs (FsGame stmt adv)) qb (Sum.inr ())
      (fun level run => roundSlot (qb (Sum.inr ())) level run)
      (fun run => WrappedRunGood (qb (Sum.inr ())) stmt run.1 run.2)
      (fun level hlevel => fs_roundSlot_reachable stmt adv qb level) hsuccess)

end

end Ipp
