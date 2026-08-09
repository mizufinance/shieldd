import Ipp.ShippingAdaptiveAcceptedReplay

/-!
Setup-first BLS12-377 games for the accepted shipping replay.

Adversary outputs are proof-free: they contain a selected formal statement and
one forgery or accepted replay tree, but no proposition proving that the
statement matches the sampled setup.  The challenger checks that relation in
the win predicate.

The GIPA target adversary is the unfiltered accepted-replay program.  It is
constructed without an extractor.  The security interface selects an
extractor from that already-fixed adversary before setup sampling and game
execution.
-/

open OracleSpec OracleComp ENNReal Function
open scoped OracleSpec.PrimitiveQuery ENNReal BigOperators

namespace Ipp.ShippingMultiStatement

noncomputable section

open Ipp.Bls12377
open Ipp.S1

local instance : Fact baseModulus.Prime :=
  ⟨arithmeticFacts.basePrime⟩
local instance : Fact scalarModulus.Prime :=
  ⟨arithmeticFacts.scalarPrime⟩
local instance : Fact (∀ x : Fq, x ^ 2 ≠ (-5) + 0 * x) :=
  ⟨by intro x; simpa using arithmeticFacts.fq2Nonresidue x⟩
local instance : Fintype Fq2 :=
  Fintype.ofEquiv
    (Fq × Fq) (QuadraticAlgebra.equivProd (-5 : Fq) 0).symm

variable
  [IsUniformSpec (FsWrappedSpec Fr)]
  [∀ j, SampleableType ((FsWrappedSpec Fr).Range j)]
  [unifSpec ⊂ₒ FsWrappedSpec Fr]
  [unifSpec ˡ⊂ₒ FsWrappedSpec Fr]

/-! ## Challenger-side setup binding and proof-free attempts -/

/-- Exact challenger-side relation between an adaptively selected statement
and the sampled BLS12-377 setup.

This proposition is not carried in an adversary output.  The game win
predicate checks it after both the sampled setup and the proof-free attempt
are available. -/
structure AcceptedReplayBls12377StatementBinding {μ : Nat}
    (statement : Bls12377ReductionStatement μ)
    (parameters : Bls12377KzgParameters μ) : Prop where
  kzg : Bls12377KzgStatementBinding statement parameters
  pairing_exact :
    statement.e =
      executablePairingLinear parameters.pairingBilinear

structure AcceptedReplayKzgVAttempt (μ : Nat) where
  statement : Bls12377ReductionStatement μ
  forgery : Bls12377KzgVForgery μ

structure AcceptedReplayKzgWAttempt (μ : Nat) where
  statement : Bls12377ReductionStatement μ
  forgery : Bls12377KzgWForgery μ

structure AcceptedReplayGipaAttempt (μ : Nat) where
  statement : Bls12377ReductionStatement μ
  tree : Bls12377GipaForkTree μ

/-- A standalone GIPA extractor may inspect public setup and the selected
formal statement, followed only by the commitment payload fixed before the
randomizer query. -/
structure AcceptedReplayGipaExtractor (μ : Nat) where
  extract :
    Bls12377KzgParameters μ →
      Bls12377ReductionStatement μ →
        RandomizerPayload ArkPairingOutput →
          S1RootWitness g1PrimeSubgroup g2PrimeSubgroup μ

structure AcceptedReplayGipaChallenge (μ : Nat) where
  statement : Bls12377ReductionStatement μ
  tree : Bls12377GipaForkTree μ
  witness : S1RootWitness g1PrimeSubgroup g2PrimeSubgroup μ

def AcceptedReplayGipaChallenge.toExisting {μ : Nat}
    (challenge : AcceptedReplayGipaChallenge μ) :
    Bls12377GipaKnowledgeChallenge μ where
  tree := challenge.tree
  witness := challenge.witness

abbrev AcceptedReplayBls12377SetupSampler (μ : Nat) :=
  Bls12377KzgSetupSampler μ

