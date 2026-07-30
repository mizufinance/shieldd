import Ipp.ShippingAdaptiveRandomizerBound
import Ipp.S1Bls12377StandaloneGames

/-!
Adaptive-selected-statement BLS12-377 games for shipping SnarkPack.

The target adversaries share one `FsWrappedSpec` oracle with setup and return
their formal statement only after their oracle computation.  Every returned
statement carries an exact binding to the sampled KZG arrays, opening
equations, and executable pairing.  All-events bridges relate the complete
cache-preserving source experiment to these games without fixing a statement
before oracle access.
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

/-! ## Adaptive statement and target-game carriers -/

/-- Exact relation between a statement selected after oracle execution and
the sampled BLS12-377 public parameters. -/
structure AdaptiveBls12377StatementBinding {μ : Nat}
    (statement : Bls12377ReductionStatement μ)
    (parameters : Bls12377KzgParameters μ) : Prop where
  kzg : Bls12377KzgStatementBinding statement parameters
  pairing_exact :
    statement.e =
      executablePairingLinear parameters.pairingBilinear

/-- A statement selected by the target adversary after its oracle queries,
together with the exact sampled setup to which it is bound. -/
structure AdaptiveBls12377SelectedStatement (μ : Nat) where
  parameters : Bls12377KzgParameters μ
  statement : Bls12377ReductionStatement μ
  binding :
    AdaptiveBls12377StatementBinding statement parameters

structure AdaptiveBls12377KzgVAttempt (μ : Nat) where
  selected : AdaptiveBls12377SelectedStatement μ
  forgery : Bls12377KzgVForgery μ

structure AdaptiveBls12377KzgWAttempt (μ : Nat) where
  selected : AdaptiveBls12377SelectedStatement μ
  forgery : Bls12377KzgWForgery μ

structure AdaptiveBls12377GipaAttempt (μ : Nat) where
  selected : AdaptiveBls12377SelectedStatement μ
  tree : Bls12377GipaForkTree μ

/-- The adaptive GIPA extractor sees the selected formal statement and only
the commitment payload fixed before the randomizer query.  Sampled setup
parameters and binding proofs are deliberately not part of its input. -/
structure AdaptiveBls12377GipaStandaloneExtractor (μ : Nat) where
  extract :
    Bls12377ReductionStatement μ →
      RandomizerPayload ArkPairingOutput →
        S1RootWitness g1PrimeSubgroup g2PrimeSubgroup μ

/-- Forget the standalone-game wrapper without adding information to the
pre-fork source extractor. -/
def AdaptiveBls12377GipaStandaloneExtractor.toAdaptive {μ : Nat}
    (extractor : AdaptiveBls12377GipaStandaloneExtractor μ) :
    AdaptiveGipaExtractor μ :=
  fun statement => {
    extract := extractor.extract statement
  }

structure AdaptiveBls12377GipaChallenge (μ : Nat) where
  selected : AdaptiveBls12377SelectedStatement μ
  tree : Bls12377GipaForkTree μ
  witness : S1RootWitness g1PrimeSubgroup g2PrimeSubgroup μ

def AdaptiveBls12377GipaChallenge.toExisting {μ : Nat}
    (challenge : AdaptiveBls12377GipaChallenge μ) :
    Bls12377GipaKnowledgeChallenge μ where
  tree := challenge.tree
  witness := challenge.witness

abbrev AdaptiveBls12377SetupSampler (μ : Nat) :=
  Bls12377KzgSetupSampler μ

/-- Shipping uses one already-authenticated deployed SRS.  Its standalone
setup sampler is therefore pure and makes no Fiat--Shamir-oracle queries. -/
def fixedAdaptiveBls12377Setup {μ : Nat}
    (parameters : Bls12377KzgParameters μ) :
    AdaptiveBls12377SetupSampler μ :=
  pure parameters

theorem fixedAdaptiveBls12377Setup_isTotalQueryBound {μ : Nat}
    (parameters : Bls12377KzgParameters μ) :
    IsTotalQueryBound
      (fixedAdaptiveBls12377Setup parameters) 0 := by
  exact trivial

/-- The adversary receives only the sampled setup.  Its selected formal
statement is part of its final output, so oracle queries may precede statement
selection. -/
abbrev AdaptiveBls12377KzgVAdversary (μ : Nat) :=
  Bls12377KzgParameters μ →
    OracleComp (FsWrappedSpec Fr)
      (Option (AdaptiveBls12377KzgVAttempt μ))

abbrev AdaptiveBls12377KzgWAdversary (μ : Nat) :=
  Bls12377KzgParameters μ →
    OracleComp (FsWrappedSpec Fr)
      (Option (AdaptiveBls12377KzgWAttempt μ))

abbrev AdaptiveBls12377GipaAdversary (μ : Nat) :=
  Bls12377KzgParameters μ →
    OracleComp (FsWrappedSpec Fr)
      (Option (AdaptiveBls12377GipaAttempt μ))

abbrev AdaptiveBls12377KzgVGameOutput (μ : Nat) :=
  Bls12377KzgParameters μ ×
    Option (AdaptiveBls12377KzgVAttempt μ)

abbrev AdaptiveBls12377KzgWGameOutput (μ : Nat) :=
  Bls12377KzgParameters μ ×
    Option (AdaptiveBls12377KzgWAttempt μ)

abbrev AdaptiveBls12377GipaGameOutput (μ : Nat) :=
  Bls12377KzgParameters μ ×
    Option (AdaptiveBls12377GipaChallenge μ)

/-! ## Standalone games -/

/-- Setup and the V-lane adversary execute in one shared oracle computation.
The statement remains absent from the game input and is selected in the
adversary output. -/
def adaptiveBls12377KzgVStandaloneGame {μ : Nat}
    (setup : AdaptiveBls12377SetupSampler μ)
    (adversary : AdaptiveBls12377KzgVAdversary μ) :
    OracleComp (FsWrappedSpec Fr)
      (AdaptiveBls12377KzgVGameOutput μ) :=
  setup >>= fun parameters =>
    (fun output => (parameters, output)) <$> adversary parameters

