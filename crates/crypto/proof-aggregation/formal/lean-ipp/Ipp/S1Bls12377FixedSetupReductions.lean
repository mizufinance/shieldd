import Ipp.S1Bls12377StandaloneGames
import Ipp.Extracted.ShippingVerifierComposition

/-!
Exploratory fixed-setup bridges from the current S1 projections to standalone
BLS12-377 target games.

The exact mapped-game and selector reductions live in
`S1Bls12377ReductionInterfaces` and are the only publication-audited results.
The fixed-setup constructions below do not yet bind a production setup
registry, a structural polynomial-time certificate, or a pre-fork GIPA
extractor selection.  They are not deployed-security capstones.
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

/-! ## Exploratory fixed-parameter KZG bridges -/

/-- Concrete BLS12-377 KZG parameters selected by one formal shipping
statement and the four verifier bases retained from its prepared SRS.

The statement already carries the complete V/W power arrays.  Supplying the
four bases is unavoidable because `FsStatement` intentionally does not carry
the verifier-key prefix used by the two opening equations. -/
def bls12377KzgParametersOfStatement {μ : Nat}
    (hbilinear : PublishedPairingBilinear)
    (stmt : Bls12377ReductionStatement μ)
    (g gBeta : g1PrimeSubgroup)
    (h hAlpha : g2PrimeSubgroup) :
    Bls12377KzgParameters μ where
  pairingBilinear := hbilinear
  g := g
  gBeta := gBeta
  h := h
  hAlpha := hAlpha
  srsV := stmt.srsV
  srsW := stmt.srsW

/-- Exact remaining semantic boundary after concrete parameters are built
from the formal statement.  The power arrays are no longer assumptions; only
the two universally quantified production KZG verifier equations remain.

The current extracted `ArkworksTippKzgContract` proves the soundness direction
for one proof/transcript call; its reverse direction additionally records
pairing-effect success.  A shipping closure still needs an extracted or F*
theorem quantifying over every candidate tuple reachable by the fork
reduction. -/
structure Bls12377KzgConcreteEquationContract {μ : Nat}
    (stmt : Bls12377ReductionStatement μ)
    (parameters : Bls12377KzgParameters μ) : Prop where
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

/-- One-way relation sufficient for a soundness reduction.  Unlike
`Bls12377KzgStatementBinding`, it does not require every concrete equation to
be represented by the abstract statement predicate. -/
structure Bls12377KzgConcreteSoundnessContract {μ : Nat}
    (stmt : Bls12377ReductionStatement μ)
    (parameters : Bls12377KzgParameters μ) : Prop where
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

def Bls12377KzgConcreteEquationContract.toSoundness {μ : Nat}
    {stmt : Bls12377ReductionStatement μ}
    {parameters : Bls12377KzgParameters μ}
    (equations :
      Bls12377KzgConcreteEquationContract stmt parameters)
    (srsV_exact : stmt.srsV = parameters.srsV)
    (srsW_exact : stmt.srsW = parameters.srsW) :
    Bls12377KzgConcreteSoundnessContract stmt parameters where
  srsV_exact := srsV_exact
  srsW_exact := srsW_exact
  acceptV_sound := fun forgery =>
    (equations.acceptV_exact forgery).mp
  acceptW_sound := fun forgery =>
    (equations.acceptW_exact forgery).mp

/-- For parameters constructed from the statement, a one-way candidate-tuple
equation theorem supplies the complete soundness contract; both SRS fields
remain definitional. -/
def bls12377KzgConcreteSoundnessOfStatement {μ : Nat}
    (hbilinear : PublishedPairingBilinear)
    (stmt : Bls12377ReductionStatement μ)
    (g gBeta : g1PrimeSubgroup)
    (h hAlpha : g2PrimeSubgroup)
    (acceptV_sound :
      ∀ forgery,
        stmt.acceptV forgery.z forgery.coeffs
            forgery.claimedKey forgery.opening →
          Bls12377KzgVConcreteAccept
            (bls12377KzgParametersOfStatement
              hbilinear stmt g gBeta h hAlpha) forgery)
    (acceptW_sound :
      ∀ forgery,
        stmt.acceptW forgery.z forgery.coeffs
            forgery.claimedKey forgery.opening →
          Bls12377KzgWConcreteAccept
            (bls12377KzgParametersOfStatement
              hbilinear stmt g gBeta h hAlpha) forgery) :
    Bls12377KzgConcreteSoundnessContract stmt
      (bls12377KzgParametersOfStatement
        hbilinear stmt g gBeta h hAlpha) where
  srsV_exact := rfl
  srsW_exact := rfl
  acceptV_sound := acceptV_sound
  acceptW_sound := acceptW_sound

