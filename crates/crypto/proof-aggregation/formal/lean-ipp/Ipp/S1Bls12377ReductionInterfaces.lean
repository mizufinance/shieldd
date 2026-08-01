import Ipp.S1Bls12377SecurityGames

/-!
Explicit BLS12-377 reduction targets for the two computational S1 losses.

The KZG target relations expose false-opening tuples rather than an S1 bad
predicate.  The GIPA targets expose the witness returned by a pre-randomizer
extractor.  Their mapped programs still run the S1 fork experiment; this module
does not define the eventual setup-sampling security experiments.  Nothing here
turns proposition-level decidability into executable code: the KZG selectors
consume an exact Boolean leaf classifier, and constructing that classifier
from production remains explicit.  Oracle-query bounds are recorded exactly;
concrete local polynomial-time evidence remains a separate closure obligation.
-/

open OracleSpec OracleComp ENNReal Function
open scoped OracleSpec.PrimitiveQuery ENNReal

namespace Ipp.S1

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
local instance : DecidableEq g1PrimeSubgroup := Classical.decEq _
local instance : DecidableEq g2PrimeSubgroup := Classical.decEq _

abbrev Bls12377ReductionStatement (μ : Nat) :=
  FsStatement μ Fr g1PrimeSubgroup g2PrimeSubgroup ArkPairingOutput

abbrev Bls12377ReductionProof (μ : Nat) :=
  Proof μ Fr g1PrimeSubgroup g2PrimeSubgroup ArkPairingOutput

abbrev Bls12377ReductionAdversary (μ : Nat) :=
  OracleComp
    (FsSourceSpec Fr g1PrimeSubgroup g2PrimeSubgroup ArkPairingOutput)
    (Bls12377ReductionProof μ)

abbrev Bls12377ReductionWitness (μ : Nat) :=
  PreRandomizerWitness
    (G1 := g1PrimeSubgroup)
    (G2 := g2PrimeSubgroup)
    (GT := ArkPairingOutput) μ

abbrev Bls12377ReductionForkOutput (μ : Nat) :=
  S1ForkGameOutput
    Fr g1PrimeSubgroup g2PrimeSubgroup ArkPairingOutput μ

variable
  [IsUniformSpec (FsWrappedSpec Fr)]
  [∀ j, SampleableType ((FsWrappedSpec Fr).Range j)]
  [unifSpec ⊂ₒ FsWrappedSpec Fr]
  [unifSpec ˡ⊂ₒ FsWrappedSpec Fr]

/-! ## Explicit KZG false-opening targets -/

/-- A concrete G2/V-lane false-opening tuple. -/
structure Bls12377KzgVForgery (μ : Nat) where
  z : Fr
  coeffs : Fin (2 ^ μ) → Fr
  claimedKey : g2PrimeSubgroup
  opening : g2PrimeSubgroup

/-- A concrete G1/W-lane false-opening tuple. -/
structure Bls12377KzgWForgery (μ : Nat) where
  z : Fr
  coeffs : Fin (2 ^ μ) → Fr
  claimedKey : g1PrimeSubgroup
  opening : g1PrimeSubgroup

/-- The V-lane target checks the statement's verifier relation and rejects the
transcript-defined structured SRS key.  A shipping instantiation must
separately identify `acceptV` with the deployed equation. -/
def Bls12377KzgVForgery.Wins {μ : Nat}
    (stmt : Bls12377ReductionStatement μ)
    (forgery : Bls12377KzgVForgery μ) : Prop :=
  stmt.acceptV forgery.z forgery.coeffs
      forgery.claimedKey forgery.opening ∧
    forgery.claimedKey ≠ msm forgery.coeffs stmt.srsV

/-- The W-lane target checks the statement's verifier relation and rejects the
transcript-defined structured SRS key.  A shipping instantiation must
separately identify `acceptW` with the deployed equation. -/
def Bls12377KzgWForgery.Wins {μ : Nat}
    (stmt : Bls12377ReductionStatement μ)
    (forgery : Bls12377KzgWForgery μ) : Prop :=
  stmt.acceptW forgery.z forgery.coeffs
      forgery.claimedKey forgery.opening ∧
    forgery.claimedKey ≠ msm forgery.coeffs stmt.srsW

def bls12377KzgVForgeryOfLeaf {μ : Nat}
    (leaf : S1ForkGameLeaf
      Fr g1PrimeSubgroup g2PrimeSubgroup ArkPairingOutput μ) :
    Bls12377KzgVForgery μ where
  z := leaf.transcript.kzg
  coeffs :=
    transcriptCoeffs (reversedView leaf.transcript.roundAnswer) 1
  claimedKey := leaf.proof.vFinal
  opening := leaf.proof.vOpening

def bls12377KzgWForgeryOfLeaf {μ : Nat}
    (leaf : S1ForkGameLeaf
      Fr g1PrimeSubgroup g2PrimeSubgroup ArkPairingOutput μ) :
    Bls12377KzgWForgery μ where
  z := leaf.transcript.kzg
  coeffs :=
    transcriptCoeffs
      (fun i => gipaChallenge
        (reversedView leaf.transcript.roundAnswer i))
      leaf.transcript.randomizer⁻¹
  claimedKey := leaf.proof.wFinal
  opening := leaf.proof.wOpening

/-- One bad V leaf produces one standalone deployed-equation forgery. -/
theorem bls12377KzgVForgeryOfLeaf_wins {μ : Nat}
    (stmt : Bls12377ReductionStatement μ)
    (leaf : S1ForkGameLeaf
      Fr g1PrimeSubgroup g2PrimeSubgroup ArkPairingOutput μ)
    (hbad :
      KzgVFalseOpening stmt leaf.proof leaf.transcript) :
    Bls12377KzgVForgery.Wins stmt
      (bls12377KzgVForgeryOfLeaf leaf) := by
  exact kzgVFalseOpening_relation
    stmt leaf.proof leaf.transcript hbad

/-- One bad W leaf produces one standalone deployed-equation forgery. -/
theorem bls12377KzgWForgeryOfLeaf_wins {μ : Nat}
    (stmt : Bls12377ReductionStatement μ)
    (leaf : S1ForkGameLeaf
      Fr g1PrimeSubgroup g2PrimeSubgroup ArkPairingOutput μ)
    (hbad :
      KzgWFalseOpening stmt leaf.proof leaf.transcript) :
    Bls12377KzgWForgery.Wins stmt
      (bls12377KzgWForgeryOfLeaf leaf) := by
  exact kzgWFalseOpening_relation
    stmt leaf.proof leaf.transcript hbad

/-- A winning V fork contains a standalone V forgery.  This theorem is
existential; it deliberately does not claim an executable leaf selector. -/
theorem bls12377KzgVGameTreeWin_exists_forgery
    {μ depth : Nat}
    (stmt : Bls12377ReductionStatement μ)
    (tree : S1ForkGameTree
      Fr g1PrimeSubgroup g2PrimeSubgroup ArkPairingOutput μ depth)
    (hwin : KzgVFalseOpeningGameTreeWin stmt tree) :
    ∃ forgery, Bls12377KzgVForgery.Wins stmt forgery := by
  induction tree with
  | leaf run =>
      exact ⟨bls12377KzgVForgeryOfLeaf run.1,
        bls12377KzgVForgeryOfLeaf_wins stmt run.1 hwin⟩
  | node children ih =>
      obtain ⟨k, hk⟩ := hwin
      exact ih k hk

