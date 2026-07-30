import Ipp.ShippingMultiStatementS1Reduction
import Ipp.S1Bls12377StandaloneGames

/-!
Accepted-only adaptive replay for shipping SnarkPack.

The computational target in this module is independent of semantic invalidity,
randomizer-good filters, and knowledge extractors.  It forks the complete
shared-cache shipping program using only the selected proof size and the
shipping verifier's returned acceptance bit.

Projection is a pure, fail-closed traversal of the tree that was already
produced.  It never reruns a verifier, chooses a witness, or issues an oracle
query.  Every projected leaf retains the exact outer replay log.
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

/-- Accepted shipping execution in one exact dependent proof-size partition.

This gate deliberately omits semantic invalidity and every extractor-owned
predicate.  Those predicates may strengthen the source event, but they do not
define the standalone computational target. -/
def SelectedAcceptedAt {Call : Type}
    (μ : Nat) : MultiStatementRunLog Call → Prop :=
  fun run =>
    SelectedMu μ run.1.out ∧ run.1.out.accept = true

/-- Semantic invalid acceptance is a strengthening of the accepted-only
gate. -/
theorem invalidAcceptedAt_implies_selectedAcceptedAt
    {Call : Type}
    (invalid : (ν : Nat) → SelectionAt Call ν → Prop)
    (μ : Nat)
    (run : MultiStatementRunLog Call)
    (h : InvalidAcceptedAt invalid μ run) :
    SelectedAcceptedAt μ run := by
  rcases run.1.out with ⟨ν, outcome⟩
  exact ⟨h.1, h.2.2⟩

/-- The accepted-only replay-fork experiment.  It forks the same complete
adversary-plus-verifier program at the same dynamically located round slots as
the shipping reduction, but installs no invalidity or extractor predicate in
the leaf gate. -/
noncomputable def acceptedMultiStatementForkExperimentAt
    {Call : Type}
    (game : OracleComp GlobalFsSourceSpec (PackedOutcome Call))
    (queryBounds : (Ipp.FsWrappedSpec Fr).Domain → Nat)
    (μ : Nat) :
    OracleComp (Ipp.FsWrappedSpec Fr)
      (Option (RawMultiStatementForkTree Call μ)) := by
  classical
  exact Ipp.forkTreeCombined μ (multiStatementForkMain game)
    queryBounds (Sum.inr ())
    (fun level run =>
      multiStatementRoundSlot
        (queryBounds (Sum.inr ())) level run)
    (SelectedAcceptedAt μ)
    μ (Nat.le_refl μ)

/-- One successful selected-size gate exposes the exact dependent outcome
already stored in the packed shipping output. -/
theorem selectedAcceptedAt_exposes_outcome
    {Call : Type} {μ : Nat}
    {run : MultiStatementRunLog Call}
    (h : SelectedAcceptedAt μ run) :
    ∃ outcome : OutcomeAt Call μ,
      run.1.out.at? μ = some outcome ∧
        outcome.verifierResult.accept = true := by
  rcases run.1.out with ⟨ν, outcome⟩
  have hν : ν = μ := h.1
  subst ν
  exact ⟨outcome, PackedOutcome.at?_self μ outcome, h.2⟩

/-- Accepted execution in one exact partition exposes its selected shipping
input without adding semantic invalidity. -/
theorem selectedAcceptedAt_projects_selection
    {Call : Type} {μ : Nat}
    {run : MultiStatementRunLog Call}
    (h : SelectedAcceptedAt μ run) :
    ∃ selection : SelectionAt Call μ,
      run.1.out.selectionAt? μ = some selection ∧
        run.1.out.accept = true := by
  obtain ⟨outcome, hat, haccept⟩ :=
    selectedAcceptedAt_exposes_outcome h
  refine ⟨outcome.selection, ?_, haccept⟩
  simp [PackedOutcome.selectionAt?, hat]

/-- Pure fail-closed projection of every raw shipping leaf into the
proof/transcript carrier used by the standalone BLS12-377 GIPA game.

