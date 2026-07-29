import Ipp.S1Computational
import Ipp.ShippingAdaptive
import Ipp.ShippingAdaptiveSha
import Ipp.ShippingToGoal

/-!
Adaptive shipping soundness composition.

The outer theorem charges SHA-256 and Blake2b replacement once around one
shared byte oracle. Each reachable invalid call must separately construct its
exact fixed-call byte-to-FsGame refinement and S1 instance.
-/

open OracleSpec OracleComp ENNReal
open scoped OracleSpec.PrimitiveQuery ENNReal

namespace Ipp.ShippingAdaptiveToGoal

noncomputable section

/-- Type-zero projection of one heterogeneous bundle call.

`ShippingCallData` itself cannot be returned by VCVio's `ProbComp`: it stores
effect carrier *types* and therefore lives in `Type 1`, whereas
`ProbComp : Type → Type`.  This package retains every Type-zero field needed
to identify the selected bundle call and its fixed formal S1 experiment.
The exact relation to the concrete higher-universe record is kept separately
in `RepresentsData`. -/
structure PackedShippingCall (D : Type) : Type where
  μ : Nat
  arity : Nat
  expected :
    Aeneas.Std.alloc.vec.Vec
      Ipp.Extracted.AppVerifierStateMachine.CallId
  results :
    Aeneas.Std.alloc.vec.Vec
      Ipp.Extracted.AppVerifierStateMachine.CallResult
  id : Ipp.Extracted.AppVerifierStateMachine.CallId
  projection :
    Ipp.ShippingV1.ShippingProjection μ Ipp.Bls12377.Fr
      Ipp.Bls12377.g1PrimeSubgroup
      Ipp.Bls12377.g2PrimeSubgroup
      Ipp.Bls12377.ArkPairingOutput
      (Fin arity → Ipp.Bls12377.Fr)
      (Ipp.Extracted.ShippingVerifierComposition.ValidatedProof D)
  contract :
    Ipp.ShippingV1.StatementBindingContract μ Ipp.Bls12377.Fr
      Ipp.Bls12377.g1PrimeSubgroup
      Ipp.Bls12377.g2PrimeSubgroup
      Ipp.Bls12377.ArkPairingOutput
      (Fin arity → Ipp.Bls12377.Fr)
      (Ipp.Extracted.ShippingVerifierComposition.ValidatedProof D)
  input :
    Ipp.ShippingV1.ShippingV1Input μ Ipp.Bls12377.Fr
      Ipp.Bls12377.g1PrimeSubgroup
      Ipp.Bls12377.g2PrimeSubgroup
      Ipp.Bls12377.ArkPairingOutput
      (Fin arity → Ipp.Bls12377.Fr)
      (Ipp.Extracted.ShippingVerifierComposition.ValidatedProof D)
  statement :
    Ipp.FsStatement μ Ipp.Bls12377.Fr
      Ipp.Bls12377.g1PrimeSubgroup
      Ipp.Bls12377.g2PrimeSubgroup
      Ipp.Bls12377.ArkPairingOutput
  proof :
    Ipp.Proof μ Ipp.Bls12377.Fr
      Ipp.Bls12377.g1PrimeSubgroup
      Ipp.Bls12377.g2PrimeSubgroup
      Ipp.Bls12377.ArkPairingOutput

namespace PackedShippingCall

/-- Exact, conclusion-free relation to one concrete production call record.
The dependent indices are definitionally shared; every remaining Type-zero
field is related by equality. -/
structure RepresentsData
    {D : Type}
    (call : PackedShippingCall D)
    (data :
      Ipp.Extracted.ShippingVerifierComposition.ShippingCallData
        D call.μ call.arity) : Prop where
  expected : data.expected = call.expected
  results : data.results = call.results
  id : data.call.id = call.id
  projection : data.projection = call.projection
  contract : data.contract = call.contract
  input : data.input = call.input
  statement : data.statement = call.statement
  proof : data.proof = call.proof

/-- Forget only the higher-universe effect carriers from one concrete call. -/
def ofData
    {D : Type} {μ arity : Nat}
    (data :
      Ipp.Extracted.ShippingVerifierComposition.ShippingCallData
        D μ arity) :
    PackedShippingCall D := {
  μ := μ
  arity := arity
  expected := data.expected
  results := data.results
  id := data.call.id
  projection := data.projection
  contract := data.contract
  input := data.input
  statement := data.statement
  proof := data.proof
}

/-- Packing a concrete call preserves all retained fields exactly. -/
theorem ofData_represents
    {D : Type} {μ arity : Nat}
    (data :
      Ipp.Extracted.ShippingVerifierComposition.ShippingCallData
        D μ arity) :
    RepresentsData (ofData data) data := by
  exact {
    expected := rfl
    results := rfl
    id := rfl
    projection := rfl
    contract := rfl
    input := rfl
    statement := rfl
    proof := rfl
  }

