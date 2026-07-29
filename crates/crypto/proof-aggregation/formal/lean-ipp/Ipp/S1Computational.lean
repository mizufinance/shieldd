import Ipp.S1

/-!
Computational binding interface for S1.

The algebraic `S1` lemmas predate this interface and assume globally injective
pairing commitments and universally binding KZG equations.  Those propositions
are false for concrete finite groups: security only says an efficient
experiment reaches a bad accepted fork with small probability.  This module
states four explicit computational games and retains their independent losses
in the S1 bound.
-/

open OracleSpec OracleComp ENNReal Function
open scoped OracleSpec.PrimitiveQuery ENNReal BigOperators

namespace Ipp.S1

noncomputable section

variable {F G1 G2 GT : Type}
  [Field F] [AddCommGroup G1] [Module F G1]
  [AddCommGroup G2] [Module F G2]
  [AddCommGroup GT] [Module F GT]
  [DecidableEq F] [DecidableEq G1] [DecidableEq G2] [DecidableEq GT]

abbrev S1WrappedRun (F G1 G2 GT : Type) (μ : Nat) :=
  WrappedFsRun
    (FsPoint (F := F) (G1 := G1) (G2 := G2) (GT := GT))
    (FsResult μ F G1 G2 GT)

abbrev S1ForkOutput (F G1 G2 GT : Type) (μ : Nat) :=
  Option (RunTree (FsWrappedSpec F)
    (S1WrappedRun F G1 G2 GT μ) μ)

abbrev S1RootWitness (G1 G2 : Type) (μ : Nat) :=
  Ipp.Goal.Witness (2 ^ μ)
    (Ipp.SnarkPackV1.Refinement.WitnessRow G1 G2)

/-- Candidate root witness selected from data fixed before the randomizer
query.  This function type does not itself establish computability,
efficiency, or knowledge extraction. -/
abbrev PreRandomizerWitness (G1 G2 GT : Type) (μ : Nat) :=
  RandomizerPayload GT →
    S1RootWitness G1 G2 μ

/-- A discrepancy set selected only from the proof-owned commitments that are
available before the randomizer query. -/
noncomputable def s1BadRandomizersFor {μ : Nat}
    (stmt : FsStatement μ F G1 G2 GT)
    (witnessOf :
      PreRandomizerWitness G1 G2 GT μ)
    (payload : RandomizerPayload GT) : Finset F :=
  (discrepancyRootSet_card (F := F) (fun i =>
    let witness := witnessOf payload
    groth16Discrepancy stmt.e stmt.alpha stmt.beta stmt.gamma stmt.delta
      (fun j => (witness.items j).a)
      (fun j => (witness.items j).c)
      stmt.Aic (fun j => (witness.items j).b) i)).1.toFinset

@[simp] theorem coe_s1BadRandomizersFor {μ : Nat}
    (stmt : FsStatement μ F G1 G2 GT)
    (witnessOf :
      PreRandomizerWitness G1 G2 GT μ)
    (payload : RandomizerPayload GT) :
    (s1BadRandomizersFor stmt witnessOf payload : Set F) =
      discrepancyRootSet (fun i =>
        let witness := witnessOf payload
        groth16Discrepancy stmt.e stmt.alpha stmt.beta stmt.gamma stmt.delta
          (fun j => (witness.items j).a)
          (fun j => (witness.items j).c)
          stmt.Aic (fun j => (witness.items j).b) i) := by
  let witness := witnessOf payload
  exact (discrepancyRootSet_card (F := F) (fun i =>
    groth16Discrepancy stmt.e stmt.alpha stmt.beta stmt.gamma stmt.delta
      (fun j => (witness.items j).a)
      (fun j => (witness.items j).c)
      stmt.Aic (fun j => (witness.items j).b) i)).1.coe_toFinset

theorem s1BadRandomizersFor_card {μ : Nat}
    (stmt : FsStatement μ F G1 G2 GT)
    (witnessOf :
      PreRandomizerWitness G1 G2 GT μ)
    (payload : RandomizerPayload GT) :
    (s1BadRandomizersFor stmt witnessOf payload).card ≤ 2 ^ μ - 1 := by
  let witness := witnessOf payload
  let d := fun i =>
    groth16Discrepancy stmt.e stmt.alpha stmt.beta stmt.gamma stmt.delta
      (fun j => (witness.items j).a)
      (fun j => (witness.items j).c)
      stmt.Aic (fun j => (witness.items j).b) i
  have h := discrepancyRootSet_card (F := F) d
  change h.1.toFinset.card ≤ 2 ^ μ - 1
  rw [← Set.ncard_eq_toFinset_card _ h.1]
  exact h.2

def s1ForkLeafOk [Fintype F] {μ : Nat}
    (stmt : FsStatement μ F G1 G2 GT)
    (qb : (FsWrappedSpec F).Domain → Nat)
    (badZ : Finset F)
    (witnessOf :
      PreRandomizerWitness G1 G2 GT μ) :
    S1WrappedRun F G1 G2 GT μ × QueryLog (FsWrappedSpec F) → Prop :=
  WrappedRunGoodFull (qb (Sum.inr ())) stmt
    (fun payload => (s1BadRandomizersFor stmt witnessOf payload : Set F))
    (badZ : Set F)

def s1ForkMain {μ : Nat}
    (stmt : FsStatement μ F G1 G2 GT)
    (adv : OracleComp (FsSourceSpec F G1 G2 GT)
      (Proof μ F G1 G2 GT)) :
    OracleComp (FsWrappedSpec F) (S1WrappedRun F G1 G2 GT μ) :=
  wrapFs (FsGame stmt adv)

def s1ForkSelector {μ : Nat}
    (qb : (FsWrappedSpec F).Domain → Nat) :
    Nat → S1WrappedRun F G1 G2 GT μ →
      Option (Fin (qb (Sum.inr ()) + 1)) :=
  fun level run => roundSlot (qb (Sum.inr ())) level run

noncomputable def s1ForkExperiment [Fintype F]
    [IsUniformSpec (FsWrappedSpec F)]
    [∀ j, SampleableType ((FsWrappedSpec F).Range j)]
    [unifSpec ⊂ₒ FsWrappedSpec F]
    [unifSpec ˡ⊂ₒ FsWrappedSpec F]
    {μ : Nat}
    (stmt : FsStatement μ F G1 G2 GT)
    (adv : OracleComp (FsSourceSpec F G1 G2 GT)
      (Proof μ F G1 G2 GT))
    (qb : (FsWrappedSpec F).Domain → Nat)
    (badZ : Finset F)
    (witnessOf :
      PreRandomizerWitness G1 G2 GT μ) :
    OracleComp (FsWrappedSpec F) (S1ForkOutput F G1 G2 GT μ) := by
  classical
  exact forkTreeCombined μ (s1ForkMain stmt adv) qb (Sum.inr ())
    (s1ForkSelector qb) (s1ForkLeafOk stmt qb badZ witnessOf)
    μ (Nat.le_refl μ)

/-- Every accepted leaf in the fork has exactly the transcript-defined
structured terminal keys. -/
def S1KzgGood {μ : Nat}
    (stmt : FsStatement μ F G1 G2 GT)
    (tree : RunTree (FsWrappedSpec F)
      (S1WrappedRun F G1 G2 GT μ) μ) : Prop :=
  tree.All (fun run =>
    KzgLeafStructured stmt run.1.out.proof run.1.out.transcript)

/-- At least one leaf carries an accepted false KZG opening. -/
def TreeHasKzgFalseOpening {μ depth : Nat}
    (stmt : FsStatement μ F G1 G2 GT) :
    RunTree (FsWrappedSpec F) (S1WrappedRun F G1 G2 GT μ) depth → Prop
  | .leaf run =>
      KzgFalseOpening stmt run.1.out.proof run.1.out.transcript
  | .node children => ∃ k, TreeHasKzgFalseOpening stmt (children k)

/-- A fork tree contains an accepted false opening in the deployed G2
terminal-key lane. -/
def TreeHasKzgVFalseOpening {μ depth : Nat}
    (stmt : FsStatement μ F G1 G2 GT) :
    RunTree (FsWrappedSpec F) (S1WrappedRun F G1 G2 GT μ) depth → Prop
  | .leaf run =>
      KzgVFalseOpening stmt run.1.out.proof run.1.out.transcript
  | .node children => ∃ k, TreeHasKzgVFalseOpening stmt (children k)

/-- A fork tree contains an accepted false opening in the deployed G1
terminal-key lane. -/
def TreeHasKzgWFalseOpening {μ depth : Nat}
    (stmt : FsStatement μ F G1 G2 GT) :
    RunTree (FsWrappedSpec F) (S1WrappedRun F G1 G2 GT μ) depth → Prop
  | .leaf run =>
      KzgWFalseOpening stmt run.1.out.proof run.1.out.transcript
  | .node children => ∃ k, TreeHasKzgWFalseOpening stmt (children k)

/-- The tree-level KZG failure is exactly a failure in one of the two concrete
opening lanes. -/
theorem treeHasKzgFalseOpening_iff_lane
    {μ depth : Nat}
    (stmt : FsStatement μ F G1 G2 GT)
    (tree : RunTree (FsWrappedSpec F)
      (S1WrappedRun F G1 G2 GT μ) depth) :
    TreeHasKzgFalseOpening stmt tree ↔
      TreeHasKzgVFalseOpening stmt tree ∨
        TreeHasKzgWFalseOpening stmt tree := by
  induction tree with
  | leaf run =>
      exact kzgFalseOpening_iff_lane stmt
        run.1.out.proof run.1.out.transcript
  | node children ih =>
      constructor
      · rintro ⟨k, hk⟩
        rcases (ih k).mp hk with hv | hw
        · exact Or.inl ⟨k, hv⟩
        · exact Or.inr ⟨k, hw⟩
      · rintro (⟨k, hk⟩ | ⟨k, hk⟩)
        · exact ⟨k, (ih k).mpr (Or.inl hk)⟩
        · exact ⟨k, (ih k).mpr (Or.inr hk)⟩

private theorem treeHasKzgFalseOpening_of_not_all_structured
    {μ depth : Nat}
    (stmt : FsStatement μ F G1 G2 GT)
    (tree : RunTree (FsWrappedSpec F)
      (S1WrappedRun F G1 G2 GT μ) depth)
    (hleaf : tree.All (fun run =>
      LeafData stmt run.1.out.proof run.1.out.transcript))
    (hnot : ¬tree.All (fun run =>
      KzgLeafStructured stmt run.1.out.proof run.1.out.transcript)) :
    TreeHasKzgFalseOpening stmt tree := by
  classical
  induction tree with
  | leaf run =>
      exact ⟨hleaf, hnot⟩
  | node children ih =>
      simp only [RunTree.All] at hleaf hnot
      rw [not_forall] at hnot
      obtain ⟨k, hk⟩ := hnot
      exact ⟨k, ih k (hleaf k) hk⟩

