import Ipp.ShippingMultiStatementS1Reduction
import Ipp.FsMissBounds
import Ipp.Extracted.ShippingProductionKeyFunctionality

/-!
Whole-program adaptive randomizer-root bound for shipping SnarkPack.

This module bounds the bad randomizer event before replay forking.  It keeps
all adversarial pre-selection queries in the same global random-function log.
The selected formal statement is materialized from the statement key carried
by each `GlobalFsQuery`; it is never fixed before oracle access.

The result is intentionally separate from the post-fork event in
`ShippingMultiStatementS1Reduction`.  A base-game query budget can be used by
the fork proof only after the randomizer-good predicate is installed in the
leaf gate.
-/

open OracleSpec OracleComp ENNReal Function
open scoped OracleSpec.PrimitiveQuery ENNReal BigOperators

namespace Ipp.ShippingMultiStatement

noncomputable section

open Ipp.Bls12377
open Ipp.Extracted.AppVerifierStateMachine
open Ipp.Extracted.ShippingProductionKeyFunctionality

local instance : Fact baseModulus.Prime :=
  ⟨arithmeticFacts.basePrime⟩
local instance : Fact scalarModulus.Prime :=
  ⟨arithmeticFacts.scalarPrime⟩
local instance : Fact (∀ x : Fq, x ^ 2 ≠ (-5) + 0 * x) :=
  ⟨by intro x; simpa using arithmeticFacts.fq2Nonresidue x⟩
local instance : Fintype Fq2 :=
  Fintype.ofEquiv
    (Fq × Fq) (QuadraticAlgebra.equivProd (-5 : Fq) 0).symm
local instance : IsUniformSpec GlobalFsSourceSpec :=
  IsUniformSpec.ofFintypeInhabited _
local instance : IsUniformSpec (Ipp.FsWrappedSpec Fr) :=
  IsUniformSpec.ofFintypeInhabited _

/-- The exact selected randomizer query reconstructed from one completed
heterogeneous verifier output. -/
def OutcomeAt.randomizerQuery
    {Call : Type} {μ : Nat}
    (output : OutcomeAt Call μ) : GlobalFsQuery := {
  statement := output.selection.logicalKey
  encoded := output.selection.encodedKey
  point := .randomizer
    (Ipp.proofRandomizerPayload output.verifierResult.proof)
    output.verifierResult.transcript.randomizerNonce
}

/-- Exact source-log origin required from the production-used global
verifier.  This is a structural execution postcondition: acceptance exposes
the query whose answer is the retained transcript randomizer. -/
def GlobalAcceptedRandomizerQueryOriginAt
    {Call : Type}
    (game : OracleComp GlobalFsSourceSpec (PackedOutcome Call))
    (μ : Nat) : Prop :=
  ∀ (output : OutcomeAt Call μ)
    (sourceLog : QueryLog GlobalFsSourceSpec),
    ((⟨μ, output⟩ : PackedOutcome Call), sourceLog) ∈
        support (replayFirstRun (Ipp.fsRandomFunction game)) →
      output.verifierResult.accept = true →
        QueryAnswered sourceLog
          (Sum.inr output.randomizerQuery)
          output.verifierResult.transcript.randomizer

/-- Each statement-tagged randomizer query selects its own discrepancy-root
set.  Missing materialization and every non-randomizer stage select the empty
set and therefore fail closed. -/
def globalAdaptiveRandomizerPointBadFinset
    (materializer : ProductionStatementMaterializer)
    (μ : Nat)
    (extractor : AdaptiveGipaExtractor μ)
    (query : GlobalFsQuery) : Finset Fr :=
  match query.point with
  | .randomizer payload _ =>
      match materializer.materialize μ query.statement with
      | none => ∅
      | some statement =>
          Ipp.S1.s1BadRandomizersFor statement
            (extractor statement).extract payload
  | _ => ∅

/-- Every adaptively selected query-local discrepancy set has the same exact
degree bound as the fixed-statement S1 polynomial. -/
theorem globalAdaptiveRandomizerPointBadFinset_card
    (materializer : ProductionStatementMaterializer)
    (μ : Nat)
    (extractor : AdaptiveGipaExtractor μ)
    (query : GlobalFsQuery) :
    (globalAdaptiveRandomizerPointBadFinset
      materializer μ extractor query).card ≤ 2 ^ μ - 1 := by
  rcases query with ⟨statementKey, encoded, point⟩
  cases point with
  | randomizer payload nonce =>
      cases hmaterialized :
          materializer.materialize μ statementKey with
      | none =>
          simp [globalAdaptiveRandomizerPointBadFinset, hmaterialized]
      | some statement =>
          simpa [globalAdaptiveRandomizerPointBadFinset, hmaterialized] using
            (Ipp.S1.s1BadRandomizersFor_card
              statement (extractor statement).extract payload)
  | x0 payload nonce =>
      simp [globalAdaptiveRandomizerPointBadFinset]
  | round previous commitments nonce =>
      simp [globalAdaptiveRandomizerPointBadFinset]
  | bridge payload nonce =>
      simp [globalAdaptiveRandomizerPointBadFinset]
  | kzg payload nonce =>
      simp [globalAdaptiveRandomizerPointBadFinset]

