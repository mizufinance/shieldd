import VCVio.OracleComp.QueryTracking.RandomOracle.Simulation

/-!
Distribution-preserving postprocessing of the range of a lazy random oracle.
The source oracle caches the full sampled value; the target oracle caches its
deterministic image.  Repeated queries therefore agree on both sides even when
the postprocessing function is not injective.
-/

open OracleSpec OracleComp
open scoped OracleSpec.PrimitiveQuery

namespace Ipp.RandomOracleMap

noncomputable section

abbrev ConstSpec (D R : Type) := D →ₒ R

def mapRangeImpl
    {D R S : Type}
    (process : D → R → S) :
    QueryImpl (ConstSpec D S) (OracleComp (ConstSpec D R)) :=
  fun input => process input <$> (ConstSpec D R).query input

def mapCache
    {D R S : Type}
    (process : D → R → S)
    (cache : (ConstSpec D R).QueryCache) :
    (ConstSpec D S).QueryCache :=
  fun input => (process input) <$> cache input

def mappedRandomOracle
    {D R S : Type}
    (process : D → R → S)
    [DecidableEq D]
    [SampleableType R] :
    QueryImpl (ConstSpec D S)
      (StateT (ConstSpec D S).QueryCache ProbComp) :=
  QueryImpl.withCaching fun input => process input <$> ($ᵗ R)

/-- Deterministic evaluation fuses through an oracle simulation: each inner
query is answered by deterministically evaluating its implementation. -/
theorem evalWithAnswerFn_simulateQ
    {ι κ α : Type}
    {inner : OracleSpec ι} {outer : OracleSpec κ}
    (answer : QueryImpl outer Id)
    (impl : QueryImpl inner (OracleComp outer))
    (oa : OracleComp inner α) :
    evalWithAnswerFn answer (simulateQ impl oa) =
      evalWithAnswerFn
        (fun q => evalWithAnswerFn answer (impl q)) oa := by
  induction oa using OracleComp.inductionOn with
  | pure output =>
      rfl
  | query_bind point continuation ih =>
      rw [simulateQ_bind, simulateQ_spec_query,
        evalWithAnswerFn_bind, evalWithAnswerFn_bind]
      exact ih (evalWithAnswerFn answer (impl point))

/-- One lazy-random-oracle query followed by a continuation, with the final
cache projected away. Keeping this reduction generic avoids repeatedly
normalizing large dependent verifier continuations. -/
theorem randomOracle_run'_query_bind
    {D R α : Type}
    [DecidableEq D] [SampleableType R]
    (point : D)
    (continuation : R → OracleComp (ConstSpec D R) α)
    (cache : (ConstSpec D R).QueryCache) :
    (simulateQ (ConstSpec D R).randomOracle
      (liftM ((ConstSpec D R).query point) >>= continuation)).run' cache =
      ((ConstSpec D R).randomOracle point).run cache >>=
        fun result : R × (ConstSpec D R).QueryCache =>
          (simulateQ (ConstSpec D R).randomOracle
            (continuation result.1)).run' result.2 := by
  rw [simulateQ_bind, simulateQ_spec_query]
  change Prod.fst <$> (
    (((ConstSpec D R).randomOracle point).run cache >>= fun result =>
      (simulateQ (ConstSpec D R).randomOracle
        (continuation result.1)).run result.2)) = _
  rw [map_bind]
  rfl

theorem mapCache_cacheQuery
    {D R S : Type}
    [DecidableEq D]
    (process : D → R → S)
    (cache : (ConstSpec D R).QueryCache)
    (input : D) (value : R) :
    mapCache process (cache.cacheQuery input value) =
      (mapCache process cache).cacheQuery input (process input value) := by
  apply OracleSpec.QueryCache.ext
  intro other
  by_cases hother : other = input
  · subst other
    simp [mapCache]
  · simp [mapCache, QueryCache.cacheQuery_of_ne, hother]

/-- Querying a lazy oracle and deterministically postprocessing its answers is
distributionally identical to lazily caching the postprocessed answers. -/
theorem evalDist_randomOracle_mapRange
    {D R S α : Type}
    [DecidableEq D]
    [SampleableType R]
    (process : D → R → S)
    (oa : OracleComp (ConstSpec D S) α)
    (cache : (ConstSpec D R).QueryCache) :
    𝒟[(simulateQ (ConstSpec D R).randomOracle
          (simulateQ (mapRangeImpl process) oa)).run' cache] =
      𝒟[(simulateQ (mappedRandomOracle process) oa).run'
          (mapCache process cache)] := by
  induction oa using OracleComp.inductionOn generalizing cache with
  | pure output =>
      simp
  | query_bind point continuation ih =>
      have hleft :
          (simulateQ (ConstSpec D R).randomOracle
            (simulateQ (mapRangeImpl process)
              (liftM ((ConstSpec D S).query point) >>= continuation))).run'
              cache =
            ((ConstSpec D R).randomOracle point).run cache >>=
              fun result : R × (ConstSpec D R).QueryCache =>
                (simulateQ (ConstSpec D R).randomOracle
                  (simulateQ (mapRangeImpl process)
                    (continuation (process point result.1)))).run' result.2 := by
        rw [simulateQ_bind, simulateQ_spec_query]
        change Prod.fst <$> (
          (((ConstSpec D R).randomOracle point).run cache) >>=
            fun result =>
              (simulateQ (ConstSpec D R).randomOracle
                (simulateQ (mapRangeImpl process)
                  (continuation (process point result.1)))).run result.2) = _
        rw [map_bind]
        rfl
      have hright :
          (simulateQ (mappedRandomOracle process)
            (liftM ((ConstSpec D S).query point) >>= continuation)).run'
              (mapCache process cache) =
            (mappedRandomOracle process point).run
                (mapCache process cache) >>=
              fun result : S × (ConstSpec D S).QueryCache =>
                (simulateQ (mappedRandomOracle process)
                  (continuation result.1)).run' result.2 := by
        rw [simulateQ_bind, simulateQ_spec_query]
        change Prod.fst <$> (
          ((mappedRandomOracle process point).run (mapCache process cache) >>=
            fun result =>
              (simulateQ (mappedRandomOracle process)
                (continuation result.1)).run result.2)) = _
        rw [map_bind]
        rfl
      rw [hleft, hright]
      simp only [mappedRandomOracle]
      cases hcached : cache point with
      | none =>
          have hmapped : mapCache process cache point = none := by
            simp [mapCache, hcached]
          rw [QueryImpl.withCaching_run_none _ hcached,
            QueryImpl.withCaching_run_none _ hmapped]
          simp only [map_eq_bind_pure_comp, bind_assoc, pure_bind,
            Function.comp_apply]
          rw [evalDist_bind, evalDist_bind]
          refine congrArg _ (funext fun value => ?_)
          simpa [mapCache_cacheQuery process] using
            ih (process point value) (cache.cacheQuery point value)
      | some cached =>
          have hmapped :
              mapCache process cache point = some (process point cached) := by
            simp [mapCache, hcached]
          rw [QueryImpl.withCaching_run_some _ hcached,
            QueryImpl.withCaching_run_some _ hmapped,
            pure_bind, pure_bind]
          exact ih (process point cached) cache

#print axioms evalDist_randomOracle_mapRange
#print axioms evalWithAnswerFn_simulateQ
#print axioms randomOracle_run'_query_bind

end

end Ipp.RandomOracleMap