def adaptiveBls12377KzgWStandaloneGame {μ : Nat}
    (setup : AdaptiveBls12377SetupSampler μ)
    (adversary : AdaptiveBls12377KzgWAdversary μ) :
    OracleComp (FsWrappedSpec Fr)
      (AdaptiveBls12377KzgWGameOutput μ) :=
  setup >>= fun parameters =>
    (fun output => (parameters, output)) <$> adversary parameters

def adaptiveBls12377GipaChallengeOfAttempt {μ : Nat}
    (extractor : AdaptiveBls12377GipaStandaloneExtractor μ) :
    Option (AdaptiveBls12377GipaAttempt μ) →
      Option (AdaptiveBls12377GipaChallenge μ)
  | none => none
  | some attempt =>
      some {
        selected := attempt.selected
        tree := attempt.tree
        witness := extractor.extract attempt.selected.statement
          (proofRandomizerPayload attempt.tree.root.1.proof)
      }

/-- The GIPA game also keeps setup, adaptive statement selection, and
extraction inside the same oracle computation.  Extraction itself is a pure
post-processing map. -/
def adaptiveBls12377GipaStandaloneGame {μ : Nat}
    (setup : AdaptiveBls12377SetupSampler μ)
    (adversary : AdaptiveBls12377GipaAdversary μ)
    (extractor : AdaptiveBls12377GipaStandaloneExtractor μ) :
    OracleComp (FsWrappedSpec Fr)
      (AdaptiveBls12377GipaGameOutput μ) :=
  setup >>= fun parameters =>
    (fun output =>
      (parameters,
        adaptiveBls12377GipaChallengeOfAttempt extractor output)) <$>
      adversary parameters

def AdaptiveBls12377KzgVStandaloneWin {μ : Nat} :
    AdaptiveBls12377KzgVGameOutput μ → Prop
  | (_, none) => False
  | (sampled, some attempt) =>
      attempt.selected.parameters = sampled ∧
        Bls12377KzgVTargetWin sampled (some attempt.forgery)

def AdaptiveBls12377KzgWStandaloneWin {μ : Nat} :
    AdaptiveBls12377KzgWGameOutput μ → Prop
  | (_, none) => False
  | (sampled, some attempt) =>
      attempt.selected.parameters = sampled ∧
        Bls12377KzgWTargetWin sampled (some attempt.forgery)

def AdaptiveBls12377GipaRootStandaloneWin {μ : Nat} :
    AdaptiveBls12377GipaGameOutput μ → Prop
  | (_, none) => False
  | (sampled, some challenge) =>
      challenge.selected.parameters = sampled ∧
        Bls12377GipaForkAccepts
          challenge.selected.statement challenge.tree ∧
        Bls12377GipaRootOpeningGameWin
          challenge.selected.statement
          (some challenge.toExisting)

def AdaptiveBls12377GipaProductStandaloneWin {μ : Nat} :
    AdaptiveBls12377GipaGameOutput μ → Prop
  | (_, none) => False
  | (sampled, some challenge) =>
      challenge.selected.parameters = sampled ∧
        Bls12377GipaForkAccepts
          challenge.selected.statement challenge.tree ∧
        Bls12377GipaProductLaneGameWin
          challenge.selected.statement
          (some challenge.toExisting)

/-- The adaptive concrete V target is exactly the selected statement's
abstract forgery target once setup identity is established. -/
theorem adaptiveBls12377KzgVStandaloneWin_iff_statementWin
    {μ : Nat}
    (sampled : Bls12377KzgParameters μ)
    (attempt : AdaptiveBls12377KzgVAttempt μ) :
    AdaptiveBls12377KzgVStandaloneWin
        (sampled, some attempt) ↔
      attempt.selected.parameters = sampled ∧
        Bls12377KzgVForgeryGameWin
          attempt.selected.statement (some attempt.forgery) := by
  constructor
  · intro h
    refine ⟨h.1, ?_⟩
    have htarget :
        Bls12377KzgVTargetWin attempt.selected.parameters
          (some attempt.forgery) := by
      simpa [h.1] using h.2
    exact
      (bls12377KzgVTargetWin_ofStatement
        attempt.selected.statement attempt.selected.parameters
        attempt.selected.binding.kzg (some attempt.forgery)).2 htarget
  · intro h
    refine ⟨h.1, ?_⟩
    have htarget :
        Bls12377KzgVTargetWin attempt.selected.parameters
          (some attempt.forgery) :=
      (bls12377KzgVTargetWin_ofStatement
        attempt.selected.statement attempt.selected.parameters
        attempt.selected.binding.kzg (some attempt.forgery)).1 h.2
    simpa [h.1] using htarget

theorem adaptiveBls12377KzgWStandaloneWin_iff_statementWin
    {μ : Nat}
    (sampled : Bls12377KzgParameters μ)
    (attempt : AdaptiveBls12377KzgWAttempt μ) :
    AdaptiveBls12377KzgWStandaloneWin
        (sampled, some attempt) ↔
      attempt.selected.parameters = sampled ∧
        Bls12377KzgWForgeryGameWin
          attempt.selected.statement (some attempt.forgery) := by
  constructor
  · intro h
    refine ⟨h.1, ?_⟩
    have htarget :
        Bls12377KzgWTargetWin attempt.selected.parameters
          (some attempt.forgery) := by
      simpa [h.1] using h.2
    exact
      (bls12377KzgWTargetWin_ofStatement
        attempt.selected.statement attempt.selected.parameters
        attempt.selected.binding.kzg (some attempt.forgery)).2 htarget
  · intro h
    refine ⟨h.1, ?_⟩
    have htarget :
        Bls12377KzgWTargetWin attempt.selected.parameters
          (some attempt.forgery) :=
      (bls12377KzgWTargetWin_ofStatement
        attempt.selected.statement attempt.selected.parameters
        attempt.selected.binding.kzg (some attempt.forgery)).1 h.2
    simpa [h.1] using htarget