/-- Homogeneous outer choice used by the one shared byte-oracle experiment.
The decoded proof remains dependently indexed inside `call`. -/
abbrev AdaptiveChoice (D : Type) :=
  Ipp.ShippingAdaptive.Choice (PackedShippingCall D) Unit

/-- Canonical fixed-formal-call view selected from the dependent package. -/
def fixedChoice
    {D : Type} (call : PackedShippingCall D) :
    Ipp.ShippingAdaptive.Choice (PackedShippingCall D)
      (Ipp.Proof call.μ Ipp.Bls12377.Fr
        Ipp.Bls12377.g1PrimeSubgroup
        Ipp.Bls12377.g2PrimeSubgroup
        Ipp.Bls12377.ArkPairingOutput) := {
  call := call
  proof := call.proof
}

end PackedShippingCall

/-- One heterogeneous SHA-256 substitution attempt. Reference and candidate
necessarily share the selected call's dependent `μ` and row arity. -/
structure PackedShaAttempt (D : Type) : Type where
  call : PackedShippingCall D
  reference :
    Ipp.ShippingV1.ShippingV1Input call.μ Ipp.Bls12377.Fr
      Ipp.Bls12377.g1PrimeSubgroup
      Ipp.Bls12377.g2PrimeSubgroup
      Ipp.Bls12377.ArkPairingOutput
      (Fin call.arity → Ipp.Bls12377.Fr)
      (Ipp.Extracted.ShippingVerifierComposition.ValidatedProof D)
  candidate :
    Ipp.ShippingV1.ShippingV1Input call.μ Ipp.Bls12377.Fr
      Ipp.Bls12377.g1PrimeSubgroup
      Ipp.Bls12377.g2PrimeSubgroup
      Ipp.Bls12377.ArkPairingOutput
      (Fin call.arity → Ipp.Bls12377.Fr)
      (Ipp.Extracted.ShippingVerifierComposition.ValidatedProof D)
  referenceSupported : call.contract.supported reference
  candidateSupported : call.contract.supported candidate
  accepted : Bool

/-- Accepted substitution of distinct data under one packed call contract. -/
def PackedAcceptedAlias
    {D : Type} (attempt : PackedShaAttempt D) : Prop :=
  attempt.accepted = true ∧
    Ipp.ShippingV1.ShippingBindingAlias
      attempt.reference attempt.candidate

/-- Exact SHA-256 collision event induced by a packed substitution. -/
def PackedShaCollision
    {D : Type} (attempt : PackedShaAttempt D) : Prop :=
  Ipp.ShippingV1.ShippingShaCollision attempt.call.contract
    attempt.reference attempt.candidate

/-- The fixed-call binding theorem applies after eliminating the dependent
package; no heterogeneous collision premise is added. -/
theorem packedAcceptedAlias_implies_shaCollision
    {D : Type} (attempt : PackedShaAttempt D)
    (halias : PackedAcceptedAlias attempt) :
    PackedShaCollision attempt :=
  Ipp.ShippingV1.shipping_binding_alias_implies_sha_collision
    attempt.call.contract attempt.reference attempt.candidate
    attempt.referenceSupported attempt.candidateSupported halias.2

/-- Query-budget-indexed external SHA-256 assumption for the exact packed
collision event. -/
structure PackedSha256CollisionSecurity
    {D : Type}
    (experiment : ProbComp (PackedShaAttempt D))
    (queryBudget : Nat) where
  epsilon : ℝ≥0∞
  collision_le :
    Pr[PackedShaCollision | experiment] ≤ epsilon

/-- Accepted packed aliases reduce pointwise to the exact collision event. -/
theorem adaptive_packed_sha256_collision_reduction
    {D : Type}
    (experiment : ProbComp (PackedShaAttempt D))
    (queryBudget : Nat)
    (security :
      PackedSha256CollisionSecurity experiment queryBudget) :
    Pr[PackedAcceptedAlias | experiment] ≤ security.epsilon := by
  calc
    _ ≤ Pr[PackedShaCollision | experiment] := by
      apply probEvent_mono
      intro attempt _ halias
      exact packedAcceptedAlias_implies_shaCollision attempt halias
    _ ≤ security.epsilon := security.collision_le