All four children must project at the requested dependent size.  A mismatch in
any branch rejects the complete projection. -/
def projectVerifierTreeAt?
    {Call : Type} {μ : Nat} :
    {depth : Nat} →
      RawMultiStatementForkTree Call depth →
        Option
          (Ipp.S1.S1ForkGameTree
            Fr g1PrimeSubgroup g2PrimeSubgroup ArkPairingOutput μ depth)
  | 0, .leaf run =>
      match run.1.out.at? μ with
      | none => none
      | some outcome =>
          some (.leaf ({
            proof := outcome.verifierResult.proof
            transcript := outcome.verifierResult.transcript
          }, run.2))
  | _ + 1, .node children =>
      let projected := fun k => projectVerifierTreeAt? (children k)
      if h : ∀ k, (projected k).isSome then
        some (.node (fun k => (projected k).get (h k)))
      else
        none

/-- Leaf projection retains the exact verifier proof, transcript, and outer
replay log. -/
@[simp] theorem projectVerifierTreeAt?_leaf_of_at
    {Call : Type} {μ : Nat}
    (run : MultiStatementRunLog Call)
    (outcome : OutcomeAt Call μ)
    (hat : run.1.out.at? μ = some outcome) :
    projectVerifierTreeAt? (μ := μ) (.leaf run) =
      some (.leaf ({
        proof := outcome.verifierResult.proof
        transcript := outcome.verifierResult.transcript
      }, run.2)) := by
  simp [projectVerifierTreeAt?, hat]

/-- The accepted-only gate is sufficient for every dependent leaf projection
to succeed. -/
theorem projectVerifierTreeAt?_isSome_of_all_selectedAccepted
    {Call : Type} {μ depth : Nat}
    {tree : RawMultiStatementForkTree Call depth}
    (hall : tree.All (SelectedAcceptedAt μ)) :
    (projectVerifierTreeAt? (μ := μ) tree).isSome := by
  induction tree with
  | leaf run =>
      obtain ⟨outcome, hat, _⟩ :=
        selectedAcceptedAt_exposes_outcome hall
      simp [projectVerifierTreeAt?, hat]
  | node children ih =>
      have hchildren :
          ∀ k, (projectVerifierTreeAt? (μ := μ) (children k)).isSome :=
        fun k => ih k (hall k)
      simp [projectVerifierTreeAt?, hchildren]

/-- The projection used by the existing common-statement S1 layer is exactly
the successful pure projection above whenever the raw tree already carries
that common formal statement. -/
theorem projectVerifierTreeAt?_eq_projectCommonStatementTree
    {Call : Type} {μ depth : Nat}
    (statement : Ipp.S1.Bls12377ReductionStatement μ)
    (tree : RawMultiStatementForkTree Call depth)
    (hcarries : ForkCarriesFormalStatement statement tree) :
    projectVerifierTreeAt? (μ := μ) tree =
      some (projectCommonStatementTree statement tree hcarries) := by
  induction tree with
  | leaf run =>
      have hout :
          run.1.out =
            ⟨μ, outcomeAtOfFormalStatement statement run hcarries⟩ :=
        outcomeAtOfFormalStatement_output_exact
          statement run hcarries
      rw [hout]
      simp [projectVerifierTreeAt?, projectCommonStatementTree]
  | node children ih =>
      let projected := fun k =>
        projectVerifierTreeAt? (μ := μ) (children k)
      have hchildren :
          ∀ k, projected k =
            some
              (projectCommonStatementTree
                statement (children k) (hcarries k)) :=
        fun k => ih k (hcarries k)
      have hisSome : ∀ k, (projected k).isSome := by
        intro k
        rw [hchildren k]
        rfl
      simp only [projectVerifierTreeAt?, projectCommonStatementTree,
        projected, dif_pos hisSome]
      congr 2
      funext k
      rw [hchildren k]
      rfl

