import Ipp.S1Bls12377StandaloneGames
import Ipp.ArkworksTippKzgBoundary

/-!
Classifier-free fixed-statement reduction for the two S1 KZG losses.

The target adversary returns the complete finite fork produced by S1.  The
standalone challenger checks structurally whether any leaf is a concrete
BLS12-377 false opening.  This avoids selecting a winning leaf with a
caller-supplied semantic Boolean classifier and preserves the oracle-query
budget exactly.

The setup binding below identifies one formal statement with one fixed
parameter distribution and the universal Arkworks verifier equations.  It
does not assert that the distribution was generated securely or that a
fork-valued adversary can be converted to a polynomial-time single-forgery
adversary.  In particular, the public-trapdoor `DevSrs` cannot instantiate a
negligible security bound for either standalone target.
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

/-! ## Exact fixed-statement setup boundary -/

/-- One fixed statement, its exact public KZG parameters, and the setup game
that returns those parameters.

`setup_eq` is a distribution identity, not a secure-ceremony claim.
`acceptV_sound` and `acceptW_sound` are universal equation refinements over
all candidate tuples.  They cannot mention an S1 event, a fork, or a shipping
acceptance result. -/
structure Bls12377KzgFixedStatementSetupBinding {μ : Nat}
    (stmt : Bls12377ReductionStatement μ) where
  parameters : Bls12377KzgParameters μ
  setup : Bls12377KzgSetupSampler μ
  setup_eq : setup = pure parameters
  srsV_exact : stmt.srsV = parameters.srsV
  srsW_exact : stmt.srsW = parameters.srsW
  acceptV_sound :
    ∀ forgery,
      stmt.acceptV forgery.z forgery.coeffs
          forgery.claimedKey forgery.opening →
        Bls12377KzgVConcreteAccept parameters forgery
  acceptW_sound :
    ∀ forgery,
      stmt.acceptW forgery.z forgery.coeffs
          forgery.claimedKey forgery.opening →
        Bls12377KzgWConcreteAccept parameters forgery

/-- Concrete parameters named by the executable-pairing statement and its
four verifier-opening bases. -/
def bls12377KzgParametersOfExecutableStatement {μ : Nat}
    (hbilinear : PublishedPairingBilinear)
    (baseStmt : Bls12377ReductionStatement μ)
    (g gBeta : g1PrimeSubgroup)
    (h hAlpha : g2PrimeSubgroup) :
    Bls12377KzgParameters μ where
  pairingBilinear := hbilinear
  g := g
  gBeta := gBeta
  h := h
  hAlpha := hAlpha
  srsV := baseStmt.srsV
  srsW := baseStmt.srsW

/-- The universal Arkworks opening equations construct the exact mathematical
fixed-statement boundary.  Pairing-effect success is not needed here: this
theorem relates the formal acceptance predicates to the concrete equations
for arbitrary candidate tuples, rather than proving that one effectful call
returned `true`. -/
def bls12377KzgFixedStatementSetupBindingOfArkworksEquations
    {μ : Nat}
    (hbilinear : PublishedPairingBilinear)
    (baseStmt : Bls12377ReductionStatement μ)
    (g gBeta : g1PrimeSubgroup)
    (h hAlpha : g2PrimeSubgroup)
    (equations :
      Ipp.Extracted.AggregateVerifier.ArkworksTippKzgStatementEquations
        hbilinear baseStmt g gBeta h hAlpha) :
    Bls12377KzgFixedStatementSetupBinding
      (statementWithExecutablePairing hbilinear baseStmt) where
  parameters :=
    bls12377KzgParametersOfExecutableStatement
      hbilinear baseStmt g gBeta h hAlpha
  setup :=
    pure (bls12377KzgParametersOfExecutableStatement
      hbilinear baseStmt g gBeta h hAlpha)
  setup_eq := rfl
  srsV_exact := rfl
  srsW_exact := rfl
  acceptV_sound := by
    intro forgery haccept
    have hconcrete :=
      (equations.acceptV forgery.z forgery.coeffs
        forgery.claimedKey forgery.opening).mp haccept
    simpa [Bls12377KzgVConcreteAccept, bls12377KzgEvaluation,
      bls12377KzgParametersOfExecutableStatement] using hconcrete
  acceptW_sound := by
    intro forgery haccept
    have hconcrete :=
      (equations.acceptW forgery.z forgery.coeffs
        forgery.claimedKey forgery.opening).mp haccept
    simpa [Bls12377KzgWConcreteAccept, bls12377KzgEvaluation,
      bls12377KzgParametersOfExecutableStatement] using hconcrete

/-! ## Fork-preserving standalone targets -/