/-- The exact formal S1 instance belonging to one selected decoded proof.
This record retains the statement, query function, bad set, query proof, and
computational extraction contract consumed by the S1 theorem. -/
structure FixedCallS1Instance
    {F G1 G2 GT Call : Type}
    [Field F]
    [AddCommGroup G1] [Module F G1]
    [AddCommGroup G2] [Module F G2]
    [AddCommGroup GT] [Module F GT]
    [DecidableEq F] [DecidableEq G1] [DecidableEq G2] [DecidableEq GT]
    [Fintype F]
    [(Ipp.FsSourceSpec F G1 G2 GT).DecidableEq]
    [IsUniformSpec (Ipp.FsSourceSpec F G1 G2 GT)]
    [∀ j, SampleableType ((Ipp.FsSourceSpec F G1 G2 GT).Range j)]
    [unifSpec ⊂ₒ Ipp.FsSourceSpec F G1 G2 GT]
    [IsUniformSpec (Ipp.FsWrappedSpec F)]
    [∀ j, SampleableType ((Ipp.FsWrappedSpec F).Range j)]
    [unifSpec ⊂ₒ Ipp.FsWrappedSpec F]
    [unifSpec ˡ⊂ₒ Ipp.FsWrappedSpec F]
    {μ : Nat}
    (choice : Ipp.ShippingAdaptive.Choice Call
      (Ipp.Proof μ F G1 G2 GT)) where
  statement : Ipp.FsStatement μ F G1 G2 GT
  qb : (Ipp.FsWrappedSpec F).Domain → Nat
  badZ : Finset F
  degreeBound : Nat
  badZCard : badZ.card ≤ degreeBound
  fsQueryBound : IsTotalQueryBound
    (Ipp.FsGame statement
      (pure choice.proof :
        OracleComp (Ipp.FsSourceSpec F G1 G2 GT)
          (Ipp.Proof μ F G1 G2 GT)))
    (Ipp.Q (qb (Sum.inr ())))
  security : Ipp.S1.S1ExtractionSecurity statement
    (pure choice.proof :
      OracleComp (Ipp.FsSourceSpec F G1 G2 GT)
        (Ipp.Proof μ F G1 G2 GT))
    qb badZ
  invalidProof :
    ¬Ipp.SnarkPackV1.Refinement.HasValidRepresentation
      statement choice.proof

namespace FixedCallS1Instance

variable
    {F G1 G2 GT Call : Type}
    [Field F]
    [AddCommGroup G1] [Module F G1]
    [AddCommGroup G2] [Module F G2]
    [AddCommGroup GT] [Module F GT]
    [DecidableEq F] [DecidableEq G1] [DecidableEq G2] [DecidableEq GT]
    [Fintype F]
    [(Ipp.FsSourceSpec F G1 G2 GT).DecidableEq]
    [IsUniformSpec (Ipp.FsSourceSpec F G1 G2 GT)]
    [∀ j, SampleableType ((Ipp.FsSourceSpec F G1 G2 GT).Range j)]
    [unifSpec ⊂ₒ Ipp.FsSourceSpec F G1 G2 GT]
    [IsUniformSpec (Ipp.FsWrappedSpec F)]
    [∀ j, SampleableType ((Ipp.FsWrappedSpec F).Range j)]
    [unifSpec ⊂ₒ Ipp.FsWrappedSpec F]
    [unifSpec ˡ⊂ₒ Ipp.FsWrappedSpec F]
    {μ : Nat}
    {choice : Ipp.ShippingAdaptive.Choice Call
      (Ipp.Proof μ F G1 G2 GT)}

/-- Acceptance probability of the exact fixed formal statement and proof. -/
def fsAcceptance (fixed : FixedCallS1Instance choice) : ℝ≥0∞ :=
  Pr[Ipp.Accepted |
    Ipp.fsProbComp fixed.statement
      (pure choice.proof :
        OracleComp (Ipp.FsSourceSpec F G1 G2 GT)
          (Ipp.Proof μ F G1 G2 GT))]

/-- The unchanged S1 fork expression for this fixed call. -/
def forkExpression (fixed : FixedCallS1Instance choice) : ℝ≥0∞ :=
  ((Ipp.forkTreeStep (fixed.qb (Sum.inr ()) + 1)
      (Fintype.card F))^[μ])
    (fixed.fsAcceptance -
      Ipp.S1.badEventError
        (F := F) (fixed.qb (Sum.inr ()))
        (2 ^ μ - 1) fixed.degreeBound)

/-- S1 computational soundness discharges the fixed call's exact fork
expression; no outer adaptive probability is assumed here. -/
theorem forkExpression_le_extraction
    (fixed : FixedCallS1Instance choice) :
    fixed.forkExpression ≤ fixed.security.total :=
  Ipp.S1.invalid_proof_fork_bound_le_extraction_advantage
    fixed.statement choice.proof fixed.qb fixed.badZ fixed.degreeBound
    fixed.badZCard fixed.fsQueryBound fixed.security fixed.invalidProof

