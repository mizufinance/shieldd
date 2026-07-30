import Ipp.ShippingMultiStatement
import Ipp.S1Bls12377ReductionInterfaces

/-!
Cache-preserving reduction from the adaptive shipping fork to the existing
fixed-statement S1 extraction relations.

The raw replay is never restarted.  Each leaf is projected in place to the
existing `S1ForkGameLeaf`, retaining the exact outer random-function log.
The common formal statement is selected from the produced tree, after the
complete adversary-and-verifier program has run.

One algebraic event remains explicit: the selected randomizer may lie in the
discrepancy-root set determined by the proof commitments.  This event cannot
be silently eliminated by subtracting `badEventError` before a fork whose
leaf gate checks only invalid acceptance.
-/

open OracleSpec OracleComp ENNReal Function
open scoped OracleSpec.PrimitiveQuery ENNReal BigOperators

namespace Ipp.ShippingMultiStatement

noncomputable section

open Ipp.Bls12377

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

/-- An exact-size selection projection exposes the dependent outcome that
was already stored in the heterogeneous output. -/
theorem selectionAt?_eq_some_exposes_outcome
    {Call : Type} {μ : Nat}
    {output : PackedOutcome Call}
    {selection : SelectionAt Call μ}
    (hselection : output.selectionAt? μ = some selection) :
    ∃ outcome : OutcomeAt Call μ,
      output = ⟨μ, outcome⟩ ∧ outcome.selection = selection := by
  rcases output with ⟨ν, outcome⟩
  by_cases hμ : ν = μ
  · subst ν
    refine ⟨outcome, rfl, ?_⟩
    simpa using hselection
  · simp [PackedOutcome.selectionAt?, PackedOutcome.at?, hμ] at hselection

/-- The exact dependent outcome selected by one
`ForkCarriesFormalStatement` leaf. -/
noncomputable def outcomeAtOfFormalStatement
    {Call : Type} {μ : Nat}
    (statement : Ipp.S1.Bls12377ReductionStatement μ)
    (run : MultiStatementRunLog Call)
    (hcarries :
      ∃ selection : SelectionAt Call μ,
        run.1.out.selectionAt? μ = some selection ∧
          selection.statement = statement) :
    OutcomeAt Call μ :=
  Classical.choose
    (selectionAt?_eq_some_exposes_outcome
      (Classical.choose_spec hcarries).1)

theorem outcomeAtOfFormalStatement_output_exact
    {Call : Type} {μ : Nat}
    (statement : Ipp.S1.Bls12377ReductionStatement μ)
    (run : MultiStatementRunLog Call)
    (hcarries :
      ∃ selection : SelectionAt Call μ,
        run.1.out.selectionAt? μ = some selection ∧
          selection.statement = statement) :
    run.1.out =
      ⟨μ, outcomeAtOfFormalStatement statement run hcarries⟩ :=
  (Classical.choose_spec
    (selectionAt?_eq_some_exposes_outcome
      (Classical.choose_spec hcarries).1)).1

theorem outcomeAtOfFormalStatement_statement_exact
    {Call : Type} {μ : Nat}
    (statement : Ipp.S1.Bls12377ReductionStatement μ)
    (run : MultiStatementRunLog Call)
    (hcarries :
      ∃ selection : SelectionAt Call μ,
        run.1.out.selectionAt? μ = some selection ∧
          selection.statement = statement) :
    (outcomeAtOfFormalStatement statement run hcarries).selection.statement =
      statement := by
  let selected := Classical.choose hcarries
  have hselected := Classical.choose_spec hcarries
  have houtcome :=
    Classical.choose_spec
      (selectionAt?_eq_some_exposes_outcome hselected.1)
  have heq :
      (outcomeAtOfFormalStatement statement run hcarries).selection =
        selected := by
    exact houtcome.2
  exact
    (congrArg
      (fun selection : SelectionAt Call μ => selection.statement)
      heq).trans hselected.2

/-- Project a common-statement raw tree to the existing S1 game-tree carrier.
Every leaf keeps the exact outer query log from the global replay. -/
noncomputable def projectCommonStatementTree
    {Call : Type} {μ : Nat}
    (statement : Ipp.S1.Bls12377ReductionStatement μ) :
    {depth : Nat} →
      (tree : RawMultiStatementForkTree Call depth) →
      ForkCarriesFormalStatement statement tree →
      Ipp.S1.S1ForkGameTree
        Fr g1PrimeSubgroup g2PrimeSubgroup ArkPairingOutput μ depth
  | 0, .leaf run, hcarries =>
      let outcome :=
        outcomeAtOfFormalStatement statement run hcarries
      .leaf ({
        proof := outcome.verifierResult.proof
        transcript := outcome.verifierResult.transcript
      }, run.2)
  | _ + 1, .node children, hcarries =>
      .node (fun k =>
        projectCommonStatementTree statement
          (children k) (hcarries k))

/-- Exact execution postconditions required to interpret a supported global
output as one call to the formal verifier.

This is a structural refinement boundary, not a soundness assumption:
`proof_exact` records the production proof reset and `accepts` records the
meaning of the returned Boolean. -/
structure GlobalAcceptedVerifierSemantics
    {Call : Type}
    (game : OracleComp GlobalFsSourceSpec (PackedOutcome Call)) : Prop where
  proof_exact :
    ∀ (μ : Nat) (outcome : OutcomeAt Call μ)
      (run : MultiStatementRunLog Call),
      run ∈ support (multiStatementFsProbComp game) →
      run.1.out = ⟨μ, outcome⟩ →
      outcome.verifierResult.proof = outcome.selection.proof
  accepts :
    ∀ (μ : Nat) (outcome : OutcomeAt Call μ)
      (run : MultiStatementRunLog Call),
      run ∈ support (multiStatementFsProbComp game) →
      run.1.out = ⟨μ, outcome⟩ →
      outcome.verifierResult.accept = true →
      Ipp.FsAccepts outcome.selection.statement
        outcome.verifierResult.proof
        outcome.verifierResult.transcript

