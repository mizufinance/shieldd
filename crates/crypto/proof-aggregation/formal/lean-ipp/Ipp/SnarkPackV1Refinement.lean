import Ipp.Goal
import Ipp.SnarkPackV1

/-!
Refinement from SnarkPack v1 to the independent goal. The public statement
contains verifier data and ordered AIC rows only. Hidden Groth16 proof elements
are an extracted witness bound by the proof-owned root commitments.
-/

namespace Ipp.SnarkPackV1.Refinement

/-- Public Groth16 verifier data at one ordered aggregate position. -/
structure PublicRow (G1 G2 : Type) where
  alpha : G1
  beta : G2
  gamma : G2
  delta : G2
  aic : G1

/-- Hidden Groth16 proof elements at one ordered aggregate position. -/
structure WitnessRow (G1 G2 : Type) where
  a : G1
  b : G2
  c : G1

def publicRowAt {μ : Nat} {F G1 G2 GT : Type}
    [Field F] [AddCommGroup G1] [Module F G1]
    [AddCommGroup G2] [Module F G2]
    [AddCommGroup GT] [Module F GT]
    (statement : Statement μ F G1 G2 GT) (i : Fin (2 ^ μ)) :
    PublicRow G1 G2 :=
  {
    alpha := statement.alpha
    beta := statement.beta
    gamma := statement.gamma
    delta := statement.delta
    aic := statement.Aic i
  }

/-- Exact ordered public claim exposed by a v1 statement. -/
def toGoal {μ : Nat} {F G1 G2 GT : Type}
    [Field F] [AddCommGroup G1] [Module F G1]
    [AddCommGroup G2] [Module F G2]
    [AddCommGroup GT] [Module F GT]
    (statement : Statement μ F G1 G2 GT) :
    Goal.PublicClaim (2 ^ μ) (PublicRow G1 G2) :=
  { rows := publicRowAt statement }

/-- PPE relation between one public verifier row and one hidden proof row. -/
def ppeRelation {F G1 G2 GT : Type}
    [Field F] [AddCommGroup G1] [Module F G1]
    [AddCommGroup G2] [Module F G2]
    [AddCommGroup GT] [Module F GT]
    (e : G1 →ₗ[F] G2 →ₗ[F] GT)
    (row : PublicRow G1 G2) (witness : WitnessRow G1 G2) : Prop :=
  e witness.a witness.b =
    groth16Rhs e row.alpha row.aic witness.c
      row.beta row.gamma row.delta

/-- Two proof-owned root commitments open to exact ordered hidden vectors. -/
def RootOpensAt {μ : Nat} {F G1 G2 GT : Type}
    [Field F] [AddCommGroup G1] [Module F G1]
    [AddCommGroup G2] [Module F G2]
    [AddCommGroup GT] [Module F GT]
    (statement : Statement μ F G1 G2 GT)
    (comA : GT × GT) (comB : GT)
    (witness : Goal.Witness (2 ^ μ) (WitnessRow G1 G2)) : Prop :=
  u4AEmbedding comA =
      commitV (u4ACommitAtom statement.e)
        (fun i => (statement.srsV i, statement.srsV i))
        (fun i => ((witness.items i).a, (witness.items i).c)) ∧
    u4BEmbedding comB =
      commitV (u4BCommitAtom statement.e)
        statement.srsW (fun i => (witness.items i).b)

/-- The proof-owned roots open to the exact ordered hidden witness vectors. -/
def RootOpens {μ : Nat} {F G1 G2 GT : Type}
    [Field F] [AddCommGroup G1] [Module F G1]
    [AddCommGroup G2] [Module F G2]
    [AddCommGroup GT] [Module F GT]
    (statement : Statement μ F G1 G2 GT)
    (proof : AggregateProof μ F G1 G2 GT)
    (witness : Goal.Witness (2 ^ μ) (WitnessRow G1 G2)) : Prop :=
  RootOpensAt statement proof.ComA proof.ComB witness

