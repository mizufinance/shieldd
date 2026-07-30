import Ipp.S1Bls12377StandaloneGames

/-!
Exact fixed-setup bridges from the current S1 projections to standalone
BLS12-377 target games.

Shipping verifies against one authenticated SRS identity.  These bridges
therefore expose that exact public parameter set as a zero-query setup
sampler.  The cryptographic premise bounds the resulting explicit KZG target
games for arbitrary parameter-aware adversaries; it does not assume an S1 or
shipping-verifier conclusion.
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

variable
  [IsUniformSpec (FsWrappedSpec Fr)]
  [∀ j, SampleableType ((FsWrappedSpec Fr).Range j)]
  [unifSpec ⊂ₒ FsWrappedSpec Fr]
  [unifSpec ˡ⊂ₒ FsWrappedSpec Fr]

/-! ## Fixed shipping-parameter KZG games -/

/-- Reveal the exact authenticated shipping KZG parameters without making an
oracle query. -/
def bls12377FixedKzgSetup {μ : Nat}
    (parameters : Bls12377KzgParameters μ) :
    Bls12377KzgSetupSampler μ :=
  pure parameters

/-- Run an existing mapped V-target program after receiving the exact fixed
shipping parameters. -/
def bls12377FixedKzgVAdversary {μ : Nat}
    (mapped :
      OracleComp (FsWrappedSpec Fr)
        (Option (Bls12377KzgVForgery μ))) :
    Bls12377KzgVTargetAdversary μ :=
  fun _parameters => mapped

/-- W-lane analogue of `bls12377FixedKzgVAdversary`. -/
def bls12377FixedKzgWAdversary {μ : Nat}
    (mapped :
      OracleComp (FsWrappedSpec Fr)
        (Option (Bls12377KzgWForgery μ))) :
    Bls12377KzgWTargetAdversary μ :=
  fun _parameters => mapped

/-- The fixed-setup V experiment is exactly the mapped output paired with the
authenticated statement parameters. -/
theorem bls12377FixedKzgVStandaloneGame_eq_map {μ : Nat}
    (parameters : Bls12377KzgParameters μ)
    (mapped :
      OracleComp (FsWrappedSpec Fr)
        (Option (Bls12377KzgVForgery μ))) :
    bls12377KzgVStandaloneGame
        (bls12377FixedKzgSetup parameters)
        (bls12377FixedKzgVAdversary mapped) =
      (fun output =>
        (parameters, output)) <$> mapped := by
  simp [bls12377KzgVStandaloneGame, bls12377FixedKzgSetup,
    bls12377FixedKzgVAdversary]

/-- The same exact program identity for the W lane. -/
theorem bls12377FixedKzgWStandaloneGame_eq_map {μ : Nat}
    (parameters : Bls12377KzgParameters μ)
    (mapped :
      OracleComp (FsWrappedSpec Fr)
        (Option (Bls12377KzgWForgery μ))) :
    bls12377KzgWStandaloneGame
        (bls12377FixedKzgSetup parameters)
        (bls12377FixedKzgWAdversary mapped) =
      (fun output =>
        (parameters, output)) <$> mapped := by
  simp [bls12377KzgWStandaloneGame, bls12377FixedKzgSetup,
    bls12377FixedKzgWAdversary]

/-- All-events distribution bridge for the fixed V setup. -/
theorem bls12377FixedKzgVProjectionBridge {μ : Nat}
    (parameters : Bls12377KzgParameters μ)
    (mapped :
      OracleComp (FsWrappedSpec Fr)
        (Option (Bls12377KzgVForgery μ))) :
    Bls12377KzgVProjectionBridge
      parameters mapped (bls12377FixedKzgSetup parameters)
        (bls12377FixedKzgVAdversary mapped) := by
  refine {
    parameter_exact := ?_
    output_event_eq := ?_
  }
  · intro result hsupport
    rw [bls12377FixedKzgVStandaloneGame_eq_map,
      support_map] at hsupport
    obtain ⟨output, _houtput, hresult⟩ := hsupport
    simpa using congrArg Prod.fst hresult.symm
  · intro event
    rw [bls12377FixedKzgVStandaloneGame_eq_map, probEvent_map]
    rfl

