import Ipp.S1Bls12377ReductionInterfaces

/-!
Standalone BLS12-377 target experiments for the KZG and GIPA losses.

These experiments sample public parameters before running an arbitrary target
adversary.  They never invoke `s1ForkExperiment`.  A separate all-events
distribution bridge states exactly what a reduction from the current mapped
S1 projections must prove.  Oracle-query bounds are internal to the model;
local polynomial running time, deployed setup sampling, and numerical
advantages remain explicit external obligations.
-/

open OracleSpec OracleComp ENNReal Function
open scoped OracleSpec.PrimitiveQuery ENNReal BigOperators

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

variable
  [IsUniformSpec (FsWrappedSpec Fr)]
  [∀ j, SampleableType ((FsWrappedSpec Fr).Range j)]
  [unifSpec ⊂ₒ FsWrappedSpec Fr]
  [unifSpec ˡ⊂ₒ FsWrappedSpec Fr]

/-! ## Distribution-preserving bridge -/

/-- A fixed-parameter mapped program and a parameter-sampling standalone
experiment have the same output distribution.  The event equality is stronger
than equality of one security event and therefore does not assume the desired
soundness conclusion. -/
structure FixedParameterOutputBridge
    {Parameters Output : Type}
    (fixed : Parameters)
    (mapped : OracleComp (FsWrappedSpec Fr) Output)
    (standalone :
      OracleComp (FsWrappedSpec Fr) (Parameters × Output)) : Prop where
  parameter_exact :
    ∀ result, result ∈ support standalone → result.1 = fixed
  output_event_eq :
    ∀ event : Output → Prop,
      Pr[event | mapped] =
        Pr[fun result => event result.2 | standalone]

/-- An all-events output bridge also transports events that inspect the fixed
public parameters. -/
theorem FixedParameterOutputBridge.parameterized_event_eq
    {Parameters Output : Type}
    {fixed : Parameters}
    {mapped : OracleComp (FsWrappedSpec Fr) Output}
    {standalone :
      OracleComp (FsWrappedSpec Fr) (Parameters × Output)}
    (bridge :
      FixedParameterOutputBridge fixed mapped standalone)
    (event : Parameters → Output → Prop) :
    Pr[event fixed | mapped] =
      Pr[fun result => event result.1 result.2 | standalone] := by
  calc
    _ = Pr[fun result => event fixed result.2 | standalone] :=
      bridge.output_event_eq (event fixed)
    _ = _ := by
      apply probEvent_ext
      intro result hsupport
      rw [bridge.parameter_exact result hsupport]

/-! ## Standalone KZG false-opening games -/

/-- Public KZG parameters sampled before either lane adversary runs. -/
structure Bls12377KzgParameters (μ : Nat) where
  pairingBilinear : PublishedPairingBilinear
  g : g1PrimeSubgroup
  gBeta : g1PrimeSubgroup
  h : g2PrimeSubgroup
  hAlpha : g2PrimeSubgroup
  srsV : Fin (2 ^ μ) → g2PrimeSubgroup
  srsW : Fin (2 ^ μ) → g1PrimeSubgroup

def bls12377KzgEvaluation {μ : Nat}
    (z : Fr) (coeffs : Fin (2 ^ μ) → Fr) : Fr :=
  ∑ i : Fin (2 ^ μ), coeffs i * (z ^ 2) ^ (i : Nat)

/-- Concrete extracted G2 KZG verifier equation over the executable
BLS12-377 subgroup pairing. -/
def Bls12377KzgVConcreteAccept {μ : Nat}
    (parameters : Bls12377KzgParameters μ)
    (forgery : Bls12377KzgVForgery μ) : Prop :=
  executablePairingLinear parameters.pairingBilinear
        parameters.g
        (forgery.claimedKey -
          bls12377KzgEvaluation forgery.z forgery.coeffs •
            parameters.h) -
      executablePairingLinear parameters.pairingBilinear
        (parameters.gBeta - forgery.z • parameters.g)
        forgery.opening = 0