private theorem not_all_structured_of_treeHasKzgFalseOpening
    {μ depth : Nat}
    (stmt : FsStatement μ F G1 G2 GT)
    (tree : RunTree (FsWrappedSpec F)
      (S1WrappedRun F G1 G2 GT μ) depth)
    (hbad : TreeHasKzgFalseOpening stmt tree) :
    ¬tree.All (fun run =>
      KzgLeafStructured stmt run.1.out.proof run.1.out.transcript) := by
  induction tree with
  | leaf run => exact hbad.2
  | node children ih =>
      obtain ⟨k, hk⟩ := hbad
      intro hall
      exact ih k hk (hall k)

/-- The supplied pre-randomizer witness opens this proof's two roots and pins
its product lane to that opening.  The component security interface below
separately requires an efficient extractor/reduction; no global injectivity of
a dimension-reducing linear map is asserted here. -/
def S1PairingGood {μ : Nat}
    (stmt : FsStatement μ F G1 G2 GT)
    (witnessOf :
      PreRandomizerWitness G1 G2 GT μ)
    (tree : RunTree (FsWrappedSpec F)
      (S1WrappedRun F G1 G2 GT μ) μ) : Prop :=
  let root := tree.root.1
  let r := root.out.transcript.randomizer
  let proof := root.out.proof
  let witness := witnessOf (proofRandomizerPayload proof)
  Ipp.SnarkPackV1.Refinement.RootOpensAt
      stmt proof.ComA proof.ComB witness ∧
    u4TCommitMap (F := F) (proof.ipAb, proof.aggC) =
      u4TCommitMap (F := F)
        (ipm (F := F) (u4TLanePairing stmt.e)
          (fun i => ((witness.items i).a, (witness.items i).c))
          (fun i =>
            (r ^ (i : Nat) • (witness.items i).b,
              r ^ (i : Nat))))

def S1ExtractionGood {μ : Nat}
    (stmt : FsStatement μ F G1 G2 GT)
    (witnessOf :
      PreRandomizerWitness (G1 := G1) (G2 := G2) (GT := GT) μ) :
    S1ForkOutput (F := F) (G1 := G1) (G2 := G2) (GT := GT) μ → Prop
  | none => False
  | some tree =>
      S1KzgGood stmt tree ∧ S1PairingGood stmt witnessOf tree

def S1KzgBad {μ : Nat}
    (stmt : FsStatement μ F G1 G2 GT) :
    S1ForkOutput (F := F) (G1 := G1) (G2 := G2) (GT := GT) μ → Prop
  | none => False
  | some tree => TreeHasKzgFalseOpening stmt tree

/-- Exact G2-lane false-opening event in the full S1 fork experiment. -/
def S1KzgVBad {μ : Nat}
    (stmt : FsStatement μ F G1 G2 GT) :
    S1ForkOutput (F := F) (G1 := G1) (G2 := G2) (GT := GT) μ → Prop
  | none => False
  | some tree => TreeHasKzgVFalseOpening stmt tree

/-- Exact G1-lane false-opening event in the full S1 fork experiment. -/
def S1KzgWBad {μ : Nat}
    (stmt : FsStatement μ F G1 G2 GT) :
    S1ForkOutput (F := F) (G1 := G1) (G2 := G2) (GT := GT) μ → Prop
  | none => False
  | some tree => TreeHasKzgWFalseOpening stmt tree

/-- The KZG bad event charged by S1 is exactly the union of the two deployed
opening-lane events. -/
theorem s1KzgBad_iff_lane {μ : Nat}
    (stmt : FsStatement μ F G1 G2 GT)
    (output :
      S1ForkOutput (F := F) (G1 := G1) (G2 := G2) (GT := GT) μ) :
    S1KzgBad stmt output ↔
      S1KzgVBad stmt output ∨ S1KzgWBad stmt output := by
  cases output with
  | none => simp [S1KzgBad, S1KzgVBad, S1KzgWBad]
  | some tree =>
      exact treeHasKzgFalseOpening_iff_lane stmt tree

def S1PairingBad {μ : Nat}
    (stmt : FsStatement μ F G1 G2 GT)
    (witnessOf :
      PreRandomizerWitness (G1 := G1) (G2 := G2) (GT := GT) μ) :
    S1ForkOutput (F := F) (G1 := G1) (G2 := G2) (GT := GT) μ → Prop
  | none => False
  | some tree =>
      S1KzgGood stmt tree ∧ ¬S1PairingGood stmt witnessOf tree

/-- The root-opening half of the pairing-commitment extraction target for one
fork tree.  The witness selector depends only on the proof-owned commitments
hashed before the randomizer query. -/
def S1RootOpeningGood {μ : Nat}
    (stmt : FsStatement μ F G1 G2 GT)
    (witnessOf :
      PreRandomizerWitness (G1 := G1) (G2 := G2) (GT := GT) μ)
    (tree : RunTree (FsWrappedSpec F)
      (S1WrappedRun F G1 G2 GT μ) μ) : Prop :=
  let proof := tree.root.1.out.proof
  let witness := witnessOf (proofRandomizerPayload proof)
  Ipp.SnarkPackV1.Refinement.RootOpensAt
    stmt proof.ComA proof.ComB witness

/-- The product-lane half of the pairing-commitment extraction target for one
fork tree. -/
def S1ProductLaneGood {μ : Nat}
    (stmt : FsStatement μ F G1 G2 GT)
    (witnessOf :
      PreRandomizerWitness (G1 := G1) (G2 := G2) (GT := GT) μ)
    (tree : RunTree (FsWrappedSpec F)
      (S1WrappedRun F G1 G2 GT μ) μ) : Prop :=
  let root := tree.root.1
  let r := root.out.transcript.randomizer
  let proof := root.out.proof
  let witness := witnessOf (proofRandomizerPayload proof)
  u4TCommitMap (F := F) (proof.ipAb, proof.aggC) =
    u4TCommitMap (F := F)
      (ipm (F := F) (u4TLanePairing stmt.e)
        (fun i => ((witness.items i).a, (witness.items i).c))
        (fun i =>
          (r ^ (i : Nat) • (witness.items i).b,
            r ^ (i : Nat))))

/-- The original combined pairing-good predicate is definitionally the
conjunction of its two concrete extraction targets. -/
theorem s1PairingGood_iff_components {μ : Nat}
    (stmt : FsStatement μ F G1 G2 GT)
    (witnessOf :
      PreRandomizerWitness (G1 := G1) (G2 := G2) (GT := GT) μ)
    (tree : RunTree (FsWrappedSpec F)
      (S1WrappedRun F G1 G2 GT μ) μ) :
    S1PairingGood stmt witnessOf tree ↔
      S1RootOpeningGood stmt witnessOf tree ∧
        S1ProductLaneGood stmt witnessOf tree := by
  rfl

/-- Fork output for which the extracted witness fails to open at least one
proof-owned root commitment. -/
def S1RootOpeningBad {μ : Nat}
    (stmt : FsStatement μ F G1 G2 GT)
    (witnessOf :
      PreRandomizerWitness (G1 := G1) (G2 := G2) (GT := GT) μ) :
    S1ForkOutput (F := F) (G1 := G1) (G2 := G2) (GT := GT) μ → Prop
  | none => False
  | some tree =>
      S1KzgGood stmt tree ∧
        ¬S1RootOpeningGood stmt witnessOf tree

/-- Fork output whose extracted witness opens the proof-owned roots but whose
canonical product lane does not equal the proof's committed product lane. -/
def S1ProductLaneBad {μ : Nat}
    (stmt : FsStatement μ F G1 G2 GT)
    (witnessOf :
      PreRandomizerWitness (G1 := G1) (G2 := G2) (GT := GT) μ) :
    S1ForkOutput (F := F) (G1 := G1) (G2 := G2) (GT := GT) μ → Prop
  | none => False
  | some tree =>
      S1KzgGood stmt tree ∧
        S1RootOpeningGood stmt witnessOf tree ∧
          ¬S1ProductLaneGood stmt witnessOf tree

/-- The GIPA fork-knowledge event charged by S1 is exactly either a
root-opening extraction failure or a product-lane consistency failure. -/
theorem s1PairingBad_iff_components {μ : Nat}
    (stmt : FsStatement μ F G1 G2 GT)
    (witnessOf :
      PreRandomizerWitness (G1 := G1) (G2 := G2) (GT := GT) μ)
    (output :
      S1ForkOutput (F := F) (G1 := G1) (G2 := G2) (GT := GT) μ) :
    S1PairingBad stmt witnessOf output ↔
      S1RootOpeningBad stmt witnessOf output ∨
        S1ProductLaneBad stmt witnessOf output := by
  cases output with
  | none =>
      simp [S1PairingBad, S1RootOpeningBad, S1ProductLaneBad]
  | some tree =>
      change
        (S1KzgGood stmt tree ∧
            ¬S1PairingGood stmt witnessOf tree) ↔
          (S1KzgGood stmt tree ∧
              ¬S1RootOpeningGood stmt witnessOf tree) ∨
            (S1KzgGood stmt tree ∧
              S1RootOpeningGood stmt witnessOf tree ∧
                ¬S1ProductLaneGood stmt witnessOf tree)
      rw [s1PairingGood_iff_components stmt witnessOf tree]
      constructor
      · rintro ⟨hkzg, hnot⟩
        by_cases hopen : S1RootOpeningGood stmt witnessOf tree
        · exact Or.inr ⟨hkzg, hopen, fun hproduct =>
            hnot ⟨hopen, hproduct⟩⟩
        · exact Or.inl ⟨hkzg, hopen⟩
      · rintro (⟨hkzg, hopen⟩ | ⟨hkzg, hopen, hproduct⟩)
        · exact ⟨hkzg, fun h => hopen h.1⟩
        · exact ⟨hkzg, fun h => hproduct h.2⟩