/-- The shipping invalidity predicate has its intended semantic meaning.
It excludes a valid representation of the exact selected statement and proof;
it says nothing about verifier acceptance probabilities. -/
def InvalidSelectionExcludesRepresentation
    {Call : Type}
    (invalid : (μ : Nat) → SelectionAt Call μ → Prop) : Prop :=
  ∀ (μ : Nat) (selection : SelectionAt Call μ),
    invalid μ selection →
      ¬Ipp.SnarkPackV1.Refinement.HasValidRepresentation
        selection.statement selection.proof

/-- Projecting a supported common-statement invalid fork preserves both exact
formal acceptance and semantic invalidity at every leaf. -/
theorem projectCommonStatementTree_all_accepts_and_invalid
    {Call : Type}
    (game : OracleComp GlobalFsSourceSpec (PackedOutcome Call))
    (invalid : (μ : Nat) → SelectionAt Call μ → Prop)
    (semantics : GlobalAcceptedVerifierSemantics game)
    (invalidity : InvalidSelectionExcludesRepresentation invalid)
    {μ depth : Nat}
    (statement : Ipp.S1.Bls12377ReductionStatement μ)
    (tree : RawMultiStatementForkTree Call depth)
    (hcarries : ForkCarriesFormalStatement statement tree)
    (hsupport :
      tree.All (fun run =>
        run ∈ support (multiStatementFsProbComp game)))
    (hinvalid : tree.All (InvalidAcceptedAt invalid μ)) :
    let projected :=
      projectCommonStatementTree statement tree hcarries
    projected.All (fun run =>
        Ipp.FsAccepts statement run.1.proof run.1.transcript) ∧
      projected.All (fun run =>
        ¬Ipp.SnarkPackV1.Refinement.HasValidRepresentation
          statement run.1.proof) := by
  induction tree with
  | leaf run =>
      let outcome :=
        outcomeAtOfFormalStatement statement run hcarries
      have hout :
          run.1.out = ⟨μ, outcome⟩ :=
        outcomeAtOfFormalStatement_output_exact
          statement run hcarries
      have hstatement :
          outcome.selection.statement = statement :=
        outcomeAtOfFormalStatement_statement_exact
          statement run hcarries
      have hbranch :
          invalid μ outcome.selection ∧
            outcome.verifierResult.accept = true := by
        rw [hout] at hinvalid
        simpa [InvalidAcceptedAt, SelectedMu, InvalidAccepted] using hinvalid
      have hproof :
          outcome.verifierResult.proof = outcome.selection.proof :=
        semantics.proof_exact μ outcome run hsupport hout
      have haccepts :
          Ipp.FsAccepts statement
            outcome.verifierResult.proof
            outcome.verifierResult.transcript := by
        rw [← hstatement]
        exact semantics.accepts μ outcome run hsupport hout hbranch.2
      have hnot :
          ¬Ipp.SnarkPackV1.Refinement.HasValidRepresentation
            statement outcome.verifierResult.proof := by
        rw [hproof, ← hstatement]
        exact invalidity μ outcome.selection hbranch.1
      exact ⟨haccepts, hnot⟩
  | node children ih =>
      constructor
      · intro k
        exact (ih k (hcarries k) (hsupport k) (hinvalid k)).1
      · intro k
        exact (ih k (hcarries k) (hsupport k) (hinvalid k)).2

/-- The only algebraic S1 escape left after KZG structure and both GIPA
relations hold: the root randomizer is one of the discrepancy roots selected
by the proof-owned commitments. -/
def CommonForkRandomizerRootBad {μ : Nat}
    (statement : Ipp.S1.Bls12377ReductionStatement μ)
    (witnessOf : Ipp.S1.Bls12377ReductionWitness μ)
    (tree :
      Ipp.S1.S1ForkGameTree
        Fr g1PrimeSubgroup g2PrimeSubgroup ArkPairingOutput μ μ) : Prop :=
  let root := tree.root.1
  root.transcript.randomizer ∈
    Ipp.S1.s1BadRandomizersFor statement witnessOf
      (Ipp.proofRandomizerPayload root.proof)

private theorem not_kzgGood_implies_lane_win
    {μ depth : Nat}
    (statement : Ipp.S1.Bls12377ReductionStatement μ)
    (tree :
      Ipp.S1.S1ForkGameTree
        Fr g1PrimeSubgroup g2PrimeSubgroup ArkPairingOutput μ depth)
    (hleaf :
      tree.All (fun run =>
        Ipp.LeafData statement run.1.proof run.1.transcript))
    (hnot : ¬Ipp.S1.S1ForkGameKzgGood statement tree) :
    Ipp.S1.KzgVFalseOpeningGameTreeWin statement tree ∨
      Ipp.S1.KzgWFalseOpeningGameTreeWin statement tree := by
  classical
  induction tree with
  | leaf run =>
      have hfalse :
          Ipp.KzgFalseOpening
            statement run.1.proof run.1.transcript :=
        ⟨hleaf, hnot⟩
      exact
        (Ipp.kzgFalseOpening_iff_lane
          statement run.1.proof run.1.transcript).mp hfalse
  | node children ih =>
      simp only [Ipp.S1.S1ForkGameKzgGood, Ipp.RunTree.All] at hnot
      rw [not_forall] at hnot
      obtain ⟨k, hk⟩ := hnot
      rcases ih k (hleaf k) hk with hv | hw
      · exact Or.inl ⟨k, hv⟩
      · exact Or.inr ⟨k, hw⟩