end FixedCallS1Instance

/-- A fixed S1 instance tied definitionally to one heterogeneous packed proof
and propositionally to that packed call's exact formal statement. -/
structure PackedFixedCallS1Instance
    [DecidableEq Ipp.Bls12377.g1PrimeSubgroup]
    [DecidableEq Ipp.Bls12377.g2PrimeSubgroup]
    [DecidableEq Ipp.Bls12377.ArkPairingOutput]
    [(Ipp.FsSourceSpec Ipp.Bls12377.Fr
      Ipp.Bls12377.g1PrimeSubgroup
      Ipp.Bls12377.g2PrimeSubgroup
      Ipp.Bls12377.ArkPairingOutput).DecidableEq]
    [IsUniformSpec
      (Ipp.FsSourceSpec Ipp.Bls12377.Fr
        Ipp.Bls12377.g1PrimeSubgroup
        Ipp.Bls12377.g2PrimeSubgroup
        Ipp.Bls12377.ArkPairingOutput)]
    [∀ j, SampleableType
      ((Ipp.FsSourceSpec Ipp.Bls12377.Fr
        Ipp.Bls12377.g1PrimeSubgroup
        Ipp.Bls12377.g2PrimeSubgroup
        Ipp.Bls12377.ArkPairingOutput).Range j)]
    [unifSpec ⊂ₒ
      Ipp.FsSourceSpec Ipp.Bls12377.Fr
        Ipp.Bls12377.g1PrimeSubgroup
        Ipp.Bls12377.g2PrimeSubgroup
        Ipp.Bls12377.ArkPairingOutput]
    [IsUniformSpec (Ipp.FsWrappedSpec Ipp.Bls12377.Fr)]
    [∀ j, SampleableType
      ((Ipp.FsWrappedSpec Ipp.Bls12377.Fr).Range j)]
    [unifSpec ⊂ₒ Ipp.FsWrappedSpec Ipp.Bls12377.Fr]
    [unifSpec ˡ⊂ₒ Ipp.FsWrappedSpec Ipp.Bls12377.Fr]
    {D : Type}
    (call : PackedShippingCall D) where
  fixed : FixedCallS1Instance call.fixedChoice
  statementExact : fixed.statement = call.statement

/-- Narrow cache-conditioned continuation boundary for a reachable packed
production call.  The concrete higher-universe call is retained here, outside
the sampled `ProbComp` output, and is tied field-for-field to the Type-zero
package.  Constructing `cachedVerifier_le` from production remains open; it is
the same local byte-to-field/FsGame coupling boundary as in the fixed-μ
theorem, not the outer adaptive conclusion. -/
structure PackedReachableFixedCallRefinement
    [DecidableEq Ipp.Bls12377.g1PrimeSubgroup]
    [DecidableEq Ipp.Bls12377.g2PrimeSubgroup]
    [DecidableEq Ipp.Bls12377.ArkPairingOutput]
    [(Ipp.FsSourceSpec Ipp.Bls12377.Fr
      Ipp.Bls12377.g1PrimeSubgroup
      Ipp.Bls12377.g2PrimeSubgroup
      Ipp.Bls12377.ArkPairingOutput).DecidableEq]
    [IsUniformSpec
      (Ipp.FsSourceSpec Ipp.Bls12377.Fr
        Ipp.Bls12377.g1PrimeSubgroup
        Ipp.Bls12377.g2PrimeSubgroup
        Ipp.Bls12377.ArkPairingOutput)]
    [∀ j, SampleableType
      ((Ipp.FsSourceSpec Ipp.Bls12377.Fr
        Ipp.Bls12377.g1PrimeSubgroup
        Ipp.Bls12377.g2PrimeSubgroup
        Ipp.Bls12377.ArkPairingOutput).Range j)]
    [unifSpec ⊂ₒ
      Ipp.FsSourceSpec Ipp.Bls12377.Fr
        Ipp.Bls12377.g1PrimeSubgroup
        Ipp.Bls12377.g2PrimeSubgroup
        Ipp.Bls12377.ArkPairingOutput]
    [IsUniformSpec (Ipp.FsWrappedSpec Ipp.Bls12377.Fr)]
    [∀ j, SampleableType
      ((Ipp.FsWrappedSpec Ipp.Bls12377.Fr).Range j)]
    [unifSpec ⊂ₒ Ipp.FsWrappedSpec Ipp.Bls12377.Fr]
    [unifSpec ˡ⊂ₒ Ipp.FsWrappedSpec Ipp.Bls12377.Fr]
    [SampleableType Ipp.ShippingHashGame.DigestBytes]
    {D : Type}
    (verify : PackedShippingCall.AdaptiveChoice D →
      OracleComp Ipp.ShippingAdaptive.Blake2bSpec Bool)
    (invalid : PackedShippingCall.AdaptiveChoice D → Prop)
    (choice : PackedShippingCall.AdaptiveChoice D)
    (cache : Ipp.ShippingAdaptive.Cache)
    (fixed : PackedFixedCallS1Instance choice.call) where
  data :
    Ipp.Extracted.ShippingVerifierComposition.ShippingCallData
      D choice.call.μ choice.call.arity
  represents : choice.call.RepresentsData data
  couplingLoss : ℝ≥0∞
  cachedVerifier_le :
    Pr[Ipp.ShippingAdaptive.FixedInvalidAccepted invalid choice |
        Ipp.ShippingAdaptive.fixedCallRun verify choice cache] ≤
      fixed.fixed.fsAcceptance + couplingLoss