/-- Accepted standalone target selected only after the complete replay has
run.  The statement is the formal statement stored in the canonical root;
the fork tree is the pure proof/transcript/log projection of that same raw
tree. -/
abbrev AcceptedVerifierForkAt (μ : Nat) :=
  Ipp.S1.Bls12377ReductionStatement μ ×
    Ipp.S1.Bls12377GipaForkTree μ

/-- Select the canonical root statement and project every verifier leaf.
Either a dependent-size mismatch fails the whole operation or the result is
the exact standalone accepted-fork carrier. -/
def projectAcceptedRawForkAt?
    {Call : Type} (μ : Nat)
    (tree : RawMultiStatementForkTree Call μ) :
    Option (AcceptedVerifierForkAt μ) :=
  match tree.root.1.out.at? μ,
      projectVerifierTreeAt? (μ := μ) tree with
  | some outcome, some projected =>
      some (outcome.selection.statement, projected)
  | _, _ => none

/-- An accepted-only raw tree always has a total pure standalone projection.
The theorem does not claim that all branches carry the root statement; that
separate fact follows from production key functionality and replay-prefix
consistency. -/
theorem projectAcceptedRawForkAt?_isSome_of_all_selectedAccepted
    {Call : Type} {μ : Nat}
    (tree : RawMultiStatementForkTree Call μ)
    (hall : tree.All (SelectedAcceptedAt μ)) :
    (projectAcceptedRawForkAt? μ tree).isSome := by
  obtain ⟨rootOutcome, hroot, _⟩ :=
    selectedAcceptedAt_exposes_outcome hall.root
  have htree :=
    projectVerifierTreeAt?_isSome_of_all_selectedAccepted hall
  obtain ⟨projected, hprojected⟩ :=
    Option.isSome_iff_exists.mp htree
  rw [projectAcceptedRawForkAt?, hroot, hprojected]
  rfl

/-- Under a common-statement replay fact, root selection and pure tree
projection agree exactly with the existing common-statement projection. -/
theorem projectAcceptedRawForkAt?_eq_projectCommonStatementTree
    {Call : Type} {μ : Nat}
    (statement : Ipp.S1.Bls12377ReductionStatement μ)
    (tree : RawMultiStatementForkTree Call μ)
    (hcarries : ForkCarriesFormalStatement statement tree) :
    projectAcceptedRawForkAt? μ tree =
      some
        (statement,
          projectCommonStatementTree statement tree hcarries) := by
  have hout :
      tree.root.1.out =
        ⟨μ,
          outcomeAtOfFormalStatement
            statement tree.root hcarries.root⟩ :=
    outcomeAtOfFormalStatement_output_exact
      statement tree.root hcarries.root
  have hstatement :
      (outcomeAtOfFormalStatement
        statement tree.root hcarries.root).selection.statement =
          statement :=
    outcomeAtOfFormalStatement_statement_exact
      statement tree.root hcarries.root
  have htree :=
    projectVerifierTreeAt?_eq_projectCommonStatementTree
      statement tree hcarries
  rw [projectAcceptedRawForkAt?, hout,
    PackedOutcome.at?_self, htree, hstatement]

/-- Every successful accepted-only replay tree satisfies the accepted-only
gate at every leaf. -/
theorem acceptedMultiStatementForkExperimentAt_support_all_selectedAccepted
    {Call : Type}
    (game : OracleComp GlobalFsSourceSpec (PackedOutcome Call))
    (queryBounds : (Ipp.FsWrappedSpec Fr).Domain → Nat)
    (μ : Nat)
    (hbaseReach : ∀ level, level < μ →
      Ipp.CfReachable (multiStatementForkMain game)
        queryBounds (Sum.inr ())
        (fun run =>
          multiStatementRoundSlot
            (queryBounds (Sum.inr ())) level run))
    {tree : RawMultiStatementForkTree Call μ}
    (htree : some tree ∈ support
      (acceptedMultiStatementForkExperimentAt
        game queryBounds μ)) :
    tree.All (SelectedAcceptedAt μ) := by
  change some tree ∈ support
    (Ipp.forkTreeCombined μ (multiStatementForkMain game)
      queryBounds (Sum.inr ())
      (fun level run =>
        multiStatementRoundSlot
          (queryBounds (Sum.inr ())) level run)
      (SelectedAcceptedAt μ)
      μ (Nat.le_refl μ)) at htree
  exact Ipp.forkTreeCombined_success_all_leafOk
    μ (multiStatementForkMain game)
    queryBounds (Sum.inr ())
    (fun level run =>
      multiStatementRoundSlot
        (queryBounds (Sum.inr ())) level run)
    (SelectedAcceptedAt μ) hbaseReach htree