/-- The concrete V target holds when some leaf in the retained finite fork is
a BLS12-377 V-lane false opening. -/
def Bls12377KzgVForkTargetTreeWin {μ depth : Nat}
    (parameters : Bls12377KzgParameters μ) :
    S1ForkGameTree
      Fr g1PrimeSubgroup g2PrimeSubgroup ArkPairingOutput μ depth → Prop
  | .leaf run =>
      Bls12377KzgVTargetWin parameters
        (some (bls12377KzgVForgeryOfLeaf run.1))
  | .node children =>
      ∃ child, Bls12377KzgVForkTargetTreeWin parameters (children child)

/-- W-lane fork target. -/
def Bls12377KzgWForkTargetTreeWin {μ depth : Nat}
    (parameters : Bls12377KzgParameters μ) :
    S1ForkGameTree
      Fr g1PrimeSubgroup g2PrimeSubgroup ArkPairingOutput μ depth → Prop
  | .leaf run =>
      Bls12377KzgWTargetWin parameters
        (some (bls12377KzgWForgeryOfLeaf run.1))
  | .node children =>
      ∃ child, Bls12377KzgWForkTargetTreeWin parameters (children child)

def Bls12377KzgVForkTargetWin {μ : Nat}
    (parameters : Bls12377KzgParameters μ) :
    Bls12377ReductionForkOutput μ → Prop
  | none => False
  | some tree => Bls12377KzgVForkTargetTreeWin parameters tree

def Bls12377KzgWForkTargetWin {μ : Nat}
    (parameters : Bls12377KzgParameters μ) :
    Bls12377ReductionForkOutput μ → Prop
  | none => False
  | some tree => Bls12377KzgWForkTargetTreeWin parameters tree

/-- A target adversary receives the public parameters and returns the entire
finite fork.  No leaf classifier or witness selector is part of this type. -/
abbrev Bls12377KzgForkTargetAdversary (μ : Nat) :=
  Bls12377KzgParameters μ →
    OracleComp (FsWrappedSpec Fr) (Bls12377ReductionForkOutput μ)

def bls12377KzgVForkStandaloneGame {μ : Nat}
    (setup : Bls12377KzgSetupSampler μ)
    (adversary : Bls12377KzgForkTargetAdversary μ) :
    OracleComp (FsWrappedSpec Fr)
      (Bls12377KzgParameters μ × Bls12377ReductionForkOutput μ) :=
  setup >>= fun parameters =>
    (fun output => (parameters, output)) <$> adversary parameters

def bls12377KzgWForkStandaloneGame {μ : Nat}
    (setup : Bls12377KzgSetupSampler μ)
    (adversary : Bls12377KzgForkTargetAdversary μ) :
    OracleComp (FsWrappedSpec Fr)
      (Bls12377KzgParameters μ × Bls12377ReductionForkOutput μ) :=
  setup >>= fun parameters =>
    (fun output => (parameters, output)) <$> adversary parameters

def Bls12377KzgVForkStandaloneGameWin {μ : Nat} :
    Bls12377KzgParameters μ × Bls12377ReductionForkOutput μ → Prop :=
  fun result => Bls12377KzgVForkTargetWin result.1 result.2

def Bls12377KzgWForkStandaloneGameWin {μ : Nat} :
    Bls12377KzgParameters μ × Bls12377ReductionForkOutput μ → Prop :=
  fun result => Bls12377KzgWForkTargetWin result.1 result.2

/-- Reuse one mapped S1 fork program after the fixed parameters have been
revealed. -/
def bls12377FixedKzgForkAdversary {μ : Nat}
    (mapped :
      OracleComp (FsWrappedSpec Fr) (Bls12377ReductionForkOutput μ)) :
    Bls12377KzgForkTargetAdversary μ :=
  fun _parameters => mapped

/-! ## Pointwise structural reduction -/

theorem bls12377KzgVForkTargetTreeWin_of_falseOpening
    {μ depth : Nat}
    (stmt : Bls12377ReductionStatement μ)
    (binding : Bls12377KzgFixedStatementSetupBinding stmt)
    (tree :
      S1ForkGameTree
        Fr g1PrimeSubgroup g2PrimeSubgroup ArkPairingOutput μ depth) :
    KzgVFalseOpeningGameTreeWin stmt tree →
      Bls12377KzgVForkTargetTreeWin binding.parameters tree := by
  induction tree with
  | leaf run =>
      intro hbad
      have habstract :=
        bls12377KzgVForgeryOfLeaf_wins stmt run.1 hbad
      exact ⟨binding.acceptV_sound _ habstract.1, by
        rw [← binding.srsV_exact]
        exact habstract.2⟩
  | node children ih =>
      rintro ⟨child, hbad⟩
      exact ⟨child, ih child hbad⟩