/-- All-events distribution bridge for the fixed W setup. -/
theorem bls12377FixedKzgWProjectionBridge {μ : Nat}
    (parameters : Bls12377KzgParameters μ)
    (mapped :
      OracleComp (FsWrappedSpec Fr)
        (Option (Bls12377KzgWForgery μ))) :
    Bls12377KzgWProjectionBridge
      parameters mapped (bls12377FixedKzgSetup parameters)
        (bls12377FixedKzgWAdversary mapped) := by
  refine {
    parameter_exact := ?_
    output_event_eq := ?_
  }
  · intro result hsupport
    rw [bls12377FixedKzgWStandaloneGame_eq_map,
      support_map] at hsupport
    obtain ⟨output, _houtput, hresult⟩ := hsupport
    simpa using congrArg Prod.fst hresult.symm
  · intro event
    rw [bls12377FixedKzgWStandaloneGame_eq_map, probEvent_map]
    rfl

/-- Standalone security bounds an arbitrary mapped V false-opening program.
The setup budget is exactly zero and the mapped query budget is unchanged. -/
theorem bls12377FixedKzgV_mapped_le_security {μ : Nat}
    (stmt : Bls12377ReductionStatement μ)
    (parameters : Bls12377KzgParameters μ)
    (binding : Bls12377KzgStatementBinding stmt parameters)
    (mapped :
      OracleComp (FsWrappedSpec Fr)
        (Option (Bls12377KzgVForgery μ)))
    (security :
      Bls12377KzgStandaloneSecurity
        (bls12377FixedKzgSetup parameters))
    (queryBudget : Nat)
    (hbound : IsTotalQueryBound mapped queryBudget) :
    Pr[Bls12377KzgVForgeryGameWin stmt | mapped] ≤
      security.epsilonV 0 queryBudget := by
  apply bls12377KzgVProjectionBridge_le_security
    stmt parameters binding mapped (bls12377FixedKzgSetup parameters)
      (bls12377FixedKzgVAdversary mapped)
      (bls12377FixedKzgVProjectionBridge parameters mapped)
      security 0 queryBudget
  · trivial
  · intro _parameters
    exact hbound

/-- Standalone security bounds the analogous mapped W program. -/
theorem bls12377FixedKzgW_mapped_le_security {μ : Nat}
    (stmt : Bls12377ReductionStatement μ)
    (parameters : Bls12377KzgParameters μ)
    (binding : Bls12377KzgStatementBinding stmt parameters)
    (mapped :
      OracleComp (FsWrappedSpec Fr)
        (Option (Bls12377KzgWForgery μ)))
    (security :
      Bls12377KzgStandaloneSecurity
        (bls12377FixedKzgSetup parameters))
    (queryBudget : Nat)
    (hbound : IsTotalQueryBound mapped queryBudget) :
    Pr[Bls12377KzgWForgeryGameWin stmt | mapped] ≤
      security.epsilonW 0 queryBudget := by
  apply bls12377KzgWProjectionBridge_le_security
    stmt parameters binding mapped (bls12377FixedKzgSetup parameters)
      (bls12377FixedKzgWAdversary mapped)
      (bls12377FixedKzgWProjectionBridge parameters mapped)
      security 0 queryBudget
  · trivial
  · intro _parameters
    exact hbound

/-- The S1 KZG bad event reduces to the two standalone fixed-parameter
BLS12-377 false-opening advantages. -/
theorem kzg_false_opening_to_standalone_bls12377_games
    {μ : Nat}
    (stmt : Bls12377ReductionStatement μ)
    (adv : Bls12377ReductionAdversary μ)
    (qb : (FsWrappedSpec Fr).Domain → Nat)
    (badZ : Finset Fr)
    (witnessOf : Bls12377ReductionWitness μ)
    (reductionV : Bls12377KzgVForkReduction stmt)
    (reductionW : Bls12377KzgWForkReduction stmt)
    (parameters : Bls12377KzgParameters μ)
    (binding : Bls12377KzgStatementBinding stmt parameters)
    (security :
      Bls12377KzgStandaloneSecurity
        (bls12377FixedKzgSetup parameters))
    (queryBudgetV queryBudgetW : Nat)
    (hboundV :
      IsTotalQueryBound
        (bls12377KzgVForgeryGame
          stmt adv qb badZ witnessOf reductionV) queryBudgetV)
    (hboundW :
      IsTotalQueryBound
        (bls12377KzgWForgeryGame
          stmt adv qb badZ witnessOf reductionW) queryBudgetW) :
    Pr[S1KzgBad stmt |
        s1ForkExperiment stmt adv qb badZ witnessOf] ≤
      security.epsilonV 0 queryBudgetV +
        security.epsilonW 0 queryBudgetW := by
  apply le_trans
    (kzg_false_opening_to_explicit_bls12377_forgery_games
      stmt adv qb badZ witnessOf reductionV reductionW
      {
        epsilon := security.epsilonV 0 queryBudgetV
        queryBudget := queryBudgetV
        queryBound := hboundV
        gameWin_le :=
          bls12377FixedKzgV_mapped_le_security
            stmt parameters binding
            (bls12377KzgVForgeryGame
              stmt adv qb badZ witnessOf reductionV)
            security queryBudgetV hboundV
      }
      {
        epsilon := security.epsilonW 0 queryBudgetW
        queryBudget := queryBudgetW
        queryBound := hboundW
        gameWin_le :=
          bls12377FixedKzgW_mapped_le_security
            stmt parameters binding
            (bls12377KzgWForgeryGame
              stmt adv qb badZ witnessOf reductionW)
            security queryBudgetW hboundW
      })
  rfl