/-- Every successful accepted-only replay output has a successful pure
standalone projection. -/
theorem acceptedMultiStatementForkExperimentAt_support_projectable
    {Call : Type}
    (game : OracleComp GlobalFsSourceSpec (PackedOutcome Call))
    (queryBounds : (Ipp.FsWrappedSpec Fr).Domain → Nat)
    (μ : Nat)
    (hbaseReach : ∀ level, level < μ →
      Ipp.CfReachable (multiStatementForkMain game)
        queryBounds (Sum.inr ())
        (fun run =>
          multiStatementRoundSlot
            (queryBounds (Sum.inr ())) level run))
    {tree : RawMultiStatementForkTree Call μ}
    (htree : some tree ∈ support
      (acceptedMultiStatementForkExperimentAt
        game queryBounds μ)) :
    (projectAcceptedRawForkAt? μ tree).isSome :=
  projectAcceptedRawForkAt?_isSome_of_all_selectedAccepted tree
    (acceptedMultiStatementForkExperimentAt_support_all_selectedAccepted
      game queryBounds μ hbaseReach htree)

/-- Production key functionality lifts the common logical key carried by a
successful accepted-only replay to one common formal statement.

The statement remains selected after the complete adversary execution.
Neither semantic invalidity nor setup binding is assumed. -/
theorem
    acceptedMultiStatementForkExperimentAt_support_hasCommonStatement
    {Call : Type}
    (game : OracleComp GlobalFsSourceSpec (PackedOutcome Call))
    (queryBounds : (Ipp.FsWrappedSpec Fr).Domain → Nat)
    (μ : Nat)
    (hbaseReach : ∀ level, level < μ →
      Ipp.CfReachable (multiStatementForkMain game)
        queryBounds (Sum.inr ())
        (fun run =>
          multiStatementRoundSlot
            (queryBounds (Sum.inr ())) level run))
    (hdetermines : ProductionKeyDeterminesStatementAt game μ)
    {tree : RawMultiStatementForkTree Call μ}
    (htree : some tree ∈ support
      (acceptedMultiStatementForkExperimentAt
        game queryBounds μ)) :
    ∃ statement : Ipp.S1.Bls12377ReductionStatement μ,
      ForkCarriesFormalStatement statement tree ∧
        tree.All (SelectedAcceptedAt μ) := by
  classical
  have hall :=
    acceptedMultiStatementForkExperimentAt_support_all_selectedAccepted
      game queryBounds μ hbaseReach htree
  have hconsistent :
      Ipp.TreeConsistent (multiStatementForkMain game)
        queryBounds (Sum.inr ())
        (fun level run =>
          multiStatementRoundSlot
            (queryBounds (Sum.inr ())) level run)
        (SelectedAcceptedAt μ) 0 none tree := by
    change some tree ∈ support
      (Ipp.forkTreeCombined μ (multiStatementForkMain game)
        queryBounds (Sum.inr ())
        (fun level run =>
          multiStatementRoundSlot
            (queryBounds (Sum.inr ())) level run)
        (SelectedAcceptedAt μ)
        μ (Nat.le_refl μ)) at htree
    exact Ipp.forkTreeCombined_support_props
      μ (multiStatementForkMain game)
      queryBounds (Sum.inr ())
      (fun level run =>
        multiStatementRoundSlot
          (queryBounds (Sum.inr ())) level run)
      (SelectedAcceptedAt μ) hbaseReach htree
  have hlogical :
      ForkCarriesLogicalKey tree.root.1.out.logicalKey tree :=
    treeConsistent_all_logicalKey_eq_root
      game queryBounds (SelectedAcceptedAt μ) hconsistent
  have hsupport :
      tree.All (fun run =>
        run ∈ support (multiStatementFsProbComp game)) := by
    simpa [multiStatementFsProbComp] using
      (Ipp.TreeConsistent.all_support
        (multiStatementForkMain game) queryBounds (Sum.inr ())
        (fun level run =>
          multiStatementRoundSlot
            (queryBounds (Sum.inr ())) level run)
        (SelectedAcceptedAt μ) hconsistent)
  obtain ⟨rootSelection, hrootProjection, hrootAccept⟩ :=
    selectedAcceptedAt_projects_selection hall.root
  have hrootReachable :
      ReplayReachableSelectionAt game μ rootSelection :=
    ⟨tree.root, hsupport.root, hrootProjection, hrootAccept⟩
  refine ⟨rootSelection.statement, ?_, hall⟩
  have hcombined :=
    runTree_all_and (runTree_all_and hall hsupport) hlogical
  exact hcombined.imp (fun run hrun => by
    obtain ⟨selection, hprojection, haccept⟩ :=
      selectedAcceptedAt_projects_selection hrun.1.1
    have hselectionReachable :
        ReplayReachableSelectionAt game μ selection :=
      ⟨run, hrun.1.2, hprojection, haccept⟩
    have hselectionKey :
        selection.logicalKey = run.1.out.logicalKey :=
      PackedOutcome.selectionAt?_logicalKey hprojection
    have hrootKey :
        rootSelection.logicalKey =
          tree.root.1.out.logicalKey :=
      PackedOutcome.selectionAt?_logicalKey hrootProjection
    have hkey :
        selection.logicalKey = rootSelection.logicalKey :=
      hselectionKey.trans (hrun.2.trans hrootKey.symm)
    exact
      ⟨selection, hprojection,
        hdetermines selection rootSelection
          hselectionReachable hrootReachable hkey⟩)