/-- Normal form of the adaptive GIPA root-opening target.  Auditing this root
pins sampled-setup identity and full accepted-fork coverage in the win event. -/
theorem adaptiveBls12377GipaRootStandaloneWin_iff_statementWin
    {μ : Nat}
    (sampled : Bls12377KzgParameters μ)
    (challenge : AdaptiveBls12377GipaChallenge μ) :
    AdaptiveBls12377GipaRootStandaloneWin
        (sampled, some challenge) ↔
      challenge.selected.parameters = sampled ∧
        Bls12377GipaForkAccepts
          challenge.selected.statement challenge.tree ∧
        Bls12377GipaRootOpeningGameWin
          challenge.selected.statement
          (some challenge.toExisting) := by
  rfl

/-- Normal form of the adaptive GIPA product-lane target. -/
theorem adaptiveBls12377GipaProductStandaloneWin_iff_statementWin
    {μ : Nat}
    (sampled : Bls12377KzgParameters μ)
    (challenge : AdaptiveBls12377GipaChallenge μ) :
    AdaptiveBls12377GipaProductStandaloneWin
        (sampled, some challenge) ↔
      challenge.selected.parameters = sampled ∧
        Bls12377GipaForkAccepts
          challenge.selected.statement challenge.tree ∧
        Bls12377GipaProductLaneGameWin
          challenge.selected.statement
          (some challenge.toExisting) := by
  rfl

/-! ## Exact query bounds -/

theorem adaptiveBls12377KzgVStandaloneGame_isTotalQueryBound {μ : Nat}
    (setup : AdaptiveBls12377SetupSampler μ)
    (adversary : AdaptiveBls12377KzgVAdversary μ)
    (setupBudget adversaryBudget : Nat)
    (hsetup : IsTotalQueryBound setup setupBudget)
    (hadversary :
      ∀ parameters,
        IsTotalQueryBound
          (adversary parameters) adversaryBudget) :
    IsTotalQueryBound
      (adaptiveBls12377KzgVStandaloneGame setup adversary)
      (setupBudget + adversaryBudget) := by
  unfold adaptiveBls12377KzgVStandaloneGame
  apply isTotalQueryBound_bind hsetup
  intro parameters
  exact (isQueryBound_map_iff
    (adversary parameters)
    (fun output => (parameters, output))
    adversaryBudget
    (fun _ b => 0 < b) (fun _ b => b - 1)).2
      (hadversary parameters)

theorem adaptiveBls12377KzgWStandaloneGame_isTotalQueryBound {μ : Nat}
    (setup : AdaptiveBls12377SetupSampler μ)
    (adversary : AdaptiveBls12377KzgWAdversary μ)
    (setupBudget adversaryBudget : Nat)
    (hsetup : IsTotalQueryBound setup setupBudget)
    (hadversary :
      ∀ parameters,
        IsTotalQueryBound
          (adversary parameters) adversaryBudget) :
    IsTotalQueryBound
      (adaptiveBls12377KzgWStandaloneGame setup adversary)
      (setupBudget + adversaryBudget) := by
  unfold adaptiveBls12377KzgWStandaloneGame
  apply isTotalQueryBound_bind hsetup
  intro parameters
  exact (isQueryBound_map_iff
    (adversary parameters)
    (fun output => (parameters, output))
    adversaryBudget
    (fun _ b => 0 < b) (fun _ b => b - 1)).2
      (hadversary parameters)

theorem adaptiveBls12377GipaStandaloneGame_isTotalQueryBound {μ : Nat}
    (setup : AdaptiveBls12377SetupSampler μ)
    (adversary : AdaptiveBls12377GipaAdversary μ)
    (extractor : AdaptiveBls12377GipaStandaloneExtractor μ)
    (setupBudget adversaryBudget : Nat)
    (hsetup : IsTotalQueryBound setup setupBudget)
    (hadversary :
      ∀ parameters,
        IsTotalQueryBound
          (adversary parameters) adversaryBudget) :
    IsTotalQueryBound
      (adaptiveBls12377GipaStandaloneGame
        setup adversary extractor)
      (setupBudget + adversaryBudget) := by
  unfold adaptiveBls12377GipaStandaloneGame
  apply isTotalQueryBound_bind hsetup
  intro parameters
  exact (isQueryBound_map_iff
    (adversary parameters)
    (fun output =>
      (parameters,
        adaptiveBls12377GipaChallengeOfAttempt extractor output))
    adversaryBudget
    (fun _ b => 0 < b) (fun _ b => b - 1)).2
      (hadversary parameters)

/-! ## Complexity and standalone-security interfaces -/

/-- External complexity predicates used by the computational assumptions.
They are parameters rather than facts synthesized from unrestricted Lean
functions. -/
structure AdaptiveBls12377PolynomialTimeModel (μ : Nat) where
  setup : AdaptiveBls12377SetupSampler μ → Prop
  kzgVAdversary : AdaptiveBls12377KzgVAdversary μ → Prop
  kzgWAdversary : AdaptiveBls12377KzgWAdversary μ → Prop
  gipaAdversary : AdaptiveBls12377GipaAdversary μ → Prop
  sourceExtractor : AdaptiveGipaExtractor μ → Prop
  gipaExtractor :
    AdaptiveBls12377GipaStandaloneExtractor μ → Prop