theorem bls12377KzgWForkTargetTreeWin_of_falseOpening
    {μ depth : Nat}
    (stmt : Bls12377ReductionStatement μ)
    (binding : Bls12377KzgFixedStatementSetupBinding stmt)
    (tree :
      S1ForkGameTree
        Fr g1PrimeSubgroup g2PrimeSubgroup ArkPairingOutput μ depth) :
    KzgWFalseOpeningGameTreeWin stmt tree →
      Bls12377KzgWForkTargetTreeWin binding.parameters tree := by
  induction tree with
  | leaf run =>
      intro hbad
      have habstract :=
        bls12377KzgWForgeryOfLeaf_wins stmt run.1 hbad
      exact ⟨binding.acceptW_sound _ habstract.1, by
        rw [← binding.srsW_exact]
        exact habstract.2⟩
  | node children ih =>
      rintro ⟨child, hbad⟩
      exact ⟨child, ih child hbad⟩

theorem bls12377KzgVForkTargetWin_of_falseOpening
    {μ : Nat}
    (stmt : Bls12377ReductionStatement μ)
    (binding : Bls12377KzgFixedStatementSetupBinding stmt)
    (output : Bls12377ReductionForkOutput μ) :
    KzgVFalseOpeningGameWin stmt output →
      Bls12377KzgVForkTargetWin binding.parameters output := by
  cases output with
  | none => exact id
  | some tree =>
      exact bls12377KzgVForkTargetTreeWin_of_falseOpening
        stmt binding tree

theorem bls12377KzgWForkTargetWin_of_falseOpening
    {μ : Nat}
    (stmt : Bls12377ReductionStatement μ)
    (binding : Bls12377KzgFixedStatementSetupBinding stmt)
    (output : Bls12377ReductionForkOutput μ) :
    KzgWFalseOpeningGameWin stmt output →
      Bls12377KzgWForkTargetWin binding.parameters output := by
  cases output with
  | none => exact id
  | some tree =>
      exact bls12377KzgWForkTargetTreeWin_of_falseOpening
        stmt binding tree

/-! ## Exact fixed-setup distribution bridge -/

theorem bls12377FixedKzgVForkStandaloneGame_eq_map
    {μ : Nat}
    (stmt : Bls12377ReductionStatement μ)
    (binding : Bls12377KzgFixedStatementSetupBinding stmt)
    (mapped :
      OracleComp (FsWrappedSpec Fr) (Bls12377ReductionForkOutput μ)) :
    bls12377KzgVForkStandaloneGame binding.setup
        (bls12377FixedKzgForkAdversary mapped) =
      (fun output => (binding.parameters, output)) <$> mapped := by
  rw [binding.setup_eq]
  simp [bls12377KzgVForkStandaloneGame,
    bls12377FixedKzgForkAdversary]

theorem bls12377FixedKzgWForkStandaloneGame_eq_map
    {μ : Nat}
    (stmt : Bls12377ReductionStatement μ)
    (binding : Bls12377KzgFixedStatementSetupBinding stmt)
    (mapped :
      OracleComp (FsWrappedSpec Fr) (Bls12377ReductionForkOutput μ)) :
    bls12377KzgWForkStandaloneGame binding.setup
        (bls12377FixedKzgForkAdversary mapped) =
      (fun output => (binding.parameters, output)) <$> mapped := by
  rw [binding.setup_eq]
  simp [bls12377KzgWForkStandaloneGame,
    bls12377FixedKzgForkAdversary]

/-- The classifier-free map adds no wrapped-oracle queries. -/
theorem bls12377FixedKzgVForkStandaloneGame_isTotalQueryBound_iff
    {μ : Nat}
    (stmt : Bls12377ReductionStatement μ)
    (binding : Bls12377KzgFixedStatementSetupBinding stmt)
    (mapped :
      OracleComp (FsWrappedSpec Fr) (Bls12377ReductionForkOutput μ))
    (queryBudget : Nat) :
    IsTotalQueryBound
        (bls12377KzgVForkStandaloneGame binding.setup
          (bls12377FixedKzgForkAdversary mapped)) queryBudget ↔
      IsTotalQueryBound mapped queryBudget := by
  rw [bls12377FixedKzgVForkStandaloneGame_eq_map
    stmt binding mapped]
  exact isQueryBound_map_iff _ _ queryBudget
    (fun _ b => 0 < b) (fun _ b => b - 1)