/-- Accepted verifier semantics transport the accepted-only raw gate to the
full accepted-fork predicate used by both standalone GIPA wins.

This theorem proves no setup binding and introduces no extractor. -/
theorem projectCommonStatementTree_gipaForkAccepts_of_selectedAccepted
    {Call : Type}
    (game : OracleComp GlobalFsSourceSpec (PackedOutcome Call))
    (semantics : GlobalAcceptedVerifierSemantics game)
    {μ : Nat}
    (statement : Ipp.S1.Bls12377ReductionStatement μ)
    (tree : RawMultiStatementForkTree Call μ)
    (hcarries : ForkCarriesFormalStatement statement tree)
    (hsupport :
      tree.All (fun run =>
        run ∈ support (multiStatementFsProbComp game)))
    (haccepted : tree.All (SelectedAcceptedAt μ)) :
    Ipp.S1.Bls12377GipaForkAccepts
      statement
      (projectCommonStatementTree statement tree hcarries) := by
  unfold Ipp.S1.Bls12377GipaForkAccepts
  induction tree with
  | leaf run =>
      let outcome :=
        outcomeAtOfFormalStatement statement run hcarries
      have hout :
          run.1.out = ⟨μ, outcome⟩ :=
        outcomeAtOfFormalStatement_output_exact
          statement run hcarries
      have haccept :
          outcome.verifierResult.accept = true := by
        have hgate := haccepted
        rw [hout] at hgate
        exact hgate.2
      have hformal :
          Ipp.FsAccepts statement
            outcome.verifierResult.proof
            outcome.verifierResult.transcript :=
        semantics.accepts μ outcome run hsupport hout haccept
      simpa [projectCommonStatementTree, outcome] using hformal
  | node children ih =>
      intro child
      exact ih child
        (hcarries child) (hsupport child) (haccepted child)

/-- Complete accepted-only production-key bridge.

