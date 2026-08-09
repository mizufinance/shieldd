import Mathlib.Data.Fin.Basic

/-!
Protocol-independent aggregate validity. Public claims contain only ordered
verifier inputs. Hidden proof elements live in a witness and count as a valid
representation only when a proof binds that exact witness.
-/

namespace Ipp.Goal

/-- Canonical ordered verifier inputs. -/
structure PublicClaim (n : Nat) (Row : Type) where
  rows : Fin n → Row

/-- Ordered hidden data whose validity is claimed by an aggregate proof. -/
structure Witness (n : Nat) (Item : Type) where
  items : Fin n → Item

/-- Every ordered public row and hidden witness item satisfies its relation. -/
def ValidWithWitness {n : Nat} {Row Item : Type}
    (relation : Row → Item → Prop)
    (claim : PublicClaim n Row) (witness : Witness n Item) : Prop :=
  ∀ i, relation (claim.rows i) (witness.items i)

/-- A proof's binding relation opens it to this exact ordered witness. -/
def Represents {n : Nat} {Row Item Proof : Type}
    (opens : Proof → PublicClaim n Row → Witness n Item → Prop)
    (proof : Proof) (claim : PublicClaim n Row)
    (witness : Witness n Item) : Prop :=
  opens proof claim witness

/-- The public claim has a commitment-bound witness satisfying every row. -/
def HasValidRepresentation {n : Nat} {Row Item Proof : Type}
    (relation : Row → Item → Prop)
    (opens : Proof → PublicClaim n Row → Witness n Item → Prop)
    (claim : PublicClaim n Row) (proof : Proof) : Prop :=
  ∃ witness,
    Represents opens proof claim witness ∧
      ValidWithWitness relation claim witness

/-- Order-preserving inclusion of a real prefix index into its padded vector. -/
def embedFin {m n : Nat} (h : m ≤ n) (i : Fin m) : Fin n :=
  ⟨i.val, lt_of_lt_of_le i.isLt h⟩

/-- The exact first `m` public rows of an `n`-row claim. -/
def prefixClaim {m n : Nat} {Row : Type}
    (h : m ≤ n) (claim : PublicClaim n Row) : PublicClaim m Row :=
  { rows := fun i => claim.rows (embedFin h i) }

/-- The exact first `m` items of an `n`-item witness. -/
def prefixWitness {m n : Nat} {Item : Type}
    (h : m ≤ n) (witness : Witness n Item) : Witness m Item :=
  { items := fun i => witness.items (embedFin h i) }

/-- A prefix witness remains bound through an opening of one full padded
witness. Merely exhibiting unrelated prefix items is not an opening. -/
def PrefixOpens {m n : Nat} {Row Item Proof : Type}
    (opens : Proof → PublicClaim n Row → Witness n Item → Prop)
    (paddedClaim : PublicClaim n Row) (h : m ≤ n)
    (proof : Proof) (claim : PublicClaim m Row)
    (witness : Witness m Item) : Prop :=
  claim = prefixClaim h paddedClaim ∧
    ∃ paddedWitness,
      opens proof paddedClaim paddedWitness ∧
        witness = prefixWitness h paddedWitness

/-- The proof opens one full padded witness whose exact real prefix satisfies
every row of the real-prefix claim. -/
def HasValidPrefixRepresentation {m n : Nat} {Row Item Proof : Type}
    (relation : Row → Item → Prop)
    (opens : Proof → PublicClaim n Row → Witness n Item → Prop)
    (paddedClaim : PublicClaim n Row) (proof : Proof) (h : m ≤ n) : Prop :=
  HasValidRepresentation relation (PrefixOpens opens paddedClaim h)
    (prefixClaim h paddedClaim) proof

/-- Canonical statement bytes cannot bind two distinct ordered public claims. -/
def CanonicallyBinds {Claim Bytes : Type} (encode : Claim → Bytes) : Prop :=
  Function.Injective encode

/-- A proof system's acceptance relation over public claims. -/
structure Verifier (Claim Proof : Type) where
  accepts : Claim → Proof → Prop