/-- Heterogeneous adaptive composition over bundle-selected dependent calls.

The adversary and selected verifier still execute under one byte-oracle cache.
After selection, `choice.call.μ` fixes the exact existing S1 theorem instance;
no cast between proof sizes and no maximum-μ surrogate is introduced.  This
theorem does not construct the cache-conditioned continuation refinement from
production—it exposes that one narrow boundary per reachable invalid call. -/
theorem packed_adaptive_shipping_invalid_acceptance_quantitative
    [SampleableType Ipp.ShippingHashGame.DigestBytes]
    [DecidableEq Ipp.Bls12377.g1PrimeSubgroup]
    [DecidableEq Ipp.Bls12377.g2PrimeSubgroup]
    [DecidableEq Ipp.Bls12377.ArkPairingOutput]
    [(Ipp.FsSourceSpec Ipp.Bls12377.Fr
      Ipp.Bls12377.g1PrimeSubgroup
      Ipp.Bls12377.g2PrimeSubgroup
      Ipp.Bls12377.ArkPairingOutput).DecidableEq]
    [IsUniformSpec
      (Ipp.FsSourceSpec Ipp.Bls12377.Fr
        Ipp.Bls12377.g1PrimeSubgroup
        Ipp.Bls12377.g2PrimeSubgroup
        Ipp.Bls12377.ArkPairingOutput)]
    [∀ j, SampleableType
      ((Ipp.FsSourceSpec Ipp.Bls12377.Fr
        Ipp.Bls12377.g1PrimeSubgroup
        Ipp.Bls12377.g2PrimeSubgroup
        Ipp.Bls12377.ArkPairingOutput).Range j)]
    [unifSpec ⊂ₒ
      Ipp.FsSourceSpec Ipp.Bls12377.Fr
        Ipp.Bls12377.g1PrimeSubgroup
        Ipp.Bls12377.g2PrimeSubgroup
        Ipp.Bls12377.ArkPairingOutput]
    [IsUniformSpec (Ipp.FsWrappedSpec Ipp.Bls12377.Fr)]
    [∀ j, SampleableType
      ((Ipp.FsWrappedSpec Ipp.Bls12377.Fr).Range j)]
    [unifSpec ⊂ₒ Ipp.FsWrappedSpec Ipp.Bls12377.Fr]
    [unifSpec ˡ⊂ₒ Ipp.FsWrappedSpec Ipp.Bls12377.Fr]
    {D : Type}
    (adversary : OracleComp Ipp.ShippingAdaptive.Blake2bSpec
      (PackedShippingCall.AdaptiveChoice D))
    (verify : PackedShippingCall.AdaptiveChoice D →
      OracleComp Ipp.ShippingAdaptive.Blake2bSpec Bool)
    (invalid : PackedShippingCall.AdaptiveChoice D → Prop)
    (realExperiment : ProbComp (PackedShaAttempt D))
    (realInvalidAccepted : PackedShaAttempt D → Prop)
    (shaQueryBudget : Nat)
    (sha : PackedSha256CollisionSecurity realExperiment shaQueryBudget)
    (rom : Ipp.ShippingAdaptiveSha.Blake2bRomSecurity
      realExperiment realInvalidAccepted PackedShaCollision
      (Ipp.ShippingAdaptive.idealExperiment adversary verify)
      (Ipp.ShippingAdaptive.InvalidAccepted invalid))
    (fixedS1 : ∀ choice cache,
      (choice, cache) ∈
          support (Ipp.ShippingAdaptive.adversaryRun adversary) →
        invalid choice →
          PackedFixedCallS1Instance choice.call)
    (fixedRefinement : ∀ choice cache
      (hreachable : (choice, cache) ∈
        support (Ipp.ShippingAdaptive.adversaryRun adversary))
      (hinvalid : invalid choice),
      PackedReachableFixedCallRefinement verify invalid choice cache
        (fixedS1 choice cache hreachable hinvalid))
    (fixedEnvelope : ℝ≥0∞)
    (henvelope : ∀ choice cache
      (hreachable : (choice, cache) ∈
        support (Ipp.ShippingAdaptive.adversaryRun adversary))
      (hinvalid : invalid choice),
      let fixed := fixedS1 choice cache hreachable hinvalid
      let refinement :=
        fixedRefinement choice cache hreachable hinvalid
      fixed.fixed.fsAcceptance + refinement.couplingLoss ≤ fixedEnvelope)
    (adversaryQueries verifierQueries : Nat)
    (hadversary :
      IsTotalQueryBound adversary adversaryQueries)
    (hverifier : ∀ choice,
      IsTotalQueryBound (verify choice) verifierQueries) :
    Pr[realInvalidAccepted | realExperiment] ≤
        fixedEnvelope + sha.epsilon + rom.epsilon ∧
      IsTotalQueryBound
        (Ipp.ShippingAdaptive.sharedProgram adversary verify)
        (adversaryQueries + verifierQueries) ∧
      ∀ choice cache
          (hreachable : (choice, cache) ∈
            support (Ipp.ShippingAdaptive.adversaryRun adversary))
          (hinvalid : invalid choice),
        let fixed := fixedS1 choice cache hreachable hinvalid
        IsTotalQueryBound
            (Ipp.FsGame choice.call.statement
              (pure choice.call.proof :
                OracleComp
                  (Ipp.FsSourceSpec Ipp.Bls12377.Fr
                    Ipp.Bls12377.g1PrimeSubgroup
                    Ipp.Bls12377.g2PrimeSubgroup
                    Ipp.Bls12377.ArkPairingOutput)
                  (Ipp.Proof choice.call.μ Ipp.Bls12377.Fr
                    Ipp.Bls12377.g1PrimeSubgroup
                    Ipp.Bls12377.g2PrimeSubgroup
                    Ipp.Bls12377.ArkPairingOutput)))
            (Ipp.Q (fixed.fixed.qb (Sum.inr ()))) ∧
          fixed.fixed.forkExpression ≤ fixed.fixed.security.total := by
  have hideal :
      Pr[Ipp.ShippingAdaptive.InvalidAccepted invalid |
          Ipp.ShippingAdaptive.idealExperiment adversary verify] ≤
        fixedEnvelope := by
    apply
      Ipp.ShippingAdaptive.adaptive_invalidAcceptance_le_of_reachable_fixedCall
        adversary verify invalid fixedEnvelope
    intro choice cache hreachable
    by_cases hinvalid : invalid choice
    · exact le_trans
        (fixedRefinement choice cache hreachable hinvalid).cachedVerifier_le
        (henvelope choice cache hreachable hinvalid)
    · have hzero :
          Pr[Ipp.ShippingAdaptive.FixedInvalidAccepted invalid choice |
              Ipp.ShippingAdaptive.fixedCallRun verify choice cache] = 0 := by
        apply probEvent_eq_zero
        intro output _ hbad
        exact hinvalid hbad.1
      rw [hzero]
      exact bot_le
  have hreal :=
    Ipp.ShippingAdaptiveSha.adaptive_real_acceptance_le_ideal_add_hash_losses
      realExperiment realInvalidAccepted PackedShaCollision
      (Ipp.ShippingAdaptive.idealExperiment adversary verify)
      (Ipp.ShippingAdaptive.InvalidAccepted invalid)
      sha.epsilon sha.collision_le rom
  refine ⟨?_, ?_, ?_⟩
  · exact le_trans hreal
      (add_le_add (add_le_add hideal le_rfl) le_rfl)
  · exact Ipp.ShippingAdaptive.sharedProgram_isTotalQueryBound
      adversary verify adversaryQueries verifierQueries
      hadversary hverifier
  · intro choice cache hreachable hinvalid
    let fixed := fixedS1 choice cache hreachable hinvalid
    refine ⟨?_, fixed.fixed.forkExpression_le_extraction⟩
    simpa only [fixed.statementExact, PackedShippingCall.fixedChoice] using
      fixed.fixed.fsQueryBound