/-- Building concrete parameters from the statement makes both SRS equations
definitionally true; the exact verifier-equation contract supplies the only
non-definitional fields of `Bls12377KzgStatementBinding`. -/
theorem bls12377KzgStatementBinding_ofConcreteParameters {μ : Nat}
    (hbilinear : PublishedPairingBilinear)
    (stmt : Bls12377ReductionStatement μ)
    (g gBeta : g1PrimeSubgroup)
    (h hAlpha : g2PrimeSubgroup)
    (equations :
      Bls12377KzgConcreteEquationContract stmt
        (bls12377KzgParametersOfStatement
          hbilinear stmt g gBeta h hAlpha)) :
    Bls12377KzgStatementBinding stmt
      (bls12377KzgParametersOfStatement
        hbilinear stmt g gBeta h hAlpha) where
  srsV_exact := rfl
  srsW_exact := rfl
  acceptV_exact := equations.acceptV_exact
  acceptW_exact := equations.acceptW_exact

/-- The KZG parameter tuple named by one shipping-call model record.
The record is the common source of the bilinear pairing witness, formal
statement, and four verifier-SRS bases.  Its production origin and the
coherence of its statement arrays with those bases are separate refinement
obligations; this definition does not manufacture either fact. -/
def bls12377KzgParametersOfShippingCall
    {D : Type} {μ arity : Nat}
    (data :
      Ipp.Extracted.ShippingVerifierComposition.ShippingCallData
        D μ arity) :
    Bls12377KzgParameters μ :=
  bls12377KzgParametersOfStatement
    data.hbilinear data.statement
    data.srs.g data.srs.g_beta data.srs.h data.srs.h_alpha

/-- Candidate-tuple KZG equation boundary specialized to the exact statement
and SRS bases retained by one shipping call. -/
abbrev Bls12377ShippingCallKzgEquationContract
    {D : Type} {μ arity : Nat}
    (data :
      Ipp.Extracted.ShippingVerifierComposition.ShippingCallData
        D μ arity) :=
  Bls12377KzgConcreteEquationContract
    data.statement (bls12377KzgParametersOfShippingCall data)

/-- Exact shipping-call KZG boundary needed by the soundness reduction.
The SRS-array equalities are deliberately absent: the concrete parameter
constructor copies those arrays from `data.statement`, so callers may not
restate definitional facts as semantic premises. -/
structure Bls12377ShippingCallKzgSoundnessContract
    {D : Type} {μ arity : Nat}
    (data :
      Ipp.Extracted.ShippingVerifierComposition.ShippingCallData
        D μ arity) : Prop where
  acceptV_sound :
    ∀ forgery,
      data.statement.acceptV forgery.z forgery.coeffs
          forgery.claimedKey forgery.opening →
        Bls12377KzgVConcreteAccept
          (bls12377KzgParametersOfShippingCall data) forgery
  acceptW_sound :
    ∀ forgery,
      data.statement.acceptW forgery.z forgery.coeffs
          forgery.claimedKey forgery.opening →
        Bls12377KzgWConcreteAccept
          (bls12377KzgParametersOfShippingCall data) forgery

def Bls12377ShippingCallKzgSoundnessContract.toConcreteSoundness
    {D : Type} {μ arity : Nat}
    {data :
      Ipp.Extracted.ShippingVerifierComposition.ShippingCallData
        D μ arity}
    (soundness : Bls12377ShippingCallKzgSoundnessContract data) :
    Bls12377KzgConcreteSoundnessContract
      data.statement (bls12377KzgParametersOfShippingCall data) where
  srsV_exact := rfl
  srsW_exact := rfl
  acceptV_sound := soundness.acceptV_sound
  acceptW_sound := soundness.acceptW_sound