/-- Derived carrier consumed by the S1 probability argument.  Publication
roots construct it from the four explicit game-security interfaces below;
its combined fields are not an external cryptographic assumption boundary. -/
structure S1ExtractionSecurity [Fintype F] {μ : Nat}
    [IsUniformSpec (FsWrappedSpec F)]
    [∀ j, SampleableType ((FsWrappedSpec F).Range j)]
    [unifSpec ⊂ₒ FsWrappedSpec F]
    [unifSpec ˡ⊂ₒ FsWrappedSpec F]
    (stmt : FsStatement μ F G1 G2 GT)
    (adv : OracleComp (FsSourceSpec F G1 G2 GT)
      (Proof μ F G1 G2 GT))
    (qb : (FsWrappedSpec F).Domain → Nat)
    (badZ : Finset F) where
  witnessOf :
    PreRandomizerWitness (G1 := G1) (G2 := G2) (GT := GT) μ
  epsilonKzg : ℝ≥0∞
  epsilonPairing : ℝ≥0∞
  kzgBad_le :
    Pr[S1KzgBad stmt |
      s1ForkExperiment stmt adv qb badZ witnessOf] ≤
      epsilonKzg
  pairingBad_le :
    Pr[S1PairingBad stmt witnessOf |
      s1ForkExperiment stmt adv qb badZ witnessOf] ≤
      epsilonPairing

def S1ExtractionSecurity.total [Fintype F] {μ : Nat}
    [IsUniformSpec (FsWrappedSpec F)]
    [∀ j, SampleableType ((FsWrappedSpec F).Range j)]
    [unifSpec ⊂ₒ FsWrappedSpec F]
    [unifSpec ˡ⊂ₒ FsWrappedSpec F]
    {stmt : FsStatement μ F G1 G2 GT}
    {adv : OracleComp (FsSourceSpec F G1 G2 GT)
      (Proof μ F G1 G2 GT)}
    {qb : (FsWrappedSpec F).Domain → Nat}
    {badZ : Finset F}
    (security : S1ExtractionSecurity stmt adv qb badZ) : ℝ≥0∞ :=
  security.epsilonKzg + security.epsilonPairing

/-- The combined KZG event is bounded by the sum of the exact deployed
G2-lane and G1-lane false-opening probabilities. -/
theorem s1KzgBad_probability_le_lane_sum [Fintype F]
    [IsUniformSpec (FsWrappedSpec F)]
    [∀ j, SampleableType ((FsWrappedSpec F).Range j)]
    [unifSpec ⊂ₒ FsWrappedSpec F]
    [unifSpec ˡ⊂ₒ FsWrappedSpec F]
    {μ : Nat}
    (stmt : FsStatement μ F G1 G2 GT)
    (adv : OracleComp (FsSourceSpec F G1 G2 GT)
      (Proof μ F G1 G2 GT))
    (qb : (FsWrappedSpec F).Domain → Nat)
    (badZ : Finset F)
    (witnessOf :
      PreRandomizerWitness (G1 := G1) (G2 := G2) (GT := GT) μ) :
    Pr[S1KzgBad stmt |
        s1ForkExperiment stmt adv qb badZ witnessOf] ≤
      Pr[S1KzgVBad stmt |
          s1ForkExperiment stmt adv qb badZ witnessOf] +
        Pr[S1KzgWBad stmt |
          s1ForkExperiment stmt adv qb badZ witnessOf] := by
  calc
    _ ≤ Pr[fun output =>
          S1KzgVBad stmt output ∨ S1KzgWBad stmt output |
        s1ForkExperiment stmt adv qb badZ witnessOf] := by
      apply probEvent_mono
      intro output _ hbad
      exact (s1KzgBad_iff_lane stmt output).mp hbad
    _ ≤ _ :=
      probEvent_or_le
        (s1ForkExperiment stmt adv qb badZ witnessOf)
        (S1KzgVBad stmt) (S1KzgWBad stmt)

/-- The combined GIPA knowledge event is bounded by the sum of its exact
root-opening and product-lane failure probabilities. -/
theorem s1PairingBad_probability_le_component_sum [Fintype F]
    [IsUniformSpec (FsWrappedSpec F)]
    [∀ j, SampleableType ((FsWrappedSpec F).Range j)]
    [unifSpec ⊂ₒ FsWrappedSpec F]
    [unifSpec ˡ⊂ₒ FsWrappedSpec F]
    {μ : Nat}
    (stmt : FsStatement μ F G1 G2 GT)
    (adv : OracleComp (FsSourceSpec F G1 G2 GT)
      (Proof μ F G1 G2 GT))
    (qb : (FsWrappedSpec F).Domain → Nat)
    (badZ : Finset F)
    (witnessOf :
      PreRandomizerWitness (G1 := G1) (G2 := G2) (GT := GT) μ) :
    Pr[S1PairingBad stmt witnessOf |
        s1ForkExperiment stmt adv qb badZ witnessOf] ≤
      Pr[S1RootOpeningBad stmt witnessOf |
          s1ForkExperiment stmt adv qb badZ witnessOf] +
        Pr[S1ProductLaneBad stmt witnessOf |
          s1ForkExperiment stmt adv qb badZ witnessOf] := by
  calc
    _ ≤ Pr[fun output =>
          S1RootOpeningBad stmt witnessOf output ∨
            S1ProductLaneBad stmt witnessOf output |
        s1ForkExperiment stmt adv qb badZ witnessOf] := by
      apply probEvent_mono
      intro output _ hbad
      exact (s1PairingBad_iff_components stmt witnessOf output).mp hbad
    _ ≤ _ :=
      probEvent_or_le
        (s1ForkExperiment stmt adv qb badZ witnessOf)
        (S1RootOpeningBad stmt witnessOf)
        (S1ProductLaneBad stmt witnessOf)

/-- The data visible to the four computational games.  The projection erases
the verifier result wrapper and retains only the aggregate proof, its exact
Fiat--Shamir transcript, and the fork query log.  In particular, none of the
four game wins is defined in terms of an `S1*Bad` predicate. -/
structure S1ForkGameLeaf (F G1 G2 GT : Type) (μ : Nat) where
  proof : Proof μ F G1 G2 GT
  transcript : FsTranscript μ F

abbrev S1ForkGameTree (F G1 G2 GT : Type) (μ depth : Nat) :=
  RunTree (FsWrappedSpec F) (S1ForkGameLeaf F G1 G2 GT μ) depth

abbrev S1ForkGameOutput (F G1 G2 GT : Type) (μ : Nat) :=
  Option (S1ForkGameTree F G1 G2 GT μ μ)

def s1ForkGameLeafOfRun {μ : Nat}
    (run : S1WrappedRun F G1 G2 GT μ) :
    S1ForkGameLeaf F G1 G2 GT μ where
  proof := run.out.proof
  transcript := run.out.transcript

/-- Erase every fork leaf to the proof/transcript artifact presented to the
computational challenger. -/
def projectS1ForkTree {μ : Nat} :
    {depth : Nat} →
      RunTree (FsWrappedSpec F) (S1WrappedRun F G1 G2 GT μ) depth →
        S1ForkGameTree F G1 G2 GT μ depth
  | 0, .leaf run =>
      .leaf (s1ForkGameLeafOfRun run.1, run.2)
  | _ + 1, .node children =>
      .node (fun k => projectS1ForkTree (children k))

@[simp] theorem projectS1ForkTree_root {μ depth : Nat}
    (tree :
      RunTree (FsWrappedSpec F) (S1WrappedRun F G1 G2 GT μ) depth) :
    (projectS1ForkTree tree).root.1 =
      s1ForkGameLeafOfRun tree.root.1 := by
  induction tree with
  | leaf run => rfl
  | node children ih => exact ih 0

def projectS1ForkOutput {μ : Nat} :
    S1ForkOutput F G1 G2 GT μ →
      S1ForkGameOutput F G1 G2 GT μ
  | none => none
  | some tree => some (projectS1ForkTree tree)

/-- A projected fork contains an accepted false opening in the deployed
G2/V terminal-key lane. -/
def KzgVFalseOpeningGameTreeWin {μ depth : Nat}
    (stmt : FsStatement μ F G1 G2 GT) :
    S1ForkGameTree F G1 G2 GT μ depth → Prop
  | .leaf run =>
      KzgVFalseOpening stmt run.1.proof run.1.transcript
  | .node children =>
      ∃ k, KzgVFalseOpeningGameTreeWin stmt (children k)

/-- A projected fork contains an accepted false opening in the deployed
G1/W terminal-key lane. -/
def KzgWFalseOpeningGameTreeWin {μ depth : Nat}
    (stmt : FsStatement μ F G1 G2 GT) :
    S1ForkGameTree F G1 G2 GT μ depth → Prop
  | .leaf run =>
      KzgWFalseOpening stmt run.1.proof run.1.transcript
  | .node children =>
      ∃ k, KzgWFalseOpeningGameTreeWin stmt (children k)

/-- Every projected leaf has the transcript-defined structured terminal
keys.  This is the success gate inherited by both GIPA knowledge games. -/
def S1ForkGameKzgGood {μ depth : Nat}
    (stmt : FsStatement μ F G1 G2 GT)
    (tree : S1ForkGameTree F G1 G2 GT μ depth) : Prop :=
  tree.All (fun run =>
    KzgLeafStructured stmt run.1.proof run.1.transcript)

/-- The extracted root witness opens the two proof-owned GIPA roots. -/
def GipaRootOpeningGameRelation {μ : Nat}
    (stmt : FsStatement μ F G1 G2 GT)
    (witnessOf :
      PreRandomizerWitness (G1 := G1) (G2 := G2) (GT := GT) μ)
    (tree : S1ForkGameTree F G1 G2 GT μ μ) : Prop :=
  let root := tree.root.1
  let witness := witnessOf (proofRandomizerPayload root.proof)
  Ipp.SnarkPackV1.Refinement.RootOpensAt
    stmt root.proof.ComA root.proof.ComB witness

/-- The proof-owned product commitment agrees with the product induced by
the extracted roots and the randomizer in the projected root transcript. -/
def GipaProductLaneGameRelation {μ : Nat}
    (stmt : FsStatement μ F G1 G2 GT)
    (witnessOf :
      PreRandomizerWitness (G1 := G1) (G2 := G2) (GT := GT) μ)
    (tree : S1ForkGameTree F G1 G2 GT μ μ) : Prop :=
  let root := tree.root.1
  let r := root.transcript.randomizer
  let witness := witnessOf (proofRandomizerPayload root.proof)
  u4TCommitMap (F := F) (root.proof.ipAb, root.proof.aggC) =
    u4TCommitMap (F := F)
      (ipm (F := F) (u4TLanePairing stmt.e)
        (fun i => ((witness.items i).a, (witness.items i).c))
        (fun i =>
          (r ^ (i : Nat) • (witness.items i).b,
            r ^ (i : Nat))))

def KzgVFalseOpeningGameWin {μ : Nat}
    (stmt : FsStatement μ F G1 G2 GT) :
    S1ForkGameOutput F G1 G2 GT μ → Prop
  | none => False
  | some tree => KzgVFalseOpeningGameTreeWin stmt tree