/-- Local continuation refinement required after an adaptive adversary has
selected a call and populated the shared lazy byte-oracle cache. The loss is
only the fixed byte-to-field/FsGame coupling loss for this continuation. -/
structure ReachableFixedCallRefinement
    {F G1 G2 GT Call : Type}
    [Field F]
    [AddCommGroup G1] [Module F G1]
    [AddCommGroup G2] [Module F G2]
    [AddCommGroup GT] [Module F GT]
    [DecidableEq F] [DecidableEq G1] [DecidableEq G2] [DecidableEq GT]
    [Fintype F]
    [(Ipp.FsSourceSpec F G1 G2 GT).DecidableEq]
    [IsUniformSpec (Ipp.FsSourceSpec F G1 G2 GT)]
    [∀ j, SampleableType ((Ipp.FsSourceSpec F G1 G2 GT).Range j)]
    [unifSpec ⊂ₒ Ipp.FsSourceSpec F G1 G2 GT]
    [IsUniformSpec (Ipp.FsWrappedSpec F)]
    [∀ j, SampleableType ((Ipp.FsWrappedSpec F).Range j)]
    [unifSpec ⊂ₒ Ipp.FsWrappedSpec F]
    [unifSpec ˡ⊂ₒ Ipp.FsWrappedSpec F]
    [SampleableType Ipp.ShippingHashGame.DigestBytes]
    {μ : Nat}
    (verify : Ipp.ShippingAdaptive.Choice Call
        (Ipp.Proof μ F G1 G2 GT) →
      OracleComp Ipp.ShippingAdaptive.Blake2bSpec Bool)
    (invalid : Ipp.ShippingAdaptive.Choice Call
      (Ipp.Proof μ F G1 G2 GT) → Prop)
    (choice : Ipp.ShippingAdaptive.Choice Call
      (Ipp.Proof μ F G1 G2 GT))
    (cache : Ipp.ShippingAdaptive.Cache)
    (fixed : FixedCallS1Instance choice) where
  couplingLoss : ℝ≥0∞
  cachedVerifier_le :
    Pr[Ipp.ShippingAdaptive.FixedInvalidAccepted invalid choice |
        Ipp.ShippingAdaptive.fixedCallRun verify choice cache] ≤
      fixed.fsAcceptance + couplingLoss