/-- Both SRS-array fields of the shipping-call binding are definitional.
Only the universally quantified KZG equation contract remains. -/
theorem bls12377ShippingCallKzgStatementBinding
    {D : Type} {μ arity : Nat}
    (data :
      Ipp.Extracted.ShippingVerifierComposition.ShippingCallData
        D μ arity)
    (equations : Bls12377ShippingCallKzgEquationContract data) :
    Bls12377KzgStatementBinding
      data.statement (bls12377KzgParametersOfShippingCall data) := by
  exact bls12377KzgStatementBinding_ofConcreteParameters
    data.hbilinear data.statement
    data.srs.g data.srs.g_beta data.srs.h data.srs.h_alpha equations

def Bls12377ShippingCallKzgEquationContract.toSoundness
    {D : Type} {μ arity : Nat}
    {data :
      Ipp.Extracted.ShippingVerifierComposition.ShippingCallData
        D μ arity}
    (equations : Bls12377ShippingCallKzgEquationContract data) :
    Bls12377ShippingCallKzgSoundnessContract data where
  acceptV_sound := fun forgery =>
    (equations.acceptV_exact forgery).mp
  acceptW_sound := fun forgery =>
    (equations.acceptW_exact forgery).mp

def bls12377KzgVForgeryOfShippingTranscript
    {D : Type} {μ arity : Nat}
    (data :
      Ipp.Extracted.ShippingVerifierComposition.ShippingCallData
        D μ arity)
    (transcript : FsTranscript μ Fr) :
    Bls12377KzgVForgery μ where
  z := transcript.kzg
  coeffs := transcriptCoeffs (reversedView transcript.roundAnswer) 1
  claimedKey := data.proof.vFinal
  opening := data.proof.vOpening

def bls12377KzgWForgeryOfShippingTranscript
    {D : Type} {μ arity : Nat}
    (data :
      Ipp.Extracted.ShippingVerifierComposition.ShippingCallData
        D μ arity)
    (transcript : FsTranscript μ Fr) :
    Bls12377KzgWForgery μ where
  z := transcript.kzg
  coeffs :=
    transcriptCoeffs
      (fun i => gipaChallenge (reversedView transcript.roundAnswer i))
      transcript.randomizer⁻¹
  claimedKey := data.proof.wFinal
  opening := data.proof.wOpening

/-- The existing per-execution Arkworks contract already proves the V
candidate-tuple direction required by the reduction.  What remains open is
lifting this fact from one accepted shipping transcript to every forgery in
the mapped fork program's support. -/
theorem shippingCallKzgContract_acceptV_sound
    {D PE : Type} {μ arity : Nat}
    (data :
      Ipp.Extracted.ShippingVerifierComposition.ShippingCallData
        D μ arity)
    (transcript : FsTranscript μ Fr)
    (pairing : PE) (outcome : PE → Option Unit)
    (kzg :
      Ipp.Extracted.AggregateVerifier.ArkworksTippKzgContract
        data.hbilinear data.baseStmt data.proof transcript
        data.srs.g data.srs.g_beta data.srs.h data.srs.h_alpha
        pairing outcome)
    (haccept :
      data.statement.acceptV transcript.kzg
        (transcriptCoeffs (reversedView transcript.roundAnswer) 1)
        data.proof.vFinal data.proof.vOpening) :
    Bls12377KzgVConcreteAccept
      (bls12377KzgParametersOfShippingCall data)
      (bls12377KzgVForgeryOfShippingTranscript data transcript) := by
  simpa [Bls12377KzgVConcreteAccept, bls12377KzgEvaluation,
    bls12377KzgVForgeryOfShippingTranscript,
    bls12377KzgParametersOfShippingCall,
    bls12377KzgParametersOfStatement,
    Ipp.Extracted.ShippingVerifierComposition.ShippingCallData.statement] using
      (kzg.acceptV.mp haccept).2