/-- Exact pointwise extraction partition for a common accepted invalid tree.

The four right-hand game predicates are the existing fixed-statement S1
KZG/GIPA targets.  No cache, proof, or transcript is regenerated. -/
theorem commonAcceptedInvalidFork_implies_extraction_or_randomizerBad
    {μ : Nat}
    (statement : Ipp.S1.Bls12377ReductionStatement μ)
    (witnessOf : Ipp.S1.Bls12377ReductionWitness μ)
    (tree :
      Ipp.S1.S1ForkGameTree
        Fr g1PrimeSubgroup g2PrimeSubgroup ArkPairingOutput μ μ)
    (haccepts :
      tree.All (fun run =>
        Ipp.FsAccepts statement run.1.proof run.1.transcript))
    (hinvalid :
      tree.All (fun run =>
        ¬Ipp.SnarkPackV1.Refinement.HasValidRepresentation
          statement run.1.proof)) :
    CommonForkRandomizerRootBad statement witnessOf tree ∨
      Ipp.S1.KzgVFalseOpeningGameWin statement (some tree) ∨
      Ipp.S1.KzgWFalseOpeningGameWin statement (some tree) ∨
      Ipp.S1.GipaRootOpeningGameWin
        statement witnessOf (some tree) ∨
      Ipp.S1.GipaProductLaneGameWin
        statement witnessOf (some tree) := by
  classical
  have hleaf :
      tree.All (fun run =>
        Ipp.LeafData statement run.1.proof run.1.transcript) :=
    haccepts.imp (fun _ h => h.2.2.2.2.2.2.1)
  by_cases hkzg : Ipp.S1.S1ForkGameKzgGood statement tree
  · by_cases hopen :
      Ipp.S1.GipaRootOpeningGameRelation
        statement witnessOf tree
    · by_cases hproduct :
        Ipp.S1.GipaProductLaneGameRelation
          statement witnessOf tree
      · by_cases hroot :
          CommonForkRandomizerRootBad statement witnessOf tree
        · exact Or.inl hroot
        · let root := tree.root.1
          let r := root.transcript.randomizer
          let witness :=
            witnessOf (Ipp.proofRandomizerPayload root.proof)
          have hopen' :
              Ipp.SnarkPackV1.Refinement.RootOpensAt
                statement root.proof.ComA root.proof.ComB witness := by
            simpa [Ipp.S1.GipaRootOpeningGameRelation,
              root, witness] using hopen
          have ht :
              (root.proof.ipAb, root.proof.aggC) =
                Ipp.ipm (F := Fr) (Ipp.u4TLanePairing statement.e)
                  (fun i =>
                    ((witness.items i).a, (witness.items i).c))
                  (fun i =>
                    (r ^ (i : Nat) • (witness.items i).b,
                      r ^ (i : Nat))) := by
            apply Ipp.u4TEmbedding_injective (F := Fr)
            simpa [Ipp.S1.GipaProductLaneGameRelation,
              Ipp.u4TCommitMap, root, r, witness] using hproduct
          rw [Ipp.ipm_u4_componentwise] at ht
          have hip :
              root.proof.ipAb =
                ∑ i : Fin (2 ^ μ),
                  statement.e (witness.items i).a
                    (r ^ (i : Nat) • (witness.items i).b) :=
            congrArg (fun z :
              ArkPairingOutput × g1PrimeSubgroup => z.1) ht
          have hagg :
              root.proof.aggC =
                ∑ i : Fin (2 ^ μ),
                  r ^ (i : Nat) • (witness.items i).c :=
            congrArg (fun z :
              ArkPairingOutput × g1PrimeSubgroup => z.2) ht
          have hrootGood :
              r ∉ Ipp.discrepancyRootSet (fun i =>
                Ipp.groth16Discrepancy
                  statement.e statement.alpha statement.beta
                  statement.gamma statement.delta
                  (fun j => (witness.items j).a)
                  (fun j => (witness.items j).c)
                  statement.Aic
                  (fun j => (witness.items j).b) i) := by
            have hnotRoot :
                r ∉
                  (Ipp.S1.s1BadRandomizersFor
                    statement witnessOf
                    (Ipp.proofRandomizerPayload root.proof) :
                    Set Fr) := by
              simpa [CommonForkRandomizerRootBad, root, r] using hroot
            rw [Ipp.S1.coe_s1BadRandomizersFor] at hnotRoot
            simpa [root, r, witness] using hnotRoot
          have hacceptsRoot :
              Ipp.FsAccepts statement
                root.proof root.transcript :=
            haccepts.root
          have hppe :
              ∀ i,
                statement.e
                    (witness.items i).a (witness.items i).b =
                  Ipp.groth16Rhs statement.e statement.alpha
                    (statement.Aic i) (witness.items i).c
                    statement.beta statement.gamma statement.delta := by
            apply Ipp.u4_ppe_per_index
              statement.e statement.alpha statement.beta
              statement.gamma statement.delta
              (fun i => (witness.items i).a)
              (fun i => (witness.items i).c)
              statement.Aic
              (fun i => (witness.items i).b)
              r hrootGood
            exact Ipp.u4_terminal_decoder
              statement.e statement.alpha statement.beta
              statement.gamma statement.delta
              (fun i => (witness.items i).a)
              (fun i => (witness.items i).c)
              statement.Aic
              (fun i => (witness.items i).b)
              r root.proof.ipAb root.proof.aggC
              (∑ i : Fin (2 ^ μ), r ^ (i : Nat))
              (∑ i : Fin (2 ^ μ),
                r ^ (i : Nat) • statement.Aic i)
              hip hagg rfl rfl
              (by simpa [root, r] using
                hacceptsRoot.2.2.2.2.2.2.2)
          have hvalid :
              Ipp.SnarkPackV1.Refinement.HasValidRepresentation
                statement root.proof := by
            apply
              (Ipp.SnarkPackV1.Refinement.hasValidRepresentation_iff
                statement root.proof).2
            exact ⟨witness, hopen', hppe⟩
          exact False.elim (hinvalid.root hvalid)
      · exact Or.inr (Or.inr (Or.inr (Or.inr ⟨hkzg, hopen, hproduct⟩)))
    · exact Or.inr (Or.inr (Or.inr (Or.inl ⟨hkzg, hopen⟩)))
  · rcases not_kzgGood_implies_lane_win
      statement tree hleaf hkzg with hv | hw
    · exact Or.inr (Or.inl hv)
    · exact Or.inr (Or.inr (Or.inl hw))