def KzgWFalseOpeningGameWin {μ : Nat}
    (stmt : FsStatement μ F G1 G2 GT) :
    S1ForkGameOutput F G1 G2 GT μ → Prop
  | none => False
  | some tree => KzgWFalseOpeningGameTreeWin stmt tree

def GipaRootOpeningGameWin {μ : Nat}
    (stmt : FsStatement μ F G1 G2 GT)
    (witnessOf :
      PreRandomizerWitness (G1 := G1) (G2 := G2) (GT := GT) μ) :
    S1ForkGameOutput F G1 G2 GT μ → Prop
  | none => False
  | some tree =>
      S1ForkGameKzgGood stmt tree ∧
        ¬GipaRootOpeningGameRelation stmt witnessOf tree

def GipaProductLaneGameWin {μ : Nat}
    (stmt : FsStatement μ F G1 G2 GT)
    (witnessOf :
      PreRandomizerWitness (G1 := G1) (G2 := G2) (GT := GT) μ) :
    S1ForkGameOutput F G1 G2 GT μ → Prop
  | none => False
  | some tree =>
      S1ForkGameKzgGood stmt tree ∧
        GipaRootOpeningGameRelation stmt witnessOf tree ∧
          ¬GipaProductLaneGameRelation stmt witnessOf tree

private theorem treeHasKzgVFalseOpening_iff_gameProjection
    {μ depth : Nat}
    (stmt : FsStatement μ F G1 G2 GT)
    (tree :
      RunTree (FsWrappedSpec F)
        (S1WrappedRun F G1 G2 GT μ) depth) :
    TreeHasKzgVFalseOpening stmt tree ↔
      KzgVFalseOpeningGameTreeWin stmt
        (projectS1ForkTree tree) := by
  induction tree with
  | leaf run => rfl
  | node children ih =>
      constructor
      · rintro ⟨k, hbad⟩
        exact ⟨k, (ih k).mp hbad⟩
      · rintro ⟨k, hwin⟩
        exact ⟨k, (ih k).mpr hwin⟩

private theorem treeHasKzgWFalseOpening_iff_gameProjection
    {μ depth : Nat}
    (stmt : FsStatement μ F G1 G2 GT)
    (tree :
      RunTree (FsWrappedSpec F)
        (S1WrappedRun F G1 G2 GT μ) depth) :
    TreeHasKzgWFalseOpening stmt tree ↔
      KzgWFalseOpeningGameTreeWin stmt
        (projectS1ForkTree tree) := by
  induction tree with
  | leaf run => rfl
  | node children ih =>
      constructor
      · rintro ⟨k, hbad⟩
        exact ⟨k, (ih k).mp hbad⟩
      · rintro ⟨k, hwin⟩
        exact ⟨k, (ih k).mpr hwin⟩

private theorem allKzgLeafStructured_iff_gameProjection
    {μ depth : Nat}
    (stmt : FsStatement μ F G1 G2 GT)
    (tree :
      RunTree (FsWrappedSpec F)
        (S1WrappedRun F G1 G2 GT μ) depth) :
    tree.All (fun run =>
        KzgLeafStructured stmt run.1.out.proof
          run.1.out.transcript) ↔
      S1ForkGameKzgGood stmt (projectS1ForkTree tree) := by
  induction tree with
  | leaf run => rfl
  | node children ih =>
      constructor
      · intro hall k
        exact (ih k).mp (hall k)
      · intro hall k
        exact (ih k).mpr (hall k)

private theorem s1KzgGood_iff_gameProjection {μ : Nat}
    (stmt : FsStatement μ F G1 G2 GT)
    (tree :
      RunTree (FsWrappedSpec F)
        (S1WrappedRun F G1 G2 GT μ) μ) :
    S1KzgGood stmt tree ↔
      S1ForkGameKzgGood stmt (projectS1ForkTree tree) :=
  allKzgLeafStructured_iff_gameProjection stmt tree

private theorem s1RootOpeningGood_iff_gameProjection {μ : Nat}
    (stmt : FsStatement μ F G1 G2 GT)
    (witnessOf :
      PreRandomizerWitness (G1 := G1) (G2 := G2) (GT := GT) μ)
    (tree :
      RunTree (FsWrappedSpec F)
        (S1WrappedRun F G1 G2 GT μ) μ) :
    S1RootOpeningGood stmt witnessOf tree ↔
      GipaRootOpeningGameRelation stmt witnessOf
        (projectS1ForkTree tree) := by
  unfold S1RootOpeningGood GipaRootOpeningGameRelation
  rw [projectS1ForkTree_root]
  rfl

private theorem s1ProductLaneGood_iff_gameProjection {μ : Nat}
    (stmt : FsStatement μ F G1 G2 GT)
    (witnessOf :
      PreRandomizerWitness (G1 := G1) (G2 := G2) (GT := GT) μ)
    (tree :
      RunTree (FsWrappedSpec F)
        (S1WrappedRun F G1 G2 GT μ) μ) :
    S1ProductLaneGood stmt witnessOf tree ↔
      GipaProductLaneGameRelation stmt witnessOf
        (projectS1ForkTree tree) := by
  unfold S1ProductLaneGood GipaProductLaneGameRelation
  rw [projectS1ForkTree_root]
  rfl

/-- Exact pointwise reduction from the S1 G2/V false-opening event to its
game win. -/
theorem s1KzgVBad_iff_kzgVFalseOpeningGameWin {μ : Nat}
    (stmt : FsStatement μ F G1 G2 GT)
    (output : S1ForkOutput F G1 G2 GT μ) :
    S1KzgVBad stmt output ↔
      KzgVFalseOpeningGameWin stmt (projectS1ForkOutput output) := by
  cases output with
  | none => rfl
  | some tree =>
      exact treeHasKzgVFalseOpening_iff_gameProjection stmt tree

/-- Exact pointwise reduction from the S1 G1/W false-opening event to its
game win. -/
theorem s1KzgWBad_iff_kzgWFalseOpeningGameWin {μ : Nat}
    (stmt : FsStatement μ F G1 G2 GT)
    (output : S1ForkOutput F G1 G2 GT μ) :
    S1KzgWBad stmt output ↔
      KzgWFalseOpeningGameWin stmt (projectS1ForkOutput output) := by
  cases output with
  | none => rfl
  | some tree =>
      exact treeHasKzgWFalseOpening_iff_gameProjection stmt tree

/-- Exact pointwise reduction from S1 root-extraction failure to the GIPA
root-opening game win. -/
theorem s1RootOpeningBad_iff_gipaRootOpeningGameWin {μ : Nat}
    (stmt : FsStatement μ F G1 G2 GT)
    (witnessOf :
      PreRandomizerWitness (G1 := G1) (G2 := G2) (GT := GT) μ)
    (output : S1ForkOutput F G1 G2 GT μ) :
    S1RootOpeningBad stmt witnessOf output ↔
      GipaRootOpeningGameWin stmt witnessOf
        (projectS1ForkOutput output) := by
  cases output with
  | none => rfl
  | some tree =>
      change
        (S1KzgGood stmt tree ∧
            ¬S1RootOpeningGood stmt witnessOf tree) ↔
          (S1ForkGameKzgGood stmt (projectS1ForkTree tree) ∧
            ¬GipaRootOpeningGameRelation stmt witnessOf
              (projectS1ForkTree tree))
      rw [s1KzgGood_iff_gameProjection,
        s1RootOpeningGood_iff_gameProjection]

/-- Exact pointwise reduction from S1 product-lane inconsistency to the GIPA
product-lane game win. -/
theorem s1ProductLaneBad_iff_gipaProductLaneGameWin {μ : Nat}
    (stmt : FsStatement μ F G1 G2 GT)
    (witnessOf :
      PreRandomizerWitness (G1 := G1) (G2 := G2) (GT := GT) μ)
    (output : S1ForkOutput F G1 G2 GT μ) :
    S1ProductLaneBad stmt witnessOf output ↔
      GipaProductLaneGameWin stmt witnessOf
        (projectS1ForkOutput output) := by
  cases output with
  | none => rfl
  | some tree =>
      change
        (S1KzgGood stmt tree ∧
            S1RootOpeningGood stmt witnessOf tree ∧
              ¬S1ProductLaneGood stmt witnessOf tree) ↔
          (S1ForkGameKzgGood stmt (projectS1ForkTree tree) ∧
            GipaRootOpeningGameRelation stmt witnessOf
              (projectS1ForkTree tree) ∧
              ¬GipaProductLaneGameRelation stmt witnessOf
                (projectS1ForkTree tree))
      rw [s1KzgGood_iff_gameProjection,
        s1RootOpeningGood_iff_gameProjection,
        s1ProductLaneGood_iff_gameProjection]

/-- Concrete G2/V false-opening experiment derived from the full S1 fork
program. -/
noncomputable def kzgVFalseOpeningGame [Fintype F]
    [IsUniformSpec (FsWrappedSpec F)]
    [∀ j, SampleableType ((FsWrappedSpec F).Range j)]
    [unifSpec ⊂ₒ FsWrappedSpec F]
    [unifSpec ˡ⊂ₒ FsWrappedSpec F]
    {μ : Nat}
    (stmt : FsStatement μ F G1 G2 GT)
    (adv : OracleComp (FsSourceSpec F G1 G2 GT)
      (Proof μ F G1 G2 GT))
    (qb : (FsWrappedSpec F).Domain → Nat)
    (badZ : Finset F)
    (witnessOf :
      PreRandomizerWitness (G1 := G1) (G2 := G2) (GT := GT) μ) :
    OracleComp (FsWrappedSpec F)
      (S1ForkGameOutput F G1 G2 GT μ) :=
  projectS1ForkOutput <$>
    s1ForkExperiment stmt adv qb badZ witnessOf

/-- Concrete G1/W false-opening experiment derived from the full S1 fork
program. -/
noncomputable def kzgWFalseOpeningGame [Fintype F]
    [IsUniformSpec (FsWrappedSpec F)]
    [∀ j, SampleableType ((FsWrappedSpec F).Range j)]
    [unifSpec ⊂ₒ FsWrappedSpec F]
    [unifSpec ˡ⊂ₒ FsWrappedSpec F]
    {μ : Nat}
    (stmt : FsStatement μ F G1 G2 GT)
    (adv : OracleComp (FsSourceSpec F G1 G2 GT)
      (Proof μ F G1 G2 GT))
    (qb : (FsWrappedSpec F).Domain → Nat)
    (badZ : Finset F)
    (witnessOf :
      PreRandomizerWitness (G1 := G1) (G2 := G2) (GT := GT) μ) :
    OracleComp (FsWrappedSpec F)
      (S1ForkGameOutput F G1 G2 GT μ) :=
  projectS1ForkOutput <$>
    s1ForkExperiment stmt adv qb badZ witnessOf