/-- The accepted selected randomizer is a discrepancy root for its exact
post-execution formal statement and proof payload. -/
def PackedAcceptedRandomizerRootBadAt
    {Call : Type}
    (μ : Nat)
    (extractor : AdaptiveGipaExtractor μ) :
    PackedOutcome Call → Prop :=
  fun packed =>
    ∃ output : OutcomeAt Call μ,
      packed = ⟨μ, output⟩ ∧
        output.verifierResult.accept = true ∧
        output.verifierResult.transcript.randomizer ∈
          Ipp.S1.s1BadRandomizersFor
            output.selection.statement
            (extractor output.selection.statement).extract
            (Ipp.proofRandomizerPayload output.verifierResult.proof)

/-- Source carrier for the complete global random-function execution. -/
abbrev GlobalSourceRunLog (Call : Type) :=
  PackedOutcome Call × QueryLog GlobalFsSourceSpec

/-- A production-derived source output is accepted by the same deterministic
statement materializer used for every replay-reachable selection. -/
theorem sourceOutcome_statement_materialized
    (game : OracleComp GlobalFsSourceSpec (PackedOutcome CallId))
    (materialization : OutputDerivedStatementMaterialization)
    (μ : Nat)
    (origin : ProductionReplayOriginAt game μ)
    (output : OutcomeAt CallId μ)
    (sourceLog : QueryLog GlobalFsSourceSpec)
    (hsource :
      ((⟨μ, output⟩ : PackedOutcome CallId), sourceLog) ∈
        support (replayFirstRun (Ipp.fsRandomFunction game)))
    (haccept : output.verifierResult.accept = true) :
    materialization.materializer.materialize μ
        output.selection.logicalKey =
      some output.selection.statement := by
  apply materialization.materializedSelection
  apply origin
  refine ⟨
    ({
      out := (⟨μ, output⟩ : PackedOutcome CallId)
      trace := Ipp.fsPointTrace sourceLog
    }, Ipp.flattenFsLog sourceLog), ?_, ?_, ?_⟩
  · simpa [multiStatementFsProbComp, multiStatementForkMain] using
      (Ipp.wrapFs_support_iff game
        (⟨μ, output⟩ : PackedOutcome CallId) sourceLog).2 hsource
  · exact PackedOutcome.selectionAt?_self μ output
  · exact haccept

/-- A bad accepted production output exposes one answered query in the same
complete source log, and the answer belongs to the point-selected bad set. -/
theorem packedAcceptedRandomizerRootBadAt_log_witness
    (game : OracleComp GlobalFsSourceSpec (PackedOutcome CallId))
    (materialization : OutputDerivedStatementMaterialization)
    (origin : ProductionReplayOriginAt game μ)
    (queryOrigin : GlobalAcceptedRandomizerQueryOriginAt game μ)
    (extractor : AdaptiveGipaExtractor μ)
    {run : GlobalSourceRunLog CallId}
    (hrun :
      run ∈ support
        (replayFirstRun (Ipp.fsRandomFunction game)))
    (hbad : PackedAcceptedRandomizerRootBadAt μ extractor run.1) :
    ∃ query answer,
      QueryAnswered run.2 (Sum.inr query) answer ∧
        answer ∈ globalAdaptiveRandomizerPointBadFinset
          materialization.materializer μ extractor query := by
  rcases run with ⟨packed, sourceLog⟩
  rcases hbad with ⟨output, houtput, haccept, hroot⟩
  subst packed
  have hmaterialized :=
    sourceOutcome_statement_materialized
      game materialization μ origin output sourceLog hrun haccept
  refine
    ⟨output.randomizerQuery,
      output.verifierResult.transcript.randomizer,
      queryOrigin output sourceLog hrun haccept, ?_⟩
  simpa [OutcomeAt.randomizerQuery,
    globalAdaptiveRandomizerPointBadFinset, hmaterialized] using hroot

/-- One dependent-set union bound over the entire shared global source log.
The adversary may query before selecting the statement; every such query
remains charged to `totalQueries`. -/
theorem globalSourceAcceptedRandomizerRootBadAt_le
    (game : OracleComp GlobalFsSourceSpec (PackedOutcome CallId))
    (materialization : OutputDerivedStatementMaterialization)
    (μ totalQueries : Nat)
    (origin : ProductionReplayOriginAt game μ)
    (queryOrigin : GlobalAcceptedRandomizerQueryOriginAt game μ)
    (extractor : AdaptiveGipaExtractor μ)
    (hbound : IsTotalQueryBound game totalQueries) :
    Pr[fun run : GlobalSourceRunLog CallId =>
        PackedAcceptedRandomizerRootBadAt μ extractor run.1 |
      replayFirstRun (Ipp.fsRandomFunction game)] ≤
      adaptiveRandomizerRootError totalQueries μ := by
  calc
    _ ≤ Pr[fun run : GlobalSourceRunLog CallId =>
          ∃ query answer,
            QueryAnswered run.2 (Sum.inr query) answer ∧
              answer ∈ globalAdaptiveRandomizerPointBadFinset
                materialization.materializer μ extractor query |
          replayFirstRun (Ipp.fsRandomFunction game)] := by
      apply probEvent_mono
      intro run hrun hbad
      exact packedAcceptedRandomizerRootBadAt_log_witness
        game materialization origin queryOrigin extractor hrun hbad
    _ ≤ (((totalQueries * (2 ^ μ - 1) : Nat) : ℝ≥0∞) /
          (Fintype.card Fr : ℝ≥0∞)) := by
      exact Ipp.structured_log_dependent_mem_le
        (Ipp.fsRandomFunction game) totalQueries (2 ^ μ - 1)
        (Ipp.fsRandomFunction_isTotalQueryBound game hbound)
        (globalAdaptiveRandomizerPointBadFinset
          materialization.materializer μ extractor)
        (globalAdaptiveRandomizerPointBadFinset_card
          materialization.materializer μ extractor)
    _ ≤ adaptiveRandomizerRootError totalQueries μ := by
      unfold adaptiveRandomizerRootError
      simp only [Fr, ZMod.card]
      gcongr
      exact tsub_le_self