/-- Four separate computational advantages for adaptive statement selection.
Each game is bounded only for reductions certified by the supplied complexity
model and by an exact total oracle-query bound. -/
structure AdaptiveBls12377StandaloneSecurity {μ : Nat}
    (setup : AdaptiveBls12377SetupSampler μ)
    (complexity : AdaptiveBls12377PolynomialTimeModel μ) where
  setup_polyTime : complexity.setup setup
  epsilonKzgV : Nat → ℝ≥0∞
  epsilonKzgW : Nat → ℝ≥0∞
  epsilonGipaRoot : Nat → ℝ≥0∞
  epsilonGipaProduct : Nat → ℝ≥0∞
  kzgV_gameWin_le :
    ∀ (adversary : AdaptiveBls12377KzgVAdversary μ)
      (queryBudget : Nat),
      complexity.kzgVAdversary adversary →
      IsTotalQueryBound
        (adaptiveBls12377KzgVStandaloneGame setup adversary)
        queryBudget →
      Pr[AdaptiveBls12377KzgVStandaloneWin |
          adaptiveBls12377KzgVStandaloneGame setup adversary] ≤
        epsilonKzgV queryBudget
  kzgW_gameWin_le :
    ∀ (adversary : AdaptiveBls12377KzgWAdversary μ)
      (queryBudget : Nat),
      complexity.kzgWAdversary adversary →
      IsTotalQueryBound
        (adaptiveBls12377KzgWStandaloneGame setup adversary)
        queryBudget →
      Pr[AdaptiveBls12377KzgWStandaloneWin |
          adaptiveBls12377KzgWStandaloneGame setup adversary] ≤
        epsilonKzgW queryBudget
  gipaExtractorFor :
    AdaptiveBls12377GipaAdversary μ →
      AdaptiveBls12377GipaStandaloneExtractor μ
  gipaExtractor_polyTime :
    ∀ adversary,
      complexity.gipaExtractor (gipaExtractorFor adversary)
  gipaRoot_gameWin_le :
    ∀ (adversary : AdaptiveBls12377GipaAdversary μ)
      (queryBudget : Nat),
      complexity.gipaAdversary adversary →
      IsTotalQueryBound
        (adaptiveBls12377GipaStandaloneGame
          setup adversary (gipaExtractorFor adversary))
        queryBudget →
      Pr[AdaptiveBls12377GipaRootStandaloneWin |
          adaptiveBls12377GipaStandaloneGame
            setup adversary (gipaExtractorFor adversary)] ≤
        epsilonGipaRoot queryBudget
  gipaProduct_gameWin_le :
    ∀ (adversary : AdaptiveBls12377GipaAdversary μ)
      (queryBudget : Nat),
      complexity.gipaAdversary adversary →
      IsTotalQueryBound
        (adaptiveBls12377GipaStandaloneGame
          setup adversary (gipaExtractorFor adversary))
        queryBudget →
      Pr[AdaptiveBls12377GipaProductStandaloneWin |
          adaptiveBls12377GipaStandaloneGame
            setup adversary (gipaExtractorFor adversary)] ≤
        epsilonGipaProduct queryBudget

/-! ## All-events adaptive bridges -/

/-- Exact output-distribution bridge between two programs using the same
oracle specification.  Equality holds for every target event.  Query-cost
transport is recorded independently, including explicit reduction overhead. -/
structure AdaptiveAllEventsQueryBridge
    {Source Target : Type}
    (source : OracleComp (FsWrappedSpec Fr) Source)
    (target : OracleComp (FsWrappedSpec Fr) Target) where
  reduce : Source → Target
  output_event_eq :
    ∀ event : Target → Prop,
      Pr[event | reduce <$> source] =
        Pr[event | target]
  queryOverhead : Nat
  target_query_bound :
    ∀ sourceBudget,
      IsTotalQueryBound source sourceBudget →
        IsTotalQueryBound target
          (sourceBudget + queryOverhead)

structure CachePreservingKzgVAdaptiveBridge
    {CallId : Type} {μ : Nat}
    (mapped :
      OracleComp (FsWrappedSpec Fr)
        (Option (CachePreservingCommonFork CallId μ)))
    (setup : AdaptiveBls12377SetupSampler μ)
    (adversary : AdaptiveBls12377KzgVAdversary μ) where
  distribution :
    AdaptiveAllEventsQueryBridge mapped
      (adaptiveBls12377KzgVStandaloneGame setup adversary)
  win_exact :
    ∀ output,
      CachePreservingKzgVWin output ↔
        AdaptiveBls12377KzgVStandaloneWin
          (distribution.reduce output)

structure CachePreservingKzgWAdaptiveBridge
    {CallId : Type} {μ : Nat}
    (mapped :
      OracleComp (FsWrappedSpec Fr)
        (Option (CachePreservingCommonFork CallId μ)))
    (setup : AdaptiveBls12377SetupSampler μ)
    (adversary : AdaptiveBls12377KzgWAdversary μ) where
  distribution :
    AdaptiveAllEventsQueryBridge mapped
      (adaptiveBls12377KzgWStandaloneGame setup adversary)
  win_exact :
    ∀ output,
      CachePreservingKzgWWin output ↔
        AdaptiveBls12377KzgWStandaloneWin
          (distribution.reduce output)

structure CachePreservingGipaRootAdaptiveBridge
    {CallId : Type} {μ : Nat}
    (mapped :
      OracleComp (FsWrappedSpec Fr)
        (Option (CachePreservingCommonFork CallId μ)))
    (sourceExtractor : AdaptiveGipaExtractor μ)
    (setup : AdaptiveBls12377SetupSampler μ)
    (adversary : AdaptiveBls12377GipaAdversary μ)
    (targetExtractor :
      AdaptiveBls12377GipaStandaloneExtractor μ) where
  distribution :
    AdaptiveAllEventsQueryBridge mapped
      (adaptiveBls12377GipaStandaloneGame
        setup adversary targetExtractor)
  win_exact :
    ∀ output,
      CachePreservingGipaRootWin sourceExtractor output ↔
        AdaptiveBls12377GipaRootStandaloneWin
          (distribution.reduce output)

structure CachePreservingGipaProductAdaptiveBridge
    {CallId : Type} {μ : Nat}
    (mapped :
      OracleComp (FsWrappedSpec Fr)
        (Option (CachePreservingCommonFork CallId μ)))
    (sourceExtractor : AdaptiveGipaExtractor μ)
    (setup : AdaptiveBls12377SetupSampler μ)
    (adversary : AdaptiveBls12377GipaAdversary μ)
    (targetExtractor :
      AdaptiveBls12377GipaStandaloneExtractor μ) where
  distribution :
    AdaptiveAllEventsQueryBridge mapped
      (adaptiveBls12377GipaStandaloneGame
        setup adversary targetExtractor)
  win_exact :
    ∀ output,
      CachePreservingGipaProductWin sourceExtractor output ↔
        AdaptiveBls12377GipaProductStandaloneWin
          (distribution.reduce output)