/-- Concrete GIPA root-opening extraction experiment. -/
noncomputable def gipaRootOpeningGame [Fintype F]
    [IsUniformSpec (FsWrappedSpec F)]
    [∀ j, SampleableType ((FsWrappedSpec F).Range j)]
    [unifSpec ⊂ₒ FsWrappedSpec F]
    [unifSpec ˡ⊂ₒ FsWrappedSpec F]
    {μ : Nat}
    (stmt : FsStatement μ F G1 G2 GT)
    (adv : OracleComp (FsSourceSpec F G1 G2 GT)
      (Proof μ F G1 G2 GT))
    (qb : (FsWrappedSpec F).Domain → Nat)
    (badZ : Finset F)
    (witnessOf :
      PreRandomizerWitness (G1 := G1) (G2 := G2) (GT := GT) μ) :
    OracleComp (FsWrappedSpec F)
      (S1ForkGameOutput F G1 G2 GT μ) :=
  projectS1ForkOutput <$>
    s1ForkExperiment stmt adv qb badZ witnessOf

/-- Concrete GIPA product-lane consistency experiment. -/
noncomputable def gipaProductLaneGame [Fintype F]
    [IsUniformSpec (FsWrappedSpec F)]
    [∀ j, SampleableType ((FsWrappedSpec F).Range j)]
    [unifSpec ⊂ₒ FsWrappedSpec F]
    [unifSpec ˡ⊂ₒ FsWrappedSpec F]
    {μ : Nat}
    (stmt : FsStatement μ F G1 G2 GT)
    (adv : OracleComp (FsSourceSpec F G1 G2 GT)
      (Proof μ F G1 G2 GT))
    (qb : (FsWrappedSpec F).Domain → Nat)
    (badZ : Finset F)
    (witnessOf :
      PreRandomizerWitness (G1 := G1) (G2 := G2) (GT := GT) μ) :
    OracleComp (FsWrappedSpec F)
      (S1ForkGameOutput F G1 G2 GT μ) :=
  projectS1ForkOutput <$>
    s1ForkExperiment stmt adv qb badZ witnessOf

theorem s1KzgVBad_probability_eq_gameWin [Fintype F]
    [IsUniformSpec (FsWrappedSpec F)]
    [∀ j, SampleableType ((FsWrappedSpec F).Range j)]
    [unifSpec ⊂ₒ FsWrappedSpec F]
    [unifSpec ˡ⊂ₒ FsWrappedSpec F]
    {μ : Nat}
    (stmt : FsStatement μ F G1 G2 GT)
    (adv : OracleComp (FsSourceSpec F G1 G2 GT)
      (Proof μ F G1 G2 GT))
    (qb : (FsWrappedSpec F).Domain → Nat)
    (badZ : Finset F)
    (witnessOf :
      PreRandomizerWitness (G1 := G1) (G2 := G2) (GT := GT) μ) :
    Pr[S1KzgVBad stmt |
        s1ForkExperiment stmt adv qb badZ witnessOf] =
      Pr[KzgVFalseOpeningGameWin stmt |
        kzgVFalseOpeningGame stmt adv qb badZ witnessOf] := by
  rw [kzgVFalseOpeningGame, probEvent_map]
  apply probEvent_ext
  intro output _
  simpa [Function.comp_def] using
    (s1KzgVBad_iff_kzgVFalseOpeningGameWin stmt output)

theorem s1KzgWBad_probability_eq_gameWin [Fintype F]
    [IsUniformSpec (FsWrappedSpec F)]
    [∀ j, SampleableType ((FsWrappedSpec F).Range j)]
    [unifSpec ⊂ₒ FsWrappedSpec F]
    [unifSpec ˡ⊂ₒ FsWrappedSpec F]
    {μ : Nat}
    (stmt : FsStatement μ F G1 G2 GT)
    (adv : OracleComp (FsSourceSpec F G1 G2 GT)
      (Proof μ F G1 G2 GT))
    (qb : (FsWrappedSpec F).Domain → Nat)
    (badZ : Finset F)
    (witnessOf :
      PreRandomizerWitness (G1 := G1) (G2 := G2) (GT := GT) μ) :
    Pr[S1KzgWBad stmt |
        s1ForkExperiment stmt adv qb badZ witnessOf] =
      Pr[KzgWFalseOpeningGameWin stmt |
        kzgWFalseOpeningGame stmt adv qb badZ witnessOf] := by
  rw [kzgWFalseOpeningGame, probEvent_map]
  apply probEvent_ext
  intro output _
  simpa [Function.comp_def] using
    (s1KzgWBad_iff_kzgWFalseOpeningGameWin stmt output)

theorem s1RootOpeningBad_probability_eq_gameWin [Fintype F]
    [IsUniformSpec (FsWrappedSpec F)]
    [∀ j, SampleableType ((FsWrappedSpec F).Range j)]
    [unifSpec ⊂ₒ FsWrappedSpec F]
    [unifSpec ˡ⊂ₒ FsWrappedSpec F]
    {μ : Nat}
    (stmt : FsStatement μ F G1 G2 GT)
    (adv : OracleComp (FsSourceSpec F G1 G2 GT)
      (Proof μ F G1 G2 GT))
    (qb : (FsWrappedSpec F).Domain → Nat)
    (badZ : Finset F)
    (witnessOf :
      PreRandomizerWitness (G1 := G1) (G2 := G2) (GT := GT) μ) :
    Pr[S1RootOpeningBad stmt witnessOf |
        s1ForkExperiment stmt adv qb badZ witnessOf] =
      Pr[GipaRootOpeningGameWin stmt witnessOf |
        gipaRootOpeningGame stmt adv qb badZ witnessOf] := by
  rw [gipaRootOpeningGame, probEvent_map]
  apply probEvent_ext
  intro output _
  simpa [Function.comp_def] using
    (s1RootOpeningBad_iff_gipaRootOpeningGameWin
      stmt witnessOf output)

theorem s1ProductLaneBad_probability_eq_gameWin [Fintype F]
    [IsUniformSpec (FsWrappedSpec F)]
    [∀ j, SampleableType ((FsWrappedSpec F).Range j)]
    [unifSpec ⊂ₒ FsWrappedSpec F]
    [unifSpec ˡ⊂ₒ FsWrappedSpec F]
    {μ : Nat}
    (stmt : FsStatement μ F G1 G2 GT)
    (adv : OracleComp (FsSourceSpec F G1 G2 GT)
      (Proof μ F G1 G2 GT))
    (qb : (FsWrappedSpec F).Domain → Nat)
    (badZ : Finset F)
    (witnessOf :
      PreRandomizerWitness (G1 := G1) (G2 := G2) (GT := GT) μ) :
    Pr[S1ProductLaneBad stmt witnessOf |
        s1ForkExperiment stmt adv qb badZ witnessOf] =
      Pr[GipaProductLaneGameWin stmt witnessOf |
        gipaProductLaneGame stmt adv qb badZ witnessOf] := by
  rw [gipaProductLaneGame, probEvent_map]
  apply probEvent_ext
  intro output _
  simpa [Function.comp_def] using
    (s1ProductLaneBad_iff_gipaProductLaneGameWin
      stmt witnessOf output)

/-- External deployed KZG security is assumed only as a bound on the
concrete G2/V false-opening game win. -/
structure KzgVFalseOpeningGameSecurity [Fintype F] {μ : Nat}
    [IsUniformSpec (FsWrappedSpec F)]
    [∀ j, SampleableType ((FsWrappedSpec F).Range j)]
    [unifSpec ⊂ₒ FsWrappedSpec F]
    [unifSpec ˡ⊂ₒ FsWrappedSpec F]
    (stmt : FsStatement μ F G1 G2 GT)
    (adv : OracleComp (FsSourceSpec F G1 G2 GT)
      (Proof μ F G1 G2 GT))
    (qb : (FsWrappedSpec F).Domain → Nat)
    (badZ : Finset F)
    (witnessOf :
      PreRandomizerWitness (G1 := G1) (G2 := G2) (GT := GT) μ) where
  epsilon : ℝ≥0∞
  gameWin_le :
    Pr[KzgVFalseOpeningGameWin stmt |
      kzgVFalseOpeningGame stmt adv qb badZ witnessOf] ≤ epsilon

/-- External deployed KZG security is assumed only as a bound on the
concrete G1/W false-opening game win. -/
structure KzgWFalseOpeningGameSecurity [Fintype F] {μ : Nat}
    [IsUniformSpec (FsWrappedSpec F)]
    [∀ j, SampleableType ((FsWrappedSpec F).Range j)]
    [unifSpec ⊂ₒ FsWrappedSpec F]
    [unifSpec ˡ⊂ₒ FsWrappedSpec F]
    (stmt : FsStatement μ F G1 G2 GT)
    (adv : OracleComp (FsSourceSpec F G1 G2 GT)
      (Proof μ F G1 G2 GT))
    (qb : (FsWrappedSpec F).Domain → Nat)
    (badZ : Finset F)
    (witnessOf :
      PreRandomizerWitness (G1 := G1) (G2 := G2) (GT := GT) μ) where
  epsilon : ℝ≥0∞
  gameWin_le :
    Pr[KzgWFalseOpeningGameWin stmt |
      kzgWFalseOpeningGame stmt adv qb badZ witnessOf] ≤ epsilon

/-- External GIPA knowledge security is assumed only as a bound on the
root-opening extraction game win. -/
structure GipaRootOpeningGameSecurity [Fintype F] {μ : Nat}
    [IsUniformSpec (FsWrappedSpec F)]
    [∀ j, SampleableType ((FsWrappedSpec F).Range j)]
    [unifSpec ⊂ₒ FsWrappedSpec F]
    [unifSpec ˡ⊂ₒ FsWrappedSpec F]
    (stmt : FsStatement μ F G1 G2 GT)
    (adv : OracleComp (FsSourceSpec F G1 G2 GT)
      (Proof μ F G1 G2 GT))
    (qb : (FsWrappedSpec F).Domain → Nat)
    (badZ : Finset F)
    (witnessOf :
      PreRandomizerWitness (G1 := G1) (G2 := G2) (GT := GT) μ) where
  epsilon : ℝ≥0∞
  gameWin_le :
    Pr[GipaRootOpeningGameWin stmt witnessOf |
      gipaRootOpeningGame stmt adv qb badZ witnessOf] ≤ epsilon