/-- Full adaptive composition. The byte-oracle adversary and verifier execute
under one cache; SHA-256 and Blake2b losses are each charged once. The final
conjunct exposes, for every reachable invalid selection, both the exact S1
query bound and the unchanged S1 fork expression. -/
theorem adaptive_shipping_invalid_acceptance_quantitative
    [SampleableType Ipp.ShippingHashGame.DigestBytes]
    {F G1 G2 GT Call Row DecodedProof : Type}
    [Field F]
    [AddCommGroup G1] [Module F G1]
    [AddCommGroup G2] [Module F G2]
    [AddCommGroup GT] [Module F GT]
    [DecidableEq F] [DecidableEq G1] [DecidableEq G2] [DecidableEq GT]
    [Fintype F]
    [(Ipp.FsSourceSpec F G1 G2 GT).DecidableEq]
    [IsUniformSpec (Ipp.FsSourceSpec F G1 G2 GT)]
    [∀ j, SampleableType ((Ipp.FsSourceSpec F G1 G2 GT).Range j)]
    [unifSpec ⊂ₒ Ipp.FsSourceSpec F G1 G2 GT]
    [IsUniformSpec (Ipp.FsWrappedSpec F)]
    [∀ j, SampleableType ((Ipp.FsWrappedSpec F).Range j)]
    [unifSpec ⊂ₒ Ipp.FsWrappedSpec F]
    [unifSpec ˡ⊂ₒ Ipp.FsWrappedSpec F]
    {μ : Nat}
    (contract :
      Ipp.ShippingV1.StatementBindingContract
        μ F G1 G2 GT Row DecodedProof)
    (adversary : OracleComp Ipp.ShippingAdaptive.Blake2bSpec
      (Ipp.ShippingAdaptive.Choice Call
        (Ipp.Proof μ F G1 G2 GT)))
    (verify : Ipp.ShippingAdaptive.Choice Call
        (Ipp.Proof μ F G1 G2 GT) →
      OracleComp Ipp.ShippingAdaptive.Blake2bSpec Bool)
    (invalid : Ipp.ShippingAdaptive.Choice Call
      (Ipp.Proof μ F G1 G2 GT) → Prop)
    (realExperiment :
      ProbComp (Ipp.ShippingAdaptiveSha.Attempt contract))
    (realInvalidAccepted :
      Ipp.ShippingAdaptiveSha.Attempt contract → Prop)
    (shaQueryBudget : Nat)
    (sha : Ipp.ShippingAdaptiveSha.CollisionSecurity
      realExperiment shaQueryBudget)
    (rom : Ipp.ShippingAdaptiveSha.Blake2bRomSecurity
      realExperiment realInvalidAccepted
      Ipp.ShippingAdaptiveSha.Collision
      (Ipp.ShippingAdaptive.idealExperiment adversary verify)
      (Ipp.ShippingAdaptive.InvalidAccepted invalid))
    (fixedS1 : ∀ choice cache,
      (choice, cache) ∈
          support (Ipp.ShippingAdaptive.adversaryRun adversary) →
        invalid choice →
          FixedCallS1Instance choice)
    (fixedRefinement : ∀ choice cache
      (hreachable : (choice, cache) ∈
        support (Ipp.ShippingAdaptive.adversaryRun adversary))
      (hinvalid : invalid choice),
      ReachableFixedCallRefinement verify invalid choice cache
        (fixedS1 choice cache hreachable hinvalid))
    (fixedEnvelope : ℝ≥0∞)
    (henvelope : ∀ choice cache
      (hreachable : (choice, cache) ∈
        support (Ipp.ShippingAdaptive.adversaryRun adversary))
      (hinvalid : invalid choice),
      let fixed := fixedS1 choice cache hreachable hinvalid
      let refinement :=
        fixedRefinement choice cache hreachable hinvalid
      fixed.fsAcceptance + refinement.couplingLoss ≤ fixedEnvelope)
    (adversaryQueries verifierQueries : Nat)
    (hadversary :
      IsTotalQueryBound adversary adversaryQueries)
    (hverifier : ∀ choice,
      IsTotalQueryBound (verify choice) verifierQueries) :
    Pr[realInvalidAccepted | realExperiment] ≤
        fixedEnvelope + sha.epsilon + rom.epsilon ∧
      IsTotalQueryBound
        (Ipp.ShippingAdaptive.sharedProgram adversary verify)
        (adversaryQueries + verifierQueries) ∧
      ∀ choice cache
          (hreachable : (choice, cache) ∈
            support (Ipp.ShippingAdaptive.adversaryRun adversary))
          (hinvalid : invalid choice),
        let fixed := fixedS1 choice cache hreachable hinvalid
        IsTotalQueryBound
            (Ipp.FsGame fixed.statement
              (pure choice.proof :
                OracleComp (Ipp.FsSourceSpec F G1 G2 GT)
                  (Ipp.Proof μ F G1 G2 GT)))
            (Ipp.Q (fixed.qb (Sum.inr ()))) ∧
          fixed.forkExpression ≤ fixed.security.total := by
  have hideal :
      Pr[Ipp.ShippingAdaptive.InvalidAccepted invalid |
          Ipp.ShippingAdaptive.idealExperiment adversary verify] ≤
        fixedEnvelope := by
    apply
      Ipp.ShippingAdaptive.adaptive_invalidAcceptance_le_of_reachable_fixedCall
        adversary verify invalid fixedEnvelope
    intro choice cache hreachable
    by_cases hinvalid : invalid choice
    · exact le_trans
        (fixedRefinement choice cache hreachable hinvalid).cachedVerifier_le
        (henvelope choice cache hreachable hinvalid)
    · have hzero :
          Pr[Ipp.ShippingAdaptive.FixedInvalidAccepted invalid choice |
              Ipp.ShippingAdaptive.fixedCallRun verify choice cache] = 0 := by
        apply probEvent_eq_zero
        intro output _ hbad
        exact hinvalid hbad.1
      rw [hzero]
      exact bot_le
  have hreal :=
    Ipp.ShippingAdaptiveSha.adaptive_real_acceptance_le_ideal_add_hash_losses
      realExperiment realInvalidAccepted
      Ipp.ShippingAdaptiveSha.Collision
      (Ipp.ShippingAdaptive.idealExperiment adversary verify)
      (Ipp.ShippingAdaptive.InvalidAccepted invalid)
      sha.epsilon sha.collision_le rom
  refine ⟨?_, ?_, ?_⟩
  · exact le_trans hreal
      (add_le_add (add_le_add hideal le_rfl) le_rfl)
  · exact Ipp.ShippingAdaptive.sharedProgram_isTotalQueryBound
      adversary verify adversaryQueries verifierQueries
      hadversary hverifier
  · intro choice cache hreachable hinvalid
    let fixed := fixedS1 choice cache hreachable hinvalid
    exact ⟨fixed.fsQueryBound, fixed.forkExpression_le_extraction⟩

#print axioms FixedCallS1Instance.forkExpression_le_extraction
#print axioms PackedShippingCall.ofData_represents
#print axioms packedAcceptedAlias_implies_shaCollision
#print axioms adaptive_packed_sha256_collision_reduction
#print axioms packed_adaptive_shipping_invalid_acceptance_quantitative
#print axioms adaptive_shipping_invalid_acceptance_quantitative

end

end Ipp.ShippingAdaptiveToGoal