/-- Goal opening relation. Equality pins the opening to this exact public
statement; `RootOpens` pins the hidden witness to the proof's root bytes. -/
def goalOpens {μ : Nat} {F G1 G2 GT : Type}
    [Field F] [AddCommGroup G1] [Module F G1]
    [AddCommGroup G2] [Module F G2]
    [AddCommGroup GT] [Module F GT]
    (statement : Statement μ F G1 G2 GT)
    (proof : AggregateProof μ F G1 G2 GT)
    (claim : Goal.PublicClaim (2 ^ μ) (PublicRow G1 G2))
    (witness : Goal.Witness (2 ^ μ) (WitnessRow G1 G2)) : Prop :=
  claim = toGoal statement ∧ RootOpens statement proof witness

/-- A v1 proof represents this exact ordered hidden witness. -/
def Represents {μ : Nat} {F G1 G2 GT : Type}
    [Field F] [AddCommGroup G1] [Module F G1]
    [AddCommGroup G2] [Module F G2]
    [AddCommGroup GT] [Module F GT]
    (statement : Statement μ F G1 G2 GT)
    (proof : AggregateProof μ F G1 G2 GT)
    (witness : Goal.Witness (2 ^ μ) (WitnessRow G1 G2)) : Prop :=
  Goal.Represents (goalOpens statement) proof (toGoal statement) witness

/-- The protocol-independent validity target for one statement/proof pair. -/
def HasValidRepresentation {μ : Nat} {F G1 G2 GT : Type}
    [Field F] [AddCommGroup G1] [Module F G1]
    [AddCommGroup G2] [Module F G2]
    [AddCommGroup GT] [Module F GT]
    (statement : Statement μ F G1 G2 GT)
    (proof : AggregateProof μ F G1 G2 GT) : Prop :=
  Goal.HasValidRepresentation (ppeRelation statement.e)
    (goalOpens statement) (toGoal statement) proof

/-- Exact ordered public goal for the real, unpadded statement prefix. -/
def toRealGoal {μ : Nat} {F G1 G2 GT : Type}
    [Field F] [AddCommGroup G1] [Module F G1]
    [AddCommGroup G2] [Module F G2]
    [AddCommGroup GT] [Module F GT]
    (statement : Statement μ F G1 G2 GT)
    (realCount : Nat) (hcount : realCount ≤ 2 ^ μ) :
    Goal.PublicClaim realCount (PublicRow G1 G2) :=
  Goal.prefixClaim hcount (toGoal statement)

/-- A real-prefix witness opens only through a full witness bound to the
proof-owned v1 root commitments. -/
def realGoalOpens {μ : Nat} {F G1 G2 GT : Type}
    [Field F] [AddCommGroup G1] [Module F G1]
    [AddCommGroup G2] [Module F G2]
    [AddCommGroup GT] [Module F GT]
    (statement : Statement μ F G1 G2 GT)
    (realCount : Nat) (hcount : realCount ≤ 2 ^ μ)
    (proof : AggregateProof μ F G1 G2 GT)
    (claim : Goal.PublicClaim realCount (PublicRow G1 G2))
    (witness : Goal.Witness realCount (WitnessRow G1 G2)) : Prop :=
  Goal.PrefixOpens (goalOpens statement) (toGoal statement) hcount
    proof claim witness

/-- Protocol-independent validity target for exactly the real ordered prefix.
The opening still binds one complete padded witness to the v1 proof roots. -/
def HasValidRealPrefixRepresentation
    {μ : Nat} {F G1 G2 GT : Type}
    [Field F] [AddCommGroup G1] [Module F G1]
    [AddCommGroup G2] [Module F G2]
    [AddCommGroup GT] [Module F GT]
    (statement : Statement μ F G1 G2 GT)
    (proof : AggregateProof μ F G1 G2 GT)
    (realCount : Nat) (hcount : realCount ≤ 2 ^ μ) : Prop :=
  Goal.HasValidRepresentation (ppeRelation statement.e)
    (realGoalOpens statement realCount hcount)
    (toRealGoal statement realCount hcount) proof