Every supported accepted replay has one production-determined statement, the
pure fail-closed projection is exactly that statement and its projected raw
tree, every raw leaf retains selected-size acceptance, and the projected tree
satisfies the full GIPA accepted-fork predicate.  Deployed setup binding
remains a separate explicit obligation. -/
theorem
    acceptedMultiStatementForkExperimentAt_support_projection_exact_and_accepts
    {Call : Type}
    (game : OracleComp GlobalFsSourceSpec (PackedOutcome Call))
    (queryBounds : (Ipp.FsWrappedSpec Fr).Domain → Nat)
    (μ : Nat)
    (hbaseReach : ∀ level, level < μ →
      Ipp.CfReachable (multiStatementForkMain game)
        queryBounds (Sum.inr ())
        (fun run =>
          multiStatementRoundSlot
            (queryBounds (Sum.inr ())) level run))
    (hdetermines : ProductionKeyDeterminesStatementAt game μ)
    (semantics : GlobalAcceptedVerifierSemantics game)
    {tree : RawMultiStatementForkTree Call μ}
    (htree : some tree ∈ support
      (acceptedMultiStatementForkExperimentAt
        game queryBounds μ)) :
    ∃ (statement : Ipp.S1.Bls12377ReductionStatement μ)
        (hcarries : ForkCarriesFormalStatement statement tree),
      tree.All (SelectedAcceptedAt μ) ∧
        projectAcceptedRawForkAt? μ tree =
          some
            (statement,
              projectCommonStatementTree statement tree hcarries) ∧
        Ipp.S1.Bls12377GipaForkAccepts
          statement
          (projectCommonStatementTree statement tree hcarries) := by
  obtain ⟨statement, hcarries, haccepted⟩ :=
    acceptedMultiStatementForkExperimentAt_support_hasCommonStatement
      game queryBounds μ hbaseReach hdetermines htree
  have hconsistent :
      Ipp.TreeConsistent (multiStatementForkMain game)
        queryBounds (Sum.inr ())
        (fun level run =>
          multiStatementRoundSlot
            (queryBounds (Sum.inr ())) level run)
        (SelectedAcceptedAt μ) 0 none tree := by
    change some tree ∈ support
      (Ipp.forkTreeCombined μ (multiStatementForkMain game)
        queryBounds (Sum.inr ())
        (fun level run =>
          multiStatementRoundSlot
            (queryBounds (Sum.inr ())) level run)
        (SelectedAcceptedAt μ)
        μ (Nat.le_refl μ)) at htree
    exact Ipp.forkTreeCombined_support_props
      μ (multiStatementForkMain game)
      queryBounds (Sum.inr ())
      (fun level run =>
        multiStatementRoundSlot
          (queryBounds (Sum.inr ())) level run)
      (SelectedAcceptedAt μ) hbaseReach htree
  have hsupport :
      tree.All (fun run =>
        run ∈ support (multiStatementFsProbComp game)) := by
    simpa [multiStatementFsProbComp] using
      (Ipp.TreeConsistent.all_support
        (multiStatementForkMain game) queryBounds (Sum.inr ())
        (fun level run =>
          multiStatementRoundSlot
            (queryBounds (Sum.inr ())) level run)
        (SelectedAcceptedAt μ) hconsistent)
  refine ⟨statement, hcarries, haccepted, ?_, ?_⟩
  · exact
      projectAcceptedRawForkAt?_eq_projectCommonStatementTree
        statement tree hcarries
  · exact
      projectCommonStatementTree_gipaForkAccepts_of_selectedAccepted
        game semantics statement tree hcarries hsupport haccepted