/-- External GIPA knowledge security is assumed only as a bound on the
product-lane consistency game win. -/
structure GipaProductLaneGameSecurity [Fintype F] {μ : Nat}
    [IsUniformSpec (FsWrappedSpec F)]
    [∀ j, SampleableType ((FsWrappedSpec F).Range j)]
    [unifSpec ⊂ₒ FsWrappedSpec F]
    [unifSpec ˡ⊂ₒ FsWrappedSpec F]
    (stmt : FsStatement μ F G1 G2 GT)
    (adv : OracleComp (FsSourceSpec F G1 G2 GT)
      (Proof μ F G1 G2 GT))
    (qb : (FsWrappedSpec F).Domain → Nat)
    (badZ : Finset F)
    (witnessOf :
      PreRandomizerWitness (G1 := G1) (G2 := G2) (GT := GT) μ) where
  epsilon : ℝ≥0∞
  gameWin_le :
    Pr[GipaProductLaneGameWin stmt witnessOf |
      gipaProductLaneGame stmt adv qb badZ witnessOf] ≤ epsilon

/-- Kernel reduction from the combined S1 KZG event to the two explicit
deployed false-opening games. -/
theorem kzg_false_opening_to_game_security [Fintype F]
    [IsUniformSpec (FsWrappedSpec F)]
    [∀ j, SampleableType ((FsWrappedSpec F).Range j)]
    [unifSpec ⊂ₒ FsWrappedSpec F]
    [unifSpec ˡ⊂ₒ FsWrappedSpec F]
    {μ : Nat}
    (stmt : FsStatement μ F G1 G2 GT)
    (adv : OracleComp (FsSourceSpec F G1 G2 GT)
      (Proof μ F G1 G2 GT))
    (qb : (FsWrappedSpec F).Domain → Nat)
    (badZ : Finset F)
    (witnessOf :
      PreRandomizerWitness (G1 := G1) (G2 := G2) (GT := GT) μ)
    (securityV :
      KzgVFalseOpeningGameSecurity stmt adv qb badZ witnessOf)
    (securityW :
      KzgWFalseOpeningGameSecurity stmt adv qb badZ witnessOf) :
    Pr[S1KzgBad stmt |
        s1ForkExperiment stmt adv qb badZ witnessOf] ≤
      securityV.epsilon + securityW.epsilon := by
  apply le_trans
    (s1KzgBad_probability_le_lane_sum
      stmt adv qb badZ witnessOf)
  apply add_le_add
  · rw [s1KzgVBad_probability_eq_gameWin
      stmt adv qb badZ witnessOf]
    exact securityV.gameWin_le
  · rw [s1KzgWBad_probability_eq_gameWin
      stmt adv qb badZ witnessOf]
    exact securityW.gameWin_le

/-- Kernel reduction from the combined S1 GIPA event to the root-opening and
product-lane knowledge games. -/
theorem gipa_fork_knowledge_reduction [Fintype F]
    [IsUniformSpec (FsWrappedSpec F)]
    [∀ j, SampleableType ((FsWrappedSpec F).Range j)]
    [unifSpec ⊂ₒ FsWrappedSpec F]
    [unifSpec ˡ⊂ₒ FsWrappedSpec F]
    {μ : Nat}
    (stmt : FsStatement μ F G1 G2 GT)
    (adv : OracleComp (FsSourceSpec F G1 G2 GT)
      (Proof μ F G1 G2 GT))
    (qb : (FsWrappedSpec F).Domain → Nat)
    (badZ : Finset F)
    (witnessOf :
      PreRandomizerWitness (G1 := G1) (G2 := G2) (GT := GT) μ)
    (rootSecurity :
      GipaRootOpeningGameSecurity stmt adv qb badZ witnessOf)
    (productSecurity :
      GipaProductLaneGameSecurity stmt adv qb badZ witnessOf) :
    Pr[S1PairingBad stmt witnessOf |
        s1ForkExperiment stmt adv qb badZ witnessOf] ≤
      rootSecurity.epsilon + productSecurity.epsilon := by
  apply le_trans
    (s1PairingBad_probability_le_component_sum
      stmt adv qb badZ witnessOf)
  apply add_le_add
  · rw [s1RootOpeningBad_probability_eq_gameWin
      stmt adv qb badZ witnessOf]
    exact rootSecurity.gameWin_le
  · rw [s1ProductLaneBad_probability_eq_gameWin
      stmt adv qb badZ witnessOf]
    exact productSecurity.gameWin_le

/-- Assemble the S1 extraction interface from four independently bounded
computational games.  The four losses remain syntactically separate. -/
def S1ExtractionSecurity.ofDeployedAssumptions [Fintype F]
    [IsUniformSpec (FsWrappedSpec F)]
    [∀ j, SampleableType ((FsWrappedSpec F).Range j)]
    [unifSpec ⊂ₒ FsWrappedSpec F]
    [unifSpec ˡ⊂ₒ FsWrappedSpec F]
    {μ : Nat}
    (stmt : FsStatement μ F G1 G2 GT)
    (adv : OracleComp (FsSourceSpec F G1 G2 GT)
      (Proof μ F G1 G2 GT))
    (qb : (FsWrappedSpec F).Domain → Nat)
    (badZ : Finset F)
    (witnessOf :
      PreRandomizerWitness (G1 := G1) (G2 := G2) (GT := GT) μ)
    (kzgV :
      KzgVFalseOpeningGameSecurity stmt adv qb badZ witnessOf)
    (kzgW :
      KzgWFalseOpeningGameSecurity stmt adv qb badZ witnessOf)
    (gipaRoot :
      GipaRootOpeningGameSecurity stmt adv qb badZ witnessOf)
    (gipaProduct :
      GipaProductLaneGameSecurity stmt adv qb badZ witnessOf) :
    S1ExtractionSecurity stmt adv qb badZ where
  witnessOf := witnessOf
  epsilonKzg := kzgV.epsilon + kzgW.epsilon
  epsilonPairing := gipaRoot.epsilon + gipaProduct.epsilon
  kzgBad_le :=
    kzg_false_opening_to_game_security
      stmt adv qb badZ witnessOf kzgV kzgW
  pairingBad_le :=
    gipa_fork_knowledge_reduction
      stmt adv qb badZ witnessOf gipaRoot gipaProduct

/-- The existing fork argument, separated from any binding idealization. -/
theorem s1Fork_success_lower_bound [Fintype F]
    [(FsSourceSpec F G1 G2 GT).DecidableEq]
    [IsUniformSpec (FsSourceSpec F G1 G2 GT)]
    [∀ j, SampleableType ((FsSourceSpec F G1 G2 GT).Range j)]
    [unifSpec ⊂ₒ FsSourceSpec F G1 G2 GT]
    [IsUniformSpec (FsWrappedSpec F)]
    [∀ j, SampleableType ((FsWrappedSpec F).Range j)]
    [unifSpec ⊂ₒ FsWrappedSpec F] [unifSpec ˡ⊂ₒ FsWrappedSpec F]
    {μ : Nat}
    (stmt : FsStatement μ F G1 G2 GT)
    (adv : OracleComp (FsSourceSpec F G1 G2 GT)
      (Proof μ F G1 G2 GT))
    (qb : (FsWrappedSpec F).Domain → Nat)
    (badZ : Finset F) (dZ : Nat)
    (witnessOf :
      PreRandomizerWitness (G1 := G1) (G2 := G2) (GT := GT) μ)
    (hZcard : badZ.card ≤ dZ)
    (hquery : IsTotalQueryBound (FsGame stmt adv)
      (Q (qb (Sum.inr ())))) :
    ((forkTreeStep (qb (Sum.inr ()) + 1)
      (Fintype.card F))^[μ])
      (Pr[Accepted | fsProbComp stmt adv] -
        badEventError (F := F) (qb (Sum.inr ()))
          (2 ^ μ - 1) dZ) ≤
      Pr[fun tree : S1ForkOutput
          (F := F) (G1 := G1) (G2 := G2) (GT := GT) μ =>
          tree.isSome |
        s1ForkExperiment stmt adv qb badZ witnessOf] := by
  classical
  let badR := s1BadRandomizersFor stmt witnessOf
  let leafOk := s1ForkLeafOk stmt qb badZ witnessOf
  let main : OracleComp (FsWrappedSpec F)
      (S1WrappedRun (F := F) (G1 := G1) (G2 := G2) (GT := GT) μ) :=
    s1ForkMain stmt adv
  let cf : Nat →
      S1WrappedRun (F := F) (G1 := G1) (G2 := G2) (GT := GT) μ →
        Option (Fin (qb (Sum.inr ()) + 1)) :=
    s1ForkSelector qb
  have hq0 := q0_lower_bound (qb (Sum.inr ())) stmt adv badR badZ
      (2 ^ μ - 1) dZ
      (s1BadRandomizersFor_card stmt witnessOf) hZcard hquery
  have hbase :
      Pr[Accepted | fsProbComp stmt adv] -
          badEventError (F := F) (qb (Sum.inr ()))
            (2 ^ μ - 1) dZ ≤
        Pr[leafOk | replayFirstRun main] := by
    calc
      _ ≤ Pr[fun z => Accepted z ∧ RunGoodFull (qb (Sum.inr ())) stmt
          (fun payload => (badR payload : Set F)) (badZ : Set F) z |
            fsProbComp stmt adv] := by
        simpa only [badEventError] using hq0
      _ ≤ Pr[leafOk | replayFirstRun main] := by
        simpa [leafOk, main, badR, s1ForkLeafOk, s1ForkMain] using
          (wrapped_good_probability_eq
            (qb (Sum.inr ())) stmt adv badR badZ).le
  have hselector : ∀ {first},
      first ∈ support (replayFirstRun main) → leafOk first →
      ∀ level, level < μ → ∃ s, cf level first.1 = some s := by
    intro first hfirst hgood level hlevel
    exact fs_roundSlot_selector_total stmt adv
      (qb (Sum.inr ())) hfirst hgood.1 level hlevel
  have horder : ∀ {depth} (hdepth : depth < μ)
      {tree : RunTree (FsWrappedSpec F)
        (S1WrappedRun (F := F) (G1 := G1) (G2 := G2) (GT := GT) μ)
          depth}
      {outerLog : QueryLog (FsWrappedSpec F)},
      (some tree, outerLog) ∈ support (replayFirstRun
        (forkTreeCombined μ main qb (Sum.inr ()) cf leafOk depth
          (Nat.le_of_lt hdepth))) →
      ∀ {selected next},
        cf (combinedLevel μ depth hdepth) tree.root.1 = some selected →
        treeFirstSlot cf μ depth tree = some next →
        selected < next := by
    intro depth hdepth tree outerLog hrun selected next hselected hfirst
    have hall := forkTreeCombined_support_all_leafOk μ depth
      (Nat.le_of_lt hdepth) main qb (Sum.inr ()) cf leafOk
      (fun level _ => fs_roundSlot_reachable stmt adv qb level) hrun
    have hgood := hall.root.1
    have hpos : 0 < depth := by
      by_contra h
      have : depth = 0 := Nat.eq_zero_of_not_pos h
      subst depth
      simp [treeFirstSlot] at hfirst
    have hnext :
        roundSlot (qb (Sum.inr ())) (μ - depth) tree.root.1 =
          some next := by
      simpa [cf, treeFirstSlot, hpos] using hfirst
    apply hgood.2.2.2.1 (μ - (depth + 1)) (μ - depth)
      (by omega) (by omega)
    · simpa [cf, combinedLevel] using hselected
    · exact hnext
  have hfork := forkTree_bound μ main qb (Sum.inr ()) cf leafOk
    (fun level _ => fs_roundSlot_reachable stmt adv qb level)
    hselector horder
  have hfork' :
      ((forkTreeStep (qb (Sum.inr ()) + 1)
        (Fintype.card F))^[μ])
          (Pr[leafOk | replayFirstRun main]) ≤
        Pr[fun t : Option (RunTree (FsWrappedSpec F)
            (S1WrappedRun
              (F := F) (G1 := G1) (G2 := G2) (GT := GT) μ) μ) =>
              t.isSome |
          forkTreeCombined μ main qb (Sum.inr ()) cf leafOk μ
            (Nat.le_refl μ)] := by
    convert hfork using 1
    congr 1
    funext x
    unfold forkTreeStep
    congr
    all_goals exact Subsingleton.elim _ _
  have hmono :=
    (forkTreeStep_monotone
      (qb (Sum.inr ()) + 1) (Fintype.card F)).iterate μ hbase
  have hlower := le_trans hmono hfork'
  simpa [s1ForkExperiment, leafOk, main, cf] using hlower