abbrev AcceptedReplayKzgVAdversary (μ : Nat) :=
  Bls12377KzgParameters μ →
    OracleComp (FsWrappedSpec Fr)
      (Option (AcceptedReplayKzgVAttempt μ))

abbrev AcceptedReplayKzgWAdversary (μ : Nat) :=
  Bls12377KzgParameters μ →
    OracleComp (FsWrappedSpec Fr)
      (Option (AcceptedReplayKzgWAttempt μ))

abbrev AcceptedReplayGipaAdversary (μ : Nat) :=
  Bls12377KzgParameters μ →
    OracleComp (FsWrappedSpec Fr)
      (Option (AcceptedReplayGipaAttempt μ))

abbrev AcceptedReplayKzgVGameOutput (μ : Nat) :=
  Bls12377KzgParameters μ ×
    Option (AcceptedReplayKzgVAttempt μ)

abbrev AcceptedReplayKzgWGameOutput (μ : Nat) :=
  Bls12377KzgParameters μ ×
    Option (AcceptedReplayKzgWAttempt μ)

abbrev AcceptedReplayGipaGameOutput (μ : Nat) :=
  Bls12377KzgParameters μ ×
    Option (AcceptedReplayGipaChallenge μ)

/-! ## Setup-first games -/

def acceptedReplayBls12377KzgVGame {μ : Nat}
    (setup : AcceptedReplayBls12377SetupSampler μ)
    (adversary : AcceptedReplayKzgVAdversary μ) :
    OracleComp (FsWrappedSpec Fr)
      (AcceptedReplayKzgVGameOutput μ) :=
  setup >>= fun parameters =>
    (fun output => (parameters, output)) <$> adversary parameters

def acceptedReplayBls12377KzgWGame {μ : Nat}
    (setup : AcceptedReplayBls12377SetupSampler μ)
    (adversary : AcceptedReplayKzgWAdversary μ) :
    OracleComp (FsWrappedSpec Fr)
      (AcceptedReplayKzgWGameOutput μ) :=
  setup >>= fun parameters =>
    (fun output => (parameters, output)) <$> adversary parameters

def acceptedReplayGipaChallengeOfAttempt {μ : Nat}
    (parameters : Bls12377KzgParameters μ)
    (extractor : AcceptedReplayGipaExtractor μ) :
    Option (AcceptedReplayGipaAttempt μ) →
      Option (AcceptedReplayGipaChallenge μ)
  | none => none
  | some attempt =>
      some {
        statement := attempt.statement
        tree := attempt.tree
        witness :=
          extractor.extract parameters attempt.statement
            (proofRandomizerPayload attempt.tree.root.1.proof)
      }

/-- The extractor is a pure post-processing step.  The target adversary is an
argument independent of the extractor and executes before its witness is
materialized. -/
def acceptedReplayBls12377GipaGame {μ : Nat}
    (setup : AcceptedReplayBls12377SetupSampler μ)
    (adversary : AcceptedReplayGipaAdversary μ)
    (extractor : AcceptedReplayGipaExtractor μ) :
    OracleComp (FsWrappedSpec Fr)
      (AcceptedReplayGipaGameOutput μ) :=
  setup >>= fun parameters =>
    (fun output =>
      (parameters,
        acceptedReplayGipaChallengeOfAttempt
          parameters extractor output)) <$>
      adversary parameters

/-- The challenger, not the adversary, checks setup binding. -/
def AcceptedReplayKzgVWin {μ : Nat} :
    AcceptedReplayKzgVGameOutput μ → Prop
  | (_, none) => False
  | (sampled, some attempt) =>
      AcceptedReplayBls12377StatementBinding
          attempt.statement sampled ∧
        Bls12377KzgVTargetWin sampled (some attempt.forgery)

def AcceptedReplayKzgWWin {μ : Nat} :
    AcceptedReplayKzgWGameOutput μ → Prop
  | (_, none) => False
  | (sampled, some attempt) =>
      AcceptedReplayBls12377StatementBinding
          attempt.statement sampled ∧
        Bls12377KzgWTargetWin sampled (some attempt.forgery)