/-- A tree produced under a stronger leaf gate remains replay-consistent under
any weaker gate.  This is the support-level gate-dominance fact available
without coupling the two extractor distributions. -/
theorem supportedForkTree_consistent_under_weaker_gate
    {ι : Type} {spec : OracleSpec ι} {α : Type}
    [spec.DecidableEq]
    [IsUniformSpec spec]
    [∀ j, SampleableType (spec.Range j)]
    [unifSpec ⊂ₒ spec]
    (total : Nat)
    (main : OracleComp spec α)
    (queryBounds : ι → Nat)
    (oracle : ι)
    (selector :
      Nat → α → Option (Fin (queryBounds oracle + 1)))
    (strong weak : α × QueryLog spec → Prop)
    [DecidablePred strong]
    (hgate : ∀ run, strong run → weak run)
    (hbaseReach : ∀ level, level < total →
      Ipp.CfReachable main queryBounds oracle (selector level))
    {tree : Ipp.RunTree spec α total}
    (htree : some tree ∈ support
      (Ipp.forkTreeCombined total main queryBounds oracle
        selector strong total (Nat.le_refl total))) :
    Ipp.TreeConsistent main queryBounds oracle selector weak
      0 none tree := by
  exact
    (Ipp.forkTreeCombined_support_props
      total main queryBounds oracle selector strong
      hbaseReach htree).mono_leafOk
        main queryBounds oracle selector strong weak hgate

/-- Support under a stronger gate therefore implies the weaker gate at every
stored leaf, without changing or rebuilding the raw tree. -/
theorem supportedForkTree_all_weaker_gate
    {ι : Type} {spec : OracleSpec ι} {α : Type}
    [spec.DecidableEq]
    [IsUniformSpec spec]
    [∀ j, SampleableType (spec.Range j)]
    [unifSpec ⊂ₒ spec]
    (total : Nat)
    (main : OracleComp spec α)
    (queryBounds : ι → Nat)
    (oracle : ι)
    (selector :
      Nat → α → Option (Fin (queryBounds oracle + 1)))
    (strong weak : α × QueryLog spec → Prop)
    [DecidablePred strong]
    (hgate : ∀ run, strong run → weak run)
    (hbaseReach : ∀ level, level < total →
      Ipp.CfReachable main queryBounds oracle (selector level))
    {tree : Ipp.RunTree spec α total}
    (htree : some tree ∈ support
      (Ipp.forkTreeCombined total main queryBounds oracle
        selector strong total (Nat.le_refl total))) :
    tree.All weak :=
  (supportedForkTree_consistent_under_weaker_gate
    total main queryBounds oracle selector strong weak
    hgate hbaseReach htree).all_leafOk

/-- Any stronger shipping gate that implies selected-size acceptance yields a
projectable standalone tree on every successful raw-fork output. -/
theorem strongerAcceptedFork_support_projectable
    {Call : Type}
    (game : OracleComp GlobalFsSourceSpec (PackedOutcome Call))
    (queryBounds : (Ipp.FsWrappedSpec Fr).Domain → Nat)
    (μ : Nat)
    (strong : MultiStatementRunLog Call → Prop)
    [DecidablePred strong]
    (hgate : ∀ run, strong run → SelectedAcceptedAt μ run)
    (hbaseReach : ∀ level, level < μ →
      Ipp.CfReachable (multiStatementForkMain game)
        queryBounds (Sum.inr ())
        (fun run =>
          multiStatementRoundSlot
            (queryBounds (Sum.inr ())) level run))
    {tree : RawMultiStatementForkTree Call μ}
    (htree : some tree ∈ support
      (Ipp.forkTreeCombined μ (multiStatementForkMain game)
        queryBounds (Sum.inr ())
        (fun level run =>
          multiStatementRoundSlot
            (queryBounds (Sum.inr ())) level run)
        strong μ (Nat.le_refl μ))) :
    (projectAcceptedRawForkAt? μ tree).isSome := by
  apply projectAcceptedRawForkAt?_isSome_of_all_selectedAccepted tree
  exact supportedForkTree_all_weaker_gate
    μ (multiStatementForkMain game) queryBounds (Sum.inr ())
    (fun level run =>
      multiStatementRoundSlot
        (queryBounds (Sum.inr ())) level run)
    strong (SelectedAcceptedAt μ) hgate hbaseReach htree

end

end Ipp.ShippingMultiStatement
