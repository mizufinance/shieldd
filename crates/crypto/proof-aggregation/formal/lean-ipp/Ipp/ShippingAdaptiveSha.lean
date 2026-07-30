import Ipp.ShippingV1

/-!
Adaptive SHA-256 binding reduction for shipping inputs.

The production binding contract supplies exact SHA-256 preimages.  This
module lifts the existing pointwise alias-to-collision theorem to an
adversarial probability experiment.  SHA-256 collision resistance remains
an explicit, query-budget-indexed computational assumption.
-/

open OracleSpec OracleComp ENNReal
open scoped OracleSpec.PrimitiveQuery ENNReal

namespace Ipp.ShippingAdaptiveSha

noncomputable section

open Ipp.ShippingV1

/-- The deployed SHA-256 call interface exposed to the adaptive adversary. -/
abbrev Sha256OracleSpec :=
  Bytes →ₒ Bytes

/-- Adversarial randomness and deployed SHA-256 calls share one source
program, so the declared total query budget covers the complete adaptive
execution rather than indexing an already-produced probability computation. -/
abbrev AdaptiveShaSourceSpec :=
  unifSpec + Sha256OracleSpec

/-- Execute every SHA query with the exact deterministic function retained by
the shipping binding contract, while forwarding adversarial randomness to
`ProbComp`. -/
def deployedShaImpl (sha256 : Bytes → Bytes) :
    QueryImpl AdaptiveShaSourceSpec ProbComp :=
  (HasQuery.toQueryImpl (spec := unifSpec) (m := ProbComp)) +
    (fun input : Bytes => pure (sha256 input))

@[simp] theorem deployedShaImpl_sha256_query
    (sha256 : Bytes → Bytes) (input : Bytes) :
    deployedShaImpl sha256 (Sum.inr input) =
      (pure (sha256 input) : ProbComp Bytes) := by
  rfl

/-- `simulateQ` replaces one explicit adaptive SHA query by exactly the
deployed deterministic SHA execution. -/
@[simp] theorem simulateQ_deployedSha_query
    (sha256 : Bytes → Bytes) (input : Bytes) :
    simulateQ (deployedShaImpl sha256)
        (liftM ((AdaptiveShaSourceSpec).query (Sum.inr input)) :
          OracleComp AdaptiveShaSourceSpec Bytes) =
      (pure (sha256 input) : ProbComp Bytes) := by
  rw [simulateQ_spec_query]
  exact deployedShaImpl_sha256_query sha256 input

/-- One adversarial substitution attempt after both inputs have passed the
production binding contract. The accepted bit is the shipping verifier's
observable decision for the substituted input. -/
structure Attempt
    {μ : Nat} {F G1 G2 GT Row DecodedProof : Type}
    [CommSemiring F] [AddCommMonoid G1] [Module F G1]
    [AddCommMonoid G2] [Module F G2]
    [AddCommMonoid GT] [Module F GT]
    (contract :
      StatementBindingContract μ F G1 G2 GT Row DecodedProof) where
  reference : ShippingV1Input μ F G1 G2 GT Row DecodedProof
  candidate : ShippingV1Input μ F G1 G2 GT Row DecodedProof
  referenceSupported : contract.supported reference
  candidateSupported : contract.supported candidate
  accepted : Bool

/-- The adversary succeeded in getting an observable binding substitution
accepted. -/
def AcceptedAlias
    {μ : Nat} {F G1 G2 GT Row DecodedProof : Type}
    [CommSemiring F] [AddCommMonoid G1] [Module F G1]
    [AddCommMonoid G2] [Module F G2]
    [AddCommMonoid GT] [Module F GT]
    {contract :
      StatementBindingContract μ F G1 G2 GT Row DecodedProof} :
    Attempt contract → Prop :=
  fun attempt =>
    attempt.accepted = true ∧
      ShippingBindingAlias attempt.reference attempt.candidate

/-- The exact collision event charged to the deployed SHA-256 assumption. -/
def Collision
    {μ : Nat} {F G1 G2 GT Row DecodedProof : Type}
    [CommSemiring F] [AddCommMonoid G1] [Module F G1]
    [AddCommMonoid G2] [Module F G2]
    [AddCommMonoid GT] [Module F GT]
    {contract :
      StatementBindingContract μ F G1 G2 GT Row DecodedProof} :
    Attempt contract → Prop :=
  fun attempt =>
    ShippingShaCollision contract attempt.reference attempt.candidate

/-- The deployed adaptive SHA experiment.  The adversary performs explicit
SHA queries in `AdaptiveShaSourceSpec`; `simulateQ` replaces each one by the
concrete deterministic `StatementBindingContract.sha256` execution. -/
def deployedShaExperiment
    {μ : Nat} {F G1 G2 GT Row DecodedProof : Type}
    [CommSemiring F] [AddCommMonoid G1] [Module F G1]
    [AddCommMonoid G2] [Module F G2]
    [AddCommMonoid GT] [Module F GT]
    {contract :
      StatementBindingContract μ F G1 G2 GT Row DecodedProof}
    (adversary :
      OracleComp AdaptiveShaSourceSpec (Attempt contract)) :
    ProbComp (Attempt contract) :=
  simulateQ (deployedShaImpl contract.sha256) adversary