def AcceptedReplayGipaRootWin {μ : Nat} :
    AcceptedReplayGipaGameOutput μ → Prop
  | (_, none) => False
  | (sampled, some challenge) =>
      AcceptedReplayBls12377StatementBinding
          challenge.statement sampled ∧
        Bls12377GipaForkAccepts
          challenge.statement challenge.tree ∧
        Bls12377GipaRootOpeningGameWin
          challenge.statement (some challenge.toExisting)

def AcceptedReplayGipaProductWin {μ : Nat} :
    AcceptedReplayGipaGameOutput μ → Prop
  | (_, none) => False
  | (sampled, some challenge) =>
      AcceptedReplayBls12377StatementBinding
          challenge.statement sampled ∧
        Bls12377GipaForkAccepts
          challenge.statement challenge.tree ∧
        Bls12377GipaProductLaneGameWin
          challenge.statement (some challenge.toExisting)

/-- Auditable normal form: setup binding and full accepted-fork coverage are
challenger-side conjuncts of the root-opening target. -/
theorem acceptedReplayGipaRootWin_iff
    {μ : Nat}
    (sampled : Bls12377KzgParameters μ)
    (challenge : AcceptedReplayGipaChallenge μ) :
    AcceptedReplayGipaRootWin (sampled, some challenge) ↔
      AcceptedReplayBls12377StatementBinding
          challenge.statement sampled ∧
        Bls12377GipaForkAccepts
          challenge.statement challenge.tree ∧
        Bls12377GipaRootOpeningGameWin
          challenge.statement (some challenge.toExisting) := by
  rfl

/-- Product-lane normal form with the same challenger-side binding and
accepted-fork gate. -/
theorem acceptedReplayGipaProductWin_iff
    {μ : Nat}
    (sampled : Bls12377KzgParameters μ)
    (challenge : AcceptedReplayGipaChallenge μ) :
    AcceptedReplayGipaProductWin (sampled, some challenge) ↔
      AcceptedReplayBls12377StatementBinding
          challenge.statement sampled ∧
        Bls12377GipaForkAccepts
          challenge.statement challenge.tree ∧
        Bls12377GipaProductLaneGameWin
          challenge.statement (some challenge.toExisting) := by
  rfl

/-- Challenger-side V binding identifies the concrete sampled-setup target
with the selected statement's abstract false-opening relation. -/
theorem acceptedReplayKzgVWin_iff_statementWin
    {μ : Nat}
    (sampled : Bls12377KzgParameters μ)
    (attempt : AcceptedReplayKzgVAttempt μ) :
    AcceptedReplayKzgVWin (sampled, some attempt) ↔
      AcceptedReplayBls12377StatementBinding
          attempt.statement sampled ∧
        Bls12377KzgVForgeryGameWin
          attempt.statement (some attempt.forgery) := by
  constructor
  · intro h
    refine ⟨h.1, ?_⟩
    exact
      (bls12377KzgVTargetWin_ofStatement
        attempt.statement sampled h.1.kzg
        (some attempt.forgery)).2 h.2
  · intro h
    refine ⟨h.1, ?_⟩
    exact
      (bls12377KzgVTargetWin_ofStatement
        attempt.statement sampled h.1.kzg
        (some attempt.forgery)).1 h.2

theorem acceptedReplayKzgWWin_iff_statementWin
    {μ : Nat}
    (sampled : Bls12377KzgParameters μ)
    (attempt : AcceptedReplayKzgWAttempt μ) :
    AcceptedReplayKzgWWin (sampled, some attempt) ↔
      AcceptedReplayBls12377StatementBinding
          attempt.statement sampled ∧
        Bls12377KzgWForgeryGameWin
          attempt.statement (some attempt.forgery) := by
  constructor
  · intro h
    refine ⟨h.1, ?_⟩
    exact
      (bls12377KzgWTargetWin_ofStatement
        attempt.statement sampled h.1.kzg
        (some attempt.forgery)).2 h.2
  · intro h
    refine ⟨h.1, ?_⟩
    exact
      (bls12377KzgWTargetWin_ofStatement
        attempt.statement sampled h.1.kzg
        (some attempt.forgery)).1 h.2