theorem realGoal_rows
    {μ : Nat} {F G1 G2 GT : Type}
    [Field F] [AddCommGroup G1] [Module F G1]
    [AddCommGroup G2] [Module F G2]
    [AddCommGroup GT] [Module F GT]
    (statement : Statement μ F G1 G2 GT)
    (realCount : Nat) (hcount : realCount ≤ 2 ^ μ)
    (i : Fin realCount) :
    (toRealGoal statement realCount hcount).rows i =
      publicRowAt statement (Goal.embedFin hcount i) :=
  rfl

/-- Real-prefix validity is exactly one full root-bound padded witness plus
the PPEs at the first `realCount` positions. -/
theorem hasValidRealPrefixRepresentation_iff
    {μ : Nat} {F G1 G2 GT : Type}
    [Field F] [AddCommGroup G1] [Module F G1]
    [AddCommGroup G2] [Module F G2]
    [AddCommGroup GT] [Module F GT]
    (statement : Statement μ F G1 G2 GT)
    (proof : AggregateProof μ F G1 G2 GT)
    (realCount : Nat) (hcount : realCount ≤ 2 ^ μ) :
    HasValidRealPrefixRepresentation statement proof realCount hcount ↔
      ∃ paddedWitness :
          Goal.Witness (2 ^ μ) (WitnessRow G1 G2),
        RootOpens statement proof paddedWitness ∧
          ∀ i : Fin realCount,
            ppeRelation statement.e
              (publicRowAt statement (Goal.embedFin hcount i))
              (paddedWitness.items (Goal.embedFin hcount i)) := by
  constructor
  · rintro ⟨prefixWitness, hopen, hvalid⟩
    rcases hopen with
      ⟨_, paddedWitness, hpaddedOpen, hprefixWitness⟩
    refine ⟨paddedWitness, hpaddedOpen.2, ?_⟩
    intro i
    subst prefixWitness
    exact hvalid i
  · rintro ⟨paddedWitness, hpaddedOpen, hvalid⟩
    refine ⟨Goal.prefixWitness hcount paddedWitness, ?_, ?_⟩
    · exact ⟨rfl, paddedWitness, ⟨rfl, hpaddedOpen⟩, rfl⟩
    · intro i
      exact hvalid i

/-- Padded v1 validity implies validity of the exact real prefix with the same
full-witness root opening. -/
theorem hasValidRepresentation_implies_realPrefix
    {μ : Nat} {F G1 G2 GT : Type}
    [Field F] [AddCommGroup G1] [Module F G1]
    [AddCommGroup G2] [Module F G2]
    [AddCommGroup GT] [Module F GT]
    (statement : Statement μ F G1 G2 GT)
    (proof : AggregateProof μ F G1 G2 GT)
    (realCount : Nat) (hcount : realCount ≤ 2 ^ μ)
    (hvalid : HasValidRepresentation statement proof) :
    HasValidRealPrefixRepresentation statement proof realCount hcount :=
  Goal.hasValidPrefixRepresentation_of_hasValidRepresentation
    (ppeRelation statement.e) (goalOpens statement)
    (toGoal statement) proof hcount hvalid

/-- Invalidity of the real ordered prefix supplies the padded-invalidity
premise consumed by the existing v1/S1 soundness proof. No repeat-final or
other semantic premise is needed. -/
theorem invalid_realPrefix_implies_invalid_padded
    {μ : Nat} {F G1 G2 GT : Type}
    [Field F] [AddCommGroup G1] [Module F G1]
    [AddCommGroup G2] [Module F G2]
    [AddCommGroup GT] [Module F GT]
    (statement : Statement μ F G1 G2 GT)
    (proof : AggregateProof μ F G1 G2 GT)
    (realCount : Nat) (hcount : realCount ≤ 2 ^ μ)
    (hinvalid :
      ¬HasValidRealPrefixRepresentation statement proof realCount hcount) :
    ¬HasValidRepresentation statement proof :=
  Goal.invalid_prefix_implies_invalid_padded
    (ppeRelation statement.e) (goalOpens statement)
    (toGoal statement) proof hcount hinvalid