/-- `wrapFs` changes only the query representation.  An output-only adaptive
randomizer-root event has exactly the same mass before and after wrapping. -/
theorem globalWrappedAcceptedRandomizerRootBadAt_eq_source
    (game : OracleComp GlobalFsSourceSpec (PackedOutcome CallId))
    (μ : Nat)
    (extractor : AdaptiveGipaExtractor μ) :
    Pr[fun run : GlobalSourceRunLog CallId =>
        PackedAcceptedRandomizerRootBadAt μ extractor run.1 |
      replayFirstRun (Ipp.fsRandomFunction game)] =
      Pr[fun run : MultiStatementRunLog CallId =>
        PackedAcceptedRandomizerRootBadAt μ extractor run.1.out |
      multiStatementFsProbComp game] := by
  simpa [multiStatementFsProbComp, multiStatementForkMain] using
    (Ipp.probEvent_wrapFs_eq game
      (fun run : MultiStatementRunLog CallId =>
        PackedAcceptedRandomizerRootBadAt μ extractor run.1.out))

/-- Base whole-program bound in the exact wrapped carrier consumed by the
fork gate.  This theorem does not bound a post-fork event. -/
theorem globalWrappedAcceptedRandomizerRootBadAt_le
    (game : OracleComp GlobalFsSourceSpec (PackedOutcome CallId))
    (materialization : OutputDerivedStatementMaterialization)
    (μ totalQueries : Nat)
    (origin : ProductionReplayOriginAt game μ)
    (queryOrigin : GlobalAcceptedRandomizerQueryOriginAt game μ)
    (extractor : AdaptiveGipaExtractor μ)
    (hbound : IsTotalQueryBound game totalQueries) :
    Pr[fun run : MultiStatementRunLog CallId =>
        PackedAcceptedRandomizerRootBadAt μ extractor run.1.out |
      multiStatementFsProbComp game] ≤
      adaptiveRandomizerRootError totalQueries μ := by
  rw [← globalWrappedAcceptedRandomizerRootBadAt_eq_source
    game μ extractor]
  exact globalSourceAcceptedRandomizerRootBadAt_le
    game materialization μ totalQueries origin queryOrigin extractor hbound

/-- Correct pre-fork leaf gate: invalid acceptance under an exact selected
size, excluding the adaptively selected discrepancy-root event. -/
def InvalidAcceptedRandomizerGoodAt
    (invalid : (ν : Nat) → SelectionAt CallId ν → Prop)
    (μ : Nat)
    (extractor : AdaptiveGipaExtractor μ) :
    MultiStatementRunLog CallId → Prop :=
  fun run =>
    InvalidAcceptedAt invalid μ run ∧
      ¬PackedAcceptedRandomizerRootBadAt μ extractor run.1.out

/-- Replay-fork experiment with the proved randomizer-good condition installed
in the leaf gate.  This is a distinct experiment from the legacy raw fork;
the stronger gate is what allows the base whole-program query budget to be
subtracted before replay. -/
noncomputable def randomizerGoodMultiStatementForkExperimentAt
    (game : OracleComp GlobalFsSourceSpec (PackedOutcome CallId))
    (invalid : (ν : Nat) → SelectionAt CallId ν → Prop)
    (queryBounds : (Ipp.FsWrappedSpec Fr).Domain → Nat)
    (μ : Nat)
    (extractor : AdaptiveGipaExtractor μ) :
    OracleComp (Ipp.FsWrappedSpec Fr)
      (Option (RawMultiStatementForkTree CallId μ)) := by
  classical
  exact Ipp.forkTreeCombined μ (multiStatementForkMain game)
    queryBounds (Sum.inr ())
    (fun level run =>
      multiStatementRoundSlot
        (queryBounds (Sum.inr ())) level run)
    (InvalidAcceptedRandomizerGoodAt invalid μ extractor)
    μ (Nat.le_refl μ)

/-- Schedule obligations for the stronger pre-fork leaf gate.