/-! ## Exact query bounds -/

theorem acceptedReplayBls12377KzgVGame_isTotalQueryBound {μ : Nat}
    (setup : AcceptedReplayBls12377SetupSampler μ)
    (adversary : AcceptedReplayKzgVAdversary μ)
    (setupBudget adversaryBudget : Nat)
    (hsetup : IsTotalQueryBound setup setupBudget)
    (hadversary :
      ∀ parameters,
        IsTotalQueryBound
          (adversary parameters) adversaryBudget) :
    IsTotalQueryBound
      (acceptedReplayBls12377KzgVGame setup adversary)
      (setupBudget + adversaryBudget) := by
  unfold acceptedReplayBls12377KzgVGame
  apply isTotalQueryBound_bind hsetup
  intro parameters
  exact (isQueryBound_map_iff
    (adversary parameters)
    (fun output => (parameters, output))
    adversaryBudget
    (fun _ b => 0 < b) (fun _ b => b - 1)).2
      (hadversary parameters)

theorem acceptedReplayBls12377KzgWGame_isTotalQueryBound {μ : Nat}
    (setup : AcceptedReplayBls12377SetupSampler μ)
    (adversary : AcceptedReplayKzgWAdversary μ)
    (setupBudget adversaryBudget : Nat)
    (hsetup : IsTotalQueryBound setup setupBudget)
    (hadversary :
      ∀ parameters,
        IsTotalQueryBound
          (adversary parameters) adversaryBudget) :
    IsTotalQueryBound
      (acceptedReplayBls12377KzgWGame setup adversary)
      (setupBudget + adversaryBudget) := by
  unfold acceptedReplayBls12377KzgWGame
  apply isTotalQueryBound_bind hsetup
  intro parameters
  exact (isQueryBound_map_iff
    (adversary parameters)
    (fun output => (parameters, output))
    adversaryBudget
    (fun _ b => 0 < b) (fun _ b => b - 1)).2
      (hadversary parameters)

theorem acceptedReplayBls12377GipaGame_isTotalQueryBound {μ : Nat}
    (setup : AcceptedReplayBls12377SetupSampler μ)
    (adversary : AcceptedReplayGipaAdversary μ)
    (extractor : AcceptedReplayGipaExtractor μ)
    (setupBudget adversaryBudget : Nat)
    (hsetup : IsTotalQueryBound setup setupBudget)
    (hadversary :
      ∀ parameters,
        IsTotalQueryBound
          (adversary parameters) adversaryBudget) :
    IsTotalQueryBound
      (acceptedReplayBls12377GipaGame
        setup adversary extractor)
      (setupBudget + adversaryBudget) := by
  unfold acceptedReplayBls12377GipaGame
  apply isTotalQueryBound_bind hsetup
  intro parameters
  exact (isQueryBound_map_iff
    (adversary parameters)
    (fun output =>
      (parameters,
        acceptedReplayGipaChallengeOfAttempt
          parameters extractor output))
    adversaryBudget
    (fun _ b => 0 < b) (fun _ b => b - 1)).2
      (hadversary parameters)

/-! ## Pure accepted-replay adversary constructors -/

abbrev AcceptedReplayKzgClassifierFamily (μ : Nat) :=
  (statement : Bls12377ReductionStatement μ) →
    Bls12377KzgLeafClassifier statement

/-- Pure GIPA projection of an accepted raw replay.  It is independent of
both the sampled setup and every extractor. -/
def acceptedReplayGipaAttemptOfRaw?
    {Call : Type} (μ : Nat) :
    Option (RawMultiStatementForkTree Call μ) →
      Option (AcceptedReplayGipaAttempt μ)
  | none => none
  | some raw =>
      match projectAcceptedRawForkAt? μ raw with
      | none => none
      | some projected =>
          some {
            statement := projected.1
            tree := projected.2
          }