/-- Concrete extracted G1 KZG verifier equation. -/
def Bls12377KzgWConcreteAccept {μ : Nat}
    (parameters : Bls12377KzgParameters μ)
    (forgery : Bls12377KzgWForgery μ) : Prop :=
  executablePairingLinear parameters.pairingBilinear
        (forgery.claimedKey -
          bls12377KzgEvaluation forgery.z forgery.coeffs •
            parameters.g)
        parameters.h -
      executablePairingLinear parameters.pairingBilinear
        forgery.opening
        (parameters.hAlpha - forgery.z • parameters.h) = 0

def Bls12377KzgVTargetWin {μ : Nat}
    (parameters : Bls12377KzgParameters μ) :
    Option (Bls12377KzgVForgery μ) → Prop
  | none => False
  | some forgery =>
      Bls12377KzgVConcreteAccept parameters forgery ∧
        forgery.claimedKey ≠
          msm forgery.coeffs parameters.srsV

def Bls12377KzgWTargetWin {μ : Nat}
    (parameters : Bls12377KzgParameters μ) :
    Option (Bls12377KzgWForgery μ) → Prop
  | none => False
  | some forgery =>
      Bls12377KzgWConcreteAccept parameters forgery ∧
        forgery.claimedKey ≠
          msm forgery.coeffs parameters.srsW

/-- Exact boundary needed to identify an abstract S1 statement's two KZG
relations with one sampled concrete BLS12-377 parameter set. -/
structure Bls12377KzgStatementBinding {μ : Nat}
    (stmt : Bls12377ReductionStatement μ)
    (parameters : Bls12377KzgParameters μ) : Prop where
  srsV_exact : stmt.srsV = parameters.srsV
  srsW_exact : stmt.srsW = parameters.srsW
  acceptV_exact :
    ∀ forgery,
      stmt.acceptV forgery.z forgery.coeffs
          forgery.claimedKey forgery.opening ↔
        Bls12377KzgVConcreteAccept parameters forgery
  acceptW_exact :
    ∀ forgery,
      stmt.acceptW forgery.z forgery.coeffs
          forgery.claimedKey forgery.opening ↔
        Bls12377KzgWConcreteAccept parameters forgery

theorem bls12377KzgVTargetWin_ofStatement {μ : Nat}
    (stmt : Bls12377ReductionStatement μ)
    (parameters : Bls12377KzgParameters μ)
    (binding : Bls12377KzgStatementBinding stmt parameters)
    (output : Option (Bls12377KzgVForgery μ)) :
    Bls12377KzgVForgeryGameWin stmt output ↔
      Bls12377KzgVTargetWin parameters output := by
  cases output with
  | none => rfl
  | some forgery =>
      change
        (stmt.acceptV forgery.z forgery.coeffs
              forgery.claimedKey forgery.opening ∧
            forgery.claimedKey ≠
              msm forgery.coeffs stmt.srsV) ↔
          (Bls12377KzgVConcreteAccept parameters forgery ∧
            forgery.claimedKey ≠
              msm forgery.coeffs parameters.srsV)
      rw [binding.acceptV_exact forgery, binding.srsV_exact]

theorem bls12377KzgWTargetWin_ofStatement {μ : Nat}
    (stmt : Bls12377ReductionStatement μ)
    (parameters : Bls12377KzgParameters μ)
    (binding : Bls12377KzgStatementBinding stmt parameters)
    (output : Option (Bls12377KzgWForgery μ)) :
    Bls12377KzgWForgeryGameWin stmt output ↔
      Bls12377KzgWTargetWin parameters output := by
  cases output with
  | none => rfl
  | some forgery =>
      change
        (stmt.acceptW forgery.z forgery.coeffs
              forgery.claimedKey forgery.opening ∧
            forgery.claimedKey ≠
              msm forgery.coeffs stmt.srsW) ↔
          (Bls12377KzgWConcreteAccept parameters forgery ∧
            forgery.claimedKey ≠
              msm forgery.coeffs parameters.srsW)
      rw [binding.acceptW_exact forgery, binding.srsW_exact]

abbrev Bls12377KzgSetupSampler (μ : Nat) :=
  OracleComp (FsWrappedSpec Fr) (Bls12377KzgParameters μ)