theorem represents_iff_rootOpens {μ : Nat} {F G1 G2 GT : Type}
    [Field F] [AddCommGroup G1] [Module F G1]
    [AddCommGroup G2] [Module F G2]
    [AddCommGroup GT] [Module F GT]
    (statement : Statement μ F G1 G2 GT)
    (proof : AggregateProof μ F G1 G2 GT)
    (witness : Goal.Witness (2 ^ μ) (WitnessRow G1 G2)) :
    Represents statement proof witness ↔ RootOpens statement proof witness := by
  simp [Represents, Goal.Represents, goalOpens]

/-- Deterministic pre-randomizer witness selected from the root commitments.
The zero witness is used only when the roots have no opening; an accepting
fork later proves that branch impossible. -/
noncomputable def canonicalWitness
    {μ : Nat} {F G1 G2 GT : Type}
    [Field F] [AddCommGroup G1] [Module F G1]
    [AddCommGroup G2] [Module F G2]
    [AddCommGroup GT] [Module F GT]
    (statement : Statement μ F G1 G2 GT)
    (comA : GT × GT) (comB : GT) :
    Goal.Witness (2 ^ μ) (WitnessRow G1 G2) := by
  classical
  exact if h : ∃ witness, RootOpensAt statement comA comB witness then
    h.choose
  else
    { items := fun _ => { a := 0, b := 0, c := 0 } }

theorem canonicalWitness_opens_of_exists
    {μ : Nat} {F G1 G2 GT : Type}
    [Field F] [AddCommGroup G1] [Module F G1]
    [AddCommGroup G2] [Module F G2]
    [AddCommGroup GT] [Module F GT]
    (statement : Statement μ F G1 G2 GT)
    (comA : GT × GT) (comB : GT)
    (hexists : ∃ witness, RootOpensAt statement comA comB witness) :
    RootOpensAt statement comA comB
      (canonicalWitness statement comA comB) := by
  simp only [canonicalWitness, dif_pos hexists]
  exact Classical.choose_spec hexists

theorem rootOpensAt_unique
    {μ : Nat} {F G1 G2 GT : Type}
    [Field F] [AddCommGroup G1] [Module F G1]
    [AddCommGroup G2] [Module F G2]
    [AddCommGroup GT] [Module F GT]
    (statement : Statement μ F G1 G2 GT)
    (comA : GT × GT) (comB : GT)
    (hbindA : PairingCommitmentBinding (u4ACommitAtom statement.e)
      (fun i => (statement.srsV i, statement.srsV i)))
    (hbindB : PairingCommitmentBinding (u4BCommitAtom statement.e)
      statement.srsW)
    {left right : Goal.Witness (2 ^ μ) (WitnessRow G1 G2)}
    (hleft : RootOpensAt statement comA comB left)
    (hright : RootOpensAt statement comA comB right) :
    left = right := by
  have hA :
      (fun i => ((left.items i).a, (left.items i).c)) =
        fun i => ((right.items i).a, (right.items i).c) :=
    hbindA (hleft.1.symm.trans hright.1)
  have hB :
      (fun i => (left.items i).b) =
        fun i => (right.items i).b :=
    hbindB (hleft.2.symm.trans hright.2)
  cases left with
  | mk leftItems =>
    cases right with
    | mk rightItems =>
      congr
      funext i
      have ha := congrArg Prod.fst (congrFun hA i)
      have hb := congrFun hB i
      have hc := congrArg Prod.snd (congrFun hA i)
      cases hleftRow : leftItems i
      cases hrightRow : rightItems i
      simp_all