/-- Structural V-lane selector over the pure accepted replay projection.
Classifier exactness is explicit in `Bls12377KzgLeafClassifier`; its
polynomial-time obligation is retained separately below. -/
def acceptedReplayKzgVAttemptOfRaw?
    {Call : Type} (μ : Nat)
    (classifiers : AcceptedReplayKzgClassifierFamily μ) :
    Option (RawMultiStatementForkTree Call μ) →
      Option (AcceptedReplayKzgVAttempt μ)
  | none => none
  | some raw =>
      match projectAcceptedRawForkAt? μ raw with
      | none => none
      | some projected =>
          match
            bls12377SelectKzgVForgery
              projected.1 (classifiers projected.1) projected.2 with
          | none => none
          | some forgery =>
              some {
                statement := projected.1
                forgery := forgery
              }

def acceptedReplayKzgWAttemptOfRaw?
    {Call : Type} (μ : Nat)
    (classifiers : AcceptedReplayKzgClassifierFamily μ) :
    Option (RawMultiStatementForkTree Call μ) →
      Option (AcceptedReplayKzgWAttempt μ)
  | none => none
  | some raw =>
      match projectAcceptedRawForkAt? μ raw with
      | none => none
      | some projected =>
          match
            bls12377SelectKzgWForgery
              projected.1 (classifiers projected.1) projected.2 with
          | none => none
          | some forgery =>
              some {
                statement := projected.1
                forgery := forgery
              }

/-- The concrete unfiltered accepted-replay GIPA adversary.  Its definition
contains no extractor and ignores sampled setup except for receiving it
through the standard setup-first adversary interface. -/
def acceptedReplayGipaAdversary
    {Call : Type}
    (game : OracleComp GlobalFsSourceSpec (PackedOutcome Call))
    (queryBounds : (FsWrappedSpec Fr).Domain → Nat)
    (μ : Nat) :
    AcceptedReplayGipaAdversary μ :=
  fun _ =>
    acceptedReplayGipaAttemptOfRaw? μ <$>
      acceptedMultiStatementForkExperimentAt
        game queryBounds μ

def acceptedReplayKzgVAdversary
    {Call : Type}
    (game : OracleComp GlobalFsSourceSpec (PackedOutcome Call))
    (queryBounds : (FsWrappedSpec Fr).Domain → Nat)
    (μ : Nat)
    (classifiers : AcceptedReplayKzgClassifierFamily μ) :
    AcceptedReplayKzgVAdversary μ :=
  fun _ =>
    acceptedReplayKzgVAttemptOfRaw? μ classifiers <$>
      acceptedMultiStatementForkExperimentAt
        game queryBounds μ

def acceptedReplayKzgWAdversary
    {Call : Type}
    (game : OracleComp GlobalFsSourceSpec (PackedOutcome Call))
    (queryBounds : (FsWrappedSpec Fr).Domain → Nat)
    (μ : Nat)
    (classifiers : AcceptedReplayKzgClassifierFamily μ) :
    AcceptedReplayKzgWAdversary μ :=
  fun _ =>
    acceptedReplayKzgWAttemptOfRaw? μ classifiers <$>
      acceptedMultiStatementForkExperimentAt
        game queryBounds μ

/-- Any selected V forgery is sound for its proof-free selected statement. -/
theorem acceptedReplayKzgVAttemptOfRaw?_sound
    {Call : Type} {μ : Nat}
    (classifiers : AcceptedReplayKzgClassifierFamily μ)
    (raw : RawMultiStatementForkTree Call μ)
    (attempt : AcceptedReplayKzgVAttempt μ)
    (h :
      acceptedReplayKzgVAttemptOfRaw?
        μ classifiers (some raw) = some attempt) :
    Bls12377KzgVForgery.Wins
      attempt.statement attempt.forgery := by
  cases hprojected :
      projectAcceptedRawForkAt? μ raw with
  | none =>
      simp [acceptedReplayKzgVAttemptOfRaw?, hprojected] at h
  | some projected =>
      cases hselect :
          bls12377SelectKzgVForgery
            projected.1 (classifiers projected.1) projected.2 with
      | none =>
          simp [acceptedReplayKzgVAttemptOfRaw?,
            hprojected, hselect] at h
      | some forgery =>
          have hattempt :
              ({
                statement := projected.1
                forgery := forgery
              } : AcceptedReplayKzgVAttempt μ) = attempt := by
            exact Option.some.inj (by
              simpa [acceptedReplayKzgVAttemptOfRaw?,
                hprojected, hselect] using h)
          subst attempt
          exact
            bls12377SelectKzgVForgery_sound
              projected.1 (classifiers projected.1)
              projected.2 forgery hselect