abbrev Bls12377KzgVTargetAdversary (μ : Nat) :=
  Bls12377KzgParameters μ →
    OracleComp (FsWrappedSpec Fr)
      (Option (Bls12377KzgVForgery μ))

abbrev Bls12377KzgWTargetAdversary (μ : Nat) :=
  Bls12377KzgParameters μ →
    OracleComp (FsWrappedSpec Fr)
      (Option (Bls12377KzgWForgery μ))

/-- Sample KZG parameters, expose them to the V adversary, and retain them for
the challenger. -/
def bls12377KzgVStandaloneGame {μ : Nat}
    (setup : Bls12377KzgSetupSampler μ)
    (adversary : Bls12377KzgVTargetAdversary μ) :
    OracleComp (FsWrappedSpec Fr)
      (Bls12377KzgParameters μ ×
        Option (Bls12377KzgVForgery μ)) :=
  setup >>= fun parameters =>
    (fun output => (parameters, output)) <$> adversary parameters

/-- Sample KZG parameters and run the W adversary. -/
def bls12377KzgWStandaloneGame {μ : Nat}
    (setup : Bls12377KzgSetupSampler μ)
    (adversary : Bls12377KzgWTargetAdversary μ) :
    OracleComp (FsWrappedSpec Fr)
      (Bls12377KzgParameters μ ×
        Option (Bls12377KzgWForgery μ)) :=
  setup >>= fun parameters =>
    (fun output => (parameters, output)) <$> adversary parameters

def Bls12377KzgVStandaloneGameWin {μ : Nat} :
    Bls12377KzgParameters μ ×
      Option (Bls12377KzgVForgery μ) → Prop :=
  fun result => Bls12377KzgVTargetWin result.1 result.2

def Bls12377KzgWStandaloneGameWin {μ : Nat} :
    Bls12377KzgParameters μ ×
      Option (Bls12377KzgWForgery μ) → Prop :=
  fun result => Bls12377KzgWTargetWin result.1 result.2

/-- The standalone V game pays exactly the setup and target-adversary oracle
budgets. -/
theorem bls12377KzgVStandaloneGame_isTotalQueryBound {μ : Nat}
    (setup : Bls12377KzgSetupSampler μ)
    (adversary : Bls12377KzgVTargetAdversary μ)
    (setupBudget adversaryBudget : Nat)
    (hsetup : IsTotalQueryBound setup setupBudget)
    (hadversary :
      ∀ parameters,
        IsTotalQueryBound (adversary parameters) adversaryBudget) :
    IsTotalQueryBound
      (bls12377KzgVStandaloneGame setup adversary)
      (setupBudget + adversaryBudget) := by
  unfold bls12377KzgVStandaloneGame
  apply isTotalQueryBound_bind hsetup
  intro parameters
  exact (isQueryBound_map_iff
    (adversary parameters)
    (fun output => (parameters, output))
    adversaryBudget
    (fun _ b => 0 < b) (fun _ b => b - 1)).2
      (hadversary parameters)

/-- The standalone W game has the analogous exact query bound. -/
theorem bls12377KzgWStandaloneGame_isTotalQueryBound {μ : Nat}
    (setup : Bls12377KzgSetupSampler μ)
    (adversary : Bls12377KzgWTargetAdversary μ)
    (setupBudget adversaryBudget : Nat)
    (hsetup : IsTotalQueryBound setup setupBudget)
    (hadversary :
      ∀ parameters,
        IsTotalQueryBound (adversary parameters) adversaryBudget) :
    IsTotalQueryBound
      (bls12377KzgWStandaloneGame setup adversary)
      (setupBudget + adversaryBudget) := by
  unfold bls12377KzgWStandaloneGame
  apply isTotalQueryBound_bind hsetup
  intro parameters
  exact (isQueryBound_map_iff
    (adversary parameters)
    (fun output => (parameters, output))
    adversaryBudget
    (fun _ b => 0 < b) (fun _ b => b - 1)).2
      (hadversary parameters)