/-! ## Fixed shipping-parameter GIPA games -/

/-- Exact concrete pairing boundary required to turn an abstract S1 statement
into fixed BLS12-377 GIPA parameters.  `FsStatement` does not itself carry this
evidence, so it must not be reconstructed implicitly. -/
structure Bls12377FixedGipaPairing {μ : Nat}
    (stmt : Bls12377ReductionStatement μ) where
  pairingBilinear : PublishedPairingBilinear
  pairing_exact :
    stmt.e = executablePairingLinear pairingBilinear

/-- Fixed statement used by the intermediate GIPA target.

`acceptsFork := True` deliberately gives a stronger target than a deployed
accepted-fork game so the all-events bridge is definitional.  In particular,
`S1ForkGameKzgGood` states only structured terminal keys; it is not full
verifier acceptance.  Closing the deployed target still requires replacing
this conservative relation by the concrete accepted-fork predicate. -/
def bls12377FixedGipaParameters {μ : Nat}
    (stmt : Bls12377ReductionStatement μ)
    (pairing : Bls12377FixedGipaPairing stmt) :
    Bls12377GipaParameters μ where
  statement := stmt
  pairingBilinear := pairing.pairingBilinear
  pairing_exact := pairing.pairing_exact
  acceptsFork := fun _tree => True

def bls12377FixedGipaSetup {μ : Nat}
    (stmt : Bls12377ReductionStatement μ)
    (pairing : Bls12377FixedGipaPairing stmt) :
    Bls12377GipaSetupSampler μ :=
  pure (bls12377FixedGipaParameters stmt pairing)

/-- Parameter-aware target wrapper for one existing fork-tree program. -/
def bls12377FixedGipaAdversary {μ : Nat}
    (program :
      OracleComp (FsWrappedSpec Fr)
        (Option (Bls12377GipaForkTree μ))) :
    Bls12377GipaTargetAdversary μ :=
  fun _parameters => program

/-- The current pre-randomizer extractor lifted to the standalone target
interface. -/
def bls12377FixedGipaExtractor {μ : Nat}
    (extractor : Bls12377GipaExtractor μ) :
    Bls12377GipaStandaloneExtractor μ where
  extract := fun _parameters => extractor.extract

theorem bls12377FixedGipaChallenge_eq {μ : Nat}
    (stmt : Bls12377ReductionStatement μ)
    (pairing : Bls12377FixedGipaPairing stmt)
    (extractor : Bls12377GipaExtractor μ)
    (output : Option (Bls12377GipaForkTree μ)) :
    bls12377GipaStandaloneChallengeOfOutput
        (bls12377FixedGipaParameters stmt pairing)
        (bls12377FixedGipaExtractor extractor) output =
      bls12377GipaChallengeOfOutput extractor output := by
  cases output <;> rfl

/-- The fixed-setup standalone experiment is exactly the current explicit
challenge program paired with the fixed statement parameters. -/
theorem bls12377FixedGipaStandaloneGame_eq_map {μ : Nat}
    (stmt : Bls12377ReductionStatement μ)
    (pairing : Bls12377FixedGipaPairing stmt)
    (program :
      OracleComp (FsWrappedSpec Fr)
        (Option (Bls12377GipaForkTree μ)))
    (extractor : Bls12377GipaExtractor μ) :
    bls12377GipaStandaloneGame
        (bls12377FixedGipaSetup stmt pairing)
        (bls12377FixedGipaAdversary program)
        (bls12377FixedGipaExtractor extractor) =
      (fun output =>
        (bls12377FixedGipaParameters stmt pairing, output)) <$>
          (bls12377GipaChallengeOfOutput extractor <$> program) := by
  simp [bls12377GipaStandaloneGame, bls12377FixedGipaSetup,
    bls12377FixedGipaAdversary, Functor.map_map,
    Function.comp_def, bls12377FixedGipaChallenge_eq]