/-- Every valid witness can be represented by an accepted proof. -/
def Complete {n : Nat} {Row Item Proof : Type}
    (relation : Row → Item → Prop)
    (opens : Proof → PublicClaim n Row → Witness n Item → Prop)
    (verifier : Verifier (PublicClaim n Row) Proof) : Prop :=
  ∀ claim witness, ValidWithWitness relation claim witness →
    ∃ proof, Represents opens proof claim witness ∧
      verifier.accepts claim proof

/-- Every accepted proof has some valid witness to which it is bound. -/
def PerfectlySound {n : Nat} {Row Item Proof : Type}
    (relation : Row → Item → Prop)
    (opens : Proof → PublicClaim n Row → Witness n Item → Prop)
    (verifier : Verifier (PublicClaim n Row) Proof) : Prop :=
  ∀ claim proof, verifier.accepts claim proof →
    HasValidRepresentation relation opens claim proof

/-- Acceptance without a valid represented witness is quantitatively bounded. -/
def ComputationallySound
    {n : Nat} {Row Item Proof Probability : Type} [LE Probability]
    (relation : Row → Item → Prop)
    (opens : Proof → PublicClaim n Row → Witness n Item → Prop)
    (acceptanceProbability : PublicClaim n Row → Proof → Probability)
    (error : Probability) : Prop :=
  ∀ claim proof,
    ¬HasValidRepresentation relation opens claim proof →
      acceptanceProbability claim proof ≤ error

theorem validWithWitness_of_relations
    {n : Nat} {Row Item : Type}
    (relation : Row → Item → Prop)
    (claim : PublicClaim n Row) (witness : Witness n Item)
    (relations : ∀ i, relation (claim.rows i) (witness.items i)) :
    ValidWithWitness relation claim witness :=
  relations

/-- Indexed witnesses rule out omission and reordering: every position in the
public claim is checked against the witness item at that same position. -/
theorem no_omission_or_reordering
    {n : Nat} {Row Item : Type}
    (relation : Row → Item → Prop)
    (claim : PublicClaim n Row) (witness : Witness n Item)
    (valid : ValidWithWitness relation claim witness) (i : Fin n) :
    relation (claim.rows i) (witness.items i) :=
  valid i

/-- Full padded validity implies validity of every ordered prefix while
retaining the original full-witness opening. -/
theorem hasValidPrefixRepresentation_of_hasValidRepresentation
    {m n : Nat} {Row Item Proof : Type}
    (relation : Row → Item → Prop)
    (opens : Proof → PublicClaim n Row → Witness n Item → Prop)
    (paddedClaim : PublicClaim n Row) (proof : Proof) (h : m ≤ n)
    (hvalid :
      HasValidRepresentation relation opens paddedClaim proof) :
    HasValidPrefixRepresentation relation opens paddedClaim proof h := by
  rcases hvalid with ⟨paddedWitness, hopen, hrelations⟩
  refine ⟨prefixWitness h paddedWitness, ?_, ?_⟩
  · exact ⟨rfl, paddedWitness, hopen, rfl⟩
  · intro i
    exact hrelations (embedFin h i)

/-- An invalid real prefix makes a valid full padded representation
impossible. This is pure contraposition and needs no padding semantics. -/
theorem invalid_prefix_implies_invalid_padded
    {m n : Nat} {Row Item Proof : Type}
    (relation : Row → Item → Prop)
    (opens : Proof → PublicClaim n Row → Witness n Item → Prop)
    (paddedClaim : PublicClaim n Row) (proof : Proof) (h : m ≤ n)
    (hinvalid :
      ¬HasValidPrefixRepresentation relation opens paddedClaim proof h) :
    ¬HasValidRepresentation relation opens paddedClaim proof :=
  fun hvalid =>
    hinvalid
      (hasValidPrefixRepresentation_of_hasValidRepresentation
        relation opens paddedClaim proof h hvalid)

end Ipp.Goal