/-- A produced common-statement fork together with its in-place projection.
The raw tree is retained so support and invalidity facts remain available. -/
structure CachePreservingCommonFork (Call : Type) (μ : Nat) where
  rawTree : RawMultiStatementForkTree Call μ
  statement : Ipp.S1.Bls12377ReductionStatement μ
  carries : ForkCarriesFormalStatement statement rawTree

namespace CachePreservingCommonFork

def projected {Call : Type} {μ : Nat}
    (fork : CachePreservingCommonFork Call μ) :
    Ipp.S1.S1ForkGameTree
      Fr g1PrimeSubgroup g2PrimeSubgroup ArkPairingOutput μ μ :=
  projectCommonStatementTree
    fork.statement fork.rawTree fork.carries

end CachePreservingCommonFork

/-- Select a common statement only from a tree that was actually produced.
This is a proof-erasing map over the existing raw experiment. -/
noncomputable def cachePreservingCommonFork?
    {Call : Type} {μ : Nat} :
    Option (RawMultiStatementForkTree Call μ) →
      Option (CachePreservingCommonFork Call μ)
  | none => none
  | some tree =>
      if h :
          ∃ statement : Ipp.S1.Bls12377ReductionStatement μ,
            ForkCarriesFormalStatement statement tree then
        let statement := Classical.choose h
        some {
          rawTree := tree
          statement := statement
          carries := Classical.choose_spec h
        }
      else
        none

/-- The cache-preserving extraction program is a pure map of the complete
raw global replay.  It issues no query and does not run a fixed-statement
continuation. -/
noncomputable def cachePreservingS1ExtractionExperimentAt
    {Call : Type}
    (game : OracleComp GlobalFsSourceSpec (PackedOutcome Call))
    (invalid : (μ : Nat) → SelectionAt Call μ → Prop)
    (queryBounds :
      (Ipp.FsWrappedSpec Fr).Domain → Nat)
    (μ : Nat) :
    OracleComp (Ipp.FsWrappedSpec Fr)
      (Option (CachePreservingCommonFork Call μ)) :=
  cachePreservingCommonFork? <$>
    rawMultiStatementForkExperimentAt
      game invalid queryBounds μ

/-- The in-place common-statement projection adds no oracle queries. -/
theorem cachePreservingS1ExtractionExperimentAt_isTotalQueryBound_iff
    {Call : Type}
    (game : OracleComp GlobalFsSourceSpec (PackedOutcome Call))
    (invalid : (ν : Nat) → SelectionAt Call ν → Prop)
    (queryBounds :
      (Ipp.FsWrappedSpec Fr).Domain → Nat)
    (μ queryBudget : Nat) :
    IsTotalQueryBound
        (cachePreservingS1ExtractionExperimentAt
          game invalid queryBounds μ) queryBudget ↔
      IsTotalQueryBound
        (rawMultiStatementForkExperimentAt
          game invalid queryBounds μ) queryBudget := by
  unfold cachePreservingS1ExtractionExperimentAt
  exact isQueryBound_map_iff _ _ queryBudget
    (fun _ b => 0 < b) (fun _ b => b - 1)

/-- A pre-fork adaptive GIPA extractor chooses one ordinary S1 extractor for
each possible formal statement, before the raw experiment is sampled. -/
abbrev AdaptiveGipaExtractor (μ : Nat) :=
  (statement : Ipp.S1.Bls12377ReductionStatement μ) →
    Ipp.S1.Bls12377GipaExtractor μ

/-- Exact target union of the cache-preserving reduction.  Four disjuncts are
the existing fixed-statement S1 extraction games; the first is the explicit
adaptive algebraic-bad event. -/
def CachePreservingS1ExtractionWin
    {Call : Type} {μ : Nat}
    (extractor : AdaptiveGipaExtractor μ) :
    Option (CachePreservingCommonFork Call μ) → Prop
  | none => False
  | some fork =>
      let projected := fork.projected
      let witnessOf := (extractor fork.statement).extract
      CommonForkRandomizerRootBad
          fork.statement witnessOf projected ∨
        Ipp.S1.KzgVFalseOpeningGameWin
          fork.statement (some projected) ∨
        Ipp.S1.KzgWFalseOpeningGameWin
          fork.statement (some projected) ∨
        Ipp.S1.GipaRootOpeningGameWin
          fork.statement witnessOf (some projected) ∨
        Ipp.S1.GipaProductLaneGameWin
          fork.statement witnessOf (some projected)

def CachePreservingRandomizerRootWin
    {Call : Type} {μ : Nat}
    (extractor : AdaptiveGipaExtractor μ) :
    Option (CachePreservingCommonFork Call μ) → Prop
  | none => False
  | some fork =>
      CommonForkRandomizerRootBad fork.statement
        (extractor fork.statement).extract fork.projected