/-- W-lane structural selector soundness. -/
theorem acceptedReplayKzgWAttemptOfRaw?_sound
    {Call : Type} {μ : Nat}
    (classifiers : AcceptedReplayKzgClassifierFamily μ)
    (raw : RawMultiStatementForkTree Call μ)
    (attempt : AcceptedReplayKzgWAttempt μ)
    (h :
      acceptedReplayKzgWAttemptOfRaw?
        μ classifiers (some raw) = some attempt) :
    Bls12377KzgWForgery.Wins
      attempt.statement attempt.forgery := by
  cases hprojected :
      projectAcceptedRawForkAt? μ raw with
  | none =>
      simp [acceptedReplayKzgWAttemptOfRaw?, hprojected] at h
  | some projected =>
      cases hselect :
          bls12377SelectKzgWForgery
            projected.1 (classifiers projected.1) projected.2 with
      | none =>
          simp [acceptedReplayKzgWAttemptOfRaw?,
            hprojected, hselect] at h
      | some forgery =>
          have hattempt :
              ({
                statement := projected.1
                forgery := forgery
              } : AcceptedReplayKzgWAttempt μ) = attempt := by
            exact Option.some.inj (by
              simpa [acceptedReplayKzgWAttemptOfRaw?,
                hprojected, hselect] using h)
          subst attempt
          exact
            bls12377SelectKzgWForgery_sound
              projected.1 (classifiers projected.1)
              projected.2 forgery hselect

/-- Pure projection and structural selection add no oracle queries. -/
theorem acceptedReplayGipaAdversary_isTotalQueryBound_iff
    {Call : Type}
    (game : OracleComp GlobalFsSourceSpec (PackedOutcome Call))
    (queryBounds : (FsWrappedSpec Fr).Domain → Nat)
    (μ queryBudget : Nat)
    (parameters : Bls12377KzgParameters μ) :
    IsTotalQueryBound
        (acceptedReplayGipaAdversary
          game queryBounds μ parameters) queryBudget ↔
      IsTotalQueryBound
        (acceptedMultiStatementForkExperimentAt
          game queryBounds μ) queryBudget := by
  unfold acceptedReplayGipaAdversary
  exact isQueryBound_map_iff _ _ queryBudget
    (fun _ b => 0 < b) (fun _ b => b - 1)

theorem acceptedReplayKzgVAdversary_isTotalQueryBound_iff
    {Call : Type}
    (game : OracleComp GlobalFsSourceSpec (PackedOutcome Call))
    (queryBounds : (FsWrappedSpec Fr).Domain → Nat)
    (μ queryBudget : Nat)
    (classifiers : AcceptedReplayKzgClassifierFamily μ)
    (parameters : Bls12377KzgParameters μ) :
    IsTotalQueryBound
        (acceptedReplayKzgVAdversary
          game queryBounds μ classifiers parameters) queryBudget ↔
      IsTotalQueryBound
        (acceptedMultiStatementForkExperimentAt
          game queryBounds μ) queryBudget := by
  unfold acceptedReplayKzgVAdversary
  exact isQueryBound_map_iff _ _ queryBudget
    (fun _ b => 0 < b) (fun _ b => b - 1)