theorem bls12377FixedKzgWForkStandaloneGame_isTotalQueryBound_iff
    {μ : Nat}
    (stmt : Bls12377ReductionStatement μ)
    (binding : Bls12377KzgFixedStatementSetupBinding stmt)
    (mapped :
      OracleComp (FsWrappedSpec Fr) (Bls12377ReductionForkOutput μ))
    (queryBudget : Nat) :
    IsTotalQueryBound
        (bls12377KzgWForkStandaloneGame binding.setup
          (bls12377FixedKzgForkAdversary mapped)) queryBudget ↔
      IsTotalQueryBound mapped queryBudget := by
  rw [bls12377FixedKzgWForkStandaloneGame_eq_map
    stmt binding mapped]
  exact isQueryBound_map_iff _ _ queryBudget
    (fun _ b => 0 < b) (fun _ b => b - 1)

theorem bls12377KzgVFalseOpening_le_fixedForkStandalone
    {μ : Nat}
    (stmt : Bls12377ReductionStatement μ)
    (binding : Bls12377KzgFixedStatementSetupBinding stmt)
    (mapped :
      OracleComp (FsWrappedSpec Fr) (Bls12377ReductionForkOutput μ)) :
    Pr[KzgVFalseOpeningGameWin stmt | mapped] ≤
      Pr[Bls12377KzgVForkStandaloneGameWin |
        bls12377KzgVForkStandaloneGame binding.setup
          (bls12377FixedKzgForkAdversary mapped)] := by
  rw [bls12377FixedKzgVForkStandaloneGame_eq_map
    stmt binding mapped, probEvent_map]
  apply probEvent_mono
  intro output _ hwin
  simpa [Function.comp_def, Bls12377KzgVForkStandaloneGameWin] using
    bls12377KzgVForkTargetWin_of_falseOpening
      stmt binding output hwin

theorem bls12377KzgWFalseOpening_le_fixedForkStandalone
    {μ : Nat}
    (stmt : Bls12377ReductionStatement μ)
    (binding : Bls12377KzgFixedStatementSetupBinding stmt)
    (mapped :
      OracleComp (FsWrappedSpec Fr) (Bls12377ReductionForkOutput μ)) :
    Pr[KzgWFalseOpeningGameWin stmt | mapped] ≤
      Pr[Bls12377KzgWForkStandaloneGameWin |
        bls12377KzgWForkStandaloneGame binding.setup
          (bls12377FixedKzgForkAdversary mapped)] := by
  rw [bls12377FixedKzgWForkStandaloneGame_eq_map
    stmt binding mapped, probEvent_map]
  apply probEvent_mono
  intro output _ hwin
  simpa [Function.comp_def, Bls12377KzgWForkStandaloneGameWin] using
    bls12377KzgWForkTargetWin_of_falseOpening
      stmt binding output hwin

/-! ## Fixed-statement S1 capstone -/

/-- The exact S1 KZG loss is bounded by two independently named concrete
BLS12-377 fork-target games.  No leaf classifier, deployed-security
assumption, shipping acceptance proposition, or numerical advantage appears
in this theorem.

To obtain a computational bound, callers must still supply a secure setup
artifact bound to `binding.parameters` and an efficient batch-to-single
reduction (or directly justify the fork-target games). -/
theorem kzg_false_opening_to_fixed_statement_bls12377_fork_games
    {μ : Nat}
    (stmt : Bls12377ReductionStatement μ)
    (adv : Bls12377ReductionAdversary μ)
    (qb : (FsWrappedSpec Fr).Domain → Nat)
    (badZ : Finset Fr)
    (witnessOf : Bls12377ReductionWitness μ)
    (binding : Bls12377KzgFixedStatementSetupBinding stmt) :
    Pr[S1KzgBad stmt |
        s1ForkExperiment stmt adv qb badZ witnessOf] ≤
      Pr[Bls12377KzgVForkStandaloneGameWin |
          bls12377KzgVForkStandaloneGame binding.setup
            (bls12377FixedKzgForkAdversary
              (kzgVFalseOpeningGame
                stmt adv qb badZ witnessOf))] +
        Pr[Bls12377KzgWForkStandaloneGameWin |
          bls12377KzgWForkStandaloneGame binding.setup
            (bls12377FixedKzgForkAdversary
              (kzgWFalseOpeningGame
                stmt adv qb badZ witnessOf))] := by
  apply le_trans
    (s1KzgBad_probability_le_lane_sum
      stmt adv qb badZ witnessOf)
  apply add_le_add
  · rw [s1KzgVBad_probability_eq_gameWin
      stmt adv qb badZ witnessOf]
    exact bls12377KzgVFalseOpening_le_fixedForkStandalone
      stmt binding
        (kzgVFalseOpeningGame stmt adv qb badZ witnessOf)
  · rw [s1KzgWBad_probability_eq_gameWin
      stmt adv qb badZ witnessOf]
    exact bls12377KzgWFalseOpening_le_fixedForkStandalone
      stmt binding
        (kzgWFalseOpeningGame stmt adv qb badZ witnessOf)

end

end Ipp.S1