/-- Query-indexed security of the standalone setup-sampling KZG games.
Polynomial local running time is an additional premise outside `OracleComp`. -/
structure Bls12377KzgStandaloneSecurity {μ : Nat}
    (setup : Bls12377KzgSetupSampler μ) where
  epsilonV : Nat → Nat → ℝ≥0∞
  epsilonW : Nat → Nat → ℝ≥0∞
  v_gameWin_le :
    ∀ (adversary : Bls12377KzgVTargetAdversary μ)
      (setupBudget adversaryBudget : Nat),
      IsTotalQueryBound setup setupBudget →
      (∀ parameters,
        IsTotalQueryBound
          (adversary parameters) adversaryBudget) →
      Pr[Bls12377KzgVStandaloneGameWin |
        bls12377KzgVStandaloneGame setup adversary] ≤
          epsilonV setupBudget adversaryBudget
  w_gameWin_le :
    ∀ (adversary : Bls12377KzgWTargetAdversary μ)
      (setupBudget adversaryBudget : Nat),
      IsTotalQueryBound setup setupBudget →
      (∀ parameters,
        IsTotalQueryBound
          (adversary parameters) adversaryBudget) →
      Pr[Bls12377KzgWStandaloneGameWin |
        bls12377KzgWStandaloneGame setup adversary] ≤
          epsilonW setupBudget adversaryBudget

abbrev Bls12377KzgVProjectionBridge {μ : Nat}
    (parameters : Bls12377KzgParameters μ)
    (mapped :
      OracleComp (FsWrappedSpec Fr)
        (Option (Bls12377KzgVForgery μ)))
    (setup : Bls12377KzgSetupSampler μ)
    (adversary : Bls12377KzgVTargetAdversary μ) :=
  FixedParameterOutputBridge
    parameters
    mapped (bls12377KzgVStandaloneGame setup adversary)

abbrev Bls12377KzgWProjectionBridge {μ : Nat}
    (parameters : Bls12377KzgParameters μ)
    (mapped :
      OracleComp (FsWrappedSpec Fr)
        (Option (Bls12377KzgWForgery μ)))
    (setup : Bls12377KzgSetupSampler μ)
    (adversary : Bls12377KzgWTargetAdversary μ) :=
  FixedParameterOutputBridge
    parameters
    mapped (bls12377KzgWStandaloneGame setup adversary)

/-- An all-events bridge transfers the mapped V win probability to the
standalone setup-sampling game. -/
theorem bls12377KzgVProjectionBridge_gameWin_eq {μ : Nat}
    (stmt : Bls12377ReductionStatement μ)
    (parameters : Bls12377KzgParameters μ)
    (binding : Bls12377KzgStatementBinding stmt parameters)
    (mapped :
      OracleComp (FsWrappedSpec Fr)
        (Option (Bls12377KzgVForgery μ)))
    (setup : Bls12377KzgSetupSampler μ)
    (adversary : Bls12377KzgVTargetAdversary μ)
    (bridge :
      Bls12377KzgVProjectionBridge
        parameters mapped setup adversary) :
    Pr[Bls12377KzgVForgeryGameWin stmt | mapped] =
      Pr[Bls12377KzgVStandaloneGameWin |
        bls12377KzgVStandaloneGame setup adversary] := by
  calc
    _ = Pr[Bls12377KzgVTargetWin parameters | mapped] := by
      apply probEvent_ext
      intro output _
      exact bls12377KzgVTargetWin_ofStatement
        stmt parameters binding output
    _ = _ := by
      simpa [Bls12377KzgVStandaloneGameWin] using
        bridge.parameterized_event_eq Bls12377KzgVTargetWin

/-- The analogous W distribution bridge. -/
theorem bls12377KzgWProjectionBridge_gameWin_eq {μ : Nat}
    (stmt : Bls12377ReductionStatement μ)
    (parameters : Bls12377KzgParameters μ)
    (binding : Bls12377KzgStatementBinding stmt parameters)
    (mapped :
      OracleComp (FsWrappedSpec Fr)
        (Option (Bls12377KzgWForgery μ)))
    (setup : Bls12377KzgSetupSampler μ)
    (adversary : Bls12377KzgWTargetAdversary μ)
    (bridge :
      Bls12377KzgWProjectionBridge
        parameters mapped setup adversary) :
    Pr[Bls12377KzgWForgeryGameWin stmt | mapped] =
      Pr[Bls12377KzgWStandaloneGameWin |
        bls12377KzgWStandaloneGame setup adversary] := by
  calc
    _ = Pr[Bls12377KzgWTargetWin parameters | mapped] := by
      apply probEvent_ext
      intro output _
      exact bls12377KzgWTargetWin_ofStatement
        stmt parameters binding output
    _ = _ := by
      simpa [Bls12377KzgWStandaloneGameWin] using
        bridge.parameterized_event_eq Bls12377KzgWTargetWin

