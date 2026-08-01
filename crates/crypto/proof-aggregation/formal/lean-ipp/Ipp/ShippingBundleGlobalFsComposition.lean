import Ipp.ShippingAdaptiveGlobalFsCoupling
import Ipp.ShippingBundleGoalBridge

/-!
Exact global-field program shape for the projected adaptive bundle game.

The byte-to-field coupling still has to construct the `program` below.  This
module only composes two phase equations and therefore makes no probability,
acceptance, invalidity, or soundness assumption.
-/

namespace Ipp.ShippingBundleGlobalFsComposition

open OracleSpec OracleComp ENNReal
open scoped OracleSpec.PrimitiveQuery ENNReal
open Ipp.ShippingMultiStatement
open Ipp.ShippingBundleGoalBridge
open Ipp.Extracted.ShippingBundleAdaptiveComposition
open Ipp.ShippingAdaptiveReindex

noncomputable section

/-- Granular execution equations identifying a constructed global-field
program with one complete bundle selection, sequential verification, and a
pure fail-closed least-invalid projection. -/
structure ProjectedBundleProgramConstruction
    {Call : Type}
    (program : OracleComp GlobalFsSourceSpec (PackedOutcome Call))
    (invalid : (μ : Nat) → SelectionAt Call μ → Prop)
    (fallbackSelection : PackedSelection Call) where
  preselection :
    OracleComp GlobalFsSourceSpec
      (List (PackedSelection Call))
  selectedContinuation :
    List (PackedSelection Call) →
      OracleComp GlobalFsSourceSpec
        (List (PackedOutcome Call))
  phase_exact :
    program =
      (do
        let selected ← preselection
        let outputs ← selectedContinuation selected
        pure
          ((leastInvalidOutcome? invalid outputs).getD
            (rejectedPackedOutcome fallbackSelection)))
  selected_exact :
    ∀ selected,
      selectedContinuation selected =
        verifyPackedBundle selected

namespace ProjectedBundleProgramConstruction

/-- Deterministic composition of the two execution equations.  In
particular, the pure projection occurs after the whole sequential bundle
program and cannot reset its global oracle state. -/
theorem program_eq_projectedLeastInvalidBundleFsGame
    {Call : Type}
    {program : OracleComp GlobalFsSourceSpec (PackedOutcome Call)}
    {invalid : (μ : Nat) → SelectionAt Call μ → Prop}
    {fallbackSelection : PackedSelection Call}
    (construction :
      ProjectedBundleProgramConstruction
        program invalid fallbackSelection) :
    program =
      projectedLeastInvalidBundleFsGame
        construction.preselection invalid
          (rejectedPackedOutcome fallbackSelection) := by
  refine construction.phase_exact.trans ?_
  unfold projectedLeastInvalidBundleFsGame
    MultiStatementBundleFsGame
  rw [bind_assoc]
  apply bind_congr
  intro selected
  rw [construction.selected_exact selected]

/-- Any operational query bound proved for the constructed program transports
to the canonical projected bundle program solely by the exact program
identity above. -/
theorem projectedLeastInvalidBundleFsGame_queryBound
    {Call : Type}
    {program : OracleComp GlobalFsSourceSpec (PackedOutcome Call)}
    {invalid : (μ : Nat) → SelectionAt Call μ → Prop}
    {fallbackSelection : PackedSelection Call}
    (construction :
      ProjectedBundleProgramConstruction
        program invalid fallbackSelection)
    (queryPredicate : GlobalFsSourceSpec.Domain → Prop)
    [DecidablePred queryPredicate]
    (budget : Nat)
    (hbound :
      IsQueryBoundP program queryPredicate budget) :
    IsQueryBoundP
      (projectedLeastInvalidBundleFsGame
        construction.preselection invalid
          (rejectedPackedOutcome fallbackSelection))
      queryPredicate budget := by
  rw [← construction.program_eq_projectedLeastInvalidBundleFsGame]
  exact hbound

#print axioms program_eq_projectedLeastInvalidBundleFsGame
#print axioms projectedLeastInvalidBundleFsGame_queryBound

end ProjectedBundleProgramConstruction

/-- Output-generic byte-origin annotation boundary for a projected bundle
program.

Unlike the existing one-call `OriginByteReindexing`, this carrier does not fix
the opaque call type or output shape.  The production bundle proof must supply
`raw_exact` for the complete planner, sequential verifier, and fail-closed
projection in one program. -/
structure BundleByteOriginReindexing
    {Call : Type}
    (rawProgram :
      OracleComp Ipp.ShippingAdaptiveOrigin.GlobalByteSourceSpec
        (PackedOutcome Call))
    (Q_sha Q_fs : Nat) where
  reached : Set GlobalFsQuery
  serialization : GlobalQuerySerialization
  hybridProgram :
    OracleComp (HybridAdaptiveSourceSpec reached)
      (PackedOutcome Call)
  raw_exact :
    simulateQ
        (hybridToRawByteImpl serialization reached)
        hybridProgram =
      rawProgram
  totalFsQueryBound :
    IsQueryBoundP hybridProgram
      (@IsHybridFsQuery reached) Q_fs
  totalShaQueryBound :
    IsQueryBoundP rawProgram
      Ipp.ShippingAdaptiveOrigin.IsShaQuery Q_sha