theorem cachePreservingKzgVAdaptiveBridge_gameWin_eq
    {CallId : Type} {μ : Nat}
    (mapped :
      OracleComp (FsWrappedSpec Fr)
        (Option (CachePreservingCommonFork CallId μ)))
    (setup : AdaptiveBls12377SetupSampler μ)
    (adversary : AdaptiveBls12377KzgVAdversary μ)
    (bridge :
      CachePreservingKzgVAdaptiveBridge
        mapped setup adversary) :
    Pr[CachePreservingKzgVWin | mapped] =
      Pr[AdaptiveBls12377KzgVStandaloneWin |
        adaptiveBls12377KzgVStandaloneGame setup adversary] := by
  calc
    _ = Pr[AdaptiveBls12377KzgVStandaloneWin ∘
          bridge.distribution.reduce | mapped] := by
      apply probEvent_ext
      intro output _
      exact bridge.win_exact output
    _ = Pr[AdaptiveBls12377KzgVStandaloneWin |
          bridge.distribution.reduce <$> mapped] := by
      rw [probEvent_map]
    _ = _ :=
      bridge.distribution.output_event_eq
        AdaptiveBls12377KzgVStandaloneWin

theorem cachePreservingKzgWAdaptiveBridge_gameWin_eq
    {CallId : Type} {μ : Nat}
    (mapped :
      OracleComp (FsWrappedSpec Fr)
        (Option (CachePreservingCommonFork CallId μ)))
    (setup : AdaptiveBls12377SetupSampler μ)
    (adversary : AdaptiveBls12377KzgWAdversary μ)
    (bridge :
      CachePreservingKzgWAdaptiveBridge
        mapped setup adversary) :
    Pr[CachePreservingKzgWWin | mapped] =
      Pr[AdaptiveBls12377KzgWStandaloneWin |
        adaptiveBls12377KzgWStandaloneGame setup adversary] := by
  calc
    _ = Pr[AdaptiveBls12377KzgWStandaloneWin ∘
          bridge.distribution.reduce | mapped] := by
      apply probEvent_ext
      intro output _
      exact bridge.win_exact output
    _ = Pr[AdaptiveBls12377KzgWStandaloneWin |
          bridge.distribution.reduce <$> mapped] := by
      rw [probEvent_map]
    _ = _ :=
      bridge.distribution.output_event_eq
        AdaptiveBls12377KzgWStandaloneWin

theorem cachePreservingGipaRootAdaptiveBridge_gameWin_eq
    {CallId : Type} {μ : Nat}
    (mapped :
      OracleComp (FsWrappedSpec Fr)
        (Option (CachePreservingCommonFork CallId μ)))
    (sourceExtractor : AdaptiveGipaExtractor μ)
    (setup : AdaptiveBls12377SetupSampler μ)
    (adversary : AdaptiveBls12377GipaAdversary μ)
    (targetExtractor :
      AdaptiveBls12377GipaStandaloneExtractor μ)
    (bridge :
      CachePreservingGipaRootAdaptiveBridge
        mapped sourceExtractor setup adversary targetExtractor) :
    Pr[CachePreservingGipaRootWin sourceExtractor | mapped] =
      Pr[AdaptiveBls12377GipaRootStandaloneWin |
        adaptiveBls12377GipaStandaloneGame
          setup adversary targetExtractor] := by
  calc
    _ = Pr[AdaptiveBls12377GipaRootStandaloneWin ∘
          bridge.distribution.reduce | mapped] := by
      apply probEvent_ext
      intro output _
      exact bridge.win_exact output
    _ = Pr[AdaptiveBls12377GipaRootStandaloneWin |
          bridge.distribution.reduce <$> mapped] := by
      rw [probEvent_map]
    _ = _ :=
      bridge.distribution.output_event_eq
        AdaptiveBls12377GipaRootStandaloneWin

theorem cachePreservingGipaProductAdaptiveBridge_gameWin_eq
    {CallId : Type} {μ : Nat}
    (mapped :
      OracleComp (FsWrappedSpec Fr)
        (Option (CachePreservingCommonFork CallId μ)))
    (sourceExtractor : AdaptiveGipaExtractor μ)
    (setup : AdaptiveBls12377SetupSampler μ)
    (adversary : AdaptiveBls12377GipaAdversary μ)
    (targetExtractor :
      AdaptiveBls12377GipaStandaloneExtractor μ)
    (bridge :
      CachePreservingGipaProductAdaptiveBridge
        mapped sourceExtractor setup adversary targetExtractor) :
    Pr[CachePreservingGipaProductWin sourceExtractor | mapped] =
      Pr[AdaptiveBls12377GipaProductStandaloneWin |
        adaptiveBls12377GipaStandaloneGame
          setup adversary targetExtractor] := by
  calc
    _ = Pr[AdaptiveBls12377GipaProductStandaloneWin ∘
          bridge.distribution.reduce | mapped] := by
      apply probEvent_ext
      intro output _
      exact bridge.win_exact output
    _ = Pr[AdaptiveBls12377GipaProductStandaloneWin |
          bridge.distribution.reduce <$> mapped] := by
      rw [probEvent_map]
    _ = _ :=
      bridge.distribution.output_event_eq
        AdaptiveBls12377GipaProductStandaloneWin

theorem cachePreservingKzgVAdaptiveBridge_le_security
    {CallId : Type} {μ sourceBudget : Nat}
    (mapped :
      OracleComp (FsWrappedSpec Fr)
        (Option (CachePreservingCommonFork CallId μ)))
    (setup : AdaptiveBls12377SetupSampler μ)
    (complexity : AdaptiveBls12377PolynomialTimeModel μ)
    (security :
      AdaptiveBls12377StandaloneSecurity setup complexity)
    (adversary : AdaptiveBls12377KzgVAdversary μ)
    (adversaryPolyTime :
      complexity.kzgVAdversary adversary)
    (bridge :
      CachePreservingKzgVAdaptiveBridge
        mapped setup adversary)
    (hbound : IsTotalQueryBound mapped sourceBudget) :
    Pr[CachePreservingKzgVWin | mapped] ≤
      security.epsilonKzgV
        (sourceBudget + bridge.distribution.queryOverhead) := by
  rw [cachePreservingKzgVAdaptiveBridge_gameWin_eq
    mapped setup adversary bridge]
  exact security.kzgV_gameWin_le
    adversary
    (sourceBudget + bridge.distribution.queryOverhead)
    adversaryPolyTime
    (bridge.distribution.target_query_bound sourceBudget hbound)