/-- Per-execution W-lane analogue of
`shippingCallKzgContract_acceptV_sound`. -/
theorem shippingCallKzgContract_acceptW_sound
    {D PE : Type} {μ arity : Nat}
    (data :
      Ipp.Extracted.ShippingVerifierComposition.ShippingCallData
        D μ arity)
    (transcript : FsTranscript μ Fr)
    (pairing : PE) (outcome : PE → Option Unit)
    (kzg :
      Ipp.Extracted.AggregateVerifier.ArkworksTippKzgContract
        data.hbilinear data.baseStmt data.proof transcript
        data.srs.g data.srs.g_beta data.srs.h data.srs.h_alpha
        pairing outcome)
    (haccept :
      data.statement.acceptW transcript.kzg
        (transcriptCoeffs
          (fun i => gipaChallenge (reversedView transcript.roundAnswer i))
          transcript.randomizer⁻¹)
        data.proof.wFinal data.proof.wOpening) :
    Bls12377KzgWConcreteAccept
      (bls12377KzgParametersOfShippingCall data)
      (bls12377KzgWForgeryOfShippingTranscript data transcript) := by
  simpa [Bls12377KzgWConcreteAccept, bls12377KzgEvaluation,
    bls12377KzgWForgeryOfShippingTranscript,
    bls12377KzgParametersOfShippingCall,
    bls12377KzgParametersOfStatement,
    Ipp.Extracted.ShippingVerifierComposition.ShippingCallData.statement] using
      (kzg.acceptW.mp haccept).2

/-- Reveal one fixed public KZG parameter tuple without making an oracle
query.  Authentication and setup provenance are caller obligations. -/
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
selected public parameters. -/
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

theorem bls12377KzgVTargetWin_ofSoundness {μ : Nat}
    (stmt : Bls12377ReductionStatement μ)
    (parameters : Bls12377KzgParameters μ)
    (soundness :
      Bls12377KzgConcreteSoundnessContract stmt parameters)
    (output : Option (Bls12377KzgVForgery μ)) :
    Bls12377KzgVForgeryGameWin stmt output →
      Bls12377KzgVTargetWin parameters output := by
  cases output with
  | none => exact id
  | some forgery =>
      rintro ⟨haccept, hfalse⟩
      exact ⟨soundness.acceptV_sound forgery haccept, by
        rw [← soundness.srsV_exact]
        exact hfalse⟩

theorem bls12377KzgWTargetWin_ofSoundness {μ : Nat}
    (stmt : Bls12377ReductionStatement μ)
    (parameters : Bls12377KzgParameters μ)
    (soundness :
      Bls12377KzgConcreteSoundnessContract stmt parameters)
    (output : Option (Bls12377KzgWForgery μ)) :
    Bls12377KzgWForgeryGameWin stmt output →
      Bls12377KzgWTargetWin parameters output := by
  cases output with
  | none => exact id
  | some forgery =>
      rintro ⟨haccept, hfalse⟩
      exact ⟨soundness.acceptW_sound forgery haccept, by
        rw [← soundness.srsW_exact]
        exact hfalse⟩

/-- A one-way concrete-equation theorem is sufficient to charge the mapped V
game to the standalone target; completeness of the abstract `acceptV`
predicate is not used. -/
theorem bls12377FixedKzgV_mapped_le_security_ofSoundness {μ : Nat}
    (stmt : Bls12377ReductionStatement μ)
    (parameters : Bls12377KzgParameters μ)
    (soundness :
      Bls12377KzgConcreteSoundnessContract stmt parameters)
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
  calc
    _ ≤ Pr[Bls12377KzgVTargetWin parameters | mapped] := by
      apply probEvent_mono
      intro output _ hwin
      exact bls12377KzgVTargetWin_ofSoundness
        stmt parameters soundness output hwin
    _ = Pr[Bls12377KzgVStandaloneGameWin |
          bls12377KzgVStandaloneGame
            (bls12377FixedKzgSetup parameters)
            (bls12377FixedKzgVAdversary mapped)] := by
      simpa [Bls12377KzgVStandaloneGameWin] using
        FixedParameterOutputBridge.parameterized_event_eq
          (bls12377FixedKzgVProjectionBridge parameters mapped)
          Bls12377KzgVTargetWin
    _ ≤ _ := security.v_gameWin_le
      (bls12377FixedKzgVAdversary mapped) 0 queryBudget
      (by trivial) (fun _parameters => hbound)