private theorem s1Fork_some_partition {μ : Nat}
    (stmt : FsStatement μ F G1 G2 GT)
    (witnessOf :
      PreRandomizerWitness (G1 := G1) (G2 := G2) (GT := GT) μ)
    (tree :
      S1ForkOutput (F := F) (G1 := G1) (G2 := G2) (GT := GT) μ)
    (hsome : tree.isSome)
    (hleaf : ∀ concrete, tree = some concrete →
      concrete.All (fun run =>
        LeafData stmt run.1.out.proof run.1.out.transcript)) :
    S1ExtractionGood stmt witnessOf tree ∨
      S1KzgBad stmt tree ∨ S1PairingBad stmt witnessOf tree := by
    cases tree with
    | none => simp at hsome
    | some tree =>
      have hleafTree := hleaf tree rfl
      by_cases hkzg : S1KzgGood stmt tree
      · by_cases hpairing : S1PairingGood stmt witnessOf tree
        · exact Or.inl ⟨hkzg, hpairing⟩
        · exact Or.inr (Or.inr ⟨hkzg, hpairing⟩)
      · exact Or.inr (Or.inl
          (treeHasKzgFalseOpening_of_not_all_structured
            stmt tree hleafTree hkzg))

private theorem allLeafData_of_allSupport_full
    [Fintype F]
    {μ depth : Nat}
    (stmt : FsStatement μ F G1 G2 GT)
    (adv : OracleComp (FsSourceSpec F G1 G2 GT)
      (Proof μ F G1 G2 GT))
    (qb : (FsWrappedSpec F).Domain → Nat)
    (badZ : Finset F)
    (witnessOf : PreRandomizerWitness G1 G2 GT μ)
    {tree : RunTree (FsWrappedSpec F)
      (S1WrappedRun F G1 G2 GT μ) depth}
    (hsupport : tree.All (fun run =>
      run ∈ support (replayFirstRun (s1ForkMain stmt adv))))
    (hgood : tree.All (s1ForkLeafOk stmt qb badZ witnessOf)) :
    tree.All (fun run =>
      LeafData stmt run.1.out.proof run.1.out.transcript) := by
  induction tree with
  | leaf run =>
      dsimp [RunTree.All] at hsupport hgood ⊢
      obtain ⟨sourceLog, _htrace, _hlog, hsource⟩ :=
        wrapFs_support_exists_source (FsGame stmt adv) hsupport
      exact ((wrapped_source_leaf_data stmt adv hsource).2
        hgood.1.1).2.2.1
  | node children ih =>
      intro k
      exact ih k (hsupport k) (hgood k)

private theorem s1ExtractionGood_probability_pos [Fintype F]
    [(FsSourceSpec F G1 G2 GT).DecidableEq]
    [IsUniformSpec (FsSourceSpec F G1 G2 GT)]
    [∀ j, SampleableType ((FsSourceSpec F G1 G2 GT).Range j)]
    [unifSpec ⊂ₒ FsSourceSpec F G1 G2 GT]
    [IsUniformSpec (FsWrappedSpec F)]
    [∀ j, SampleableType ((FsWrappedSpec F).Range j)]
    [unifSpec ⊂ₒ FsWrappedSpec F] [unifSpec ˡ⊂ₒ FsWrappedSpec F]
    {μ : Nat}
    (stmt : FsStatement μ F G1 G2 GT)
    (adv : OracleComp (FsSourceSpec F G1 G2 GT)
      (Proof μ F G1 G2 GT))
    (qb : (FsWrappedSpec F).Domain → Nat)
    (badZ : Finset F) (dZ : Nat)
    (hZcard : badZ.card ≤ dZ)
    (hquery : IsTotalQueryBound (FsGame stmt adv)
      (Q (qb (Sum.inr ()))))
    (security : S1ExtractionSecurity stmt adv qb badZ)
    (hpositive : security.total <
      ((forkTreeStep (qb (Sum.inr ()) + 1)
        (Fintype.card F))^[μ])
        (Pr[Accepted | fsProbComp stmt adv] -
          badEventError (F := F) (qb (Sum.inr ()))
            (2 ^ μ - 1) dZ)) :
    0 < Pr[S1ExtractionGood stmt security.witnessOf |
      s1ForkExperiment stmt adv qb badZ security.witnessOf] := by
  classical
  let experiment :=
    s1ForkExperiment stmt adv qb badZ security.witnessOf
  have hlower := s1Fork_success_lower_bound
    stmt adv qb badZ dZ security.witnessOf hZcard hquery
  have hsome :
      security.total <
        Pr[fun tree : S1ForkOutput
            (F := F) (G1 := G1) (G2 := G2) (GT := GT) μ =>
            tree.isSome | experiment] :=
    lt_of_lt_of_le hpositive hlower
  have hpartition :
      Pr[fun tree : S1ForkOutput
          (F := F) (G1 := G1) (G2 := G2) (GT := GT) μ =>
          tree.isSome | experiment] ≤
        Pr[fun tree =>
          S1ExtractionGood stmt security.witnessOf tree ∨
            (S1KzgBad stmt tree ∨
              S1PairingBad stmt security.witnessOf tree) |
          experiment] := by
    apply probEvent_mono
    intro tree hsupport htree
    apply s1Fork_some_partition stmt security.witnessOf tree htree
    intro concrete htreeEq
    subst tree
    have hconsistent :=
      forkTreeCombined_support_props μ
        (s1ForkMain stmt adv) qb (Sum.inr ())
        (s1ForkSelector qb)
        (s1ForkLeafOk stmt qb badZ security.witnessOf)
        (fun level _ => fs_roundSlot_reachable stmt adv qb level)
        (by simpa [experiment, s1ForkExperiment] using hsupport)
    have hsupportAll := hconsistent.all_support
    have hgoodAll := hconsistent.all_leafOk
    exact allLeafData_of_allSupport_full stmt adv qb badZ
      security.witnessOf hsupportAll hgoodAll
  have hunion :
      Pr[fun tree =>
          S1ExtractionGood stmt security.witnessOf tree ∨
            (S1KzgBad stmt tree ∨
              S1PairingBad stmt security.witnessOf tree) |
          experiment] ≤
        Pr[S1ExtractionGood stmt security.witnessOf | experiment] +
          (Pr[S1KzgBad stmt | experiment] +
            Pr[S1PairingBad stmt security.witnessOf | experiment]) := by
    exact le_trans
      (probEvent_or_le experiment
        (S1ExtractionGood stmt security.witnessOf)
        (fun tree => S1KzgBad stmt tree ∨
          S1PairingBad stmt security.witnessOf tree))
      (add_le_add le_rfl
        (probEvent_or_le experiment
          (S1KzgBad stmt)
          (S1PairingBad stmt security.witnessOf)))
  have hbad :
      Pr[S1KzgBad stmt | experiment] +
          Pr[S1PairingBad stmt security.witnessOf | experiment] ≤
        security.total := by
    exact add_le_add security.kzgBad_le security.pairingBad_le
  by_contra hnot
  have hzero :
      Pr[S1ExtractionGood stmt security.witnessOf | experiment] = 0 := by
    exact le_antisymm (not_lt.mp hnot) bot_le
  have hsomeLe : Pr[fun tree :
        S1ForkOutput (F := F) (G1 := G1) (G2 := G2) (GT := GT) μ =>
        tree.isSome | experiment] ≤ security.total := by
    calc
      _ ≤ Pr[fun tree =>
          S1ExtractionGood stmt security.witnessOf tree ∨
            (S1KzgBad stmt tree ∨
              S1PairingBad stmt security.witnessOf tree) |
          experiment] := hpartition
      _ ≤ Pr[S1ExtractionGood stmt security.witnessOf | experiment] +
          (Pr[S1KzgBad stmt | experiment] +
            Pr[S1PairingBad stmt security.witnessOf | experiment]) := hunion
      _ = Pr[S1KzgBad stmt | experiment] +
          Pr[S1PairingBad stmt security.witnessOf | experiment] := by
            simp [hzero]
      _ ≤ security.total := hbad
  exact (not_le_of_gt hsome) hsomeLe