theorem cachePreservingKzgWAdaptiveBridge_le_security
    {CallId : Type} {μ sourceBudget : Nat}
    (mapped :
      OracleComp (FsWrappedSpec Fr)
        (Option (CachePreservingCommonFork CallId μ)))
    (setup : AdaptiveBls12377SetupSampler μ)
    (complexity : AdaptiveBls12377PolynomialTimeModel μ)
    (security :
      AdaptiveBls12377StandaloneSecurity setup complexity)
    (adversary : AdaptiveBls12377KzgWAdversary μ)
    (adversaryPolyTime :
      complexity.kzgWAdversary adversary)
    (bridge :
      CachePreservingKzgWAdaptiveBridge
        mapped setup adversary)
    (hbound : IsTotalQueryBound mapped sourceBudget) :
    Pr[CachePreservingKzgWWin | mapped] ≤
      security.epsilonKzgW
        (sourceBudget + bridge.distribution.queryOverhead) := by
  rw [cachePreservingKzgWAdaptiveBridge_gameWin_eq
    mapped setup adversary bridge]
  exact security.kzgW_gameWin_le
    adversary
    (sourceBudget + bridge.distribution.queryOverhead)
    adversaryPolyTime
    (bridge.distribution.target_query_bound sourceBudget hbound)

theorem cachePreservingGipaRootAdaptiveBridge_le_security
    {CallId : Type} {μ sourceBudget : Nat}
    (mapped :
      OracleComp (FsWrappedSpec Fr)
        (Option (CachePreservingCommonFork CallId μ)))
    (sourceExtractor : AdaptiveGipaExtractor μ)
    (setup : AdaptiveBls12377SetupSampler μ)
    (complexity : AdaptiveBls12377PolynomialTimeModel μ)
    (security :
      AdaptiveBls12377StandaloneSecurity setup complexity)
    (adversary : AdaptiveBls12377GipaAdversary μ)
    (adversaryPolyTime :
      complexity.gipaAdversary adversary)
    (bridge :
      CachePreservingGipaRootAdaptiveBridge
        mapped sourceExtractor setup adversary
          (security.gipaExtractorFor adversary))
    (hbound : IsTotalQueryBound mapped sourceBudget) :
    Pr[CachePreservingGipaRootWin sourceExtractor | mapped] ≤
      security.epsilonGipaRoot
        (sourceBudget + bridge.distribution.queryOverhead) := by
  rw [cachePreservingGipaRootAdaptiveBridge_gameWin_eq
    mapped sourceExtractor setup adversary
    (security.gipaExtractorFor adversary) bridge]
  exact security.gipaRoot_gameWin_le
    adversary
    (sourceBudget + bridge.distribution.queryOverhead)
    adversaryPolyTime
    (bridge.distribution.target_query_bound sourceBudget hbound)

theorem cachePreservingGipaProductAdaptiveBridge_le_security
    {CallId : Type} {μ sourceBudget : Nat}
    (mapped :
      OracleComp (FsWrappedSpec Fr)
        (Option (CachePreservingCommonFork CallId μ)))
    (sourceExtractor : AdaptiveGipaExtractor μ)
    (setup : AdaptiveBls12377SetupSampler μ)
    (complexity : AdaptiveBls12377PolynomialTimeModel μ)
    (security :
      AdaptiveBls12377StandaloneSecurity setup complexity)
    (adversary : AdaptiveBls12377GipaAdversary μ)
    (adversaryPolyTime :
      complexity.gipaAdversary adversary)
    (bridge :
      CachePreservingGipaProductAdaptiveBridge
        mapped sourceExtractor setup adversary
          (security.gipaExtractorFor adversary))
    (hbound : IsTotalQueryBound mapped sourceBudget) :
    Pr[CachePreservingGipaProductWin sourceExtractor | mapped] ≤
      security.epsilonGipaProduct
        (sourceBudget + bridge.distribution.queryOverhead) := by
  rw [cachePreservingGipaProductAdaptiveBridge_gameWin_eq
    mapped sourceExtractor setup adversary
    (security.gipaExtractorFor adversary) bridge]
  exact security.gipaProduct_gameWin_le
    adversary
    (sourceBudget + bridge.distribution.queryOverhead)
    adversaryPolyTime
    (bridge.distribution.target_query_bound sourceBudget hbound)

/-! ## Four-lane reduction and quantitative composition -/

/-- Exact reduction package for one cache-preserving source experiment.
The package contains no source acceptance bound: it only reindexes each of
the four explicit extraction events into an adaptive standalone game. -/
structure CachePreservingAdaptiveBls12377Reduction
    {CallId : Type} {μ : Nat}
    (mapped :
      OracleComp (FsWrappedSpec Fr)
        (Option (CachePreservingCommonFork CallId μ)))
    (sourceExtractor : AdaptiveGipaExtractor μ)
    (setup : AdaptiveBls12377SetupSampler μ)
    (complexity : AdaptiveBls12377PolynomialTimeModel μ)
    (security :
      AdaptiveBls12377StandaloneSecurity setup complexity) where
  sourceExtractor_polyTime :
    complexity.sourceExtractor sourceExtractor
  kzgVAdversary : AdaptiveBls12377KzgVAdversary μ
  kzgVAdversary_polyTime :
    complexity.kzgVAdversary kzgVAdversary
  kzgVBridge :
    CachePreservingKzgVAdaptiveBridge
      mapped setup kzgVAdversary
  kzgWAdversary : AdaptiveBls12377KzgWAdversary μ
  kzgWAdversary_polyTime :
    complexity.kzgWAdversary kzgWAdversary
  kzgWBridge :
    CachePreservingKzgWAdaptiveBridge
      mapped setup kzgWAdversary
  gipaAdversary : AdaptiveBls12377GipaAdversary μ
  gipaAdversary_polyTime :
    complexity.gipaAdversary gipaAdversary
  gipaRootBridge :
    CachePreservingGipaRootAdaptiveBridge
      mapped sourceExtractor setup gipaAdversary
        (security.gipaExtractorFor gipaAdversary)
  gipaProductBridge :
    CachePreservingGipaProductAdaptiveBridge
      mapped sourceExtractor setup gipaAdversary
        (security.gipaExtractorFor gipaAdversary)