/-- Every accepted alias produces two distinct concrete preimages with one
equal deployed SHA-256 digest. -/
theorem acceptedAlias_implies_collision
    {μ : Nat} {F G1 G2 GT Row DecodedProof : Type}
    [CommSemiring F] [AddCommMonoid G1] [Module F G1]
    [AddCommMonoid G2] [Module F G2]
    [AddCommMonoid GT] [Module F GT]
    {contract :
      StatementBindingContract μ F G1 G2 GT Row DecodedProof}
    (attempt : Attempt contract)
    (halias : AcceptedAlias attempt) :
    Collision attempt :=
  shipping_binding_alias_implies_sha_collision
    contract attempt.reference attempt.candidate
    attempt.referenceSupported attempt.candidateSupported halias.2

/-- External collision-resistance postcondition for one adaptive experiment.
The budget is connected to the actual SHA-querying source program by
`IsTotalQueryBound`; it is not a phantom index on an already-produced
`ProbComp`. -/
structure CollisionSecurity
    {μ : Nat} {F G1 G2 GT Row DecodedProof : Type}
    [CommSemiring F] [AddCommMonoid G1] [Module F G1]
    [AddCommMonoid G2] [Module F G2]
    [AddCommMonoid GT] [Module F GT]
    {contract :
      StatementBindingContract μ F G1 G2 GT Row DecodedProof}
    (adversary :
      OracleComp AdaptiveShaSourceSpec (Attempt contract))
    (queryBudget : Nat) where
  queryBound : IsTotalQueryBound adversary queryBudget
  epsilon : ℝ≥0∞
  collision_le :
    Pr[Collision | deployedShaExperiment adversary] ≤ epsilon

/-- Adaptive accepted substitutions are bounded by the exact SHA-256
collision advantage for the same experiment and declared query budget. -/
theorem adaptive_shipping_sha256_collision_reduction
    {μ : Nat} {F G1 G2 GT Row DecodedProof : Type}
    [CommSemiring F] [AddCommMonoid G1] [Module F G1]
    [AddCommMonoid G2] [Module F G2]
    [AddCommMonoid GT] [Module F GT]
    {contract :
      StatementBindingContract μ F G1 G2 GT Row DecodedProof}
    (adversary :
      OracleComp AdaptiveShaSourceSpec (Attempt contract))
    (queryBudget : Nat)
    (security : CollisionSecurity adversary queryBudget) :
    Pr[AcceptedAlias | deployedShaExperiment adversary] ≤
      security.epsilon := by
  calc
    _ ≤ Pr[Collision | deployedShaExperiment adversary] := by
      apply probEvent_mono
      intro attempt _ halias
      exact acceptedAlias_implies_collision attempt halias
    _ ≤ security.epsilon := security.collision_le

/-- Real acceptance outside the SHA-256 collision event. -/
def GoodReal {Real : Type}
    (realEvent shaBad : Real → Prop) : Real → Prop :=
  fun output => realEvent output ∧ ¬shaBad output

/-- Adaptive Blake2b replacement contract on the same real experiment.  Only
the collision-free real branch is compared with the ideal experiment; the
collision branch is charged exactly once to SHA-256. -/
structure Blake2bRomSecurity
    {Real Ideal : Type}
    (realExperiment : ProbComp Real)
    (realEvent shaBad : Real → Prop)
    (idealExperiment : ProbComp Ideal)
    (idealEvent : Ideal → Prop) where
  epsilon : ℝ≥0∞
  good_real_le_ideal_add :
    Pr[GoodReal realEvent shaBad | realExperiment] ≤
      Pr[idealEvent | idealExperiment] + epsilon

/-- Adaptive bad-event accounting. Unlike the old fixed-input `badMass`
case split, both the SHA collision and real acceptance are events in the same
adversarial experiment. -/
theorem adaptive_real_acceptance_le_ideal_add_hash_losses
    {Real Ideal : Type}
    (realExperiment : ProbComp Real)
    (realEvent shaBad : Real → Prop)
    (idealExperiment : ProbComp Ideal)
    (idealEvent : Ideal → Prop)
    (epsilonSha : ℝ≥0∞)
    (shaBad_le : Pr[shaBad | realExperiment] ≤ epsilonSha)
    (rom : Blake2bRomSecurity realExperiment realEvent shaBad
      idealExperiment idealEvent) :
    Pr[realEvent | realExperiment] ≤
      Pr[idealEvent | idealExperiment] + epsilonSha + rom.epsilon := by
  calc
    Pr[realEvent | realExperiment] ≤
        Pr[GoodReal realEvent shaBad | realExperiment] +
          Pr[shaBad | realExperiment] := by
      calc
        _ ≤ Pr[fun output =>
              GoodReal realEvent shaBad output ∨ shaBad output |
            realExperiment] := by
          apply probEvent_mono
          intro output _ hreal
          by_cases hbad : shaBad output
          · exact Or.inr hbad
          · exact Or.inl ⟨hreal, hbad⟩
        _ ≤ _ :=
          probEvent_or_le realExperiment
            (GoodReal realEvent shaBad) shaBad
    _ ≤
        (Pr[idealEvent | idealExperiment] + rom.epsilon) +
          epsilonSha :=
      add_le_add rom.good_real_le_ideal_add shaBad_le
    _ =
        Pr[idealEvent | idealExperiment] + epsilonSha + rom.epsilon := by
      ac_rfl

#print axioms acceptedAlias_implies_collision
#print axioms deployedShaImpl_sha256_query
#print axioms simulateQ_deployedSha_query
#print axioms adaptive_shipping_sha256_collision_reduction
#print axioms adaptive_real_acceptance_le_ideal_add_hash_losses

end

end Ipp.ShippingAdaptiveSha
