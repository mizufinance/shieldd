import Ipp.ShippingHashFsCoupling
import Ipp.ShippingMultiStatement

/-!
Global-field-oracle modular-reduction hop for adaptive shipping.

After the identical ambient `unifSpec` sampling is resolved, the adversary's
preselection field queries and every later verifier field query execute in one
program and one lazy cache.  This module specializes the generic cache-aware
scalar replacement theorem to `GlobalFsQuery`; it does not prove the ambient
oracle factoring, replace deployed Blake2b, or prove byte-query reindexing.
-/

open OracleSpec OracleComp ENNReal
open scoped OracleSpec.PrimitiveQuery ENNReal

namespace Ipp.ShippingMultiStatement

noncomputable section

abbrev GlobalScalarCacheState :=
  GlobalFieldOracleSpec.QueryCache × Bool

/-- Execute one global-field-oracle program with uniform 64-byte responses
reduced exactly as Arkworks reduces the deployed Blake2b digest. -/
def globalReducedCachingExperiment
    {Output : Type}
    [SampleableType Ipp.ShippingScalarReduction.DigestBytes]
    (program : OracleComp GlobalFieldOracleSpec Output) :
    ProbComp (Output × GlobalScalarCacheState) :=
  (simulateQ
    (Ipp.ShippingScalarReduction.reducedCachingOracleImpl
      (Domain := GlobalFsQuery))
    program).run (∅, false)

/-- Execute the same global-field-oracle program and cache with uniform field
responses. -/
def globalUniformCachingExperiment
    {Output : Type}
    (program : OracleComp GlobalFieldOracleSpec Output) :
    ProbComp (Output × GlobalScalarCacheState) :=
  (simulateQ
    (Ipp.ShippingScalarReduction.uniformCachingOracleImpl
      (Domain := GlobalFsQuery))
    program).run (∅, false)

/-- The modular-reduction loss is charged over the total structural query
budget of this adversary-plus-verifier field-oracle projection. Cache hits
remain coherent and are not modeled as fresh independent responses. -/
theorem globalReducedCaching_uniformCaching_tvDist_le
    {Output : Type}
    [SampleableType Ipp.ShippingScalarReduction.DigestBytes]
    (program : OracleComp GlobalFieldOracleSpec Output)
    (queryBudget : Nat)
    (hbound : IsTotalQueryBound program queryBudget) :
    ENNReal.ofReal
        (tvDist
          (globalReducedCachingExperiment program)
          (globalUniformCachingExperiment program)) ≤
      Ipp.ShippingScalarReduction.modReductionBudget queryBudget := by
  exact
    Ipp.ShippingScalarReduction.simulate_reducedCaching_uniformCaching_tvDist_le
      program queryBudget
      (IsTotalQueryBound.isQueryBoundP
        (p := fun _point => True) hbound)

/-- Event form of the global-field-oracle hop. The predicate observes the
program output only; cache state is retained solely to express the coherent
lazy oracle execution. -/
theorem globalReducedCaching_event_le_uniform_add_modReduction
    {Output : Type}
    [SampleableType Ipp.ShippingScalarReduction.DigestBytes]
    (predicate : Output → Prop)
    [DecidablePred predicate]
    (program : OracleComp GlobalFieldOracleSpec Output)
    (queryBudget : Nat)
    (hbound : IsTotalQueryBound program queryBudget) :
    Pr[fun output => predicate output.1 |
        globalReducedCachingExperiment program] ≤
      Pr[fun output => predicate output.1 |
          globalUniformCachingExperiment program] +
        Ipp.ShippingScalarReduction.modReductionBudget queryBudget := by
  apply Ipp.ShippingHashGame.probEvent_le_add_of_ofReal_tvDist_le
  exact
    globalReducedCaching_uniformCaching_tvDist_le
      program queryBudget hbound

end

end Ipp.ShippingMultiStatement