theorem bls12377KzgVProjectionBridge_le_security {μ : Nat}
    (stmt : Bls12377ReductionStatement μ)
    (parameters : Bls12377KzgParameters μ)
    (binding : Bls12377KzgStatementBinding stmt parameters)
    (mapped :
      OracleComp (FsWrappedSpec Fr)
        (Option (Bls12377KzgVForgery μ)))
    (setup : Bls12377KzgSetupSampler μ)
    (adversary : Bls12377KzgVTargetAdversary μ)
    (bridge :
      Bls12377KzgVProjectionBridge
        parameters mapped setup adversary)
    (security : Bls12377KzgStandaloneSecurity setup)
    (setupBudget adversaryBudget : Nat)
    (hsetup : IsTotalQueryBound setup setupBudget)
    (hadversary :
      ∀ parameters,
        IsTotalQueryBound (adversary parameters) adversaryBudget) :
    Pr[Bls12377KzgVForgeryGameWin stmt | mapped] ≤
      security.epsilonV setupBudget adversaryBudget := by
  rw [bls12377KzgVProjectionBridge_gameWin_eq
    stmt parameters binding mapped setup adversary bridge]
  exact security.v_gameWin_le
    adversary setupBudget adversaryBudget hsetup hadversary

theorem bls12377KzgWProjectionBridge_le_security {μ : Nat}
    (stmt : Bls12377ReductionStatement μ)
    (parameters : Bls12377KzgParameters μ)
    (binding : Bls12377KzgStatementBinding stmt parameters)
    (mapped :
      OracleComp (FsWrappedSpec Fr)
        (Option (Bls12377KzgWForgery μ)))
    (setup : Bls12377KzgSetupSampler μ)
    (adversary : Bls12377KzgWTargetAdversary μ)
    (bridge :
      Bls12377KzgWProjectionBridge
        parameters mapped setup adversary)
    (security : Bls12377KzgStandaloneSecurity setup)
    (setupBudget adversaryBudget : Nat)
    (hsetup : IsTotalQueryBound setup setupBudget)
    (hadversary :
      ∀ parameters,
        IsTotalQueryBound (adversary parameters) adversaryBudget) :
    Pr[Bls12377KzgWForgeryGameWin stmt | mapped] ≤
      security.epsilonW setupBudget adversaryBudget := by
  rw [bls12377KzgWProjectionBridge_gameWin_eq
    stmt parameters binding mapped setup adversary bridge]
  exact security.w_gameWin_le
    adversary setupBudget adversaryBudget hsetup hadversary

/-! ## Standalone GIPA knowledge games -/

abbrev Bls12377GipaForkTree (μ : Nat) :=
  S1ForkGameTree
    Fr g1PrimeSubgroup g2PrimeSubgroup ArkPairingOutput μ μ

/-- Public GIPA parameters and the standalone accepted-fork relation sampled
before the target adversary runs.  Instantiation must identify `acceptsFork`
with the deployed GIPA verifier, independently of S1 bad-event predicates. -/
structure Bls12377GipaParameters (μ : Nat) where
  statement : Bls12377ReductionStatement μ
  pairingBilinear : PublishedPairingBilinear
  pairing_exact :
    statement.e = executablePairingLinear pairingBilinear
  acceptsFork : Bls12377GipaForkTree μ → Prop

abbrev Bls12377GipaSetupSampler (μ : Nat) :=
  OracleComp (FsWrappedSpec Fr) (Bls12377GipaParameters μ)

abbrev Bls12377GipaTargetAdversary (μ : Nat) :=
  Bls12377GipaParameters μ →
    OracleComp (FsWrappedSpec Fr)
      (Option (Bls12377GipaForkTree μ))

