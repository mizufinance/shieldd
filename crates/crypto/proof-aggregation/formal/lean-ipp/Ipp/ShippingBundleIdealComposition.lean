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

noncomputable section

local instance globalFsSourceUniform :
    IsUniformSpec GlobalFsSourceSpec :=
  IsUniformSpec.ofFintypeInhabited _

local instance fsWrappedUniform :
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
        Ipp.ShippingAdaptiveByteFieldCoupling
          .inducedFiberLiftedHybridOutput
            sha256 construction.reindex.serialization
              construction.reindex.reached
                construction.reindex.hybridProgram] := by
      apply probEvent_congr' (fun _ _ => Iff.rfl)
      rw [
        BundleByteOriginReindexing
          .idealByteExperiment_eq_hybridRawIdeal
            sha256 construction.reindex]
      exact
        Ipp.ShippingAdaptiveByteFieldCoupling
          .hybridRawIdeal_evalDist_eq_inducedFiberLifted
            sha256 construction.reindex.serialization
              construction.reindex.reached
                construction.reindex.hybridProgram
    _ ≤
      Pr[predicate |
        Ipp.ShippingAdaptiveGlobalFsCoupling
          .fiberLiftedGlobalFsProgram
            sha256 construction.reindex.serialization
              construction.reindex.reached
                construction.reindex.hybridProgram] +
        Ipp.ShippingScalarReduction.modReductionBudget Q_fs :=
      Ipp.ShippingAdaptiveGlobalFsCoupling
        .inducedFiberLifted_event_le_globalFs_add_modReduction
          predicate sha256 construction.reindex.serialization
            construction.reindex.reached
              construction.reindex.hybridProgram Q_fs
                (BundleByteOriginReindexing
                  .fiberLiftedHybridOutput_queryBound
                    sha256 construction.reindex)
    _ =
      Pr[fun run => predicate run.1.out |
        multiStatementFsProbComp
          (projectedLeastInvalidBundleFsGame
            construction.preselection invalid
              (rejectedPackedOutcome fallbackSelection))] +
        Ipp.ShippingScalarReduction.modReductionBudget Q_fs := by
      rw [
        construction
          .fiberLifted_event_eq_multiStatementFsProbComp predicate]

end CachedProjectedBundleConstruction

end

end Ipp.ShippingBundleIdealComposition