/-- W-lane analogue of
`bls12377FixedKzgV_mapped_le_security_ofSoundness`. -/
theorem bls12377FixedKzgW_mapped_le_security_ofSoundness {μ : Nat}
    (stmt : Bls12377ReductionStatement μ)
    (parameters : Bls12377KzgParameters μ)
    (soundness :
      Bls12377KzgConcreteSoundnessContract stmt parameters)
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
  calc
    _ ≤ Pr[Bls12377KzgWTargetWin parameters | mapped] := by
      apply probEvent_mono
      intro output _ hwin
      exact bls12377KzgWTargetWin_ofSoundness
        stmt parameters soundness output hwin
    _ = Pr[Bls12377KzgWStandaloneGameWin |
          bls12377KzgWStandaloneGame
            (bls12377FixedKzgSetup parameters)
            (bls12377FixedKzgWAdversary mapped)] := by
      simpa [Bls12377KzgWStandaloneGameWin] using
        FixedParameterOutputBridge.parameterized_event_eq
          (bls12377FixedKzgWProjectionBridge parameters mapped)
          Bls12377KzgWTargetWin
    _ ≤ _ := security.w_gameWin_le
      (bls12377FixedKzgWAdversary mapped) 0 queryBudget
      (by trivial) (fun _parameters => hbound)

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

/-- The S1 KZG loss only needs one-way refinement from each abstract
statement acceptance predicate to the concrete BLS12-377 equation. -/
theorem kzg_false_opening_to_standalone_bls12377_games_ofSoundness
    {μ : Nat}
    (stmt : Bls12377ReductionStatement μ)
    (adv : Bls12377ReductionAdversary μ)
    (qb : (FsWrappedSpec Fr).Domain → Nat)
    (badZ : Finset Fr)
    (witnessOf : Bls12377ReductionWitness μ)
    (reductionV : Bls12377KzgVForkReduction stmt)
    (reductionW : Bls12377KzgWForkReduction stmt)
    (parameters : Bls12377KzgParameters μ)
    (soundness :
      Bls12377KzgConcreteSoundnessContract stmt parameters)
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
  apply kzg_false_opening_to_explicit_bls12377_forgery_games
    stmt adv qb badZ witnessOf reductionV reductionW
  · exact {
      epsilon := security.epsilonV 0 queryBudgetV
      queryBudget := queryBudgetV
      queryBound := hboundV
      gameWin_le :=
        bls12377FixedKzgV_mapped_le_security_ofSoundness
          stmt parameters soundness
          (bls12377KzgVForgeryGame
            stmt adv qb badZ witnessOf reductionV)
          security queryBudgetV hboundV
    }
  · exact {
      epsilon := security.epsilonW 0 queryBudgetW
      queryBudget := queryBudgetW
      queryBound := hboundW
      gameWin_le :=
        bls12377FixedKzgW_mapped_le_security_ofSoundness
          stmt parameters soundness
          (bls12377KzgWForgeryGame
            stmt adv qb badZ witnessOf reductionW)
          security queryBudgetW hboundW
    }

/-- Shipping-shaped specialization: construct the complete fixed KZG
parameters from the statement and retained verifier bases, prove both SRS
binding fields definitionally, and leave only the two exact candidate-tuple
equations plus target-game security as semantic premises. -/
theorem kzg_false_opening_to_concrete_fixed_bls12377_games
    {μ : Nat}
    (stmt : Bls12377ReductionStatement μ)
    (adv : Bls12377ReductionAdversary μ)
    (qb : (FsWrappedSpec Fr).Domain → Nat)
    (badZ : Finset Fr)
    (witnessOf : Bls12377ReductionWitness μ)
    (reductionV : Bls12377KzgVForkReduction stmt)
    (reductionW : Bls12377KzgWForkReduction stmt)
    (hbilinear : PublishedPairingBilinear)
    (g gBeta : g1PrimeSubgroup)
    (h hAlpha : g2PrimeSubgroup)
    (equations :
      Bls12377KzgConcreteEquationContract stmt
        (bls12377KzgParametersOfStatement
          hbilinear stmt g gBeta h hAlpha))
    (security :
      Bls12377KzgStandaloneSecurity
        (bls12377FixedKzgSetup
          (bls12377KzgParametersOfStatement
            hbilinear stmt g gBeta h hAlpha)))
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
  exact kzg_false_opening_to_standalone_bls12377_games
    stmt adv qb badZ witnessOf reductionV reductionW
    (bls12377KzgParametersOfStatement
      hbilinear stmt g gBeta h hAlpha)
    (bls12377KzgStatementBinding_ofConcreteParameters
      hbilinear stmt g gBeta h hAlpha equations)
    security queryBudgetV queryBudgetW hboundV hboundW