/-- A standalone extractor may inspect sampled public parameters and exactly
the commitment payload fixed before the randomizer query. -/
structure Bls12377GipaStandaloneExtractor (μ : Nat) where
  extract :
    Bls12377GipaParameters μ →
      RandomizerPayload ArkPairingOutput →
        S1RootWitness g1PrimeSubgroup g2PrimeSubgroup μ

def bls12377GipaStandaloneChallengeOfOutput {μ : Nat}
    (parameters : Bls12377GipaParameters μ)
    (extractor : Bls12377GipaStandaloneExtractor μ) :
    Option (Bls12377GipaForkTree μ) →
      Option (Bls12377GipaKnowledgeChallenge μ)
  | none => none
  | some tree =>
      let proof := tree.root.1.proof
      some
        { tree := tree
          witness := extractor.extract parameters
            (proofRandomizerPayload proof) }

/-- Sample GIPA parameters, run an arbitrary target adversary, and materialize
the extractor's pre-randomizer witness. -/
def bls12377GipaStandaloneGame {μ : Nat}
    (setup : Bls12377GipaSetupSampler μ)
    (adversary : Bls12377GipaTargetAdversary μ)
    (extractor : Bls12377GipaStandaloneExtractor μ) :
    OracleComp (FsWrappedSpec Fr)
      (Bls12377GipaParameters μ ×
        Option (Bls12377GipaKnowledgeChallenge μ)) :=
  setup >>= fun parameters =>
    (fun output =>
      (parameters,
        bls12377GipaStandaloneChallengeOfOutput
          parameters extractor output)) <$> adversary parameters

/-- Root-opening knowledge failure in the standalone accepted-fork game. -/
def Bls12377GipaRootStandaloneGameWin {μ : Nat} :
    Bls12377GipaParameters μ ×
      Option (Bls12377GipaKnowledgeChallenge μ) → Prop
  | (_, none) => False
  | (parameters, some challenge) =>
      parameters.acceptsFork challenge.tree ∧
        Bls12377GipaRootOpeningGameWin
          parameters.statement (some challenge)

/-- Product-lane knowledge failure in the standalone accepted-fork game. -/
def Bls12377GipaProductStandaloneGameWin {μ : Nat} :
    Bls12377GipaParameters μ ×
      Option (Bls12377GipaKnowledgeChallenge μ) → Prop
  | (_, none) => False
  | (parameters, some challenge) =>
      parameters.acceptsFork challenge.tree ∧
        Bls12377GipaProductLaneGameWin
          parameters.statement (some challenge)

theorem bls12377GipaStandaloneGame_isTotalQueryBound {μ : Nat}
    (setup : Bls12377GipaSetupSampler μ)
    (adversary : Bls12377GipaTargetAdversary μ)
    (extractor : Bls12377GipaStandaloneExtractor μ)
    (setupBudget adversaryBudget : Nat)
    (hsetup : IsTotalQueryBound setup setupBudget)
    (hadversary :
      ∀ parameters,
        IsTotalQueryBound (adversary parameters) adversaryBudget) :
    IsTotalQueryBound
      (bls12377GipaStandaloneGame setup adversary extractor)
      (setupBudget + adversaryBudget) := by
  unfold bls12377GipaStandaloneGame
  apply isTotalQueryBound_bind hsetup
  intro parameters
  exact (isQueryBound_map_iff
    (adversary parameters)
    (fun output =>
      (parameters,
        bls12377GipaStandaloneChallengeOfOutput
          parameters extractor output))
    adversaryBudget
    (fun _ b => 0 < b) (fun _ b => b - 1)).2
      (hadversary parameters)