def CachePreservingAdaptiveBls12377Reduction.total
    {CallId : Type} {μ sourceBudget : Nat}
    {mapped :
      OracleComp (FsWrappedSpec Fr)
        (Option (CachePreservingCommonFork CallId μ))}
    {sourceExtractor : AdaptiveGipaExtractor μ}
    {setup : AdaptiveBls12377SetupSampler μ}
    {complexity : AdaptiveBls12377PolynomialTimeModel μ}
    {security :
      AdaptiveBls12377StandaloneSecurity setup complexity}
    (reduction :
      CachePreservingAdaptiveBls12377Reduction
        mapped sourceExtractor setup complexity security) : ℝ≥0∞ :=
  security.epsilonKzgV
      (sourceBudget +
        reduction.kzgVBridge.distribution.queryOverhead) +
    security.epsilonKzgW
      (sourceBudget +
        reduction.kzgWBridge.distribution.queryOverhead) +
    security.epsilonGipaRoot
      (sourceBudget +
        reduction.gipaRootBridge.distribution.queryOverhead) +
    security.epsilonGipaProduct
      (sourceBudget +
        reduction.gipaProductBridge.distribution.queryOverhead)

theorem cachePreservingCryptoExtractionWin_iff_components
    {CallId : Type} {μ : Nat}
    (extractor : AdaptiveGipaExtractor μ)
    (output : Option (CachePreservingCommonFork CallId μ)) :
    CachePreservingCryptoExtractionWin extractor output ↔
      CachePreservingKzgVWin output ∨
        CachePreservingKzgWWin output ∨
        CachePreservingGipaRootWin extractor output ∨
        CachePreservingGipaProductWin extractor output := by
  cases output <;> rfl

theorem cachePreservingCryptoExtraction_probability_le_components
    {CallId : Type} {μ : Nat}
    (mapped :
      OracleComp (FsWrappedSpec Fr)
        (Option (CachePreservingCommonFork CallId μ)))
    (extractor : AdaptiveGipaExtractor μ) :
    Pr[CachePreservingCryptoExtractionWin extractor | mapped] ≤
      Pr[CachePreservingKzgVWin | mapped] +
        Pr[CachePreservingKzgWWin | mapped] +
        Pr[CachePreservingGipaRootWin extractor | mapped] +
        Pr[CachePreservingGipaProductWin extractor | mapped] := by
  calc
    _ ≤ Pr[fun output =>
          CachePreservingKzgVWin output ∨
            (CachePreservingKzgWWin output ∨
              (CachePreservingGipaRootWin extractor output ∨
                CachePreservingGipaProductWin extractor output)) |
          mapped] := by
      apply probEvent_mono
      intro output _ hwin
      exact
        (cachePreservingCryptoExtractionWin_iff_components
          extractor output).mp hwin
    _ ≤
        Pr[CachePreservingKzgVWin | mapped] +
          Pr[CachePreservingKzgWWin | mapped] +
          Pr[CachePreservingGipaRootWin extractor | mapped] +
          Pr[CachePreservingGipaProductWin extractor | mapped] := by
      have hv :=
        probEvent_or_le mapped CachePreservingKzgVWin
          (fun output =>
            CachePreservingKzgWWin output ∨
              (CachePreservingGipaRootWin extractor output ∨
                CachePreservingGipaProductWin extractor output))
      have hw :=
        probEvent_or_le mapped CachePreservingKzgWWin
          (fun output =>
            CachePreservingGipaRootWin extractor output ∨
              CachePreservingGipaProductWin extractor output)
      have hgipa :=
        probEvent_or_le mapped
          (CachePreservingGipaRootWin extractor)
          (CachePreservingGipaProductWin extractor)
      calc
        _ ≤ Pr[CachePreservingKzgVWin | mapped] +
              Pr[fun output =>
                CachePreservingKzgWWin output ∨
                  (CachePreservingGipaRootWin extractor output ∨
                    CachePreservingGipaProductWin extractor output) |
                mapped] := hv
        _ ≤ Pr[CachePreservingKzgVWin | mapped] +
              (Pr[CachePreservingKzgWWin | mapped] +
                Pr[fun output =>
                  CachePreservingGipaRootWin extractor output ∨
                    CachePreservingGipaProductWin extractor output |
                  mapped]) :=
          add_le_add le_rfl hw
        _ ≤ Pr[CachePreservingKzgVWin | mapped] +
              (Pr[CachePreservingKzgWWin | mapped] +
                (Pr[CachePreservingGipaRootWin extractor | mapped] +
                  Pr[CachePreservingGipaProductWin extractor | mapped])) :=
          add_le_add le_rfl (add_le_add le_rfl hgipa)
        _ = _ := by
          ac_rfl