/-- Distribution-and-support bridge from the current explicit challenge
projection to the standalone fixed-parameter experiment. -/
theorem bls12377FixedGipaProjectionBridge {μ : Nat}
    (stmt : Bls12377ReductionStatement μ)
    (pairing : Bls12377FixedGipaPairing stmt)
    (program :
      OracleComp (FsWrappedSpec Fr)
        (Option (Bls12377GipaForkTree μ)))
    (extractor : Bls12377GipaExtractor μ) :
    Bls12377GipaProjectionBridge
      (bls12377FixedGipaParameters stmt pairing)
      (bls12377GipaChallengeOfOutput extractor <$> program)
      (bls12377FixedGipaSetup stmt pairing)
      (bls12377FixedGipaAdversary program)
      (bls12377FixedGipaExtractor extractor) := by
  refine {
    distribution := ?_
    accepted_support := ?_
  }
  · refine {
      parameter_exact := ?_
      output_event_eq := ?_
    }
    · intro result hsupport
      rw [bls12377FixedGipaStandaloneGame_eq_map,
        support_map] at hsupport
      obtain ⟨output, _houtput, hresult⟩ := hsupport
      simpa using congrArg Prod.fst hresult.symm
    · intro event
      rw [bls12377FixedGipaStandaloneGame_eq_map, probEvent_map]
      rfl
  · intro result hsupport
    have hparameters :
        result.1 = bls12377FixedGipaParameters stmt pairing := by
      rw [bls12377FixedGipaStandaloneGame_eq_map,
        support_map] at hsupport
      obtain ⟨output, _houtput, hresult⟩ := hsupport
      simpa using congrArg Prod.fst hresult.symm
    cases houtput : result.2 with
    | none => trivial
    | some challenge =>
        rw [hparameters]
        trivial

/-- The standalone extractor selected for this target must coincide with the
extractor used to construct the fork experiment.

This exposes rather than solves the extractor fixed point: a closure theorem
must construct this equality from an extractor-selection argument and may not
treat it as the GIPA knowledge assumption itself. -/
def Bls12377GipaExtractorCompatible {μ : Nat}
    (stmt : Bls12377ReductionStatement μ)
    (pairing : Bls12377FixedGipaPairing stmt)
    (program :
      OracleComp (FsWrappedSpec Fr)
        (Option (Bls12377GipaForkTree μ)))
    (extractor : Bls12377GipaExtractor μ)
    (security :
      Bls12377GipaStandaloneSecurity
        (bls12377FixedGipaSetup stmt pairing)) : Prop :=
  security.extractorFor
      (bls12377FixedGipaAdversary program) =
    bls12377FixedGipaExtractor extractor

theorem bls12377FixedGipaRoot_mapped_le_security {μ : Nat}
    (stmt : Bls12377ReductionStatement μ)
    (pairing : Bls12377FixedGipaPairing stmt)
    (program :
      OracleComp (FsWrappedSpec Fr)
        (Option (Bls12377GipaForkTree μ)))
    (extractor : Bls12377GipaExtractor μ)
    (security :
      Bls12377GipaStandaloneSecurity
        (bls12377FixedGipaSetup stmt pairing))
    (compatible :
      Bls12377GipaExtractorCompatible
        stmt pairing program extractor security)
    (queryBudget : Nat)
    (hbound : IsTotalQueryBound program queryBudget) :
    Pr[Bls12377GipaRootOpeningGameWin stmt |
        bls12377GipaChallengeOfOutput extractor <$> program] ≤
      security.epsilonRoot 0 queryBudget := by
  have bridge :
      Bls12377GipaProjectionBridge
        (bls12377FixedGipaParameters stmt pairing)
        (bls12377GipaChallengeOfOutput extractor <$> program)
        (bls12377FixedGipaSetup stmt pairing)
        (bls12377FixedGipaAdversary program)
        (security.extractorFor
          (bls12377FixedGipaAdversary program)) := by
    rw [compatible]
    exact bls12377FixedGipaProjectionBridge
      stmt pairing program extractor
  apply bls12377GipaProjectionBridge_root_le_security
    (bls12377FixedGipaParameters stmt pairing)
    (bls12377GipaChallengeOfOutput extractor <$> program)
    (bls12377FixedGipaSetup stmt pairing)
    (bls12377FixedGipaAdversary program)
    security bridge 0 queryBudget
  · trivial
  · intro _parameters
    exact hbound