These are operational properties of the same complete shared-cache program.
They do not assert security or randomizer goodness.  In particular,
`slotOrder` is required on the actual stronger-gate replay experiment rather
than being borrowed from a differently gated fork. -/
structure RandomizerGoodForkScheduleContract
    (game : OracleComp GlobalFsSourceSpec (PackedOutcome CallId))
    (invalid : (ν : Nat) → SelectionAt CallId ν → Prop)
    (queryBounds : (Ipp.FsWrappedSpec Fr).Domain → Nat)
    (μ : Nat)
    (extractor : AdaptiveGipaExtractor μ) where
  baseReach : ∀ level, level < μ →
    Ipp.CfReachable (multiStatementForkMain game)
      queryBounds (Sum.inr ())
      (fun run =>
        multiStatementRoundSlot
          (queryBounds (Sum.inr ())) level run)
  selectorTotal : ∀ {first},
    first ∈ support
        (replayFirstRun (multiStatementForkMain game)) →
      InvalidAcceptedRandomizerGoodAt invalid μ extractor first →
      ∀ level, level < μ →
        ∃ slot,
          multiStatementRoundSlot
              (queryBounds (Sum.inr ())) level first.1 =
            some slot
  slotOrder : ∀ {depth} (hdepth : depth < μ)
    {tree : RawMultiStatementForkTree CallId depth}
    {outerLog : QueryLog (Ipp.FsWrappedSpec Fr)},
    (some tree, outerLog) ∈ support (replayFirstRun
      (Ipp.forkTreeCombined μ (multiStatementForkMain game)
        queryBounds (Sum.inr ())
        (fun level run =>
          multiStatementRoundSlot
            (queryBounds (Sum.inr ())) level run)
        (InvalidAcceptedRandomizerGoodAt invalid μ extractor)
        depth (Nat.le_of_lt hdepth))) →
    ∀ {selected next},
      multiStatementRoundSlot
          (queryBounds (Sum.inr ()))
          (Ipp.combinedLevel μ depth hdepth) tree.root.1 =
        some selected →
      Ipp.treeFirstSlot
          (fun level run =>
            multiStatementRoundSlot
              (queryBounds (Sum.inr ())) level run)
          μ depth tree =
        some next →
      selected < next

/-- The canonical projected root is exactly the verifier result stored in the
canonical raw root.  Projection changes only the carrier; it does not rerun
the verifier or replace its proof/transcript. -/
theorem projectCommonStatementTree_root_data_exact
    {Call : Type} {μ depth : Nat}
    (statement : Ipp.S1.Bls12377ReductionStatement μ)
    (tree : RawMultiStatementForkTree Call depth)
    (hcarries : ForkCarriesFormalStatement statement tree) :
    (projectCommonStatementTree statement tree hcarries).root.1 =
      {
        proof :=
          (outcomeAtOfFormalStatement
            statement tree.root hcarries.root).verifierResult.proof
        transcript :=
          (outcomeAtOfFormalStatement
            statement tree.root hcarries.root).verifierResult.transcript
      } := by
  induction tree with
  | leaf run =>
      rfl
  | node children ih =>
      simpa [projectCommonStatementTree, Ipp.RunTree.root] using
        ih 0 (hcarries 0)