/-- Query-indexed knowledge bounds with one extractor selected for each target
adversary.  A complete knowledge assumption must additionally prove every
selected extractor's local polynomial running time. -/
structure Bls12377GipaStandaloneSecurity {μ : Nat}
    (setup : Bls12377GipaSetupSampler μ) where
  epsilonRoot : Nat → Nat → ℝ≥0∞
  epsilonProduct : Nat → Nat → ℝ≥0∞
  extractorFor :
    Bls12377GipaTargetAdversary μ →
      Bls12377GipaStandaloneExtractor μ
  root_gameWin_le :
    ∀ (adversary : Bls12377GipaTargetAdversary μ)
      (setupBudget adversaryBudget : Nat),
      IsTotalQueryBound setup setupBudget →
      (∀ parameters,
        IsTotalQueryBound
          (adversary parameters) adversaryBudget) →
      Pr[Bls12377GipaRootStandaloneGameWin |
        bls12377GipaStandaloneGame
          setup adversary (extractorFor adversary)] ≤
            epsilonRoot setupBudget adversaryBudget
  product_gameWin_le :
    ∀ (adversary : Bls12377GipaTargetAdversary μ)
      (setupBudget adversaryBudget : Nat),
      IsTotalQueryBound setup setupBudget →
      (∀ parameters,
        IsTotalQueryBound
          (adversary parameters) adversaryBudget) →
      Pr[Bls12377GipaProductStandaloneGameWin |
        bls12377GipaStandaloneGame
          setup adversary (extractorFor adversary)] ≤
            epsilonProduct setupBudget adversaryBudget

/-- Distribution bridge for one current mapped GIPA projection.  In addition
to all-events output equality, every standalone support point must satisfy the
independent accepted-fork relation. -/
structure Bls12377GipaProjectionBridge {μ : Nat}
    (fixed : Bls12377GipaParameters μ)
    (mapped :
      OracleComp (FsWrappedSpec Fr)
        (Option (Bls12377GipaKnowledgeChallenge μ)))
    (setup : Bls12377GipaSetupSampler μ)
    (adversary : Bls12377GipaTargetAdversary μ)
    (extractor : Bls12377GipaStandaloneExtractor μ) : Prop where
  distribution :
    FixedParameterOutputBridge fixed mapped
      (bls12377GipaStandaloneGame setup adversary extractor)
  accepted_support :
    ∀ result,
      result ∈ support
        (bls12377GipaStandaloneGame setup adversary extractor) →
      match result.2 with
      | none => True
      | some challenge => result.1.acceptsFork challenge.tree

/-- The bridge transports the current root-opening target probability to the
standalone accepted-fork experiment. -/
theorem bls12377GipaProjectionBridge_root_gameWin_eq {μ : Nat}
    (fixed : Bls12377GipaParameters μ)
    (mapped :
      OracleComp (FsWrappedSpec Fr)
        (Option (Bls12377GipaKnowledgeChallenge μ)))
    (setup : Bls12377GipaSetupSampler μ)
    (adversary : Bls12377GipaTargetAdversary μ)
    (extractor : Bls12377GipaStandaloneExtractor μ)
    (bridge :
      Bls12377GipaProjectionBridge
        fixed mapped setup adversary extractor) :
    Pr[Bls12377GipaRootOpeningGameWin fixed.statement | mapped] =
      Pr[Bls12377GipaRootStandaloneGameWin |
        bls12377GipaStandaloneGame
          setup adversary extractor] := by
  calc
    _ = Pr[fun result =>
          Bls12377GipaRootOpeningGameWin
            result.1.statement result.2 |
        bls12377GipaStandaloneGame
          setup adversary extractor] :=
      bridge.distribution.parameterized_event_eq
        (fun parameters output =>
          Bls12377GipaRootOpeningGameWin
            parameters.statement output)
    _ = _ := by
      apply probEvent_ext
      intro result hsupport
      rcases result with ⟨parameters, output⟩
      cases output with
      | none => rfl
      | some challenge =>
          have haccepted :
              parameters.acceptsFork challenge.tree := by
            simpa using bridge.accepted_support
              (parameters, some challenge) hsupport
          change
            Bls12377GipaRootOpeningGameWin
                parameters.statement (some challenge) ↔
              parameters.acceptsFork challenge.tree ∧
                Bls12377GipaRootOpeningGameWin
                  parameters.statement (some challenge)
          exact ⟨fun h => ⟨haccepted, h⟩, fun h => h.2⟩

