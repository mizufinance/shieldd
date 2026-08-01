import VCVio.OracleComp.QueryTracking.RandomOracle.Simulation

/-!
Distribution-preserving reindexing of a lazy random oracle along an injective
query encoding. This avoids an eager full-table assumption and therefore
applies even when the target byte-string domain is infinite.
-/

open OracleSpec OracleComp ENNReal
open scoped OracleSpec.PrimitiveQuery ENNReal BigOperators

namespace Ipp.RandomOracleReindex

noncomputable section

abbrev ConstSpec (D R : Type) := D →ₒ R

def reindexImpl
    {A B R : Type}
    (encode : A → B) :
    QueryImpl (ConstSpec A R) (OracleComp (ConstSpec B R)) :=
  fun input => (ConstSpec B R).query (encode input)

def pullbackCache
    {A B R : Type}
    (encode : A → B)
    (cache : (ConstSpec B R).QueryCache) :
    (ConstSpec A R).QueryCache :=
  fun input => cache (encode input)

theorem pullbackCache_cacheQuery
    {A B R : Type}
    [DecidableEq A] [DecidableEq B]
    {encode : A → B} (hinjective : Function.Injective encode)
    (cache : (ConstSpec B R).QueryCache)
    (input : A) (value : R) :
    pullbackCache encode (cache.cacheQuery (encode input) value) =
      (pullbackCache encode cache).cacheQuery input value := by
  apply OracleSpec.QueryCache.ext
  intro other
  by_cases hother : other = input
  · subst other
    simp [pullbackCache]
  · have hencoded : encode other ≠ encode input :=
      fun heq => hother (hinjective heq)
    simp [pullbackCache, QueryCache.cacheQuery_of_ne, hother, hencoded]

/-- Simulating a computation through an injective query encoding and a lazy
random oracle has exactly the same output distribution as a lazy random
oracle on the source domain. The theorem is cache-parametric; target cache
entries pull back to the source domain and cache updates commute exactly. -/
theorem evalDist_randomOracle_reindex
    {A B R α : Type}
    [DecidableEq A] [DecidableEq B]
    [SampleableType R]
    {encode : A → B} (hinjective : Function.Injective encode)
    (oa : OracleComp (ConstSpec A R) α)
    (cache : (ConstSpec B R).QueryCache) :
    𝒟[(simulateQ (ConstSpec B R).randomOracle
          (simulateQ (reindexImpl encode) oa)).run' cache] =
      𝒟[(simulateQ (ConstSpec A R).randomOracle oa).run'
          (pullbackCache encode cache)] := by
  induction oa using OracleComp.inductionOn generalizing cache with
  | pure output =>
      simp
  | query_bind point continuation ih =>
      have hleft :
          (simulateQ (ConstSpec B R).randomOracle
            (simulateQ (reindexImpl encode)
              (liftM ((ConstSpec A R).query point) >>= continuation))).run'
              cache =
            ((ConstSpec B R).randomOracle (encode point)).run cache >>=
              fun result : R × (ConstSpec B R).QueryCache =>
                (simulateQ (ConstSpec B R).randomOracle
                  (simulateQ (reindexImpl encode)
                    (continuation result.1))).run' result.2 := by
        rw [simulateQ_bind, simulateQ_spec_query]
        change Prod.fst <$> (
          (((ConstSpec B R).randomOracle (encode point)).run cache) >>=
            fun result =>
              (simulateQ (ConstSpec B R).randomOracle
                (simulateQ (reindexImpl encode)
                  (continuation result.1))).run result.2) = _
        rw [map_bind]
        rfl
      have hright :
          (simulateQ (ConstSpec A R).randomOracle
            (liftM ((ConstSpec A R).query point) >>= continuation)).run'
              (pullbackCache encode cache) =
            ((ConstSpec A R).randomOracle point).run
                (pullbackCache encode cache) >>=
              fun result : R × (ConstSpec A R).QueryCache =>
                (simulateQ (ConstSpec A R).randomOracle
                  (continuation result.1)).run' result.2 := by
        rw [simulateQ_bind, simulateQ_spec_query]
        change Prod.fst <$> (
          (((ConstSpec A R).randomOracle point).run
            (pullbackCache encode cache)) >>= fun result =>
              (simulateQ (ConstSpec A R).randomOracle
                (continuation result.1)).run result.2) = _
        rw [map_bind]
        rfl
      rw [hleft, hright]
      cases hcached : cache (encode point) with
      | none =>
          have hpullback :
              pullbackCache encode cache point = none := hcached
          rw [QueryImpl.withCaching_run_none _ hcached,
            QueryImpl.withCaching_run_none _ hpullback]
          rw [map_eq_bind_pure_comp, map_eq_bind_pure_comp]
          simp only [bind_assoc]
          rw [evalDist_bind, evalDist_bind]
          refine congrArg _ (funext fun value => ?_)
          simpa [pullbackCache_cacheQuery hinjective] using
            ih value (cache.cacheQuery (encode point) value)
      | some cached =>
          have hpullback :
              pullbackCache encode cache point = some cached := hcached
          rw [QueryImpl.withCaching_run_some _ hcached,
            QueryImpl.withCaching_run_some _ hpullback,
            pure_bind, pure_bind]
          exact ih cached cache

#print axioms evalDist_randomOracle_reindex

end

end Ipp.RandomOracleReindex