/-- Computational S1 soundness.  The conclusion is unchanged, while the
positive threshold now pays the exact KZG and pairing-commitment bad-event
probabilities in the full fork experiment. -/
theorem s1_computational_soundness [Fintype F]
    [(FsSourceSpec F G1 G2 GT).DecidableEq]
    [IsUniformSpec (FsSourceSpec F G1 G2 GT)]
    [∀ j, SampleableType ((FsSourceSpec F G1 G2 GT).Range j)]
    [unifSpec ⊂ₒ FsSourceSpec F G1 G2 GT]
    [IsUniformSpec (FsWrappedSpec F)]
    [∀ j, SampleableType ((FsWrappedSpec F).Range j)]
    [unifSpec ⊂ₒ FsWrappedSpec F] [unifSpec ˡ⊂ₒ FsWrappedSpec F]
    {μ : Nat}
    (stmt : FsStatement μ F G1 G2 GT)
    (adv : OracleComp (FsSourceSpec F G1 G2 GT)
      (Proof μ F G1 G2 GT))
    (qb : (FsWrappedSpec F).Domain → Nat)
    (badZ : Finset F) (dZ : Nat)
    (hZcard : badZ.card ≤ dZ)
    (hquery : IsTotalQueryBound (FsGame stmt adv)
      (Q (qb (Sum.inr ()))))
    (security : S1ExtractionSecurity stmt adv qb badZ)
    (hpositive : security.total <
      ((forkTreeStep (qb (Sum.inr ()) + 1)
        (Fintype.card F))^[μ])
        (Pr[Accepted | fsProbComp stmt adv] -
          badEventError (F := F) (qb (Sum.inr ()))
            (2 ^ μ - 1) dZ)) :
    ∃ run : S1WrappedRun
        (F := F) (G1 := G1) (G2 := G2) (GT := GT) μ,
      ∃ log : QueryLog (FsWrappedSpec F),
        (run, log) ∈ support
          (replayFirstRun (wrapFs (FsGame stmt adv))) ∧
        Ipp.SnarkPackV1.Refinement.HasValidRepresentation
          stmt run.out.proof := by
  classical
  have hgoodPos := s1ExtractionGood_probability_pos
    stmt adv qb badZ dZ hZcard hquery security hpositive
  obtain ⟨treeOpt, htreeSupport, hgood⟩ :=
    probEvent_pos_iff.mp hgoodPos
  cases treeOpt with
  | none => simp [S1ExtractionGood] at hgood
  | some tree =>
      have hconsistent :=
        forkTreeCombined_support_props μ
          (s1ForkMain stmt adv) qb (Sum.inr ())
          (s1ForkSelector qb)
          (s1ForkLeafOk stmt qb badZ security.witnessOf)
          (fun level _ => fs_roundSlot_reachable stmt adv qb level)
          (by simpa [s1ForkExperiment] using htreeSupport)
      have hallFull := hconsistent.all_leafOk
      have hrootSupport := hconsistent.all_support.root
      have haccepts :=
        wrapped_support_accepts stmt adv hrootSupport hallFull.root.1.1
      let r := tree.root.1.out.transcript.randomizer
      let rootProof := tree.root.1.out.proof
      let witness :=
        security.witnessOf (proofRandomizerPayload rootProof)
      have hpair :
          S1PairingGood stmt security.witnessOf tree := hgood.2
      have hopen :
          Ipp.SnarkPackV1.Refinement.RootOpensAt
            stmt rootProof.ComA rootProof.ComB witness := by
        simpa [S1PairingGood, r, rootProof, witness] using hpair.1
      have ht :
          (rootProof.ipAb, rootProof.aggC) =
            ipm (F := F) (u4TLanePairing stmt.e)
              (fun i => ((witness.items i).a, (witness.items i).c))
              (fun i =>
                (r ^ (i : Nat) • (witness.items i).b,
                  r ^ (i : Nat))) := by
        apply u4TEmbedding_injective (F := F)
        simpa [S1PairingGood, u4TCommitMap, r, rootProof, witness]
          using hpair.2
      rw [ipm_u4_componentwise] at ht
      have hip :
          rootProof.ipAb =
            ∑ i : Fin (2 ^ μ),
              stmt.e (witness.items i).a
                (r ^ (i : Nat) • (witness.items i).b) :=
        congrArg (fun z : GT × G1 => z.1) ht
      have hagg :
          rootProof.aggC =
            ∑ i : Fin (2 ^ μ),
              r ^ (i : Nat) • (witness.items i).c :=
        congrArg (fun z : GT × G1 => z.2) ht
      have hroot :
          r ∉ discrepancyRootSet (fun i =>
            groth16Discrepancy stmt.e stmt.alpha stmt.beta stmt.gamma
              stmt.delta (fun j => (witness.items j).a)
              (fun j => (witness.items j).c) stmt.Aic
              (fun j => (witness.items j).b) i) := by
        have hrootGood := hallFull.root.2.1
        change r ∉
          (s1BadRandomizersFor stmt security.witnessOf
            (proofRandomizerPayload rootProof) : Set F) at hrootGood
        rw [coe_s1BadRandomizersFor] at hrootGood
        simpa [proofRandomizerPayload, r, rootProof, witness] using hrootGood
      have hvalid :
          ∀ i, stmt.e (witness.items i).a (witness.items i).b =
            groth16Rhs stmt.e stmt.alpha (stmt.Aic i)
              (witness.items i).c stmt.beta stmt.gamma stmt.delta := by
        apply u4_ppe_per_index stmt.e stmt.alpha stmt.beta stmt.gamma
          stmt.delta
          (fun i => (witness.items i).a)
          (fun i => (witness.items i).c)
          stmt.Aic
          (fun i => (witness.items i).b)
          r hroot
        exact u4_terminal_decoder stmt.e stmt.alpha stmt.beta stmt.gamma
          stmt.delta
          (fun i => (witness.items i).a)
          (fun i => (witness.items i).c)
          stmt.Aic
          (fun i => (witness.items i).b)
          r rootProof.ipAb rootProof.aggC
          (∑ i : Fin (2 ^ μ), r ^ (i : Nat))
          (∑ i : Fin (2 ^ μ), r ^ (i : Nat) • stmt.Aic i)
          hip hagg rfl rfl
          (by simpa [r, rootProof] using
            haccepts.2.2.2.2.2.2.2)
      refine ⟨tree.root.1, tree.root.2, hrootSupport, ?_⟩
      apply (Ipp.SnarkPackV1.Refinement.hasValidRepresentation_iff
        stmt rootProof).2
      exact ⟨witness, hopen, hvalid⟩

/-- Invalid ordered goals bound the full fork expression by the two explicit
computational binding losses. -/
theorem invalid_goal_fork_bound_le_extraction_advantage [Fintype F]
    [(FsSourceSpec F G1 G2 GT).DecidableEq]
    [IsUniformSpec (FsSourceSpec F G1 G2 GT)]
    [∀ j, SampleableType ((FsSourceSpec F G1 G2 GT).Range j)]
    [unifSpec ⊂ₒ FsSourceSpec F G1 G2 GT]
    [IsUniformSpec (FsWrappedSpec F)]
    [∀ j, SampleableType ((FsWrappedSpec F).Range j)]
    [unifSpec ⊂ₒ FsWrappedSpec F] [unifSpec ˡ⊂ₒ FsWrappedSpec F]
    {μ : Nat}
    (stmt : FsStatement μ F G1 G2 GT)
    (adv : OracleComp (FsSourceSpec F G1 G2 GT)
      (Proof μ F G1 G2 GT))
    (qb : (FsWrappedSpec F).Domain → Nat)
    (badZ : Finset F) (dZ : Nat)
    (hZcard : badZ.card ≤ dZ)
    (hquery : IsTotalQueryBound (FsGame stmt adv)
      (Q (qb (Sum.inr ()))))
    (security : S1ExtractionSecurity stmt adv qb badZ)
    (hinvalid : ∀ proof,
      ¬Ipp.SnarkPackV1.Refinement.HasValidRepresentation stmt proof) :
    ((forkTreeStep (qb (Sum.inr ()) + 1)
      (Fintype.card F))^[μ])
      (Pr[Accepted | fsProbComp stmt adv] -
        badEventError (F := F) (qb (Sum.inr ()))
          (2 ^ μ - 1) dZ) ≤ security.total := by
  apply not_lt.mp
  intro hpositive
  obtain ⟨run, _log, _hsupport, hvalid⟩ :=
    s1_computational_soundness stmt adv qb badZ dZ
      hZcard hquery security hpositive
  exact hinvalid run.out.proof hvalid

/-- Fixed decoded proofs retain their identity through the fork experiment, so
the same computational extraction bound needs invalidity only for that proof. -/
theorem invalid_proof_fork_bound_le_extraction_advantage [Fintype F]
    [(FsSourceSpec F G1 G2 GT).DecidableEq]
    [IsUniformSpec (FsSourceSpec F G1 G2 GT)]
    [∀ j, SampleableType ((FsSourceSpec F G1 G2 GT).Range j)]
    [unifSpec ⊂ₒ FsSourceSpec F G1 G2 GT]
    [IsUniformSpec (FsWrappedSpec F)]
    [∀ j, SampleableType ((FsWrappedSpec F).Range j)]
    [unifSpec ⊂ₒ FsWrappedSpec F] [unifSpec ˡ⊂ₒ FsWrappedSpec F]
    {μ : Nat}
    (stmt : FsStatement μ F G1 G2 GT)
    (proof : Proof μ F G1 G2 GT)
    (qb : (FsWrappedSpec F).Domain → Nat)
    (badZ : Finset F) (dZ : Nat)
    (hZcard : badZ.card ≤ dZ)
    (hquery : IsTotalQueryBound
      (FsGame stmt
        (pure proof :
          OracleComp (FsSourceSpec F G1 G2 GT)
            (Proof μ F G1 G2 GT)))
      (Q (qb (Sum.inr ()))))
    (security : S1ExtractionSecurity stmt
      (pure proof :
        OracleComp (FsSourceSpec F G1 G2 GT)
          (Proof μ F G1 G2 GT))
      qb badZ)
    (hinvalid :
      ¬Ipp.SnarkPackV1.Refinement.HasValidRepresentation stmt proof) :
    ((forkTreeStep (qb (Sum.inr ()) + 1)
      (Fintype.card F))^[μ])
      (Pr[Accepted |
          fsProbComp stmt
            (pure proof :
              OracleComp (FsSourceSpec F G1 G2 GT)
                (Proof μ F G1 G2 GT))] -
        badEventError (F := F) (qb (Sum.inr ()))
          (2 ^ μ - 1) dZ) ≤ security.total := by
  apply not_lt.mp
  intro hpositive
  obtain ⟨run, _log, hsupport, hvalid⟩ :=
    s1_computational_soundness stmt
      (pure proof :
        OracleComp (FsSourceSpec F G1 G2 GT)
          (Proof μ F G1 G2 GT))
      qb badZ dZ hZcard hquery security hpositive
  have hproof : run.out.proof = proof :=
    wrapped_pure_game_proof_eq stmt proof hsupport
  apply hinvalid
  simpa [hproof] using hvalid

end

end Ipp.S1