/-- The four cache-preserving cryptographic events are bounded by four
separate adaptive BLS12-377 advantages.  Statement selection remains inside
each target adversary, all programs retain the shared oracle, and every
reduction overhead is visible in its own query index. -/
theorem cachePreservingCryptoExtraction_le_adaptiveBls12377Security
    {CallId : Type} {μ sourceBudget : Nat}
    (mapped :
      OracleComp (FsWrappedSpec Fr)
        (Option (CachePreservingCommonFork CallId μ)))
    (sourceExtractor : AdaptiveGipaExtractor μ)
    (setup : AdaptiveBls12377SetupSampler μ)
    (complexity : AdaptiveBls12377PolynomialTimeModel μ)
    (security :
      AdaptiveBls12377StandaloneSecurity setup complexity)
    (reduction :
      CachePreservingAdaptiveBls12377Reduction
        mapped sourceExtractor setup complexity security)
    (hbound : IsTotalQueryBound mapped sourceBudget) :
    Pr[CachePreservingCryptoExtractionWin sourceExtractor | mapped] ≤
      reduction.total (sourceBudget := sourceBudget) := by
  have hv :
      Pr[CachePreservingKzgVWin | mapped] ≤
        security.epsilonKzgV
          (sourceBudget +
            reduction.kzgVBridge.distribution.queryOverhead) := by
    exact cachePreservingKzgVAdaptiveBridge_le_security
      mapped setup complexity security reduction.kzgVAdversary
      reduction.kzgVAdversary_polyTime
      reduction.kzgVBridge hbound
  have hw :
      Pr[CachePreservingKzgWWin | mapped] ≤
        security.epsilonKzgW
          (sourceBudget +
            reduction.kzgWBridge.distribution.queryOverhead) := by
    exact cachePreservingKzgWAdaptiveBridge_le_security
      mapped setup complexity security reduction.kzgWAdversary
      reduction.kzgWAdversary_polyTime
      reduction.kzgWBridge hbound
  have hroot :
      Pr[CachePreservingGipaRootWin sourceExtractor | mapped] ≤
        security.epsilonGipaRoot
          (sourceBudget +
            reduction.gipaRootBridge.distribution.queryOverhead) := by
    exact cachePreservingGipaRootAdaptiveBridge_le_security
      mapped sourceExtractor setup complexity security
      reduction.gipaAdversary
      reduction.gipaAdversary_polyTime
      reduction.gipaRootBridge hbound
  have hproduct :
      Pr[CachePreservingGipaProductWin sourceExtractor | mapped] ≤
        security.epsilonGipaProduct
          (sourceBudget +
            reduction.gipaProductBridge.distribution.queryOverhead) := by
    exact cachePreservingGipaProductAdaptiveBridge_le_security
      mapped sourceExtractor setup complexity security
      reduction.gipaAdversary
      reduction.gipaAdversary_polyTime
      reduction.gipaProductBridge hbound
  calc
    _ ≤ Pr[CachePreservingKzgVWin | mapped] +
          Pr[CachePreservingKzgWWin | mapped] +
          Pr[CachePreservingGipaRootWin sourceExtractor | mapped] +
          Pr[CachePreservingGipaProductWin sourceExtractor | mapped] :=
      cachePreservingCryptoExtraction_probability_le_components
        mapped sourceExtractor
    _ ≤
        security.epsilonKzgV
            (sourceBudget +
              reduction.kzgVBridge.distribution.queryOverhead) +
          security.epsilonKzgW
            (sourceBudget +
              reduction.kzgWBridge.distribution.queryOverhead) +
          security.epsilonGipaRoot
            (sourceBudget +
              reduction.gipaRootBridge.distribution.queryOverhead) +
          security.epsilonGipaProduct
            (sourceBudget +
              reduction.gipaProductBridge.distribution.queryOverhead) := by
      exact
        add_le_add
          (add_le_add
            (add_le_add hv hw)
            hroot)
          hproduct
    _ = reduction.total (sourceBudget := sourceBudget) := by
      rfl

/-- End-to-end per-size reduction from adjusted adaptive invalid acceptance
to the four adaptive BLS12-377 games.

`baseQueryBudget` bounds the original whole-program execution and therefore
indexes only the pre-fork randomizer error.  `extractionQueryBudget` separately
bounds the complete cache-preserving replay-fork experiment and indexes the
four computational target advantages. -/
theorem
    invalidAccepted_randomizerAdjustedForkTransform_le_adaptiveBls12377Security
    {CallId : Type}
    (game : OracleComp GlobalFsSourceSpec (PackedOutcome CallId))
    (invalid : (ν : Nat) → SelectionAt CallId ν → Prop)
    (queryBounds : (FsWrappedSpec Fr).Domain → Nat)
    (materialization : OutputDerivedStatementMaterialization)
    (μ baseQueryBudget extractionQueryBudget : Nat)
    (origin : ProductionReplayOriginAt game μ)
    (queryOrigin : GlobalAcceptedRandomizerQueryOriginAt game μ)
    (sourceExtractor : AdaptiveGipaExtractor μ)
    (hbaseBound : IsTotalQueryBound game baseQueryBudget)
    (schedule :
      RandomizerGoodForkScheduleContract
        game invalid queryBounds μ sourceExtractor)
    (hdetermines : ProductionKeyDeterminesStatementAt game μ)
    (semantics : GlobalAcceptedVerifierSemantics game)
    (invalidity : InvalidSelectionExcludesRepresentation invalid)
    (setup : AdaptiveBls12377SetupSampler μ)
    (complexity : AdaptiveBls12377PolynomialTimeModel μ)
    (security :
      AdaptiveBls12377StandaloneSecurity setup complexity)
    (reduction :
      CachePreservingAdaptiveBls12377Reduction
        (randomizerGoodCachePreservingS1ExperimentAt
          game invalid queryBounds μ sourceExtractor)
        sourceExtractor setup complexity security)
    (hextractionBound :
      IsTotalQueryBound
        (randomizerGoodCachePreservingS1ExperimentAt
          game invalid queryBounds μ sourceExtractor)
        extractionQueryBudget) :
    ((Ipp.forkTreeStep
        (queryBounds (Sum.inr ()) + 1) scalarModulus)^[μ])
        (Pr[InvalidAcceptedAt invalid μ |
            multiStatementFsProbComp game] -
          adaptiveRandomizerRootError baseQueryBudget μ) ≤
      reduction.total (sourceBudget := extractionQueryBudget) := by
  let mapped :=
    randomizerGoodCachePreservingS1ExperimentAt
      game invalid queryBounds μ sourceExtractor
  calc
    _ ≤ Pr[CachePreservingCryptoExtractionWin sourceExtractor |
          mapped] :=
      invalidAccepted_randomizerAdjustedForkTransform_le_cryptoExtraction
        game invalid queryBounds materialization μ baseQueryBudget
        origin queryOrigin sourceExtractor hbaseBound schedule
        hdetermines semantics invalidity
    _ ≤ reduction.total (sourceBudget := extractionQueryBudget) := by
      exact
        cachePreservingCryptoExtraction_le_adaptiveBls12377Security
          mapped sourceExtractor setup complexity security
          reduction hextractionBound

end

end Ipp.ShippingMultiStatement