/-- A winning W fork contains a standalone W forgery. -/
theorem bls12377KzgWGameTreeWin_exists_forgery
    {μ depth : Nat}
    (stmt : Bls12377ReductionStatement μ)
    (tree : S1ForkGameTree
      Fr g1PrimeSubgroup g2PrimeSubgroup ArkPairingOutput μ depth)
    (hwin : KzgWFalseOpeningGameTreeWin stmt tree) :
    ∃ forgery, Bls12377KzgWForgery.Wins stmt forgery := by
  induction tree with
  | leaf run =>
      exact ⟨bls12377KzgWForgeryOfLeaf run.1,
        bls12377KzgWForgeryOfLeaf_wins stmt run.1 hwin⟩
  | node children ih =>
      obtain ⟨k, hk⟩ := hwin
      exact ih k hk

theorem bls12377KzgVGameWin_exists_forgery {μ : Nat}
    (stmt : Bls12377ReductionStatement μ)
    (output : Bls12377ReductionForkOutput μ)
    (hwin : KzgVFalseOpeningGameWin stmt output) :
    ∃ forgery, Bls12377KzgVForgery.Wins stmt forgery := by
  cases output with
  | none => exact False.elim hwin
  | some tree =>
      exact bls12377KzgVGameTreeWin_exists_forgery stmt tree hwin

theorem bls12377KzgWGameWin_exists_forgery {μ : Nat}
    (stmt : Bls12377ReductionStatement μ)
    (output : Bls12377ReductionForkOutput μ)
    (hwin : KzgWFalseOpeningGameWin stmt output) :
    ∃ forgery, Bls12377KzgWForgery.Wins stmt forgery := by
  cases output with
  | none => exact False.elim hwin
  | some tree =>
      exact bls12377KzgWGameTreeWin_exists_forgery stmt tree hwin

/-- Semantic target for a V-lane reducer.  `preserves` is the exact
postcondition; a concrete executable implementation must separately refine
this record and establish its running time. -/
structure Bls12377KzgVForkReduction {μ : Nat}
    (stmt : Bls12377ReductionStatement μ) where
  extract :
    Bls12377ReductionForkOutput μ → Option (Bls12377KzgVForgery μ)
  preserves :
    ∀ output, KzgVFalseOpeningGameWin stmt output →
      match extract output with
      | none => False
      | some forgery => Bls12377KzgVForgery.Wins stmt forgery

/-- Semantic target for a W-lane reducer. -/
structure Bls12377KzgWForkReduction {μ : Nat}
    (stmt : Bls12377ReductionStatement μ) where
  extract :
    Bls12377ReductionForkOutput μ → Option (Bls12377KzgWForgery μ)
  preserves :
    ∀ output, KzgWFalseOpeningGameWin stmt output →
      match extract output with
      | none => False
      | some forgery => Bls12377KzgWForgery.Wins stmt forgery

/-! ## Deterministic leaf selectors -/

/-- Semantic Boolean decisions used by the deterministic fork-tree search.

The exactness fields make the selector theorems sound, but this record does
not certify executability or running time.  In particular, a classically
chosen Boolean function is not production evidence.  Shipping closure needs a
separate extracted concrete-target classifier and structural cost proof. -/
structure Bls12377KzgLeafClassifier {μ : Nat}
    (stmt : Bls12377ReductionStatement μ) where
  vBad :
    S1ForkGameLeaf
      Fr g1PrimeSubgroup g2PrimeSubgroup ArkPairingOutput μ → Bool
  wBad :
    S1ForkGameLeaf
      Fr g1PrimeSubgroup g2PrimeSubgroup ArkPairingOutput μ → Bool
  vBad_iff :
    ∀ leaf, vBad leaf = true ↔
      KzgVFalseOpening stmt leaf.proof leaf.transcript
  wBad_iff :
    ∀ leaf, wBad leaf = true ↔
      KzgWFalseOpening stmt leaf.proof leaf.transcript

/-- Deterministically keep the first present result in child order. -/
def bls12377FirstSome4 {α : Type}
    (results : Fin 4 → Option α) : Option α :=
  match results 0 with
  | some result => some result
  | none =>
      match results 1 with
      | some result => some result
      | none =>
          match results 2 with
          | some result => some result
          | none => results 3

/-- A result returned by the four-way selector came from one child. -/
theorem bls12377FirstSome4_some {α : Type}
    (results : Fin 4 → Option α) (result : α)
    (hresult : bls12377FirstSome4 results = some result) :
    ∃ child, results child = some result := by
  cases h0 : results 0 with
  | none =>
      cases h1 : results 1 with
      | none =>
          cases h2 : results 2 with
          | none =>
              exact ⟨3, by
                simpa [bls12377FirstSome4, h0, h1, h2] using hresult⟩
          | some result2 =>
              have heq : result2 = result := by
                simpa [bls12377FirstSome4, h0, h1, h2] using hresult
              exact ⟨2, by simpa [heq] using h2⟩
      | some result1 =>
          have heq : result1 = result := by
            simpa [bls12377FirstSome4, h0, h1] using hresult
          exact ⟨1, by simpa [heq] using h1⟩
  | some result0 =>
      have heq : result0 = result := by
        simpa [bls12377FirstSome4, h0] using hresult
      exact ⟨0, by simpa [heq] using h0⟩