theorem acceptedReplayKzgWAdversary_isTotalQueryBound_iff
    {Call : Type}
    (game : OracleComp GlobalFsSourceSpec (PackedOutcome Call))
    (queryBounds : (FsWrappedSpec Fr).Domain → Nat)
    (μ queryBudget : Nat)
    (classifiers : AcceptedReplayKzgClassifierFamily μ)
    (parameters : Bls12377KzgParameters μ) :
    IsTotalQueryBound
        (acceptedReplayKzgWAdversary
          game queryBounds μ classifiers parameters) queryBudget ↔
      IsTotalQueryBound
        (acceptedMultiStatementForkExperimentAt
          game queryBounds μ) queryBudget := by
  unfold acceptedReplayKzgWAdversary
  exact isQueryBound_map_iff _ _ queryBudget
    (fun _ b => 0 < b) (fun _ b => b - 1)

/-! ## Polynomial-time predicates and security interfaces -/

/-- External, explicit polynomial-time predicates.  No unrestricted Lean
function is silently treated as an efficient reduction. -/
structure AcceptedReplayBls12377PolynomialTimeModel (μ : Nat) where
  setup : AcceptedReplayBls12377SetupSampler μ → Prop
  classifierFamily : AcceptedReplayKzgClassifierFamily μ → Prop
  kzgVAdversary : AcceptedReplayKzgVAdversary μ → Prop
  kzgWAdversary : AcceptedReplayKzgWAdversary μ → Prop
  gipaAdversary : AcceptedReplayGipaAdversary μ → Prop
  gipaExtractor : AcceptedReplayGipaExtractor μ → Prop

/-- Exact PT obligations retained by the two classifier-based constructors. -/
structure AcceptedReplayKzgConstructorPolynomialTime
    {Call : Type} {μ : Nat}
    (complexity : AcceptedReplayBls12377PolynomialTimeModel μ)
    (game : OracleComp GlobalFsSourceSpec (PackedOutcome Call))
    (queryBounds : (FsWrappedSpec Fr).Domain → Nat)
    (classifiers : AcceptedReplayKzgClassifierFamily μ) : Prop where
  classifiers_polyTime :
    complexity.classifierFamily classifiers
  v_adversary_polyTime :
    complexity.kzgVAdversary
      (acceptedReplayKzgVAdversary
        game queryBounds μ classifiers)
  w_adversary_polyTime :
    complexity.kzgWAdversary
      (acceptedReplayKzgWAdversary
        game queryBounds μ classifiers)

/-- PT obligation for the extractor-independent unfiltered GIPA adversary. -/
structure AcceptedReplayGipaConstructorPolynomialTime
    {Call : Type} {μ : Nat}
    (complexity : AcceptedReplayBls12377PolynomialTimeModel μ)
    (game : OracleComp GlobalFsSourceSpec (PackedOutcome Call))
    (queryBounds : (FsWrappedSpec Fr).Domain → Nat) : Prop where
  adversary_polyTime :
    complexity.gipaAdversary
      (acceptedReplayGipaAdversary game queryBounds μ)

/-- Query-indexed security of the two proof-free setup-first KZG games. -/
structure AcceptedReplayBls12377KzgSecurity {μ : Nat}
    (setup : AcceptedReplayBls12377SetupSampler μ)
    (complexity : AcceptedReplayBls12377PolynomialTimeModel μ) where
  setup_polyTime : complexity.setup setup
  epsilonV : Nat → Nat → ℝ≥0∞
  epsilonW : Nat → Nat → ℝ≥0∞
  v_gameWin_le :
    ∀ (adversary : AcceptedReplayKzgVAdversary μ)
      (setupBudget adversaryBudget : Nat),
      complexity.kzgVAdversary adversary →
      IsTotalQueryBound setup setupBudget →
      (∀ parameters,
        IsTotalQueryBound
          (adversary parameters) adversaryBudget) →
      Pr[AcceptedReplayKzgVWin |
          acceptedReplayBls12377KzgVGame setup adversary] ≤
        epsilonV setupBudget adversaryBudget
  w_gameWin_le :
    ∀ (adversary : AcceptedReplayKzgWAdversary μ)
      (setupBudget adversaryBudget : Nat),
      complexity.kzgWAdversary adversary →
      IsTotalQueryBound setup setupBudget →
      (∀ parameters,
        IsTotalQueryBound
          (adversary parameters) adversaryBudget) →
      Pr[AcceptedReplayKzgWWin |
          acceptedReplayBls12377KzgWGame setup adversary] ≤
        epsilonW setupBudget adversaryBudget