/-- A successful stronger-gate replay tree has one production-reachable
formal statement and keeps the randomizer-good gate on every branch. -/
theorem randomizerGoodMultiStatementForkExperimentAt_support_hasCommonStatement
    (game : OracleComp GlobalFsSourceSpec (PackedOutcome CallId))
    (invalid : (ν : Nat) → SelectionAt CallId ν → Prop)
    (queryBounds : (Ipp.FsWrappedSpec Fr).Domain → Nat)
    (μ : Nat)
    (extractor : AdaptiveGipaExtractor μ)
    (hbaseReach : ∀ level, level < μ →
      Ipp.CfReachable (multiStatementForkMain game)
        queryBounds (Sum.inr ())
        (fun run =>
          multiStatementRoundSlot
            (queryBounds (Sum.inr ())) level run))
    (hdetermines : ProductionKeyDeterminesStatementAt game μ)
    {tree : RawMultiStatementForkTree CallId μ}
    (htree : some tree ∈ support
      (randomizerGoodMultiStatementForkExperimentAt
        game invalid queryBounds μ extractor)) :
    ∃ statement : Ipp.S1.Bls12377ReductionStatement μ,
      ForkCarriesFormalStatement statement tree ∧
        tree.All
          (InvalidAcceptedRandomizerGoodAt invalid μ extractor) := by
  classical
  have hgood :
      tree.All
        (InvalidAcceptedRandomizerGoodAt invalid μ extractor) := by
    change some tree ∈ support
      (Ipp.forkTreeCombined μ (multiStatementForkMain game)
        queryBounds (Sum.inr ())
        (fun level run =>
          multiStatementRoundSlot
            (queryBounds (Sum.inr ())) level run)
        (InvalidAcceptedRandomizerGoodAt invalid μ extractor)
        μ (Nat.le_refl μ)) at htree
    exact Ipp.forkTreeCombined_success_all_leafOk
      μ (multiStatementForkMain game) queryBounds (Sum.inr ())
      (fun level run =>
        multiStatementRoundSlot
          (queryBounds (Sum.inr ())) level run)
      (InvalidAcceptedRandomizerGoodAt invalid μ extractor)
      hbaseReach htree
  have hall :
      tree.All (InvalidAcceptedAt invalid μ) :=
    hgood.imp (fun _ hrun => hrun.1)
  have hconsistent :
      Ipp.TreeConsistent (multiStatementForkMain game)
        queryBounds (Sum.inr ())
        (fun level run =>
          multiStatementRoundSlot
            (queryBounds (Sum.inr ())) level run)
        (InvalidAcceptedRandomizerGoodAt invalid μ extractor)
        0 none tree := by
    change some tree ∈ support
      (Ipp.forkTreeCombined μ (multiStatementForkMain game)
        queryBounds (Sum.inr ())
        (fun level run =>
          multiStatementRoundSlot
            (queryBounds (Sum.inr ())) level run)
        (InvalidAcceptedRandomizerGoodAt invalid μ extractor)
        μ (Nat.le_refl μ)) at htree
    exact Ipp.forkTreeCombined_support_props
      μ (multiStatementForkMain game) queryBounds (Sum.inr ())
      (fun level run =>
        multiStatementRoundSlot
          (queryBounds (Sum.inr ())) level run)
      (InvalidAcceptedRandomizerGoodAt invalid μ extractor)
      hbaseReach htree
  have hlogical :
      ForkCarriesLogicalKey tree.root.1.out.logicalKey tree :=
    treeConsistent_all_logicalKey_eq_root
      game queryBounds
      (InvalidAcceptedRandomizerGoodAt invalid μ extractor)
      hconsistent
  have hsupport :
      tree.All (fun run =>
        run ∈ support (multiStatementFsProbComp game)) := by
    simpa [multiStatementFsProbComp] using
      (Ipp.TreeConsistent.all_support
        (multiStatementForkMain game) queryBounds (Sum.inr ())
        (fun level run =>
          multiStatementRoundSlot
            (queryBounds (Sum.inr ())) level run)
        (InvalidAcceptedRandomizerGoodAt invalid μ extractor)
        hconsistent)
  obtain ⟨rootSelection, hrootProjection, _⟩ :=
    invalidAcceptedAt_projects_invalid_selection
      invalid μ hall.root
  have hrootReachable :
      ReplayReachableSelectionAt game μ rootSelection :=
    ⟨tree.root, hsupport.root, hrootProjection, hall.root.2.2⟩
  refine ⟨rootSelection.statement, ?_, hgood⟩
  have hcombined :=
    runTree_all_and (runTree_all_and hall hsupport) hlogical
  exact hcombined.imp (fun run hrun => by
    obtain ⟨selection, hprojection, _⟩ :=
      invalidAcceptedAt_projects_invalid_selection
        invalid μ hrun.1.1
    have hselectionReachable :
        ReplayReachableSelectionAt game μ selection :=
      ⟨run, hrun.1.2, hprojection, hrun.1.1.2.2⟩
    have hselectionKey :
        selection.logicalKey = run.1.out.logicalKey :=
      PackedOutcome.selectionAt?_logicalKey hprojection
    have hrootKey :
        rootSelection.logicalKey = tree.root.1.out.logicalKey :=
      PackedOutcome.selectionAt?_logicalKey hrootProjection
    have hkey :
        selection.logicalKey = rootSelection.logicalKey :=
      hselectionKey.trans (hrun.2.trans hrootKey.symm)
    exact
      ⟨selection, hprojection,
        hdetermines selection rootSelection
          hselectionReachable hrootReachable hkey⟩)

/-- The stronger leaf gate rules out the discrepancy-root branch after the
cache-preserving projection. -/
theorem projectCommonStatementTree_not_randomizerRootBad
    (invalid : (ν : Nat) → SelectionAt CallId ν → Prop)
    {μ depth : Nat}
    (extractor : AdaptiveGipaExtractor μ)
    (statement : Ipp.S1.Bls12377ReductionStatement μ)
    (tree : RawMultiStatementForkTree CallId depth)
    (hcarries : ForkCarriesFormalStatement statement tree)
    (hgood :
      tree.All (InvalidAcceptedRandomizerGoodAt invalid μ extractor)) :
    ¬CommonForkRandomizerRootBad statement
      (extractor statement).extract
      (projectCommonStatementTree statement tree hcarries) := by
  intro hbad
  apply hgood.root.2
  let outcome :=
    outcomeAtOfFormalStatement statement tree.root hcarries.root
  have hout :
      tree.root.1.out = ⟨μ, outcome⟩ :=
    outcomeAtOfFormalStatement_output_exact
      statement tree.root hcarries.root
  have hstatement :
      outcome.selection.statement = statement :=
    outcomeAtOfFormalStatement_statement_exact
      statement tree.root hcarries.root
  have hbranch :
      invalid μ outcome.selection ∧
        outcome.verifierResult.accept = true := by
    have hinvalid := hgood.root.1
    rw [hout] at hinvalid
    simpa [InvalidAcceptedAt, SelectedMu, InvalidAccepted] using hinvalid
  refine ⟨outcome, hout, hbranch.2, ?_⟩
  have hrootExact :=
    projectCommonStatementTree_root_data_exact
      statement tree hcarries
  unfold CommonForkRandomizerRootBad at hbad
  rw [hrootExact] at hbad
  simpa [outcome, hstatement] using hbad