def CachePreservingKzgVWin
    {Call : Type} {μ : Nat} :
    Option (CachePreservingCommonFork Call μ) → Prop
  | none => False
  | some fork =>
      Ipp.S1.KzgVFalseOpeningGameWin
        fork.statement (some fork.projected)

def CachePreservingKzgWWin
    {Call : Type} {μ : Nat} :
    Option (CachePreservingCommonFork Call μ) → Prop
  | none => False
  | some fork =>
      Ipp.S1.KzgWFalseOpeningGameWin
        fork.statement (some fork.projected)

def CachePreservingGipaRootWin
    {Call : Type} {μ : Nat}
    (extractor : AdaptiveGipaExtractor μ) :
    Option (CachePreservingCommonFork Call μ) → Prop
  | none => False
  | some fork =>
      Ipp.S1.GipaRootOpeningGameWin fork.statement
        (extractor fork.statement).extract (some fork.projected)

def CachePreservingGipaProductWin
    {Call : Type} {μ : Nat}
    (extractor : AdaptiveGipaExtractor μ) :
    Option (CachePreservingCommonFork Call μ) → Prop
  | none => False
  | some fork =>
      Ipp.S1.GipaProductLaneGameWin fork.statement
        (extractor fork.statement).extract (some fork.projected)

theorem cachePreservingS1ExtractionWin_iff_components
    {Call : Type} {μ : Nat}
    (extractor : AdaptiveGipaExtractor μ)
    (output : Option (CachePreservingCommonFork Call μ)) :
    CachePreservingS1ExtractionWin extractor output ↔
      CachePreservingRandomizerRootWin extractor output ∨
        CachePreservingKzgVWin output ∨
        CachePreservingKzgWWin output ∨
        CachePreservingGipaRootWin extractor output ∨
        CachePreservingGipaProductWin extractor output := by
  cases output <;> rfl

/-- The combined cache-preserving target pays exactly the five explicit
component events. -/
theorem cachePreservingS1Extraction_probability_le_component_sum
    {Call : Type} {μ : Nat}
    (game : OracleComp GlobalFsSourceSpec (PackedOutcome Call))
    (invalid : (ν : Nat) → SelectionAt Call ν → Prop)
    (queryBounds :
      (Ipp.FsWrappedSpec Fr).Domain → Nat)
    (extractor : AdaptiveGipaExtractor μ) :
    Pr[CachePreservingS1ExtractionWin extractor |
        cachePreservingS1ExtractionExperimentAt
          game invalid queryBounds μ] ≤
      Pr[CachePreservingRandomizerRootWin extractor |
          cachePreservingS1ExtractionExperimentAt
            game invalid queryBounds μ] +
        Pr[CachePreservingKzgVWin |
            cachePreservingS1ExtractionExperimentAt
              game invalid queryBounds μ] +
        Pr[CachePreservingKzgWWin |
            cachePreservingS1ExtractionExperimentAt
              game invalid queryBounds μ] +
        Pr[CachePreservingGipaRootWin extractor |
            cachePreservingS1ExtractionExperimentAt
              game invalid queryBounds μ] +
        Pr[CachePreservingGipaProductWin extractor |
            cachePreservingS1ExtractionExperimentAt
              game invalid queryBounds μ] := by
  let experiment :=
    cachePreservingS1ExtractionExperimentAt
      game invalid queryBounds μ
  calc
    Pr[CachePreservingS1ExtractionWin extractor | experiment] ≤
        Pr[fun output =>
          CachePreservingRandomizerRootWin extractor output ∨
            (CachePreservingKzgVWin output ∨
              (CachePreservingKzgWWin output ∨
                (CachePreservingGipaRootWin extractor output ∨
                  CachePreservingGipaProductWin extractor output))) |
          experiment] := by
      apply probEvent_mono
      intro output _ hwin
      exact
        (cachePreservingS1ExtractionWin_iff_components
          extractor output).mp hwin
    _ ≤
        Pr[CachePreservingRandomizerRootWin extractor | experiment] +
          Pr[CachePreservingKzgVWin | experiment] +
          Pr[CachePreservingKzgWWin | experiment] +
          Pr[CachePreservingGipaRootWin extractor | experiment] +
          Pr[CachePreservingGipaProductWin extractor | experiment] := by
      have hroot :=
        probEvent_or_le experiment
          (CachePreservingRandomizerRootWin extractor)
          (fun output =>
            CachePreservingKzgVWin output ∨
              (CachePreservingKzgWWin output ∨
                (CachePreservingGipaRootWin extractor output ∨
                  CachePreservingGipaProductWin extractor output)))
      have hv :=
        probEvent_or_le experiment
          CachePreservingKzgVWin
          (fun output =>
            CachePreservingKzgWWin output ∨
              (CachePreservingGipaRootWin extractor output ∨
                CachePreservingGipaProductWin extractor output))
      have hw :=
        probEvent_or_le experiment
          CachePreservingKzgWWin
          (fun output =>
            CachePreservingGipaRootWin extractor output ∨
              CachePreservingGipaProductWin extractor output)
      have hgipa :=
        probEvent_or_le experiment
          (CachePreservingGipaRootWin extractor)
          (CachePreservingGipaProductWin extractor)
      calc
        _ ≤ Pr[CachePreservingRandomizerRootWin extractor | experiment] +
              Pr[fun output =>
                CachePreservingKzgVWin output ∨
                  (CachePreservingKzgWWin output ∨
                    (CachePreservingGipaRootWin extractor output ∨
                      CachePreservingGipaProductWin extractor output)) |
                experiment] := hroot
        _ ≤ Pr[CachePreservingRandomizerRootWin extractor | experiment] +
              (Pr[CachePreservingKzgVWin | experiment] +
                Pr[fun output =>
                  CachePreservingKzgWWin output ∨
                    (CachePreservingGipaRootWin extractor output ∨
                      CachePreservingGipaProductWin extractor output) |
                  experiment]) := add_le_add le_rfl hv
        _ ≤ Pr[CachePreservingRandomizerRootWin extractor | experiment] +
              (Pr[CachePreservingKzgVWin | experiment] +
                (Pr[CachePreservingKzgWWin | experiment] +
                  Pr[fun output =>
                    CachePreservingGipaRootWin extractor output ∨
                      CachePreservingGipaProductWin extractor output |
                    experiment])) :=
          add_le_add le_rfl (add_le_add le_rfl hw)
        _ ≤ Pr[CachePreservingRandomizerRootWin extractor | experiment] +
              (Pr[CachePreservingKzgVWin | experiment] +
                (Pr[CachePreservingKzgWWin | experiment] +
                  (Pr[CachePreservingGipaRootWin extractor | experiment] +
                    Pr[CachePreservingGipaProductWin extractor |
                      experiment]))) :=
          add_le_add le_rfl
            (add_le_add le_rfl
              (add_le_add le_rfl hgipa))
        _ = _ := by
          ac_rfl