theorem bls12377FixedGipaProduct_mapped_le_security {μ : Nat}
    (stmt : Bls12377ReductionStatement μ)
    (pairing : Bls12377FixedGipaPairing stmt)
    (program :
      OracleComp (FsWrappedSpec Fr)
        (Option (Bls12377GipaForkTree μ)))
    (extractor : Bls12377GipaExtractor μ)
    (security :
      Bls12377GipaStandaloneSecurity
        (bls12377FixedGipaSetup stmt pairing))
    (compatible :
      Bls12377GipaExtractorCompatible
        stmt pairing program extractor security)
    (queryBudget : Nat)
    (hbound : IsTotalQueryBound program queryBudget) :
    Pr[Bls12377GipaProductLaneGameWin stmt |
        bls12377GipaChallengeOfOutput extractor <$> program] ≤
      security.epsilonProduct 0 queryBudget := by
  have bridge :
      Bls12377GipaProjectionBridge
        (bls12377FixedGipaParameters stmt pairing)
        (bls12377GipaChallengeOfOutput extractor <$> program)
        (bls12377FixedGipaSetup stmt pairing)
        (bls12377FixedGipaAdversary program)
        (security.extractorFor
          (bls12377FixedGipaAdversary program)) := by
    rw [compatible]
    exact bls12377FixedGipaProjectionBridge
      stmt pairing program extractor
  apply bls12377GipaProjectionBridge_product_le_security
    (bls12377FixedGipaParameters stmt pairing)
    (bls12377GipaChallengeOfOutput extractor <$> program)
    (bls12377FixedGipaSetup stmt pairing)
    (bls12377FixedGipaAdversary program)
    security bridge 0 queryBudget
  · trivial
  · intro _parameters
    exact hbound

/-- The exact S1 GIPA bad event reduces to the standalone root-opening and
product-consistency advantages, with extractor compatibility exposed. -/
theorem gipa_fork_knowledge_to_standalone_bls12377_games
    {μ : Nat}
    (stmt : Bls12377ReductionStatement μ)
    (adv : Bls12377ReductionAdversary μ)
    (qb : (FsWrappedSpec Fr).Domain → Nat)
    (badZ : Finset Fr)
    (extractor : Bls12377GipaExtractor μ)
    (pairing : Bls12377FixedGipaPairing stmt)
    (security :
      Bls12377GipaStandaloneSecurity
        (bls12377FixedGipaSetup stmt pairing))
    (queryBudget : Nat)
    (hbound :
      IsTotalQueryBound
        (gipaRootOpeningGame
          stmt adv qb badZ extractor.extract) queryBudget)
    (compatible :
      Bls12377GipaExtractorCompatible
        stmt pairing
        (gipaRootOpeningGame
          stmt adv qb badZ extractor.extract)
        extractor security) :
    Pr[S1PairingBad stmt extractor.extract |
        s1ForkExperiment stmt adv qb badZ extractor.extract] ≤
      security.epsilonRoot 0 queryBudget +
        security.epsilonProduct 0 queryBudget := by
  apply gipa_fork_knowledge_to_explicit_bls12377_games
    stmt adv qb badZ extractor
  · exact {
      epsilon := security.epsilonRoot 0 queryBudget
      queryBudget := queryBudget
      queryBound :=
        (bls12377GipaRootOpeningGame_isTotalQueryBound_iff
          stmt adv qb badZ extractor queryBudget).2 hbound
      gameWin_le := by
        simpa [bls12377GipaRootOpeningGame] using
          bls12377FixedGipaRoot_mapped_le_security
            stmt pairing
            (gipaRootOpeningGame
              stmt adv qb badZ extractor.extract)
            extractor security compatible queryBudget hbound
    }
  · exact {
      epsilon := security.epsilonProduct 0 queryBudget
      queryBudget := queryBudget
      queryBound :=
        (bls12377GipaProductLaneGame_isTotalQueryBound_iff
          stmt adv qb badZ extractor queryBudget).2 (by
            simpa [gipaRootOpeningGame, gipaProductLaneGame] using hbound)
      gameWin_le := by
        simpa [bls12377GipaProductLaneGame,
          gipaRootOpeningGame, gipaProductLaneGame] using
          bls12377FixedGipaProduct_mapped_le_security
            stmt pairing
            (gipaRootOpeningGame
              stmt adv qb badZ extractor.extract)
            extractor security compatible queryBudget hbound
    }

#print axioms bls12377FixedKzgVProjectionBridge
#print axioms bls12377FixedKzgWProjectionBridge
#print axioms bls12377FixedKzgV_mapped_le_security
#print axioms bls12377FixedKzgW_mapped_le_security
#print axioms kzg_false_opening_to_standalone_bls12377_games
#print axioms bls12377FixedGipaProjectionBridge
#print axioms bls12377FixedGipaRoot_mapped_le_security
#print axioms bls12377FixedGipaProduct_mapped_le_security
#print axioms gipa_fork_knowledge_to_standalone_bls12377_games

end

end Ipp.S1
