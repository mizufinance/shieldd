import Ipp.ShippingBundleCachedComposition

/-!
Ideal-byte to global-field composition for one complete shipping bundle.

The theorem keeps the coherent byte cache across adversarial prequeries and
all selected verifier calls.  Modular-reduction distance is charged once
against the complete bundle-wide Fiat--Shamir query budget.
-/

namespace Ipp.ShippingBundleIdealComposition

open OracleSpec OracleComp ENNReal
open scoped OracleSpec.PrimitiveQuery ENNReal
open Ipp.Bls12377
open Ipp.ShippingMultiStatement
open Ipp.ShippingBundleGoalBridge
open Ipp.ShippingBundleGlobalFsComposition
open Ipp.ShippingBundleCachedComposition
open Ipp.ShippingAdaptiveReindex
open Ipp.Extracted.ShippingBundleAdaptiveComposition

noncomputable section

local instance idealCompositionBasePrime : Fact baseModulus.Prime :=
  ⟨arithmeticFacts.basePrime⟩
local instance idealCompositionScalarPrime : Fact scalarModulus.Prime :=
  ⟨arithmeticFacts.scalarPrime⟩
local instance idealCompositionFq2Nonresidue :
    Fact (∀ x : Fq, x ^ 2 ≠ (-5) + 0 * x) :=
  ⟨by intro x; simpa using arithmeticFacts.fq2Nonresidue x⟩
local instance idealCompositionFintypeFq2 : Fintype Fq2 :=
  Fintype.ofEquiv
    (Fq × Fq) (QuadraticAlgebra.equivProd (-5 : Fq) 0).symm
local instance idealCompositionGlobalFsUniform :
    IsUniformSpec GlobalFsSourceSpec :=
  IsUniformSpec.ofFintypeInhabited _
local instance idealCompositionFsWrappedUniform :
    IsUniformSpec (Ipp.FsWrappedSpec Fr) :=
  IsUniformSpec.ofFintypeInhabited _

namespace CachedProjectedBundleConstruction

/-- A complete ideal-byte bundle experiment is bounded by the canonical
logged multi-statement field experiment plus the single bundle-wide modular
reduction budget. -/
theorem idealByteExperiment_event_le_multiStatementFsProbComp_add_modReduction
    {Call : Type}
    [SampleableType Ipp.ShippingHashGame.DigestBytes]
    {sha256 : Ipp.ShippingV1.Bytes → Ipp.ShippingV1.Bytes}
    {rawProgram :
      OracleComp Ipp.ShippingAdaptiveOrigin.GlobalByteSourceSpec
        (PackedOutcome Call)}
    {Q_sha Q_fs : Nat}
    {invalid : (μ : Nat) → SelectionAt Call μ → Prop}
    {fallbackSelection : PackedSelection Call}
    (construction :
      CachedProjectedBundleConstruction
        sha256 rawProgram Q_sha Q_fs invalid fallbackSelection)
    (predicate : PackedOutcome Call → Prop)
    [DecidablePred predicate] :
    Pr[predicate |
        BundleByteOriginReindexing.idealByteExperiment
          sha256 rawProgram] ≤
      Pr[fun run => predicate run.1.out |
        multiStatementFsProbComp
          (projectedLeastInvalidBundleFsGame
            construction.preselection invalid
              (rejectedPackedOutcome fallbackSelection))] +
        Ipp.ShippingScalarReduction.modReductionBudget Q_fs := by
  calc
    Pr[predicate |
        BundleByteOriginReindexing.idealByteExperiment
          sha256 rawProgram] =
      Pr[predicate |
        Ipp.ShippingAdaptiveByteFieldCoupling.inducedFiberLiftedHybridOutput
            sha256 construction.reindex.serialization
              construction.reindex.reached
                construction.reindex.hybridProgram] := by
      apply probEvent_congr' (fun _ _ => Iff.rfl)
      rw [
        BundleByteOriginReindexing.idealByteExperiment_eq_hybridRawIdeal
            sha256 construction.reindex]
      exact
        Ipp.ShippingAdaptiveByteFieldCoupling.hybridRawIdeal_evalDist_eq_inducedFiberLifted
            sha256 construction.reindex.serialization
              construction.reindex.reached
                construction.reindex.hybridProgram
    _ ≤
      Pr[predicate |
        Ipp.ShippingAdaptiveGlobalFsCoupling.fiberLiftedGlobalFsProgram
            sha256 construction.reindex.serialization
              construction.reindex.reached
                construction.reindex.hybridProgram] +
        Ipp.ShippingScalarReduction.modReductionBudget Q_fs :=
      Ipp.ShippingAdaptiveGlobalFsCoupling.inducedFiberLifted_event_le_globalFs_add_modReduction
          predicate sha256 construction.reindex.serialization
            construction.reindex.reached
              construction.reindex.hybridProgram Q_fs
                (BundleByteOriginReindexing.fiberLiftedHybridOutput_queryBound
                    sha256 construction.reindex)
    _ =
      Pr[fun run => predicate run.1.out |
        multiStatementFsProbComp
          (projectedLeastInvalidBundleFsGame
            construction.preselection invalid
              (rejectedPackedOutcome fallbackSelection))] +
        Ipp.ShippingScalarReduction.modReductionBudget Q_fs := by
      rw [
        Ipp.ShippingBundleCachedComposition.CachedProjectedBundleConstruction.fiberLifted_event_eq_multiStatementFsProbComp
          construction predicate]

end CachedProjectedBundleConstruction

end

end Ipp.ShippingBundleIdealComposition