/-- Cache-preserving projection of the stronger pre-fork experiment. -/
noncomputable def randomizerGoodCachePreservingS1ExperimentAt
    (game : OracleComp GlobalFsSourceSpec (PackedOutcome CallId))
    (invalid : (ν : Nat) → SelectionAt CallId ν → Prop)
    (queryBounds : (Ipp.FsWrappedSpec Fr).Domain → Nat)
    (μ : Nat)
    (extractor : AdaptiveGipaExtractor μ) :
    OracleComp (Ipp.FsWrappedSpec Fr)
      (Option (CachePreservingCommonFork CallId μ)) :=
  cachePreservingCommonFork? <$>
    randomizerGoodMultiStatementForkExperimentAt
      game invalid queryBounds μ extractor

/-- Four exact S1 extraction targets after the discrepancy-root event was
removed by the pre-fork gate. -/
def CachePreservingCryptoExtractionWin
    {μ : Nat}
    (extractor : AdaptiveGipaExtractor μ) :
    Option (CachePreservingCommonFork CallId μ) → Prop
  | none => False
  | some fork =>
      Ipp.S1.KzgVFalseOpeningGameWin
          fork.statement (some fork.projected) ∨
        Ipp.S1.KzgWFalseOpeningGameWin
          fork.statement (some fork.projected) ∨
        Ipp.S1.GipaRootOpeningGameWin
          fork.statement (extractor fork.statement).extract
          (some fork.projected) ∨
        Ipp.S1.GipaProductLaneGameWin
          fork.statement (extractor fork.statement).extract
          (some fork.projected)

/-- Every produced stronger-gate tree reduces in place to one of the four
KZG/GIPA targets.  The raw cache, proof bytes, transcripts, and branch-local
calls are retained. -/
theorem randomizerGoodFork_isSome_le_cachePreservingCryptoExtraction
    (game : OracleComp GlobalFsSourceSpec (PackedOutcome CallId))
    (invalid : (ν : Nat) → SelectionAt CallId ν → Prop)
    (queryBounds : (Ipp.FsWrappedSpec Fr).Domain → Nat)
    (semantics : GlobalAcceptedVerifierSemantics game)
    (invalidity : InvalidSelectionExcludesRepresentation invalid)
    (μ : Nat)
    (extractor : AdaptiveGipaExtractor μ)
    (hbaseReach : ∀ level, level < μ →
      Ipp.CfReachable (multiStatementForkMain game)
        queryBounds (Sum.inr ())
        (fun run =>
          multiStatementRoundSlot
            (queryBounds (Sum.inr ())) level run))
    (hdetermines : ProductionKeyDeterminesStatementAt game μ) :
    Pr[fun tree : Option (RawMultiStatementForkTree CallId μ) =>
        tree.isSome |
      randomizerGoodMultiStatementForkExperimentAt
        game invalid queryBounds μ extractor] ≤
      Pr[CachePreservingCryptoExtractionWin extractor |
        randomizerGoodCachePreservingS1ExperimentAt
          game invalid queryBounds μ extractor] := by
  classical
  rw [randomizerGoodCachePreservingS1ExperimentAt, probEvent_map]
  apply probEvent_mono
  intro output hsupport hsome
  cases output with
  | none =>
      simp at hsome
  | some tree =>
      obtain ⟨statement, hcarries, hgood⟩ :=
        randomizerGoodMultiStatementForkExperimentAt_support_hasCommonStatement
          game invalid queryBounds μ extractor hbaseReach
          hdetermines hsupport
      have hexists :
          ∃ statement : Ipp.S1.Bls12377ReductionStatement μ,
            ForkCarriesFormalStatement statement tree :=
        ⟨statement, hcarries⟩
      let selectedStatement := Classical.choose hexists
      let selectedCarries :
          ForkCarriesFormalStatement selectedStatement tree :=
        Classical.choose_spec hexists
      let fork : CachePreservingCommonFork CallId μ := {
        rawTree := tree
        statement := selectedStatement
        carries := selectedCarries
      }
      have hconsistent :
          Ipp.TreeConsistent (multiStatementForkMain game)
            queryBounds (Sum.inr ())
            (fun level run =>
              multiStatementRoundSlot
                (queryBounds (Sum.inr ())) level run)
            (InvalidAcceptedRandomizerGoodAt invalid μ extractor)
            0 none tree := by
        change some tree ∈ support
          (Ipp.forkTreeCombined μ (multiStatementForkMain game)
            queryBounds (Sum.inr ())
            (fun level run =>
              multiStatementRoundSlot
                (queryBounds (Sum.inr ())) level run)
            (InvalidAcceptedRandomizerGoodAt invalid μ extractor)
            μ (Nat.le_refl μ)) at hsupport
        exact Ipp.forkTreeCombined_support_props
          μ (multiStatementForkMain game) queryBounds (Sum.inr ())
          (fun level run =>
            multiStatementRoundSlot
              (queryBounds (Sum.inr ())) level run)
          (InvalidAcceptedRandomizerGoodAt invalid μ extractor)
          hbaseReach hsupport
      have hproperties :=
        projectCommonStatementTree_all_accepts_and_invalid
          game invalid semantics invalidity selectedStatement tree
          selectedCarries hconsistent.all_support
          (hgood.imp (fun _ hrun => hrun.1))
      have hpartition :=
        commonAcceptedInvalidFork_implies_extraction_or_randomizerBad
          selectedStatement (extractor selectedStatement).extract
          fork.projected hproperties.1 hproperties.2
      have hnotRoot :
          ¬CommonForkRandomizerRootBad selectedStatement
            (extractor selectedStatement).extract fork.projected :=
        projectCommonStatementTree_not_randomizerRootBad
          invalid extractor selectedStatement tree selectedCarries hgood
      have hcrypto := hpartition.resolve_left hnotRoot
      simpa [cachePreservingCommonFork?, hexists, fork,
        selectedStatement, selectedCarries,
        CachePreservingCryptoExtractionWin,
        Function.comp_def] using hcrypto