theorem validWithWitness_iff_all_ppe
    {μ : Nat} {F G1 G2 GT : Type}
    [Field F] [AddCommGroup G1] [Module F G1]
    [AddCommGroup G2] [Module F G2]
    [AddCommGroup GT] [Module F GT]
    (statement : Statement μ F G1 G2 GT)
    (witness : Goal.Witness (2 ^ μ) (WitnessRow G1 G2)) :
    Goal.ValidWithWitness (ppeRelation statement.e)
        (toGoal statement) witness ↔
      ∀ i, statement.e (witness.items i).a (witness.items i).b =
        groth16Rhs statement.e statement.alpha (statement.Aic i)
          (witness.items i).c statement.beta statement.gamma statement.delta :=
  Iff.rfl

/-- Rescaling the B key by inverse powers and the committed B messages by the
matching powers preserves the unrandomized root commitment. -/
theorem commitV_rescale_cancel
    {n : Nat} {F K Msg M : Type}
    [Field F]
    [AddCommGroup K] [Module F K]
    [AddCommGroup Msg] [Module F Msg]
    [AddCommGroup M] [Module F M]
    (cm : K →ₗ[F] Msg →ₗ[F] M)
    (keys : Fin n → K) (messages : Fin n → Msg)
    (r : F) (hr : r ≠ 0) :
    commitV cm (fun i => (r ^ (i : Nat))⁻¹ • keys i)
        (fun i => r ^ (i : Nat) • messages i) =
      commitV cm keys messages := by
  classical
  simp only [commitV]
  apply Finset.sum_congr rfl
  intro i _
  simp [map_smul, smul_smul, hr]

theorem rootOpens_rescaledB
    {μ : Nat} {F G1 G2 GT : Type}
    [Field F] [AddCommGroup G1] [Module F G1]
    [AddCommGroup G2] [Module F G2]
    [AddCommGroup GT] [Module F GT]
    (statement : Statement μ F G1 G2 GT)
    (proof : AggregateProof μ F G1 G2 GT)
    (witness : Goal.Witness (2 ^ μ) (WitnessRow G1 G2))
    (hopen : RootOpens statement proof witness)
    (r : F) (hr : r ≠ 0) :
    u4BEmbedding proof.ComB =
      commitV (u4BCommitAtom statement.e)
        (fun i => (r ^ (i : Nat))⁻¹ • statement.srsW i)
        (fun i => r ^ (i : Nat) • (witness.items i).b) := by
  calc
    _ = commitV (u4BCommitAtom statement.e) statement.srsW
        (fun i => (witness.items i).b) := hopen.2
    _ = _ := (commitV_rescale_cancel
      (u4BCommitAtom statement.e) statement.srsW
      (fun i => (witness.items i).b) r hr).symm

theorem hasValidRepresentation_iff
    {μ : Nat} {F G1 G2 GT : Type}
    [Field F] [AddCommGroup G1] [Module F G1]
    [AddCommGroup G2] [Module F G2]
    [AddCommGroup GT] [Module F GT]
    (statement : Statement μ F G1 G2 GT)
    (proof : AggregateProof μ F G1 G2 GT) :
    HasValidRepresentation statement proof ↔
      ∃ witness, RootOpens statement proof witness ∧
        ∀ i, statement.e (witness.items i).a (witness.items i).b =
          groth16Rhs statement.e statement.alpha (statement.Aic i)
            (witness.items i).c statement.beta statement.gamma
            statement.delta := by
  simp only [HasValidRepresentation, Goal.HasValidRepresentation,
    Goal.Represents, goalOpens, Goal.ValidWithWitness, toGoal, publicRowAt,
    ppeRelation, true_and]

end Ipp.SnarkPackV1.Refinement
