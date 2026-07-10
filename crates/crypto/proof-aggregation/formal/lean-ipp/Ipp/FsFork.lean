/-
U5d(4): cached single-index Fiat--Shamir wrapping and replay-tree assembly.

The wrapper runs the complete adversary-and-verifier computation through one
structured cache. Only cache misses reach the single forkable challenge index;
their structured points are recorded in miss order.

Spec rows: `tipp-mipp.gipa`, `fs.stage-labels`.
-/
import Ipp.FsGame
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
    ∀ i : Fin μ, cache1 (.round (out.prev i) (rounds i) (out.nonce i)) =
      some (out.answer i) := by
  induction μ generalizing prev cache0 with
  | zero => intro i; exact Fin.elim0 i
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
          intro i
          refine Fin.cases ?_ (fun j => ?_) i
          · have hcached := queryAccepting_cached
              (fun n => ChallengePoint.round prev (rounds 0) n) nonzeroB
              fuel 0 cache0 hsample
            exact (fsSourceOracle_cache_le
              (oa := queryRounds (G2 := G2) fuel μ x (fun k => rounds k.succ))
              cache2 (some tail, cache1) htail) hcached
          · simpa using ih x (fun k => rounds k.succ) cache2 htail j

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
      (∀ i : Fin μ, z.2 (.round (z.1.transcript.roundPrev i)
        (z.1.proof.rounds i) (z.1.transcript.roundNonce i)) =
          some (z.1.transcript.roundAnswer i)) ∧
      LeafData stmt z.1.proof z.1.transcript ∧ ChallengesAccepted z.1 := by
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
            refine ⟨?_, hacc.2.2.2.2.2.2.1, ?_⟩
            · intro i
              exact hkzgLe (hbridgeLe (hround' i))
            · exact ⟨hacc.1, hacc.2.1, hacc.2.2.1, hacc.2.2.2.1,
                hacc.2.2.2.2.1, hacc.2.2.2.2.2.1⟩

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
      (∀ i : Fin μ, z.2 (.round (z.1.transcript.roundPrev i)
        (z.1.proof.rounds i) (z.1.transcript.roundNonce i)) =
          some (z.1.transcript.roundAnswer i)) ∧
      LeafData stmt z.1.proof z.1.transcript ∧ ChallengesAccepted z.1 := by
  rw [FsGame, simulateQ_bind, StateT.run_bind, support_bind] at h
  simp only [Set.mem_iUnion] at h
  obtain ⟨⟨proof, cache1⟩, _, hverifier⟩ := h
  exact fsVerifier_cached stmt proof cache1 hverifier

/-- Replay-visible random-function runs couple the exact miss log, final
cache, verifier round answers, and accepted leaf data. -/
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
        (∀ i : Fin μ, cache (.round (out.transcript.roundPrev i)
          (out.proof.rounds i) (out.transcript.roundNonce i)) =
            some (out.transcript.roundAnswer i)) ∧
        LeafData stmt out.proof out.transcript ∧ ChallengesAccepted out) := by
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

/-- Structured cache-miss points in random-function source-log order. -/
def fsPointTrace {Point : Type} :
    QueryLog (unifSpec + (Point →ₒ F)) → List Point
  | [] => []
  | ⟨Sum.inl _, _⟩ :: rest => fsPointTrace rest
  | ⟨Sum.inr point, _⟩ :: rest => point :: fsPointTrace rest

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
  have hrun := haccepted haccept
  refine ⟨?_, ?_, hrun.2.1, hrun.2.2⟩
  · intro i
    exact hcacheLog _ _ (hrun.1 i)
  · intro i
    exact ⟨rfl, rfl⟩

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
  have hround := (haccepted haccept).1
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

/-- Acceptance and the two explicit U5a exclusions required on every wrapped
run used by U5d(4) (`fs.stage-labels`, `tipp-mipp.gipa`). -/
def WrappedRunGood
    [Zero F] [One F] [DecidableEq F] [DecidableEq G1] [DecidableEq G2] [DecidableEq GT]
    {μ : Nat} (qb : Nat)
    (run : WrappedFsRun
      (FsPoint (F := F) (G1 := G1) (G2 := G2) (GT := GT))
      (FsResult μ F G1 G2 GT)) : Prop :=
  run.out.accept = true ∧
    ChallengesAccepted run.out ∧
    ∀ level, level < μ → ¬RoundPointUnqueried qb level run

/-- Assemble the wrapped U5c replay tree into the product-lane `AcceptTree`
consumed by `u4_capstone` (DESIGN §U5d(4); `tipp-mipp.gipa`,
`fs.stage-labels`).

The remaining proof is the R6 tree/path assembly: selected answers now agree
with verifier transcripts, but ancestor-prefix correspondence and shared-root
data still need to be threaded through the induction. -/
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
      (fun level run => roundSlot (qb (Sum.inr ())) level run) 0 none tree)
    (hgood : tree.All (fun run => WrappedRunGood (qb (Sum.inr ())) run.1)) :
    let r := tree.root.1.out.transcript.randomizer
    AcceptTree (u4ACommitAtom stmt.e) (u4BCommitAtom stmt.e) u4TCommitMap
      (u4TLanePairing stmt.e) μ
      (fun i => (stmt.srsV i, stmt.srsV i))
      (fun i => (r ^ (i : Nat))⁻¹ • stmt.srsW i)
      (fun i => r ^ (i : Nat))
      (u4AEmbedding stmt.ComA) (u4BEmbedding stmt.ComB)
      (u4TCommitMap (tree.root.1.out.proof.ipAb, tree.root.1.out.proof.aggC)) := by
  sorry

/-- Support-level U5d endpoint: successful wrapped `forkTree` construction,
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
    (hsuccess : some tree ∈ support (forkTree μ (wrapFs (FsGame stmt adv)) qb
      (Sum.inr ()) (fun level run => roundSlot (qb (Sum.inr ())) level run)))
    (hgood : tree.All (fun run => WrappedRunGood (qb (Sum.inr ())) run.1)) :
    let r := tree.root.1.out.transcript.randomizer
    AcceptTree (u4ACommitAtom stmt.e) (u4BCommitAtom stmt.e) u4TCommitMap
      (u4TLanePairing stmt.e) μ
      (fun i => (stmt.srsV i, stmt.srsV i))
      (fun i => (r ^ (i : Nat))⁻¹ • stmt.srsW i)
      (fun i => r ^ (i : Nat))
      (u4AEmbedding stmt.ComA) (u4BEmbedding stmt.ComB)
      (u4TCommitMap (tree.root.1.out.proof.ipAb, tree.root.1.out.proof.aggC)) := by
  apply tree_to_acceptTree stmt adv qb hbindV hbindW
    (forkTree_support_props μ (wrapFs (FsGame stmt adv)) qb (Sum.inr ())
      (fun level run => roundSlot (qb (Sum.inr ())) level run) hsuccess)
    hgood

end

end Ipp