/-- Subtract the proved whole-program randomizer error before replay
forking.  This is the route that permits the base adversary-plus-verifier
budget instead of charging every replay-fork query. -/
theorem invalidAccepted_sub_randomizerError_le_good
    (game : OracleComp GlobalFsSourceSpec (PackedOutcome CallId))
    (invalid : (ν : Nat) → SelectionAt CallId ν → Prop)
    (materialization : OutputDerivedStatementMaterialization)
    (μ totalQueries : Nat)
    (origin : ProductionReplayOriginAt game μ)
    (queryOrigin : GlobalAcceptedRandomizerQueryOriginAt game μ)
    (extractor : AdaptiveGipaExtractor μ)
    (hbound : IsTotalQueryBound game totalQueries) :
    Pr[InvalidAcceptedAt invalid μ |
        multiStatementFsProbComp game] -
        adaptiveRandomizerRootError totalQueries μ ≤
      Pr[InvalidAcceptedRandomizerGoodAt invalid μ extractor |
        multiStatementFsProbComp game] := by
  apply (tsub_le_iff_right).2
  let bad : MultiStatementRunLog CallId → Prop :=
    fun run =>
      PackedAcceptedRandomizerRootBadAt μ extractor run.1.out
  calc
    Pr[InvalidAcceptedAt invalid μ |
        multiStatementFsProbComp game] ≤
      Pr[fun run =>
          InvalidAcceptedRandomizerGoodAt invalid μ extractor run ∨
            bad run |
        multiStatementFsProbComp game] := by
      apply probEvent_mono
      intro run _ hinvalid
      by_cases hbad : bad run
      · exact Or.inr hbad
      · exact Or.inl ⟨hinvalid, hbad⟩
    _ ≤
      Pr[InvalidAcceptedRandomizerGoodAt invalid μ extractor |
          multiStatementFsProbComp game] +
        Pr[bad | multiStatementFsProbComp game] :=
      probEvent_or_le
        (multiStatementFsProbComp game)
        (InvalidAcceptedRandomizerGoodAt invalid μ extractor)
        bad
    _ ≤
      Pr[InvalidAcceptedRandomizerGoodAt invalid μ extractor |
          multiStatementFsProbComp game] +
        adaptiveRandomizerRootError totalQueries μ := by
      exact add_le_add le_rfl
        (globalWrappedAcceptedRandomizerRootBadAt_le
          game materialization μ totalQueries origin queryOrigin
          extractor hbound)

/-- Complete quantitative pre-fork composition.