/-- The same bridge transports the product-lane target probability. -/
theorem bls12377GipaProjectionBridge_product_gameWin_eq {μ : Nat}
    (fixed : Bls12377GipaParameters μ)
    (mapped :
      OracleComp (FsWrappedSpec Fr)
        (Option (Bls12377GipaKnowledgeChallenge μ)))
    (setup : Bls12377GipaSetupSampler μ)
    (adversary : Bls12377GipaTargetAdversary μ)
    (extractor : Bls12377GipaStandaloneExtractor μ)
    (bridge :
      Bls12377GipaProjectionBridge
        fixed mapped setup adversary extractor) :
    Pr[Bls12377GipaProductLaneGameWin fixed.statement | mapped] =
      Pr[Bls12377GipaProductStandaloneGameWin |
        bls12377GipaStandaloneGame
          setup adversary extractor] := by
  calc
    _ = Pr[fun result =>
          Bls12377GipaProductLaneGameWin
            result.1.statement result.2 |
        bls12377GipaStandaloneGame
          setup adversary extractor] :=
      bridge.distribution.parameterized_event_eq
        (fun parameters output =>
          Bls12377GipaProductLaneGameWin
            parameters.statement output)
    _ = _ := by
      apply probEvent_ext
      intro result hsupport
      rcases result with ⟨parameters, output⟩
      cases output with
      | none => rfl
      | some challenge =>
          have haccepted :
              parameters.acceptsFork challenge.tree := by
            simpa using bridge.accepted_support
              (parameters, some challenge) hsupport
          change
            Bls12377GipaProductLaneGameWin
                parameters.statement (some challenge) ↔
              parameters.acceptsFork challenge.tree ∧
                Bls12377GipaProductLaneGameWin
                  parameters.statement (some challenge)
          exact ⟨fun h => ⟨haccepted, h⟩, fun h => h.2⟩

theorem bls12377GipaProjectionBridge_root_le_security {μ : Nat}
    (fixed : Bls12377GipaParameters μ)
    (mapped :
      OracleComp (FsWrappedSpec Fr)
        (Option (Bls12377GipaKnowledgeChallenge μ)))
    (setup : Bls12377GipaSetupSampler μ)
    (adversary : Bls12377GipaTargetAdversary μ)
    (security :
      Bls12377GipaStandaloneSecurity setup)
    (bridge :
      Bls12377GipaProjectionBridge
        fixed mapped setup adversary
          (security.extractorFor adversary))
    (setupBudget adversaryBudget : Nat)
    (hsetup : IsTotalQueryBound setup setupBudget)
    (hadversary :
      ∀ parameters,
        IsTotalQueryBound (adversary parameters) adversaryBudget) :
    Pr[Bls12377GipaRootOpeningGameWin fixed.statement | mapped] ≤
      security.epsilonRoot setupBudget adversaryBudget := by
  rw [bls12377GipaProjectionBridge_root_gameWin_eq
    fixed mapped setup adversary
      (security.extractorFor adversary) bridge]
  exact security.root_gameWin_le
    adversary setupBudget adversaryBudget hsetup hadversary

theorem bls12377GipaProjectionBridge_product_le_security {μ : Nat}
    (fixed : Bls12377GipaParameters μ)
    (mapped :
      OracleComp (FsWrappedSpec Fr)
        (Option (Bls12377GipaKnowledgeChallenge μ)))
    (setup : Bls12377GipaSetupSampler μ)
    (adversary : Bls12377GipaTargetAdversary μ)
    (security :
      Bls12377GipaStandaloneSecurity setup)
    (bridge :
      Bls12377GipaProjectionBridge
        fixed mapped setup adversary
          (security.extractorFor adversary))
    (setupBudget adversaryBudget : Nat)
    (hsetup : IsTotalQueryBound setup setupBudget)
    (hadversary :
      ∀ parameters,
        IsTotalQueryBound (adversary parameters) adversaryBudget) :
    Pr[Bls12377GipaProductLaneGameWin fixed.statement | mapped] ≤
      security.epsilonProduct setupBudget adversaryBudget := by
  rw [bls12377GipaProjectionBridge_product_gameWin_eq
    fixed mapped setup adversary
      (security.extractorFor adversary) bridge]
  exact security.product_gameWin_le
    adversary setupBudget adversaryBudget hsetup hadversary

end

end Ipp.S1