namespace BundleByteOriginReindexing

/-- Erasing the bundle annotation preserves the single whole-program
Fiat--Shamir query budget. -/
theorem rawProgram_fsQueryBound
    {Call : Type}
    {rawProgram :
      OracleComp Ipp.ShippingAdaptiveOrigin.GlobalByteSourceSpec
        (PackedOutcome Call)}
    {Q_sha Q_fs : Nat}
    (boundary :
      BundleByteOriginReindexing rawProgram Q_sha Q_fs) :
    IsQueryBoundP rawProgram
      Ipp.ShippingAdaptiveOrigin.IsFsQuery Q_fs := by
  rw [← boundary.raw_exact]
  exact
    rawByte_queryBound_of_hybrid_queryBound
      boundary.serialization boundary.reached
        boundary.hybridProgram Q_fs
          boundary.totalFsQueryBound

/-- Complete projected byte program with concrete SHA-256 and one uniform
lazy Blake2b cache.  Deployed-Blake2b replacement remains a separate
computational hop. -/
noncomputable def idealByteExperiment
    {Call : Type}
    [SampleableType Ipp.ShippingHashGame.DigestBytes]
    (sha256 : Ipp.ShippingV1.Bytes → Ipp.ShippingV1.Bytes)
    (rawProgram :
      OracleComp Ipp.ShippingAdaptiveOrigin.GlobalByteSourceSpec
        (PackedOutcome Call)) :
    ProbComp (PackedOutcome Call) :=
  (simulateQ
    (Ipp.ShippingAdaptiveReindex.rawIdealByteImpl sha256)
    rawProgram).run' ∅

/-- Exact whole-program annotation under the ideal byte oracle.  This is a
program identity derived only from `raw_exact`. -/
theorem idealByteExperiment_eq_hybridRawIdeal
    {Call : Type}
    [SampleableType Ipp.ShippingHashGame.DigestBytes]
    (sha256 : Ipp.ShippingV1.Bytes → Ipp.ShippingV1.Bytes)
    {rawProgram :
      OracleComp Ipp.ShippingAdaptiveOrigin.GlobalByteSourceSpec
        (PackedOutcome Call)}
    {Q_sha Q_fs : Nat}
    (boundary :
      BundleByteOriginReindexing rawProgram Q_sha Q_fs) :
    idealByteExperiment sha256 rawProgram =
      Ipp.ShippingAdaptiveReindex.hybridRawIdealExperiment
        sha256 boundary.serialization boundary.reached
          boundary.hybridProgram := by
  calc
    idealByteExperiment sha256 rawProgram =
        idealByteExperiment sha256
          (simulateQ
            (hybridToRawByteImpl
              boundary.serialization boundary.reached)
            boundary.hybridProgram) :=
      congrArg (idealByteExperiment sha256) boundary.raw_exact.symm
    _ =
        Ipp.ShippingAdaptiveReindex.hybridRawIdealExperiment
          sha256 boundary.serialization boundary.reached
            boundary.hybridProgram := by
      unfold idealByteExperiment
        Ipp.ShippingAdaptiveReindex.hybridRawIdealExperiment
      rw [← QueryImpl.simulateQ_compose]
      rfl

/-- The generic coherent-cache construction transports the same bundle-wide
query budget to the fiber-lifted output. -/
theorem fiberLiftedHybridOutput_queryBound
    {Call : Type}
    (sha256 : Ipp.ShippingV1.Bytes → Ipp.ShippingV1.Bytes)
    {rawProgram :
      OracleComp Ipp.ShippingAdaptiveOrigin.GlobalByteSourceSpec
        (PackedOutcome Call)}
    {Q_sha Q_fs : Nat}
    (boundary :
      BundleByteOriginReindexing rawProgram Q_sha Q_fs) :
    IsQueryBoundP
      (Ipp.ShippingAdaptiveByteField.fiberLiftedHybridOutput
        sha256 boundary.serialization boundary.reached
          boundary.hybridProgram)
      Ipp.ShippingAdaptiveByteField.IsByteFieldQuery Q_fs :=
  Ipp.ShippingAdaptiveByteFieldCoupling.fiberLiftedHybridOutput_queryBound
      sha256 boundary.serialization boundary.reached
        boundary.hybridProgram Q_fs
          boundary.totalFsQueryBound

#print axioms rawProgram_fsQueryBound
#print axioms idealByteExperiment_eq_hybridRawIdeal
#print axioms fiberLiftedHybridOutput_queryBound

end BundleByteOriginReindexing

end

end Ipp.ShippingBundleGlobalFsComposition