The dependent-set error is subtracted from the one global
adversary-plus-verifier run, monotonicity transports the resulting mass
through the fork recurrence, and the stronger-gate fork theorem supplies the
tree probability.  No replay query is charged to the base budget. -/
theorem invalidAccepted_randomizerAdjustedForkTransform_le_goodFork
    (game : OracleComp GlobalFsSourceSpec (PackedOutcome CallId))
    (invalid : (ν : Nat) → SelectionAt CallId ν → Prop)
    (queryBounds : (Ipp.FsWrappedSpec Fr).Domain → Nat)
    (materialization : OutputDerivedStatementMaterialization)
    (μ totalQueries : Nat)
    (origin : ProductionReplayOriginAt game μ)
    (queryOrigin : GlobalAcceptedRandomizerQueryOriginAt game μ)
    (extractor : AdaptiveGipaExtractor μ)
    (hbound : IsTotalQueryBound game totalQueries)
    (schedule :
      RandomizerGoodForkScheduleContract
        game invalid queryBounds μ extractor) :
    ((Ipp.forkTreeStep
        (queryBounds (Sum.inr ()) + 1) scalarModulus)^[μ])
        (Pr[InvalidAcceptedAt invalid μ |
            multiStatementFsProbComp game] -
          adaptiveRandomizerRootError totalQueries μ) ≤
      Pr[fun tree : Option (RawMultiStatementForkTree CallId μ) =>
          tree.isSome |
        randomizerGoodMultiStatementForkExperimentAt
          game invalid queryBounds μ extractor] := by
  classical
  let step :=
    Ipp.forkTreeStep
      (queryBounds (Sum.inr ()) + 1) scalarModulus
  have hbase :
      Pr[InvalidAcceptedAt invalid μ |
          multiStatementFsProbComp game] -
          adaptiveRandomizerRootError totalQueries μ ≤
        Pr[InvalidAcceptedRandomizerGoodAt invalid μ extractor |
          multiStatementFsProbComp game] :=
    invalidAccepted_sub_randomizerError_le_good
      game invalid materialization μ totalQueries origin queryOrigin
      extractor hbound
  have hmono :
      (step^[μ])
          (Pr[InvalidAcceptedAt invalid μ |
              multiStatementFsProbComp game] -
            adaptiveRandomizerRootError totalQueries μ) ≤
        (step^[μ])
          Pr[InvalidAcceptedRandomizerGoodAt invalid μ extractor |
            multiStatementFsProbComp game] :=
    (Ipp.forkTreeStep_monotone
      (queryBounds (Sum.inr ()) + 1) scalarModulus).iterate μ hbase
  have hfork :
      (step^[μ])
          Pr[InvalidAcceptedRandomizerGoodAt invalid μ extractor |
            multiStatementFsProbComp game] ≤
        Pr[fun tree : Option (RawMultiStatementForkTree CallId μ) =>
            tree.isSome |
          randomizerGoodMultiStatementForkExperimentAt
            game invalid queryBounds μ extractor] := by
    simpa [step, multiStatementFsProbComp,
      randomizerGoodMultiStatementForkExperimentAt, Fr, ZMod.card] using
      (Ipp.forkTree_bound μ
        (multiStatementForkMain game) queryBounds (Sum.inr ())
        (fun level run =>
          multiStatementRoundSlot
            (queryBounds (Sum.inr ())) level run)
        (InvalidAcceptedRandomizerGoodAt invalid μ extractor)
        schedule.baseReach schedule.selectorTotal schedule.slotOrder)
  exact hmono.trans hfork

/-- Final per-size pre-fork reduction.

The whole-program discrepancy-root error is paid exactly once before
forking.  The remaining transformed invalid-acceptance mass reaches only the
four cache-preserving KZG/GIPA extraction events. -/
theorem invalidAccepted_randomizerAdjustedForkTransform_le_cryptoExtraction
    (game : OracleComp GlobalFsSourceSpec (PackedOutcome CallId))
    (invalid : (ν : Nat) → SelectionAt CallId ν → Prop)
    (queryBounds : (Ipp.FsWrappedSpec Fr).Domain → Nat)
    (materialization : OutputDerivedStatementMaterialization)
    (μ totalQueries : Nat)
    (origin : ProductionReplayOriginAt game μ)
    (queryOrigin : GlobalAcceptedRandomizerQueryOriginAt game μ)
    (extractor : AdaptiveGipaExtractor μ)
    (hbound : IsTotalQueryBound game totalQueries)
    (schedule :
      RandomizerGoodForkScheduleContract
        game invalid queryBounds μ extractor)
    (hdetermines : ProductionKeyDeterminesStatementAt game μ)
    (semantics : GlobalAcceptedVerifierSemantics game)
    (invalidity : InvalidSelectionExcludesRepresentation invalid) :
    ((Ipp.forkTreeStep
        (queryBounds (Sum.inr ()) + 1) scalarModulus)^[μ])
        (Pr[InvalidAcceptedAt invalid μ |
            multiStatementFsProbComp game] -
          adaptiveRandomizerRootError totalQueries μ) ≤
      Pr[CachePreservingCryptoExtractionWin extractor |
        randomizerGoodCachePreservingS1ExperimentAt
          game invalid queryBounds μ extractor] := by
  exact
    (invalidAccepted_randomizerAdjustedForkTransform_le_goodFork
      game invalid queryBounds materialization μ totalQueries
      origin queryOrigin extractor hbound schedule).trans
      (randomizerGoodFork_isSome_le_cachePreservingCryptoExtraction
        game invalid queryBounds semantics invalidity μ extractor
        schedule.baseReach hdetermines)

#print axioms globalAdaptiveRandomizerPointBadFinset_card
#print axioms sourceOutcome_statement_materialized
#print axioms packedAcceptedRandomizerRootBadAt_log_witness
#print axioms globalSourceAcceptedRandomizerRootBadAt_le
#print axioms globalWrappedAcceptedRandomizerRootBadAt_le
#print axioms
  randomizerGoodMultiStatementForkExperimentAt_support_hasCommonStatement
#print axioms projectCommonStatementTree_not_randomizerRootBad
#print axioms
  randomizerGoodFork_isSome_le_cachePreservingCryptoExtraction
#print axioms invalidAccepted_sub_randomizerError_le_good
#print axioms
  invalidAccepted_randomizerAdjustedForkTransform_le_goodFork
#print axioms
  invalidAccepted_randomizerAdjustedForkTransform_le_cryptoExtraction

end

end Ipp.ShippingMultiStatement