/-- If a child returned a result, the deterministic four-way selector returns
some result (possibly an earlier child's result). -/
theorem bls12377FirstSome4_exists {α : Type}
    (results : Fin 4 → Option α)
    (hexists : ∃ child result, results child = some result) :
    ∃ result, bls12377FirstSome4 results = some result := by
  obtain ⟨child, result, hresult⟩ := hexists
  fin_cases child
  · change results 0 = some result at hresult
    exact ⟨result, by simp [bls12377FirstSome4, hresult]⟩
  · change results 1 = some result at hresult
    cases h0 : results 0 with
    | none =>
        exact ⟨result, by
          simp [bls12377FirstSome4, h0, hresult]⟩
    | some result0 =>
        exact ⟨result0, by simp [bls12377FirstSome4, h0]⟩
  · change results 2 = some result at hresult
    cases h0 : results 0 with
    | some result0 =>
        exact ⟨result0, by simp [bls12377FirstSome4, h0]⟩
    | none =>
        cases h1 : results 1 with
        | some result1 =>
            exact ⟨result1, by
              simp [bls12377FirstSome4, h0, h1]⟩
        | none =>
            exact ⟨result, by
              simp [bls12377FirstSome4, h0, h1, hresult]⟩
  · change results 3 = some result at hresult
    cases h0 : results 0 with
    | some result0 =>
        exact ⟨result0, by simp [bls12377FirstSome4, h0]⟩
    | none =>
        cases h1 : results 1 with
        | some result1 =>
            exact ⟨result1, by
              simp [bls12377FirstSome4, h0, h1]⟩
        | none =>
            cases h2 : results 2 with
            | some result2 =>
                exact ⟨result2, by
                  simp [bls12377FirstSome4, h0, h1, h2]⟩
            | none =>
                exact ⟨result, by
                  simp [bls12377FirstSome4, h0, h1, h2, hresult]⟩

/-- Search a projected fork in canonical child order for a V-lane false
opening.  The search is structural and makes no oracle queries. -/
def bls12377SelectKzgVForgery {μ : Nat}
    (stmt : Bls12377ReductionStatement μ)
    (classifier : Bls12377KzgLeafClassifier stmt) :
    {depth : Nat} →
      S1ForkGameTree
        Fr g1PrimeSubgroup g2PrimeSubgroup ArkPairingOutput μ depth →
      Option (Bls12377KzgVForgery μ)
  | 0, .leaf run =>
      if classifier.vBad run.1 = true then
        some (bls12377KzgVForgeryOfLeaf run.1)
      else
        none
  | _ + 1, .node children =>
      bls12377FirstSome4 (fun child =>
        bls12377SelectKzgVForgery
          stmt classifier (children child))

/-- W-lane structural search. -/
def bls12377SelectKzgWForgery {μ : Nat}
    (stmt : Bls12377ReductionStatement μ)
    (classifier : Bls12377KzgLeafClassifier stmt) :
    {depth : Nat} →
      S1ForkGameTree
        Fr g1PrimeSubgroup g2PrimeSubgroup ArkPairingOutput μ depth →
      Option (Bls12377KzgWForgery μ)
  | 0, .leaf run =>
      if classifier.wBad run.1 = true then
        some (bls12377KzgWForgeryOfLeaf run.1)
      else
        none
  | _ + 1, .node children =>
      bls12377FirstSome4 (fun child =>
        bls12377SelectKzgWForgery
          stmt classifier (children child))

/-- Every V result produced by the structural selector wins the exact
challenger-visible forgery relation. -/
theorem bls12377SelectKzgVForgery_sound {μ depth : Nat}
    (stmt : Bls12377ReductionStatement μ)
    (classifier : Bls12377KzgLeafClassifier stmt)
    (tree :
      S1ForkGameTree
        Fr g1PrimeSubgroup g2PrimeSubgroup ArkPairingOutput μ depth)
    (forgery : Bls12377KzgVForgery μ)
    (hselect :
      bls12377SelectKzgVForgery stmt classifier tree = some forgery) :
    Bls12377KzgVForgery.Wins stmt forgery := by
  induction tree with
  | leaf run =>
      by_cases hbad : classifier.vBad run.1 = true
      · simp [bls12377SelectKzgVForgery, hbad] at hselect
        subst forgery
        exact bls12377KzgVForgeryOfLeaf_wins stmt run.1
          ((classifier.vBad_iff run.1).mp hbad)
      · simp [bls12377SelectKzgVForgery, hbad] at hselect
  | node children ih =>
      obtain ⟨child, hchild⟩ :=
        bls12377FirstSome4_some _ _ hselect
      exact ih child hchild

/-- Every W result produced by the structural selector wins. -/
theorem bls12377SelectKzgWForgery_sound {μ depth : Nat}
    (stmt : Bls12377ReductionStatement μ)
    (classifier : Bls12377KzgLeafClassifier stmt)
    (tree :
      S1ForkGameTree
        Fr g1PrimeSubgroup g2PrimeSubgroup ArkPairingOutput μ depth)
    (forgery : Bls12377KzgWForgery μ)
    (hselect :
      bls12377SelectKzgWForgery stmt classifier tree = some forgery) :
    Bls12377KzgWForgery.Wins stmt forgery := by
  induction tree with
  | leaf run =>
      by_cases hbad : classifier.wBad run.1 = true
      · simp [bls12377SelectKzgWForgery, hbad] at hselect
        subst forgery
        exact bls12377KzgWForgeryOfLeaf_wins stmt run.1
          ((classifier.wBad_iff run.1).mp hbad)
      · simp [bls12377SelectKzgWForgery, hbad] at hselect
  | node children ih =>
      obtain ⟨child, hchild⟩ :=
        bls12377FirstSome4_some _ _ hselect
      exact ih child hchild

/-- A winning V tree is never missed by the exact Boolean classifier and
structural search. -/
theorem bls12377SelectKzgVForgery_complete {μ depth : Nat}
    (stmt : Bls12377ReductionStatement μ)
    (classifier : Bls12377KzgLeafClassifier stmt)
    (tree :
      S1ForkGameTree
        Fr g1PrimeSubgroup g2PrimeSubgroup ArkPairingOutput μ depth)
    (hwin : KzgVFalseOpeningGameTreeWin stmt tree) :
    ∃ forgery,
      bls12377SelectKzgVForgery stmt classifier tree = some forgery := by
  induction tree with
  | leaf run =>
      have hbad : classifier.vBad run.1 = true :=
        (classifier.vBad_iff run.1).mpr hwin
      exact ⟨bls12377KzgVForgeryOfLeaf run.1, by
        simp [bls12377SelectKzgVForgery, hbad]⟩
  | node children ih =>
      obtain ⟨child, hchild⟩ := hwin
      obtain ⟨forgery, hforgery⟩ := ih child hchild
      exact bls12377FirstSome4_exists _
        ⟨child, forgery, hforgery⟩

/-- W-lane selector completeness. -/
theorem bls12377SelectKzgWForgery_complete {μ depth : Nat}
    (stmt : Bls12377ReductionStatement μ)
    (classifier : Bls12377KzgLeafClassifier stmt)
    (tree :
      S1ForkGameTree
        Fr g1PrimeSubgroup g2PrimeSubgroup ArkPairingOutput μ depth)
    (hwin : KzgWFalseOpeningGameTreeWin stmt tree) :
    ∃ forgery,
      bls12377SelectKzgWForgery stmt classifier tree = some forgery := by
  induction tree with
  | leaf run =>
      have hbad : classifier.wBad run.1 = true :=
        (classifier.wBad_iff run.1).mpr hwin
      exact ⟨bls12377KzgWForgeryOfLeaf run.1, by
        simp [bls12377SelectKzgWForgery, hbad]⟩
  | node children ih =>
      obtain ⟨child, hchild⟩ := hwin
      obtain ⟨forgery, hforgery⟩ := ih child hchild
      exact bls12377FirstSome4_exists _
        ⟨child, forgery, hforgery⟩

/-- Deterministic semantic V reducer obtained from an exact classifier. -/
def bls12377ConcreteKzgVForkReduction {μ : Nat}
    (stmt : Bls12377ReductionStatement μ)
    (classifier : Bls12377KzgLeafClassifier stmt) :
    Bls12377KzgVForkReduction stmt where
  extract
    | none => none
    | some tree => bls12377SelectKzgVForgery stmt classifier tree
  preserves := by
    intro output hwin
    cases output with
    | none => exact False.elim hwin
    | some tree =>
        obtain ⟨forgery, hselect⟩ :=
          bls12377SelectKzgVForgery_complete
            stmt classifier tree hwin
        have hwins :=
          bls12377SelectKzgVForgery_sound
            stmt classifier tree forgery hselect
        change
          match bls12377SelectKzgVForgery stmt classifier tree with
          | none => False
          | some result => Bls12377KzgVForgery.Wins stmt result
        rw [hselect]
        exact hwins

/-- Deterministic semantic W reducer obtained from an exact classifier. -/
def bls12377ConcreteKzgWForkReduction {μ : Nat}
    (stmt : Bls12377ReductionStatement μ)
    (classifier : Bls12377KzgLeafClassifier stmt) :
    Bls12377KzgWForkReduction stmt where
  extract
    | none => none
    | some tree => bls12377SelectKzgWForgery stmt classifier tree
  preserves := by
    intro output hwin
    cases output with
    | none => exact False.elim hwin
    | some tree =>
        obtain ⟨forgery, hselect⟩ :=
          bls12377SelectKzgWForgery_complete
            stmt classifier tree hwin
        have hwins :=
          bls12377SelectKzgWForgery_sound
            stmt classifier tree forgery hselect
        change
          match bls12377SelectKzgWForgery stmt classifier tree with
          | none => False
          | some result => Bls12377KzgWForgery.Wins stmt result
        rw [hselect]
        exact hwins

def Bls12377KzgVForgeryGameWin {μ : Nat}
    (stmt : Bls12377ReductionStatement μ) :
    Option (Bls12377KzgVForgery μ) → Prop
  | none => False
  | some forgery => Bls12377KzgVForgery.Wins stmt forgery

def Bls12377KzgWForgeryGameWin {μ : Nat}
    (stmt : Bls12377ReductionStatement μ) :
    Option (Bls12377KzgWForgery μ) → Prop
  | none => False
  | some forgery => Bls12377KzgWForgery.Wins stmt forgery

noncomputable def bls12377KzgVForgeryGame {μ : Nat}
    (stmt : Bls12377ReductionStatement μ)
    (adv : Bls12377ReductionAdversary μ)
    (qb : (FsWrappedSpec Fr).Domain → Nat)
    (badZ : Finset Fr)
    (witnessOf : Bls12377ReductionWitness μ)
    (reduction : Bls12377KzgVForkReduction stmt) :
    OracleComp (FsWrappedSpec Fr)
      (Option (Bls12377KzgVForgery μ)) :=
  reduction.extract <$>
    kzgVFalseOpeningGame stmt adv qb badZ witnessOf

noncomputable def bls12377KzgWForgeryGame {μ : Nat}
    (stmt : Bls12377ReductionStatement μ)
    (adv : Bls12377ReductionAdversary μ)
    (qb : (FsWrappedSpec Fr).Domain → Nat)
    (badZ : Finset Fr)
    (witnessOf : Bls12377ReductionWitness μ)
    (reduction : Bls12377KzgWForkReduction stmt) :
    OracleComp (FsWrappedSpec Fr)
      (Option (Bls12377KzgWForgery μ)) :=
  reduction.extract <$>
    kzgWFalseOpeningGame stmt adv qb badZ witnessOf

/-- Exact reduction inequality from the projected S1 V game to a standalone
forgery game, conditional only on the reducer's pointwise postcondition. -/
theorem bls12377KzgVGameWin_le_forgeryGameWin {μ : Nat}
    (stmt : Bls12377ReductionStatement μ)
    (adv : Bls12377ReductionAdversary μ)
    (qb : (FsWrappedSpec Fr).Domain → Nat)
    (badZ : Finset Fr)
    (witnessOf : Bls12377ReductionWitness μ)
    (reduction : Bls12377KzgVForkReduction stmt) :
    Pr[KzgVFalseOpeningGameWin stmt |
        kzgVFalseOpeningGame stmt adv qb badZ witnessOf] ≤
      Pr[Bls12377KzgVForgeryGameWin stmt |
        bls12377KzgVForgeryGame
          stmt adv qb badZ witnessOf reduction] := by
  rw [bls12377KzgVForgeryGame, probEvent_map]
  apply probEvent_mono
  intro output _ hwin
  simpa [Function.comp_def, Bls12377KzgVForgeryGameWin] using
    reduction.preserves output hwin

/-- Exact reduction inequality for the W lane. -/
theorem bls12377KzgWGameWin_le_forgeryGameWin {μ : Nat}
    (stmt : Bls12377ReductionStatement μ)
    (adv : Bls12377ReductionAdversary μ)
    (qb : (FsWrappedSpec Fr).Domain → Nat)
    (badZ : Finset Fr)
    (witnessOf : Bls12377ReductionWitness μ)
    (reduction : Bls12377KzgWForkReduction stmt) :
    Pr[KzgWFalseOpeningGameWin stmt |
        kzgWFalseOpeningGame stmt adv qb badZ witnessOf] ≤
      Pr[Bls12377KzgWForgeryGameWin stmt |
        bls12377KzgWForgeryGame
          stmt adv qb badZ witnessOf reduction] := by
  rw [bls12377KzgWForgeryGame, probEvent_map]
  apply probEvent_mono
  intro output _ hwin
  simpa [Function.comp_def, Bls12377KzgWForgeryGameWin] using
    reduction.preserves output hwin

/-- The deterministic V reduction adds no oracle queries. -/
theorem bls12377KzgVForgeryGame_isTotalQueryBound_iff {μ : Nat}
    (stmt : Bls12377ReductionStatement μ)
    (adv : Bls12377ReductionAdversary μ)
    (qb : (FsWrappedSpec Fr).Domain → Nat)
    (badZ : Finset Fr)
    (witnessOf : Bls12377ReductionWitness μ)
    (reduction : Bls12377KzgVForkReduction stmt)
    (queryBudget : Nat) :
    IsTotalQueryBound
        (bls12377KzgVForgeryGame
          stmt adv qb badZ witnessOf reduction) queryBudget ↔
      IsTotalQueryBound
        (kzgVFalseOpeningGame
          stmt adv qb badZ witnessOf) queryBudget := by
  unfold bls12377KzgVForgeryGame
  exact isQueryBound_map_iff _ _ queryBudget
    (fun _ b => 0 < b) (fun _ b => b - 1)

/-- The deterministic W reduction adds no oracle queries. -/
theorem bls12377KzgWForgeryGame_isTotalQueryBound_iff {μ : Nat}
    (stmt : Bls12377ReductionStatement μ)
    (adv : Bls12377ReductionAdversary μ)
    (qb : (FsWrappedSpec Fr).Domain → Nat)
    (badZ : Finset Fr)
    (witnessOf : Bls12377ReductionWitness μ)
    (reduction : Bls12377KzgWForkReduction stmt)
    (queryBudget : Nat) :
    IsTotalQueryBound
        (bls12377KzgWForgeryGame
          stmt adv qb badZ witnessOf reduction) queryBudget ↔
      IsTotalQueryBound
        (kzgWFalseOpeningGame
          stmt adv qb badZ witnessOf) queryBudget := by
  unfold bls12377KzgWForgeryGame
  exact isQueryBound_map_iff _ _ queryBudget
    (fun _ b => 0 < b) (fun _ b => b - 1)

/-- Security premise for the mapped V forgery game.  The query bound is part
of the interface; setup sampling and local running time are not modeled here. -/
structure Bls12377KzgVForgeryGameSecurity {μ : Nat}
    (stmt : Bls12377ReductionStatement μ)
    (adv : Bls12377ReductionAdversary μ)
    (qb : (FsWrappedSpec Fr).Domain → Nat)
    (badZ : Finset Fr)
    (witnessOf : Bls12377ReductionWitness μ)
    (reduction : Bls12377KzgVForkReduction stmt) where
  epsilon : ℝ≥0∞
  queryBudget : Nat
  queryBound :
    IsTotalQueryBound
      (bls12377KzgVForgeryGame
        stmt adv qb badZ witnessOf reduction) queryBudget
  gameWin_le :
    Pr[Bls12377KzgVForgeryGameWin stmt |
      bls12377KzgVForgeryGame
        stmt adv qb badZ witnessOf reduction] ≤ epsilon

/-- Security premise for the mapped W forgery game. -/
structure Bls12377KzgWForgeryGameSecurity {μ : Nat}
    (stmt : Bls12377ReductionStatement μ)
    (adv : Bls12377ReductionAdversary μ)
    (qb : (FsWrappedSpec Fr).Domain → Nat)
    (badZ : Finset Fr)
    (witnessOf : Bls12377ReductionWitness μ)
    (reduction : Bls12377KzgWForkReduction stmt) where
  epsilon : ℝ≥0∞
  queryBudget : Nat
  queryBound :
    IsTotalQueryBound
      (bls12377KzgWForgeryGame
        stmt adv qb badZ witnessOf reduction) queryBudget
  gameWin_le :
    Pr[Bls12377KzgWForgeryGameWin stmt |
      bls12377KzgWForgeryGame
        stmt adv qb badZ witnessOf reduction] ≤ epsilon

/-- The exact S1 KZG event reduces to the two explicit forgery games.  The
theorem does not supply the reducers or their cryptographic bounds. -/
theorem kzg_false_opening_to_explicit_bls12377_forgery_games
    {μ : Nat}
    (stmt : Bls12377ReductionStatement μ)
    (adv : Bls12377ReductionAdversary μ)
    (qb : (FsWrappedSpec Fr).Domain → Nat)
    (badZ : Finset Fr)
    (witnessOf : Bls12377ReductionWitness μ)
    (reductionV : Bls12377KzgVForkReduction stmt)
    (reductionW : Bls12377KzgWForkReduction stmt)
    (securityV :
      Bls12377KzgVForgeryGameSecurity
        stmt adv qb badZ witnessOf reductionV)
    (securityW :
      Bls12377KzgWForgeryGameSecurity
        stmt adv qb badZ witnessOf reductionW) :
    Pr[S1KzgBad stmt |
        s1ForkExperiment stmt adv qb badZ witnessOf] ≤
      securityV.epsilon + securityW.epsilon := by
  apply le_trans
    (s1KzgBad_probability_le_lane_sum
      stmt adv qb badZ witnessOf)
  apply add_le_add
  · rw [s1KzgVBad_probability_eq_gameWin
      stmt adv qb badZ witnessOf]
    exact le_trans
      (bls12377KzgVGameWin_le_forgeryGameWin
        stmt adv qb badZ witnessOf reductionV)
      securityV.gameWin_le
  · rw [s1KzgWBad_probability_eq_gameWin
      stmt adv qb badZ witnessOf]
    exact le_trans
      (bls12377KzgWGameWin_le_forgeryGameWin
        stmt adv qb badZ witnessOf reductionW)
      securityW.gameWin_le

/-! ## Explicit GIPA extractor targets -/

/-- The semantic extractor boundary.  It sees only commitments fixed before
the randomizer query.  Computational efficiency is intentionally not implied
by this function type. -/
structure Bls12377GipaExtractor (μ : Nat) where
  extract : Bls12377ReductionWitness μ

/-- Challenger-visible result of running a GIPA extractor on a fork root. -/
structure Bls12377GipaKnowledgeChallenge (μ : Nat) where
  tree : S1ForkGameTree
    Fr g1PrimeSubgroup g2PrimeSubgroup ArkPairingOutput μ μ
  witness : S1RootWitness g1PrimeSubgroup g2PrimeSubgroup μ

def bls12377GipaChallengeOfOutput {μ : Nat}
    (extractor : Bls12377GipaExtractor μ) :
    Bls12377ReductionForkOutput μ →
      Option (Bls12377GipaKnowledgeChallenge μ)
  | none => none
  | some tree =>
      let proof := tree.root.1.proof
      some
        { tree := tree
          witness := extractor.extract (proofRandomizerPayload proof) }

def Bls12377GipaRootOpeningGameWin {μ : Nat}
    (stmt : Bls12377ReductionStatement μ) :
    Option (Bls12377GipaKnowledgeChallenge μ) → Prop
  | none => False
  | some challenge =>
      let proof := challenge.tree.root.1.proof
      S1ForkGameKzgGood stmt challenge.tree ∧
        ¬Ipp.SnarkPackV1.Refinement.RootOpensAt
          stmt proof.ComA proof.ComB challenge.witness

def Bls12377GipaProductLaneGameWin {μ : Nat}
    (stmt : Bls12377ReductionStatement μ) :
    Option (Bls12377GipaKnowledgeChallenge μ) → Prop
  | none => False
  | some challenge =>
      let root := challenge.tree.root.1
      let r := root.transcript.randomizer
      S1ForkGameKzgGood stmt challenge.tree ∧
        Ipp.SnarkPackV1.Refinement.RootOpensAt
          stmt root.proof.ComA root.proof.ComB challenge.witness ∧
        u4TCommitMap (F := Fr) (root.proof.ipAb, root.proof.aggC) ≠
          u4TCommitMap (F := Fr)
            (ipm (F := Fr) (u4TLanePairing stmt.e)
              (fun i =>
                ((challenge.witness.items i).a,
                  (challenge.witness.items i).c))
              (fun i =>
                (r ^ (i : Nat) • (challenge.witness.items i).b,
                  r ^ (i : Nat))))

theorem gipaRootOpeningGameWin_iff_explicitChallenge {μ : Nat}
    (stmt : Bls12377ReductionStatement μ)
    (extractor : Bls12377GipaExtractor μ)
    (output : Bls12377ReductionForkOutput μ) :
    GipaRootOpeningGameWin stmt extractor.extract output ↔
      Bls12377GipaRootOpeningGameWin stmt
        (bls12377GipaChallengeOfOutput extractor output) := by
  cases output <;> rfl

theorem gipaProductLaneGameWin_iff_explicitChallenge {μ : Nat}
    (stmt : Bls12377ReductionStatement μ)
    (extractor : Bls12377GipaExtractor μ)
    (output : Bls12377ReductionForkOutput μ) :
    GipaProductLaneGameWin stmt extractor.extract output ↔
      Bls12377GipaProductLaneGameWin stmt
        (bls12377GipaChallengeOfOutput extractor output) := by
  cases output <;> rfl

noncomputable def bls12377GipaRootOpeningGame {μ : Nat}
    (stmt : Bls12377ReductionStatement μ)
    (adv : Bls12377ReductionAdversary μ)
    (qb : (FsWrappedSpec Fr).Domain → Nat)
    (badZ : Finset Fr)
    (extractor : Bls12377GipaExtractor μ) :
    OracleComp (FsWrappedSpec Fr)
      (Option (Bls12377GipaKnowledgeChallenge μ)) :=
  bls12377GipaChallengeOfOutput extractor <$>
    gipaRootOpeningGame stmt adv qb badZ extractor.extract

noncomputable def bls12377GipaProductLaneGame {μ : Nat}
    (stmt : Bls12377ReductionStatement μ)
    (adv : Bls12377ReductionAdversary μ)
    (qb : (FsWrappedSpec Fr).Domain → Nat)
    (badZ : Finset Fr)
    (extractor : Bls12377GipaExtractor μ) :
    OracleComp (FsWrappedSpec Fr)
      (Option (Bls12377GipaKnowledgeChallenge μ)) :=
  bls12377GipaChallengeOfOutput extractor <$>
    gipaProductLaneGame stmt adv qb badZ extractor.extract

/-! ## Concrete accepted-fork GIPA target -/

/-- Exact formal verifier acceptance on every projected fork leaf.

This is the accepted-fork relation required by the standalone GIPA knowledge
game.  It is independent of the root-opening and product-lane failure events:
neither `S1ForkGameKzgGood` nor either knowledge-game win is used in its
definition. -/
def Bls12377GipaForkAccepts {μ : Nat}
    (stmt : Bls12377ReductionStatement μ)
    (tree :
      S1ForkGameTree
        Fr g1PrimeSubgroup g2PrimeSubgroup ArkPairingOutput μ μ) : Prop :=
  tree.All (fun run =>
    FsAccepts stmt run.1.proof run.1.transcript)

/-- Root-opening failure restricted to a concretely accepted fork. -/
def Bls12377GipaAcceptedRootOpeningGameWin {μ : Nat}
    (stmt : Bls12377ReductionStatement μ) :
    Option (Bls12377GipaKnowledgeChallenge μ) → Prop
  | none => False
  | some challenge =>
      Bls12377GipaForkAccepts stmt challenge.tree ∧
        Bls12377GipaRootOpeningGameWin stmt (some challenge)

/-- Product-lane failure restricted to the same concretely accepted fork. -/
def Bls12377GipaAcceptedProductLaneGameWin {μ : Nat}
    (stmt : Bls12377ReductionStatement μ) :
    Option (Bls12377GipaKnowledgeChallenge μ) → Prop
  | none => False
  | some challenge =>
      Bls12377GipaForkAccepts stmt challenge.tree ∧
        Bls12377GipaProductLaneGameWin stmt (some challenge)

/-- Projecting a supported S1 fork preserves full verifier acceptance on
every leaf.  Acceptance comes from the fork's independent
`WrappedRunGoodFull` gate and the supported execution of `FsGame`; no GIPA bad
event appears as a premise. -/
private theorem projectS1ForkTree_accepts
    {μ depth : Nat}
    (stmt : Bls12377ReductionStatement μ)
    (adv : Bls12377ReductionAdversary μ)
    (qb : (FsWrappedSpec Fr).Domain → Nat)
    (badZ : Finset Fr)
    (extractor : Bls12377GipaExtractor μ)
    (tree :
      RunTree (FsWrappedSpec Fr)
        (S1WrappedRun
          Fr g1PrimeSubgroup g2PrimeSubgroup ArkPairingOutput μ) depth)
    (hsupport : tree.All (fun run =>
      run ∈ support (replayFirstRun (s1ForkMain stmt adv))))
    (hgood :
      tree.All (s1ForkLeafOk stmt qb badZ extractor.extract)) :
    (projectS1ForkTree tree).All (fun run =>
      FsAccepts stmt run.1.proof run.1.transcript) := by
  induction tree with
  | leaf run =>
      exact wrapped_support_accepts stmt adv hsupport hgood.1.1
  | node children ih =>
      intro child
      exact ih child (hsupport child) (hgood child)

/-- Every present output in the concrete projected GIPA fork experiment is an
accepted fork.  This supplies the support side of the standalone target
bridge without `acceptsFork := True`. -/
theorem bls12377GipaProjectedFork_support_accepts {μ : Nat}
    (stmt : Bls12377ReductionStatement μ)
    (adv : Bls12377ReductionAdversary μ)
    (qb : (FsWrappedSpec Fr).Domain → Nat)
    (badZ : Finset Fr)
    (extractor : Bls12377GipaExtractor μ)
    {output : Bls12377ReductionForkOutput μ}
    (hsupport :
      output ∈ support
        (gipaRootOpeningGame
          stmt adv qb badZ extractor.extract)) :
    match output with
    | none => True
    | some tree => Bls12377GipaForkAccepts stmt tree := by
  classical
  rw [gipaRootOpeningGame, support_map] at hsupport
  obtain ⟨rawOutput, hraw, hproject⟩ := hsupport
  subst output
  cases rawOutput with
  | none => trivial
  | some tree =>
      have hconsistent :=
        forkTreeCombined_support_props μ
          (s1ForkMain stmt adv) qb (Sum.inr ())
          (s1ForkSelector qb)
          (s1ForkLeafOk stmt qb badZ extractor.extract)
          (fun level _ => fs_roundSlot_reachable stmt adv qb level)
          (by simpa [s1ForkExperiment] using hraw)
      exact projectS1ForkTree_accepts
        stmt adv qb badZ extractor tree
        hconsistent.all_support hconsistent.all_leafOk

/-- Materializing the extractor witness preserves the accepted-fork support
fact. -/
theorem bls12377GipaChallenge_support_accepts {μ : Nat}
    (stmt : Bls12377ReductionStatement μ)
    (adv : Bls12377ReductionAdversary μ)
    (qb : (FsWrappedSpec Fr).Domain → Nat)
    (badZ : Finset Fr)
    (extractor : Bls12377GipaExtractor μ)
    {output : Option (Bls12377GipaKnowledgeChallenge μ)}
    (hsupport :
      output ∈ support
        (bls12377GipaRootOpeningGame
          stmt adv qb badZ extractor)) :
    match output with
    | none => True
    | some challenge =>
        Bls12377GipaForkAccepts stmt challenge.tree := by
  rw [bls12377GipaRootOpeningGame, support_map] at hsupport
  obtain ⟨forkOutput, hfork, hproject⟩ := hsupport
  subst output
  cases forkOutput with
  | none => trivial
  | some tree =>
      exact bls12377GipaProjectedFork_support_accepts
        stmt adv qb badZ extractor hfork

theorem gipaRootOpeningGame_probability_eq_explicit {μ : Nat}
    (stmt : Bls12377ReductionStatement μ)
    (adv : Bls12377ReductionAdversary μ)
    (qb : (FsWrappedSpec Fr).Domain → Nat)
    (badZ : Finset Fr)
    (extractor : Bls12377GipaExtractor μ) :
    Pr[GipaRootOpeningGameWin stmt extractor.extract |
        gipaRootOpeningGame stmt adv qb badZ extractor.extract] =
      Pr[Bls12377GipaRootOpeningGameWin stmt |
        bls12377GipaRootOpeningGame stmt adv qb badZ extractor] := by
  rw [bls12377GipaRootOpeningGame, probEvent_map]
  apply probEvent_ext
  intro output _
  simpa [Function.comp_def] using
    (gipaRootOpeningGameWin_iff_explicitChallenge
      stmt extractor output)

theorem gipaProductLaneGame_probability_eq_explicit {μ : Nat}
    (stmt : Bls12377ReductionStatement μ)
    (adv : Bls12377ReductionAdversary μ)
    (qb : (FsWrappedSpec Fr).Domain → Nat)
    (badZ : Finset Fr)
    (extractor : Bls12377GipaExtractor μ) :
    Pr[GipaProductLaneGameWin stmt extractor.extract |
        gipaProductLaneGame stmt adv qb badZ extractor.extract] =
      Pr[Bls12377GipaProductLaneGameWin stmt |
        bls12377GipaProductLaneGame stmt adv qb badZ extractor] := by
  rw [bls12377GipaProductLaneGame, probEvent_map]
  apply probEvent_ext
  intro output _
  simpa [Function.comp_def] using
    (gipaProductLaneGameWin_iff_explicitChallenge
      stmt extractor output)

/-- On the concrete fork experiment, adding the exact accepted-fork
conjunct does not change the root-opening event distribution. -/
theorem bls12377GipaRoot_probability_eq_accepted {μ : Nat}
    (stmt : Bls12377ReductionStatement μ)
    (adv : Bls12377ReductionAdversary μ)
    (qb : (FsWrappedSpec Fr).Domain → Nat)
    (badZ : Finset Fr)
    (extractor : Bls12377GipaExtractor μ) :
    Pr[Bls12377GipaRootOpeningGameWin stmt |
        bls12377GipaRootOpeningGame stmt adv qb badZ extractor] =
      Pr[Bls12377GipaAcceptedRootOpeningGameWin stmt |
        bls12377GipaRootOpeningGame stmt adv qb badZ extractor] := by
  apply probEvent_ext
  intro output hsupport
  cases output with
  | none => rfl
  | some challenge =>
      have haccepts :
          Bls12377GipaForkAccepts stmt challenge.tree :=
        bls12377GipaChallenge_support_accepts
          stmt adv qb badZ extractor hsupport
      change
        Bls12377GipaRootOpeningGameWin stmt (some challenge) ↔
          Bls12377GipaForkAccepts stmt challenge.tree ∧
            Bls12377GipaRootOpeningGameWin stmt (some challenge)
      exact ⟨fun h => ⟨haccepts, h⟩, fun h => h.2⟩

/-- The product-lane experiment has the same accepted-fork distribution. -/
theorem bls12377GipaProduct_probability_eq_accepted {μ : Nat}
    (stmt : Bls12377ReductionStatement μ)
    (adv : Bls12377ReductionAdversary μ)
    (qb : (FsWrappedSpec Fr).Domain → Nat)
    (badZ : Finset Fr)
    (extractor : Bls12377GipaExtractor μ) :
    Pr[Bls12377GipaProductLaneGameWin stmt |
        bls12377GipaProductLaneGame stmt adv qb badZ extractor] =
      Pr[Bls12377GipaAcceptedProductLaneGameWin stmt |
        bls12377GipaProductLaneGame stmt adv qb badZ extractor] := by
  have hprogram :
      bls12377GipaProductLaneGame stmt adv qb badZ extractor =
        bls12377GipaRootOpeningGame stmt adv qb badZ extractor := by
    rfl
  rw [hprogram]
  apply probEvent_ext
  intro output hsupport
  cases output with
  | none => rfl
  | some challenge =>
      have haccepts :
          Bls12377GipaForkAccepts stmt challenge.tree :=
        bls12377GipaChallenge_support_accepts
          stmt adv qb badZ extractor hsupport
      change
        Bls12377GipaProductLaneGameWin stmt (some challenge) ↔
          Bls12377GipaForkAccepts stmt challenge.tree ∧
            Bls12377GipaProductLaneGameWin stmt (some challenge)
      exact ⟨fun h => ⟨haccepts, h⟩, fun h => h.2⟩

/-- Materializing the root-opening extractor witness adds no oracle queries. -/
theorem bls12377GipaRootOpeningGame_isTotalQueryBound_iff {μ : Nat}
    (stmt : Bls12377ReductionStatement μ)
    (adv : Bls12377ReductionAdversary μ)
    (qb : (FsWrappedSpec Fr).Domain → Nat)
    (badZ : Finset Fr)
    (extractor : Bls12377GipaExtractor μ)
    (queryBudget : Nat) :
    IsTotalQueryBound
        (bls12377GipaRootOpeningGame
          stmt adv qb badZ extractor) queryBudget ↔
      IsTotalQueryBound
        (gipaRootOpeningGame
          stmt adv qb badZ extractor.extract) queryBudget := by
  unfold bls12377GipaRootOpeningGame
  exact isQueryBound_map_iff _ _ queryBudget
    (fun _ b => 0 < b) (fun _ b => b - 1)

/-- Materializing the product-lane extractor witness adds no oracle queries. -/
theorem bls12377GipaProductLaneGame_isTotalQueryBound_iff {μ : Nat}
    (stmt : Bls12377ReductionStatement μ)
    (adv : Bls12377ReductionAdversary μ)
    (qb : (FsWrappedSpec Fr).Domain → Nat)
    (badZ : Finset Fr)
    (extractor : Bls12377GipaExtractor μ)
    (queryBudget : Nat) :
    IsTotalQueryBound
        (bls12377GipaProductLaneGame
          stmt adv qb badZ extractor) queryBudget ↔
      IsTotalQueryBound
        (gipaProductLaneGame
          stmt adv qb badZ extractor.extract) queryBudget := by
  unfold bls12377GipaProductLaneGame
  exact isQueryBound_map_iff _ _ queryBudget
    (fun _ b => 0 < b) (fun _ b => b - 1)

/-- Root-opening knowledge bound for one explicit extractor.  A closure proof
must additionally establish that `extractor` is polynomial-time. -/
structure Bls12377GipaRootOpeningExplicitGameSecurity {μ : Nat}
    (stmt : Bls12377ReductionStatement μ)
    (adv : Bls12377ReductionAdversary μ)
    (qb : (FsWrappedSpec Fr).Domain → Nat)
    (badZ : Finset Fr)
    (extractor : Bls12377GipaExtractor μ) where
  epsilon : ℝ≥0∞
  queryBudget : Nat
  queryBound :
    IsTotalQueryBound
      (bls12377GipaRootOpeningGame
        stmt adv qb badZ extractor) queryBudget
  gameWin_le :
    Pr[Bls12377GipaRootOpeningGameWin stmt |
      bls12377GipaRootOpeningGame stmt adv qb badZ extractor] ≤ epsilon

/-- Product-lane knowledge bound for the same explicit extractor. -/
structure Bls12377GipaProductLaneExplicitGameSecurity {μ : Nat}
    (stmt : Bls12377ReductionStatement μ)
    (adv : Bls12377ReductionAdversary μ)
    (qb : (FsWrappedSpec Fr).Domain → Nat)
    (badZ : Finset Fr)
    (extractor : Bls12377GipaExtractor μ) where
  epsilon : ℝ≥0∞
  queryBudget : Nat
  queryBound :
    IsTotalQueryBound
      (bls12377GipaProductLaneGame
        stmt adv qb badZ extractor) queryBudget
  gameWin_le :
    Pr[Bls12377GipaProductLaneGameWin stmt |
      bls12377GipaProductLaneGame stmt adv qb badZ extractor] ≤ epsilon

/-- The exact S1 GIPA event reduces to the explicit root-opening and
product-lane knowledge games for one extractor. -/
theorem gipa_fork_knowledge_to_explicit_bls12377_games
    {μ : Nat}
    (stmt : Bls12377ReductionStatement μ)
    (adv : Bls12377ReductionAdversary μ)
    (qb : (FsWrappedSpec Fr).Domain → Nat)
    (badZ : Finset Fr)
    (extractor : Bls12377GipaExtractor μ)
    (rootSecurity :
      Bls12377GipaRootOpeningExplicitGameSecurity
        stmt adv qb badZ extractor)
    (productSecurity :
      Bls12377GipaProductLaneExplicitGameSecurity
        stmt adv qb badZ extractor) :
    Pr[S1PairingBad stmt extractor.extract |
        s1ForkExperiment stmt adv qb badZ extractor.extract] ≤
      rootSecurity.epsilon + productSecurity.epsilon := by
  apply le_trans
    (s1PairingBad_probability_le_component_sum
      stmt adv qb badZ extractor.extract)
  apply add_le_add
  · rw [s1RootOpeningBad_probability_eq_gameWin
      stmt adv qb badZ extractor.extract]
    rw [gipaRootOpeningGame_probability_eq_explicit
      stmt adv qb badZ extractor]
    exact rootSecurity.gameWin_le
  · rw [s1ProductLaneBad_probability_eq_gameWin
      stmt adv qb badZ extractor.extract]
    rw [gipaProductLaneGame_probability_eq_explicit
      stmt adv qb badZ extractor]
    exact productSecurity.gameWin_le

/-! ## Pre-fork extractor selection -/

/-- Knowledge-security interface with the quantifiers in their required
order: the original proof-producing adversary is fixed first, then one
extractor is selected, and only then are the fork experiment and its
accepted-fork target games constructed.

The two probability fields are computational assumptions about the explicit
accepted-fork games.  They do not mention a shipping verifier, an S1 bad-event
predicate, or `Ipp.Goal`.  A deployment must additionally attach a local
polynomial-time certificate to every selected extractor; local running time
is not represented by `OracleComp.IsTotalQueryBound`. -/
structure Bls12377GipaPreForkKnowledgeSecurity {μ : Nat}
    (stmt : Bls12377ReductionStatement μ) where
  epsilonRoot : Nat → ℝ≥0∞
  epsilonProduct : Nat → ℝ≥0∞
  extractorFor :
    Bls12377ReductionAdversary μ → Bls12377GipaExtractor μ
  root_gameWin_le :
    ∀ (adv : Bls12377ReductionAdversary μ)
      (qb : (FsWrappedSpec Fr).Domain → Nat)
      (badZ : Finset Fr) (queryBudget : Nat),
      IsTotalQueryBound
          (bls12377GipaRootOpeningGame
            stmt adv qb badZ (extractorFor adv)) queryBudget →
        Pr[Bls12377GipaAcceptedRootOpeningGameWin stmt |
          bls12377GipaRootOpeningGame
            stmt adv qb badZ (extractorFor adv)] ≤
          epsilonRoot queryBudget
  product_gameWin_le :
    ∀ (adv : Bls12377ReductionAdversary μ)
      (qb : (FsWrappedSpec Fr).Domain → Nat)
      (badZ : Finset Fr) (queryBudget : Nat),
      IsTotalQueryBound
          (bls12377GipaProductLaneGame
            stmt adv qb badZ (extractorFor adv)) queryBudget →
        Pr[Bls12377GipaAcceptedProductLaneGameWin stmt |
          bls12377GipaProductLaneGame
            stmt adv qb badZ (extractorFor adv)] ≤
          epsilonProduct queryBudget

/-- Non-circular GIPA reduction capstone.

The extractor is `security.extractorFor adv`, so it is chosen from the
original adversary before `s1ForkExperiment` is formed.  The result charges
the exact S1 pairing bad event to the two concrete accepted-fork knowledge
games and transports the query budget through the witness-only maps without
adding queries. -/
theorem gipa_fork_knowledge_to_prefork_accepted_bls12377_games
    {μ : Nat}
    (stmt : Bls12377ReductionStatement μ)
    (adv : Bls12377ReductionAdversary μ)
    (qb : (FsWrappedSpec Fr).Domain → Nat)
    (badZ : Finset Fr)
    (security : Bls12377GipaPreForkKnowledgeSecurity stmt)
    (queryBudget : Nat)
    (hbound :
      IsTotalQueryBound
        (gipaRootOpeningGame stmt adv qb badZ
          (security.extractorFor adv).extract) queryBudget) :
    Pr[S1PairingBad stmt (security.extractorFor adv).extract |
        s1ForkExperiment stmt adv qb badZ
          (security.extractorFor adv).extract] ≤
      security.epsilonRoot queryBudget +
        security.epsilonProduct queryBudget := by
  let extractor := security.extractorFor adv
  have hroot :
      IsTotalQueryBound
        (bls12377GipaRootOpeningGame
          stmt adv qb badZ extractor) queryBudget :=
    (bls12377GipaRootOpeningGame_isTotalQueryBound_iff
      stmt adv qb badZ extractor queryBudget).2 hbound
  have hproductBase :
      IsTotalQueryBound
        (gipaProductLaneGame
          stmt adv qb badZ extractor.extract) queryBudget := by
    simpa [gipaRootOpeningGame, gipaProductLaneGame] using hbound
  have hproduct :
      IsTotalQueryBound
        (bls12377GipaProductLaneGame
          stmt adv qb badZ extractor) queryBudget :=
    (bls12377GipaProductLaneGame_isTotalQueryBound_iff
      stmt adv qb badZ extractor queryBudget).2 hproductBase
  change
    Pr[S1PairingBad stmt extractor.extract |
        s1ForkExperiment stmt adv qb badZ extractor.extract] ≤
      security.epsilonRoot queryBudget +
        security.epsilonProduct queryBudget
  let rootSecurity :
      Bls12377GipaRootOpeningExplicitGameSecurity
        stmt adv qb badZ extractor := {
      epsilon := security.epsilonRoot queryBudget
      queryBudget := queryBudget
      queryBound := hroot
      gameWin_le := by
        rw [bls12377GipaRoot_probability_eq_accepted
          stmt adv qb badZ extractor]
        exact security.root_gameWin_le adv qb badZ queryBudget hroot
    }
  let productSecurity :
      Bls12377GipaProductLaneExplicitGameSecurity
        stmt adv qb badZ extractor := {
      epsilon := security.epsilonProduct queryBudget
      queryBudget := queryBudget
      queryBound := hproduct
      gameWin_le := by
        rw [bls12377GipaProduct_probability_eq_accepted
          stmt adv qb badZ extractor]
        exact security.product_gameWin_le
          adv qb badZ queryBudget hproduct
    }
  exact
    gipa_fork_knowledge_to_explicit_bls12377_games
      stmt adv qb badZ extractor rootSecurity productSecurity

end

end Ipp.S1
