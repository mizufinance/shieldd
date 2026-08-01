import Ipp.ShippingHashGame

/-!
Cache factorization for the bounded deployed digest sampler.
-/

open OracleSpec OracleComp ENNReal
open scoped OracleSpec.PrimitiveQuery ENNReal BigOperators

namespace Ipp.ShippingHashGame

noncomputable section

local instance : IsUniformSpec DigestBlockOracleSpec :=
  IsUniformSpec.ofFintypeInhabited _

set_option maxHeartbeats 2000000 in
set_option maxRecDepth 10000 in
/-- Because the block sampler never repeats a nonce coordinate, lazy caching
has exactly the same output distribution as fresh independent queries. -/
theorem evalDist_randomOracle_queryDecodedBlockOracle
    [SampleableType DigestBytes]
    (acceptable : Ipp.Bls12377.Fr → Bool)
    (cache : DigestBlockOracleSpec.QueryCache)
    (fuel start : Nat)
    (hbound : start + fuel ≤ rejectionFuel)
    (hfresh : BlockCacheFreshFrom cache start) :
    𝒟[(simulateQ DigestBlockOracleSpec.randomOracle
          (queryDecodedBlockOracle acceptable fuel start hbound)).run'
        cache] =
      𝒟[queryDecodedBlockOracle acceptable fuel start hbound] := by
  induction fuel generalizing start cache with
  | zero =>
      simp [queryDecodedBlockOracle]
  | succ fuel ih =>
      have hstart : start < rejectionFuel := by omega
      let point : Fin rejectionFuel := ⟨start, hstart⟩
      have hnone : cache point = none := hfresh point (by simp [point])
      have houter :
          𝒟[(uniformSampleImpl (spec := DigestBlockOracleSpec) point :
            ProbComp DigestBytes)] =
            𝒟[(liftM (DigestBlockOracleSpec.query point) :
              OracleComp DigestBlockOracleSpec DigestBytes)] := by
        change 𝒟[($ᵗ DigestBytes)] =
          𝒟[(liftM (DigestBlockOracleSpec.query point) :
            OracleComp DigestBlockOracleSpec DigestBytes)]
        rw [evalDist_uniformSample, evalDist_query]
      rw [queryDecodedBlockOracle.eq_def,
        Ipp.RandomOracleMap.randomOracle_run'_query_bind]
      rw [QueryImpl.withCaching_run_none _ (hfresh _ (by simp))]
      rw [map_eq_bind_pure_comp]
      simp only [bind_assoc, Function.comp_apply, pure_bind]
      rw [queryDecodedBlockOracle.eq_def]
      rw [evalDist_bind, evalDist_bind]
      rw [houter]
      refine congrArg _ (funext fun digest => ?_)
      cases hdecode : shippingDecodeFr digest with
      | none =>
          simp only
          rw [← queryDecodedBlockOracle.eq_def]
          simpa using
            ih (cache.cacheQuery point digest) (start + 1) (by omega)
              (blockCacheFreshFrom_cacheQuery cache start hstart digest hfresh)
      | some value =>
          by_cases hacceptable : acceptable value = true
          · simp [hacceptable]
          · simp only [hacceptable]
            rw [← queryDecodedBlockOracle.eq_def]
            simpa using
              ih (cache.cacheQuery point digest) (start + 1) (by omega)
                (blockCacheFreshFrom_cacheQuery cache start hstart digest hfresh)

#print axioms evalDist_randomOracle_queryDecodedBlockOracle

/-- Empty-cache specialization for the deployed full `u64` retry domain. -/
theorem evalDist_randomOracle_queryDecodedBlockOracleFull
    [SampleableType DigestBytes]
    (acceptable : Ipp.Bls12377.Fr → Bool) :
    𝒟[(simulateQ DigestBlockOracleSpec.randomOracle
          (queryDecodedBlockOracleFull acceptable)).run' ∅] =
      𝒟[queryDecodedBlockOracleFull acceptable] := by
  exact evalDist_randomOracle_queryDecodedBlockOracle
    acceptable ∅ rejectionFuel 0 (by simp)
      (blockCacheFreshFrom_empty 0)

/-- Sampling a whole digest block and decoding it is distributionally equal
to the exact bounded sequence of independent digest attempts. -/
theorem evalDist_uniform_decodeBlockFull
    [SampleableType DigestBytes]
    [SampleableType DigestBlock]
    (acceptable : Ipp.Bls12377.Fr → Bool) :
    𝒟[do
        let block ← $ᵗ DigestBlock
        pure (decodeBlockFull acceptable block)] =
      𝒟[shippingDecodedFreshSample rejectionFuel acceptable] := by
  calc
    𝒟[do
        let block ← $ᵗ DigestBlock
        pure (decodeBlockFull acceptable block)] =
        𝒟[do
          let block ← $ᵗ DigestBlock
          pure
            (evalWithAnswerFn (QueryImpl.ofFn block)
              (queryDecodedBlockOracleFull acceptable))] := by
          refine congrArg _ ?_
          refine congrArg
            (fun k :
              DigestBlock →
                ProbComp (Option Ipp.Bls12377.Fr) =>
              ($ᵗ DigestBlock) >>= k) ?_
          funext block
          congr 1
          symm
          exact evalWithAnswerFn_queryDecodedBlockOracle
            block acceptable rejectionFuel 0 (by simp)
    _ =
        𝒟[(simulateQ DigestBlockOracleSpec.randomOracle
          (queryDecodedBlockOracleFull acceptable)).run' ∅] := by
          symm
          exact
            evalDist_simulateQ_randomOracle_run'_empty_eq_uniformTable
              (queryDecodedBlockOracleFull acceptable)
    _ = 𝒟[queryDecodedBlockOracleFull acceptable] :=
          evalDist_randomOracle_queryDecodedBlockOracleFull acceptable
    _ = 𝒟[shippingDecodedFreshSample rejectionFuel acceptable] :=
          evalDist_queryDecodedBlockOracle
            acceptable rejectionFuel 0 (by simp)

#print axioms evalDist_uniform_decodeBlockFull

end

end Ipp.ShippingHashGame