/-- Setup-first GIPA knowledge security.

`extractorFor` receives only the already-fixed proof-free accepted-replay
adversary.  Consequently the adversary cannot depend on the extractor chosen
for it, and the extractor is fixed before the setup sampler or adversary game
executes. -/
structure AcceptedReplayBls12377GipaSecurity {μ : Nat}
    (setup : AcceptedReplayBls12377SetupSampler μ)
    (complexity : AcceptedReplayBls12377PolynomialTimeModel μ) where
  setup_polyTime : complexity.setup setup
  epsilonRoot : Nat → Nat → ℝ≥0∞
  epsilonProduct : Nat → Nat → ℝ≥0∞
  extractorFor :
    AcceptedReplayGipaAdversary μ →
      AcceptedReplayGipaExtractor μ
  extractor_polyTime :
    ∀ adversary,
      complexity.gipaExtractor (extractorFor adversary)
  root_gameWin_le :
    ∀ (adversary : AcceptedReplayGipaAdversary μ)
      (setupBudget adversaryBudget : Nat),
      complexity.gipaAdversary adversary →
      IsTotalQueryBound setup setupBudget →
      (∀ parameters,
        IsTotalQueryBound
          (adversary parameters) adversaryBudget) →
      Pr[AcceptedReplayGipaRootWin |
          acceptedReplayBls12377GipaGame
            setup adversary (extractorFor adversary)] ≤
        epsilonRoot setupBudget adversaryBudget
  product_gameWin_le :
    ∀ (adversary : AcceptedReplayGipaAdversary μ)
      (setupBudget adversaryBudget : Nat),
      complexity.gipaAdversary adversary →
      IsTotalQueryBound setup setupBudget →
      (∀ parameters,
        IsTotalQueryBound
          (adversary parameters) adversaryBudget) →
      Pr[AcceptedReplayGipaProductWin |
          acceptedReplayBls12377GipaGame
            setup adversary (extractorFor adversary)] ≤
        epsilonProduct setupBudget adversaryBudget

/-- The extractor selected for the concrete unfiltered accepted-replay
adversary.  Both the game and query schedule are fixed before this lookup; the
adversary constructor has no extractor argument. -/
def AcceptedReplayBls12377GipaSecurity.extractorForAcceptedReplay
    {Call : Type} {μ : Nat}
    {setup : AcceptedReplayBls12377SetupSampler μ}
    {complexity : AcceptedReplayBls12377PolynomialTimeModel μ}
    (security :
      AcceptedReplayBls12377GipaSecurity setup complexity)
    (game : OracleComp GlobalFsSourceSpec (PackedOutcome Call))
    (queryBounds : (FsWrappedSpec Fr).Domain → Nat) :
    AcceptedReplayGipaExtractor μ :=
  security.extractorFor
    (acceptedReplayGipaAdversary game queryBounds μ)

/-- Shipping's deployed setup can be represented by a query-free sampler.
Its authenticity and ceremony correctness remain separate setup assumptions. -/
def fixedAcceptedReplayBls12377Setup {μ : Nat}
    (parameters : Bls12377KzgParameters μ) :
    AcceptedReplayBls12377SetupSampler μ :=
  pure parameters

theorem fixedAcceptedReplayBls12377Setup_isTotalQueryBound
    {μ : Nat}
    (parameters : Bls12377KzgParameters μ) :
    IsTotalQueryBound
      (fixedAcceptedReplayBls12377Setup parameters) 0 := by
  exact trivial

end

end Ipp.ShippingMultiStatement