/-- Record-shaped specialization of the fixed-parameter implication.
It prevents mixing arrays and bases from different records, but its
unscoped standalone-security premise is not a polynomial-time deployed-game
assumption.  This theorem is not a publication capstone. -/
theorem kzg_false_opening_of_shipping_call_to_standalone_bls12377_games
    {D : Type} {μ arity : Nat}
    (data :
      Ipp.Extracted.ShippingVerifierComposition.ShippingCallData
        D μ arity)
    (adv : Bls12377ReductionAdversary μ)
    (qb : (FsWrappedSpec Fr).Domain → Nat)
    (badZ : Finset Fr)
    (witnessOf : Bls12377ReductionWitness μ)
    (reductionV : Bls12377KzgVForkReduction data.statement)
    (reductionW : Bls12377KzgWForkReduction data.statement)
    (soundness : Bls12377ShippingCallKzgSoundnessContract data)
    (security :
      Bls12377KzgStandaloneSecurity
        (bls12377FixedKzgSetup
          (bls12377KzgParametersOfShippingCall data)))
    (queryBudgetV queryBudgetW : Nat)
    (hboundV :
      IsTotalQueryBound
        (bls12377KzgVForgeryGame
          data.statement adv qb badZ witnessOf reductionV) queryBudgetV)
    (hboundW :
      IsTotalQueryBound
        (bls12377KzgWForgeryGame
          data.statement adv qb badZ witnessOf reductionW) queryBudgetW) :
    Pr[S1KzgBad data.statement |
        s1ForkExperiment data.statement adv qb badZ witnessOf] ≤
      security.epsilonV 0 queryBudgetV +
        security.epsilonW 0 queryBudgetW := by
  exact kzg_false_opening_to_standalone_bls12377_games_ofSoundness
    data.statement adv qb badZ witnessOf reductionV reductionW
    (bls12377KzgParametersOfShippingCall data)
    soundness.toConcreteSoundness
    security queryBudgetV queryBudgetW hboundV hboundW

/-! ## Exploratory fixed-parameter GIPA games

These definitions retain the earlier `acceptsFork := True` target and the
extractor-compatibility fixed point.  They document the remaining gap only;
no theorem in this section is a verification-manifest or proof-audit root.
-/

/-- Exact concrete pairing boundary required to turn an abstract S1 statement
into fixed BLS12-377 GIPA parameters.  `FsStatement` does not itself carry this
evidence, so it must not be reconstructed implicitly. -/
structure Bls12377FixedGipaPairing {μ : Nat}
    (stmt : Bls12377ReductionStatement μ) where
  pairingBilinear : PublishedPairingBilinear
  pairing_exact :
    stmt.e = executablePairingLinear pairingBilinear

/-- The shipping verifier already uses `statementWithExecutablePairing`.
Consequently its exact GIPA pairing boundary is definitional once the cited
published bilinearity premise is supplied. -/
def bls12377FixedGipaPairingOfExecutableStatement {μ : Nat}
    (hbilinear : PublishedPairingBilinear)
    (baseStmt : Bls12377ReductionStatement μ) :
    Bls12377FixedGipaPairing
      (statementWithExecutablePairing hbilinear baseStmt) where
  pairingBilinear := hbilinear
  pairing_exact := statementWithExecutablePairing_e hbilinear baseStmt

/-- The concrete shipping call already packages the exact executable-pairing
statement, so the GIPA pairing boundary is constructed without an additional
equality premise. -/
def bls12377FixedGipaPairingOfShippingCall
    {D : Type} {μ arity : Nat}
    (data :
      Ipp.Extracted.ShippingVerifierComposition.ShippingCallData
        D μ arity) :
    Bls12377FixedGipaPairing data.statement :=
  bls12377FixedGipaPairingOfExecutableStatement
    data.hbilinear data.baseStmt

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

end

end Ipp.S1