/-- Pointwise cache-preserving reduction for one selected proof size. -/
theorem rawForkFormalStatementSucceededAt_le_cachePreservingS1Extraction
    {Call : Type}
    (game : OracleComp GlobalFsSourceSpec (PackedOutcome Call))
    (invalid : (μ : Nat) → SelectionAt Call μ → Prop)
    (queryBounds :
      (Ipp.FsWrappedSpec Fr).Domain → Nat)
    (semantics : GlobalAcceptedVerifierSemantics game)
    (invalidity : InvalidSelectionExcludesRepresentation invalid)
    (μ : Nat)
    (extractor : AdaptiveGipaExtractor μ)
    (hbaseReach : ∀ level, level < μ →
      Ipp.CfReachable (multiStatementForkMain game)
        queryBounds (Sum.inr ())
        (fun run =>
          multiStatementRoundSlot
            (queryBounds (Sum.inr ())) level run)) :
    Pr[RawForkFormalStatementSucceededAt invalid μ |
        rawMultiStatementForkExperimentAt
          game invalid queryBounds μ] ≤
      Pr[CachePreservingS1ExtractionWin extractor |
        cachePreservingS1ExtractionExperimentAt
          game invalid queryBounds μ] := by
  classical
  rw [cachePreservingS1ExtractionExperimentAt, probEvent_map]
  apply probEvent_mono
  intro output hsupport hsucceeded
  cases output with
  | none =>
      simp [RawForkFormalStatementSucceededAt] at hsucceeded
  | some tree =>
      obtain ⟨statement, hcarries, hinvalid⟩ := hsucceeded
      have hexists :
          ∃ statement : Ipp.S1.Bls12377ReductionStatement μ,
            ForkCarriesFormalStatement statement tree :=
        ⟨statement, hcarries⟩
      let selectedStatement :=
        Classical.choose hexists
      let selectedCarries :
          ForkCarriesFormalStatement selectedStatement tree :=
        Classical.choose_spec hexists
      let fork : CachePreservingCommonFork Call μ := {
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
            (InvalidAcceptedAt invalid μ) 0 none tree := by
        change some tree ∈ support
          (Ipp.forkTreeCombined μ (multiStatementForkMain game)
            queryBounds (Sum.inr ())
            (fun level run =>
              multiStatementRoundSlot
                (queryBounds (Sum.inr ())) level run)
            (InvalidAcceptedAt invalid μ)
            μ (Nat.le_refl μ)) at hsupport
        exact Ipp.forkTreeCombined_support_props
          μ (multiStatementForkMain game)
          queryBounds (Sum.inr ())
          (fun level run =>
            multiStatementRoundSlot
              (queryBounds (Sum.inr ())) level run)
          (InvalidAcceptedAt invalid μ)
          hbaseReach hsupport
      have hproperties :=
        projectCommonStatementTree_all_accepts_and_invalid
          game invalid semantics invalidity selectedStatement tree
          selectedCarries hconsistent.all_support hinvalid
      have hwin :=
        commonAcceptedInvalidFork_implies_extraction_or_randomizerBad
          selectedStatement (extractor selectedStatement).extract
          fork.projected hproperties.1 hproperties.2
      simpa [cachePreservingCommonFork?,
        hexists, fork, selectedStatement, selectedCarries,
        CachePreservingS1ExtractionWin, Function.comp_def] using hwin

/-- The pointwise construction instantiates the generic reduction interface
for every declared active proof size. -/
theorem cachePreserving_rawForkExtractionReductionHolds
    {Call : Type}
    (game : OracleComp GlobalFsSourceSpec (PackedOutcome Call))
    (invalid : (μ : Nat) → SelectionAt Call μ → Prop)
    (queryBounds :
      (Ipp.FsWrappedSpec Fr).Domain → Nat)
    (activeMu : Finset Nat)
    (semantics : GlobalAcceptedVerifierSemantics game)
    (invalidity : InvalidSelectionExcludesRepresentation invalid)
    (extractor : (μ : Nat) → AdaptiveGipaExtractor μ)
    (hbaseReach : ∀ μ ∈ activeMu, ∀ level, level < μ →
      Ipp.CfReachable (multiStatementForkMain game)
        queryBounds (Sum.inr ())
        (fun run =>
          multiStatementRoundSlot
            (queryBounds (Sum.inr ())) level run)) :
    RawForkExtractionReductionHolds
      game invalid queryBounds activeMu
      (fun μ =>
        cachePreservingS1ExtractionExperimentAt
          game invalid queryBounds μ)
      (fun μ => CachePreservingS1ExtractionWin (extractor μ)) := by
  intro μ hμ
  exact
    rawForkFormalStatementSucceededAt_le_cachePreservingS1Extraction
      game invalid queryBounds semantics invalidity μ (extractor μ)
      (hbaseReach μ hμ)

/-- Exact query-budget error used by an adaptive randomizer-root lemma.
The caller must state which complete experiment the budget covers. -/
def adaptiveRandomizerRootError
    (totalQueries μ : Nat) : ℝ≥0∞ :=
  (((totalQueries * (2 ^ μ - 1) : Nat) : ℝ≥0∞) /
    ((scalarModulus : ℝ≥0∞) - 2))

/-- The precise remaining algebraic theorem target for the current
post-fork event.

Because the event is measured on `forkTreeCombined`, `totalQueries` must bound
that complete replay-fork experiment, not merely one adversary-plus-verifier
run.  A smaller base-game budget is valid only after moving the randomizer-good
gate before the fork and proving the corresponding pre-fork subtraction. -/
def CachePreservingForkRandomizerRootBoundHolds
    {Call : Type}
    (game : OracleComp GlobalFsSourceSpec (PackedOutcome Call))
    (invalid : (μ : Nat) → SelectionAt Call μ → Prop)
    (queryBounds :
      (Ipp.FsWrappedSpec Fr).Domain → Nat)
    (μ totalQueries : Nat)
    (extractor : AdaptiveGipaExtractor μ) : Prop :=
  IsTotalQueryBound
      (cachePreservingS1ExtractionExperimentAt
        game invalid queryBounds μ) totalQueries ∧
    Pr[CachePreservingRandomizerRootWin extractor |
      cachePreservingS1ExtractionExperimentAt
        game invalid queryBounds μ] ≤
      adaptiveRandomizerRootError totalQueries μ

/-- A standalone target whose public statement is selected by the completed
adaptive run.  The dependent pair prevents evidence for one selected
statement from being reinterpreted under another statement. -/
abbrev AdaptiveSelectedStatementEvidence
    (μ : Nat)
    (Evidence :
      Ipp.S1.Bls12377ReductionStatement μ → Type) :=
  Sigma Evidence

/-- Exact distribution bridge required between a shipping-derived adaptive
experiment and a standalone computational game.

Unlike `FixedParameterOutputBridge`, this bridge does not fix a formal
statement before oracle access.  `reduce` emits the statement and its
statement-indexed evidence together after the mapped program completes.
`output_event_eq` is equality for every output event, so it is a semantic
program-refinement obligation rather than an assumption of one desired
security inequality. -/
structure AdaptiveSelectedStatementStandaloneBridge
    {MappedOutput : Type}
    {μ : Nat}
    {Evidence :
      Ipp.S1.Bls12377ReductionStatement μ → Type}
    (mapped : OracleComp (Ipp.FsWrappedSpec Fr) MappedOutput)
    (standalone :
      OracleComp (Ipp.FsWrappedSpec Fr)
        (Option (AdaptiveSelectedStatementEvidence μ Evidence))) where
  reduce :
    MappedOutput →
      Option (AdaptiveSelectedStatementEvidence μ Evidence)
  output_event_eq :
    ∀ event :
        Option (AdaptiveSelectedStatementEvidence μ Evidence) → Prop,
      Pr[event | reduce <$> mapped] =
        Pr[event | standalone]

/-- A pointwise extractor plus an all-events adaptive bridge transports a
shipping-derived win into the corresponding standalone game.  The statement
remains selected after execution throughout the theorem. -/
theorem adaptiveSelectedStatementWin_le_standalone
    {MappedOutput : Type}
    {μ : Nat}
    {Evidence :
      Ipp.S1.Bls12377ReductionStatement μ → Type}
    (mapped : OracleComp (Ipp.FsWrappedSpec Fr) MappedOutput)
    (standalone :
      OracleComp (Ipp.FsWrappedSpec Fr)
        (Option (AdaptiveSelectedStatementEvidence μ Evidence)))
    (bridge :
      AdaptiveSelectedStatementStandaloneBridge mapped standalone)
    (mappedWin : MappedOutput → Prop)
    (standaloneWin :
      (statement : Ipp.S1.Bls12377ReductionStatement μ) →
        Evidence statement → Prop)
    (preserves :
      ∀ output, mappedWin output →
        match bridge.reduce output with
        | none => False
        | some evidence =>
            standaloneWin evidence.1 evidence.2) :
    Pr[mappedWin | mapped] ≤
      Pr[fun output =>
          match output with
          | none => False
          | some evidence =>
              standaloneWin evidence.1 evidence.2 |
        standalone] := by
  let target :
      Option (AdaptiveSelectedStatementEvidence μ Evidence) → Prop :=
    fun
    | none => False
    | some evidence => standaloneWin evidence.1 evidence.2
  calc
    _ ≤ Pr[target ∘ bridge.reduce | mapped] := by
      apply probEvent_mono
      intro output _ hwin
      exact preserves output hwin
    _ = Pr[target | bridge.reduce <$> mapped] := by
      rw [probEvent_map]
    _ = Pr[target | standalone] :=
      bridge.output_event_eq target

/-- Intermediate bounds for the four shipping-derived target events after
cache-preserving projection.

This is deliberately not a final computational-assumption interface: every
field still measures the shipping-derived experiment.  FV closure must prove
an adaptive selected-statement bridge into standalone KZG/GIPA games and apply
security only to those standalone games. -/
structure IntermediateCachePreservingBls12377GameBounds
    {Call : Type}
    (game : OracleComp GlobalFsSourceSpec (PackedOutcome Call))
    (invalid : (ν : Nat) → SelectionAt Call ν → Prop)
    (queryBounds :
      (Ipp.FsWrappedSpec Fr).Domain → Nat)
    (μ : Nat)
    (extractor : AdaptiveGipaExtractor μ) where
  epsilonKzgV : ℝ≥0∞
  epsilonKzgW : ℝ≥0∞
  epsilonGipaRoot : ℝ≥0∞
  epsilonGipaProduct : ℝ≥0∞
  kzgV_gameWin_le :
    Pr[CachePreservingKzgVWin |
        cachePreservingS1ExtractionExperimentAt
          game invalid queryBounds μ] ≤ epsilonKzgV
  kzgW_gameWin_le :
    Pr[CachePreservingKzgWWin |
        cachePreservingS1ExtractionExperimentAt
          game invalid queryBounds μ] ≤ epsilonKzgW
  gipaRoot_gameWin_le :
    Pr[CachePreservingGipaRootWin extractor |
        cachePreservingS1ExtractionExperimentAt
          game invalid queryBounds μ] ≤ epsilonGipaRoot
  gipaProduct_gameWin_le :
    Pr[CachePreservingGipaProductWin extractor |
        cachePreservingS1ExtractionExperimentAt
          game invalid queryBounds μ] ≤ epsilonGipaProduct

def IntermediateCachePreservingBls12377GameBounds.total
    {Call : Type}
    {game : OracleComp GlobalFsSourceSpec (PackedOutcome Call)}
    {invalid : (ν : Nat) → SelectionAt Call ν → Prop}
    {queryBounds :
      (Ipp.FsWrappedSpec Fr).Domain → Nat}
    {μ : Nat}
    {extractor : AdaptiveGipaExtractor μ}
    (security :
      IntermediateCachePreservingBls12377GameBounds
        game invalid queryBounds μ extractor) : ℝ≥0∞ :=
  security.epsilonKzgV + security.epsilonKzgW +
    security.epsilonGipaRoot + security.epsilonGipaProduct

/-- Intermediate quantitative endpoint of the cache-preserving per-size
reduction.  The four right-hand terms are still bounds on shipping-derived
events; this theorem is not the standalone-game security endpoint. -/
theorem rawForkFormalStatementSucceededAt_le_adaptive_error_add_intermediateBounds
    {Call : Type}
    (game : OracleComp GlobalFsSourceSpec (PackedOutcome Call))
    (invalid : (ν : Nat) → SelectionAt Call ν → Prop)
    (queryBounds :
      (Ipp.FsWrappedSpec Fr).Domain → Nat)
    (semantics : GlobalAcceptedVerifierSemantics game)
    (invalidity : InvalidSelectionExcludesRepresentation invalid)
    (μ totalQueries : Nat)
    (extractor : AdaptiveGipaExtractor μ)
    (hbaseReach : ∀ level, level < μ →
      Ipp.CfReachable (multiStatementForkMain game)
        queryBounds (Sum.inr ())
        (fun run =>
          multiStatementRoundSlot
            (queryBounds (Sum.inr ())) level run))
    (randomizer :
      CachePreservingForkRandomizerRootBoundHolds
        game invalid queryBounds μ totalQueries extractor)
    (security :
      IntermediateCachePreservingBls12377GameBounds
        game invalid queryBounds μ extractor) :
    Pr[RawForkFormalStatementSucceededAt invalid μ |
        rawMultiStatementForkExperimentAt
          game invalid queryBounds μ] ≤
      adaptiveRandomizerRootError totalQueries μ + security.total := by
  let experiment :=
    cachePreservingS1ExtractionExperimentAt
      game invalid queryBounds μ
  calc
    _ ≤ Pr[CachePreservingS1ExtractionWin extractor | experiment] :=
      rawForkFormalStatementSucceededAt_le_cachePreservingS1Extraction
        game invalid queryBounds semantics invalidity μ extractor hbaseReach
    _ ≤
        Pr[CachePreservingRandomizerRootWin extractor | experiment] +
          Pr[CachePreservingKzgVWin | experiment] +
          Pr[CachePreservingKzgWWin | experiment] +
          Pr[CachePreservingGipaRootWin extractor | experiment] +
          Pr[CachePreservingGipaProductWin extractor | experiment] :=
      cachePreservingS1Extraction_probability_le_component_sum
        game invalid queryBounds extractor
    _ ≤ adaptiveRandomizerRootError totalQueries μ +
          security.epsilonKzgV + security.epsilonKzgW +
          security.epsilonGipaRoot + security.epsilonGipaProduct := by
      exact
        add_le_add
          (add_le_add
            (add_le_add
              (add_le_add randomizer.2 security.kzgV_gameWin_le)
              security.kzgW_gameWin_le)
            security.gipaRoot_gameWin_le)
          security.gipaProduct_gameWin_le
    _ = adaptiveRandomizerRootError totalQueries μ +
          security.total := by
      simp only [IntermediateCachePreservingBls12377GameBounds.total]
      ac_rfl

#print axioms selectionAt?_eq_some_exposes_outcome
#print axioms projectCommonStatementTree_all_accepts_and_invalid
#print axioms
  cachePreservingS1ExtractionExperimentAt_isTotalQueryBound_iff
#print axioms commonAcceptedInvalidFork_implies_extraction_or_randomizerBad
#print axioms cachePreservingS1Extraction_probability_le_component_sum
#print axioms rawForkFormalStatementSucceededAt_le_cachePreservingS1Extraction
#print axioms cachePreserving_rawForkExtractionReductionHolds
#print axioms adaptiveSelectedStatementWin_le_standalone
#print axioms
  rawForkFormalStatementSucceededAt_le_adaptive_error_add_intermediateBounds

end

end Ipp.ShippingMultiStatement
