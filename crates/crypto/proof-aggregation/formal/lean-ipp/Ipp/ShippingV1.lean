import Ipp.Goal
import Ipp.SnarkPackV1
import Ipp.ChallengeEncoding

/-!
The concrete, byte-bound input accepted by the shipping SnarkPack-v1
verifier.  Byte-processing facts proved in the F* lane enter through the
elemental `StatementBindingContract`; the Lean composition below does not
postulate a second normative statement encoding.
-/

namespace Ipp.ShippingV1

abbrev Bytes := List UInt8

/-- Literal domain used by `vk_digest_preimage`. -/
def vkDigestDomain : Bytes :=
  [115, 104, 105, 101, 108, 100, 100, 46, 115, 110, 97, 114, 107, 112, 97,
    99, 107, 46, 118, 107, 95, 100, 105, 103, 101, 115, 116, 46, 118, 49, 0]

/-- Literal domain used by `statement_digest_from_canonical`. -/
def statementDigestDomain : Bytes :=
  [115, 104, 105, 101, 108, 100, 100, 46, 115, 110, 97, 114, 107, 112, 97,
    99, 107, 46, 115, 116, 97, 116, 101, 109, 101, 110, 116, 95, 100, 105,
    103, 101, 115, 116, 46, 118, 49, 0]

/-- Literal domain used by `ChallengeContext::from_statement_digest`. -/
def challengeContextDomain : Bytes :=
  [115, 104, 105, 101, 108, 100, 100, 46, 115, 110, 97, 114, 107, 112, 97,
    99, 107, 46, 99, 104, 97, 108, 108, 101, 110, 103, 101, 95, 99, 111,
    110, 116, 101, 120, 116, 46, 118, 49, 0]

/-- Exact production preimage of the verification-key SHA-256 call. -/
def vkDigestPreimage (serializedVk : Bytes) : Bytes :=
  vkDigestDomain ++
    Ipp.ChallengeEncoding.u32LE serializedVk.length ++ serializedVk

/-- Exact production preimage of the canonical-statement SHA-256 call. -/
def statementDigestPreimage (canonicalStatement : Bytes) : Bytes :=
  statementDigestDomain ++ canonicalStatement

/-- Exact production preimage of the challenge-context SHA-256 call. -/
def challengeContextPreimage (statementDigest : Bytes) : Bytes :=
  challengeContextDomain ++ statementDigest

/-- Length framing makes the verification-key digest preimage injective
without any cryptographic assumption. -/
theorem vkDigestPreimage_injective :
    Function.Injective vkDigestPreimage := by
  intro left right heq
  unfold vkDigestPreimage at heq
  have htail :
      Ipp.ChallengeEncoding.u32LE left.length ++ left =
        Ipp.ChallengeEncoding.u32LE right.length ++ right :=
    List.append_right_injective vkDigestDomain heq
  have hlength : left.length = right.length := by
    have hencodedLength := congrArg List.length htail
    simp [Ipp.ChallengeEncoding.u32LE] at hencodedLength
    omega
  rw [hlength] at htail
  exact List.append_right_injective _ htail

/-- One concrete collision in the deployed SHA-256 function. -/
def Sha256Collision (sha256 : Bytes → Bytes) (left right : Bytes) : Prop :=
  left ≠ right ∧ sha256 left = sha256 right

/-- Supported production routing domains. Subfamily identifiers remain part
of the route, so equality cannot silently forget them. -/
inductive Family where
  | transfer
  | noteReshape (id : Nat)
  | shieldedIcs20Withdrawal (id : Nat)
deriving DecidableEq

/-- Literal prefix installed in every deployed family-specific Blake2b
digest. -/
def familyDomainPrefix : Bytes :=
  [115, 104, 105, 101, 108, 100, 100, 46, 115, 110, 97, 114, 107, 112, 97,
    99, 107, 46]

def familyDomainSuffix : Bytes := [46, 118, 49]

/-- Registered production family labels. Unknown subfamily identifiers have
no transcript domain and must be rejected before hashing. -/
def Family.label : Family → Option Bytes
  | .transfer => some [116, 114, 97, 110, 115, 102, 101, 114]
  | .noteReshape 1 =>
      some [110, 111, 116, 101, 95, 114, 101, 115, 104, 97, 112, 101, 50,
        120, 49]
  | .noteReshape 2 =>
      some [110, 111, 116, 101, 95, 114, 101, 115, 104, 97, 112, 101, 49,
        120, 56]
  | .noteReshape 3 =>
      some [110, 111, 116, 101, 95, 114, 101, 115, 104, 97, 112, 101, 56,
        120, 49]
  | .noteReshape 4 =>
      some [110, 111, 116, 101, 95, 114, 101, 115, 104, 97, 112, 101, 52,
        120, 49]
  | .shieldedIcs20Withdrawal 1 =>
      some [115, 104, 105, 101, 108, 100, 101, 100, 95, 105, 99, 115, 50,
        48, 95, 119, 105, 116, 104, 100, 114, 97, 119, 97, 108]
  | _ => none

/-- Exact bytes prepended by `transcript_family_domain` before the challenge
frame enters Blake2b. -/
def Family.transcriptDomain (family : Family) : Option Bytes :=
  family.label.map fun label =>
    familyDomainPrefix ++ label ++ familyDomainSuffix

def Family.Registered (family : Family) : Prop :=
  ∃ domain, family.transcriptDomain = some domain

/-- Public data that canonical statement bytes must bind. -/
structure PublicClaim (μ : Nat) (Row : Type) where
  family : Family
  srsId : Bytes
  vkDigest : Bytes
  realCount : Nat
  rows : Fin (2 ^ μ) → Row

/-- Fixed semantic projection used by the shipping refinement. Keeping this
as data makes functionality definitional: one public claim and one decoded
proof cannot denote two different formal v1 values. -/
structure ShippingProjection
    (μ : Nat) (F G1 G2 GT Row DecodedProof : Type)
    [CommSemiring F] [AddCommMonoid G1] [Module F G1]
    [AddCommMonoid G2] [Module F G2]
    [AddCommMonoid GT] [Module F GT] where
  statementOf : PublicClaim μ Row → Ipp.FsStatement μ F G1 G2 GT
  proofOf : DecodedProof → Ipp.Proof μ F G1 G2 GT

/-- Shipping input after successful Rust construction, wrapper decoding, and
strict aggregate-proof decoding. -/
structure ShippingV1Input (μ : Nat) (F G1 G2 GT Row DecodedProof : Type)
    [CommSemiring F] [AddCommMonoid G1] [Module F G1]
    [AddCommMonoid G2] [Module F G2]
    [AddCommMonoid GT] [Module F GT] where
  family : Family
  srsId : Bytes
  serializedVk : Bytes
  vkDigest : Bytes
  realCount : Nat
  /-- Caller-order rows before power-of-two padding. -/
  realRows : Fin realCount → Row
  publicRows : Fin (2 ^ μ) → Row
  canonicalStatementBytes : Bytes
  statementDigest : Bytes
  wrappedProofBytes : Bytes
  innerProofBytes : Bytes
  decodedProof : DecodedProof
  challengeContext : Ipp.ChallengeEncoding.Context

def ShippingV1Input.publicClaim
    {μ : Nat} {F G1 G2 GT Row DecodedProof : Type}
    [CommSemiring F] [AddCommMonoid G1] [Module F G1]
    [AddCommMonoid G2] [Module F G2]
    [AddCommMonoid GT] [Module F GT]
    (input : ShippingV1Input μ F G1 G2 GT Row DecodedProof) :
    PublicClaim μ Row :=
  {
    family := input.family
    srsId := input.srsId
    vkDigest := input.vkDigest
    realCount := input.realCount
    rows := input.publicRows
  }

/-- The shipping input denotes these exact formal values. This relation is
kept explicit so later implementation refinements cannot change projection by
definitional accident. -/
def RepresentsShippingInput
    {μ : Nat} {F G1 G2 GT Row DecodedProof : Type}
    [CommSemiring F] [AddCommMonoid G1] [Module F G1]
    [AddCommMonoid G2] [Module F G2]
    [AddCommMonoid GT] [Module F GT]
    (projection : ShippingProjection μ F G1 G2 GT Row DecodedProof)
    (input : ShippingV1Input μ F G1 G2 GT Row DecodedProof)
    (statement : Ipp.FsStatement μ F G1 G2 GT)
    (proof : Ipp.Proof μ F G1 G2 GT) : Prop :=
  statement = projection.statementOf input.publicClaim ∧
    proof = projection.proofOf input.decodedProof

/-- Counts are those accepted by the v1 power-of-two primitive. -/
def ValidCounts
    {μ : Nat} {F G1 G2 GT Row DecodedProof : Type}
    [CommSemiring F] [AddCommMonoid G1] [Module F G1]
    [AddCommMonoid G2] [Module F G2]
    [AddCommMonoid GT] [Module F GT]
    (input : ShippingV1Input μ F G1 G2 GT Row DecodedProof) : Prop :=
  0 < input.realCount ∧ input.realCount ≤ 2 ^ μ

/-- Every padded position repeats the final real row, without changing the
order of the real prefix. -/
def RepeatFinalPadding
    {μ : Nat} {F G1 G2 GT Row DecodedProof : Type}
    [CommSemiring F] [AddCommMonoid G1] [Module F G1]
    [AddCommMonoid G2] [Module F G2]
    [AddCommMonoid GT] [Module F GT]
    (input : ShippingV1Input μ F G1 G2 GT Row DecodedProof) : Prop :=
  ∃ last : Fin (2 ^ μ),
    input.realCount = last.val + 1 ∧
      ∀ i : Fin (2 ^ μ), last.val < i.val →
        input.publicRows i = input.publicRows last

/-- The padded vector's real prefix is exactly the caller-order source vector;
this rules out omission, duplication, and permutation before the padding
suffix begins. -/
def RealPrefixExact
    {μ : Nat} {F G1 G2 GT Row DecodedProof : Type}
    [CommSemiring F] [AddCommMonoid G1] [Module F G1]
    [AddCommMonoid G2] [Module F G2]
    [AddCommMonoid GT] [Module F GT]
    (input : ShippingV1Input μ F G1 G2 GT Row DecodedProof) : Prop :=
  ∀ (hcount : input.realCount ≤ 2 ^ μ) (i : Fin input.realCount),
    input.publicRows (Ipp.Goal.embedFin hcount i) = input.realRows i

/-- Exact cross-kernel postconditions. F* proves canonical
construction/routing/validation; exact wrapper exposure and proof decoding are
explicit Rust boundaries. The three hash equations state what the deployed
SHA-256 calls execute. Collision resistance is deliberately not a field of
this contract. -/
structure StatementBindingContract
    (μ : Nat) (F G1 G2 GT Row DecodedProof : Type)
    [CommSemiring F] [AddCommMonoid G1] [Module F G1]
    [AddCommMonoid G2] [Module F G2]
    [AddCommMonoid GT] [Module F GT] where
  supported : ShippingV1Input μ F G1 G2 GT Row DecodedProof → Prop
  decodeWrapper : Bytes → Bytes → Option Bytes
  decodeProof : Bytes → Option DecodedProof
  sha256 : Bytes → Bytes
  encodePublicClaim : PublicClaim μ Row → Bytes
  /-- Successful routing reaches exactly one registered family domain. -/
  familyRegistered : ∀ input, supported input → input.family.Registered
  /-- Canonical construction contains exactly the ordered public claim. -/
  canonicalStatementExact : ∀ input, supported input →
    input.canonicalStatementBytes = encodePublicClaim input.publicClaim
  canonicalStatementInjective : ∀ left right,
    supported left → supported right →
    encodePublicClaim left.publicClaim =
      encodePublicClaim right.publicClaim →
    left.publicClaim = right.publicClaim
  /-- The length-delimited VK preimage constructor is injective on successful
  production inputs. This is a framing fact, not a hash assumption. -/
  vkDigestPreimageInjective : ∀ left right,
    supported left → supported right →
    vkDigestPreimage left.serializedVk =
      vkDigestPreimage right.serializedVk →
    left.serializedVk = right.serializedVk
  /-- Exact deployed SHA-256 executions. -/
  vkDigestExact : ∀ input, supported input →
    input.vkDigest = sha256 (vkDigestPreimage input.serializedVk)
  statementDigestExact : ∀ input, supported input →
    input.statementDigest =
      sha256 (statementDigestPreimage input.canonicalStatementBytes)
  challengeContextExact : ∀ input, supported input →
    List.ofFn input.challengeContext =
      sha256 (challengeContextPreimage input.statementDigest)
  /-- The successful wrapper result exposes exactly the recorded inner bytes. -/
  wrapperExact : ∀ input, supported input →
    decodeWrapper input.statementDigest input.wrappedProofBytes =
      some input.innerProofBytes
  /-- Strict aggregate decoding returns exactly the recorded proof object. -/
  proofDecodeExact : ∀ input, supported input →
    decodeProof input.innerProofBytes = some input.decodedProof
  validCounts : ∀ input, supported input → ValidCounts input
  realPrefixExact : ∀ input, supported input → RealPrefixExact input
  repeatFinalPadding : ∀ input, supported input → RepeatFinalPadding input

/-- Exact semantic boundary between authenticated shipping bytes/rows and the
formal statement used by the v1 verifier.  The relations are owned by concrete
Arkworks VK/SRS decoding and row projection; the formal projection cannot
silently choose unrelated alpha/beta/gamma/delta, SRS keys, or Aic rows. -/
structure StatementProjectionContract
    {μ : Nat} {F G1 G2 GT Row DecodedProof : Type}
    [Field F] [AddCommGroup G1] [Module F G1]
    [AddCommGroup G2] [Module F G2]
    [AddCommGroup GT] [Module F GT]
    (projection : ShippingProjection μ F G1 G2 GT Row DecodedProof)
    (binding : StatementBindingContract μ F G1 G2 GT Row DecodedProof) where
  familyVkSrsAllowed : Family → Bytes → Bytes → Prop
  /-- Production-equivalent strict decoders/projections.  Supplying these
  functions is part of the Rust/F*/serialization boundary; the equalities
  below prevent a caller from satisfying the contract with an unrelated
  relation. -/
  decodeVk : Bytes → Option (G1 × G2 × G2 × G2)
  loadSrs :
    Bytes → Option ((Fin (2 ^ μ) → G2) × (Fin (2 ^ μ) → G1))
  projectRow : Bytes → Row → Option G1
  exact : ∀ input, binding.supported input →
    let stmt := projection.statementOf input.publicClaim
    familyVkSrsAllowed input.family input.serializedVk input.srsId ∧
      decodeVk input.serializedVk =
        some (stmt.alpha, stmt.beta, stmt.gamma, stmt.delta) ∧
      loadSrs input.srsId = some (stmt.srsV, stmt.srsW) ∧
      ∀ i : Fin (2 ^ μ),
        projectRow input.serializedVk (input.publicRows i) =
          some (stmt.Aic i)

/-- Concrete statement components selected by the authenticated shipping
input. -/
def StatementProjectionContract.Projects
    {μ : Nat} {F G1 G2 GT Row DecodedProof : Type}
    [Field F] [AddCommGroup G1] [Module F G1]
    [AddCommGroup G2] [Module F G2]
    [AddCommGroup GT] [Module F GT]
    {projection : ShippingProjection μ F G1 G2 GT Row DecodedProof}
    {binding : StatementBindingContract μ F G1 G2 GT Row DecodedProof}
    (semantics : StatementProjectionContract projection binding)
    (input : ShippingV1Input μ F G1 G2 GT Row DecodedProof) : Prop :=
  let stmt := projection.statementOf input.publicClaim
  semantics.familyVkSrsAllowed
      input.family input.serializedVk input.srsId ∧
    semantics.decodeVk input.serializedVk =
      some (stmt.alpha, stmt.beta, stmt.gamma, stmt.delta) ∧
    semantics.loadSrs input.srsId = some (stmt.srsV, stmt.srsW) ∧
    ∀ i : Fin (2 ^ μ),
      semantics.projectRow input.serializedVk (input.publicRows i) =
        some (stmt.Aic i)

/-- Any VK, statement, or challenge-context alias is represented as an
explicit collision in one of the three deployed SHA-256 calls. -/
def ShippingShaCollision
    {μ : Nat} {F G1 G2 GT Row DecodedProof : Type}
    [CommSemiring F] [AddCommMonoid G1] [Module F G1]
    [AddCommMonoid G2] [Module F G2]
    [AddCommMonoid GT] [Module F GT]
    (contract : StatementBindingContract μ F G1 G2 GT Row DecodedProof)
    (left right : ShippingV1Input μ F G1 G2 GT Row DecodedProof) : Prop :=
  Sha256Collision contract.sha256
      (vkDigestPreimage left.serializedVk)
      (vkDigestPreimage right.serializedVk) ∨
    Sha256Collision contract.sha256
      (statementDigestPreimage left.canonicalStatementBytes)
      (statementDigestPreimage right.canonicalStatementBytes) ∨
    Sha256Collision contract.sha256
      (challengeContextPreimage left.statementDigest)
      (challengeContextPreimage right.statementDigest)

/-- Observable binding aliases which the real verification experiment charges
to the SHA-256 collision event. -/
def ShippingBindingAlias
    {μ : Nat} {F G1 G2 GT Row DecodedProof : Type}
    [CommSemiring F] [AddCommMonoid G1] [Module F G1]
    [AddCommMonoid G2] [Module F G2]
    [AddCommMonoid GT] [Module F GT]
    (left right : ShippingV1Input μ F G1 G2 GT Row DecodedProof) : Prop :=
  (left.serializedVk ≠ right.serializedVk ∧
      left.vkDigest = right.vkDigest) ∨
    (left.publicClaim ≠ right.publicClaim ∧
      left.statementDigest = right.statementDigest) ∨
    (left.statementDigest ≠ right.statementDigest ∧
      left.challengeContext = right.challengeContext)

/-- Equal successful statement digests bind one exact family, SRS, VK digest,
count, and ordered public-row vector unless they exhibit a SHA-256 collision. -/
theorem shipping_statement_binds_public_claim
    {μ : Nat} {F G1 G2 GT Row DecodedProof : Type}
    [CommSemiring F] [AddCommMonoid G1] [Module F G1]
    [AddCommMonoid G2] [Module F G2]
    [AddCommMonoid GT] [Module F GT]
    (contract : StatementBindingContract μ F G1 G2 GT Row DecodedProof)
    (left right : ShippingV1Input μ F G1 G2 GT Row DecodedProof)
    (hleft : contract.supported left) (hright : contract.supported right)
    (hdigest : left.statementDigest = right.statementDigest)
    (hcollision : ¬Sha256Collision contract.sha256
      (statementDigestPreimage left.canonicalStatementBytes)
      (statementDigestPreimage right.canonicalStatementBytes)) :
    left.publicClaim = right.publicClaim :=
  by
    have hhash :
        contract.sha256
            (statementDigestPreimage left.canonicalStatementBytes) =
          contract.sha256
            (statementDigestPreimage right.canonicalStatementBytes) := by
      rw [← contract.statementDigestExact left hleft,
        ← contract.statementDigestExact right hright]
      exact hdigest
    have hpreimage :
        statementDigestPreimage left.canonicalStatementBytes =
          statementDigestPreimage right.canonicalStatementBytes := by
      by_contra hne
      exact hcollision ⟨hne, hhash⟩
    have hcanonical :
        left.canonicalStatementBytes = right.canonicalStatementBytes :=
      List.append_right_injective _ hpreimage
    apply contract.canonicalStatementInjective left right hleft hright
    rw [← contract.canonicalStatementExact left hleft,
      ← contract.canonicalStatementExact right hright]
    exact hcanonical

/-- Successful equal wrapped inputs cannot project to two v1 statements or
proofs. -/
theorem verified_call_projects_unique_v1
    {μ : Nat} {F G1 G2 GT Row DecodedProof : Type}
    [CommSemiring F] [AddCommMonoid G1] [Module F G1]
    [AddCommMonoid G2] [Module F G2]
    [AddCommMonoid GT] [Module F GT]
    (projection : ShippingProjection μ F G1 G2 GT Row DecodedProof)
    (contract : StatementBindingContract μ F G1 G2 GT Row DecodedProof)
    (left right : ShippingV1Input μ F G1 G2 GT Row DecodedProof)
    (hleft : contract.supported left) (hright : contract.supported right)
    (hdigest : left.statementDigest = right.statementDigest)
    (hwrapped : left.wrappedProofBytes = right.wrappedProofBytes)
    (hcollision : ¬Sha256Collision contract.sha256
      (statementDigestPreimage left.canonicalStatementBytes)
      (statementDigestPreimage right.canonicalStatementBytes)) :
    projection.statementOf left.publicClaim =
        projection.statementOf right.publicClaim ∧
      projection.proofOf left.decodedProof =
        projection.proofOf right.decodedProof := by
  have hclaim :=
    shipping_statement_binds_public_claim contract left right hleft hright
      hdigest hcollision
  have hleftWrapper := contract.wrapperExact left hleft
  have hrightWrapper := contract.wrapperExact right hright
  rw [hdigest, hwrapped] at hleftWrapper
  have hinner : left.innerProofBytes = right.innerProofBytes := by
    exact Option.some.inj (hleftWrapper.symm.trans hrightWrapper)
  have hleftProof := contract.proofDecodeExact left hleft
  have hrightProof := contract.proofDecodeExact right hright
  rw [hinner] at hleftProof
  have hdecoded : left.decodedProof = right.decodedProof := by
    exact Option.some.inj (hleftProof.symm.trans hrightProof)
  exact ⟨congrArg projection.statementOf hclaim,
    congrArg projection.proofOf hdecoded⟩

/-- A successful observable alias is never silently converted into an exact
binding fact: it yields a concrete SHA-256 collision witness. -/
theorem shipping_binding_alias_implies_sha_collision
    {μ : Nat} {F G1 G2 GT Row DecodedProof : Type}
    [CommSemiring F] [AddCommMonoid G1] [Module F G1]
    [AddCommMonoid G2] [Module F G2]
    [AddCommMonoid GT] [Module F GT]
    (contract : StatementBindingContract μ F G1 G2 GT Row DecodedProof)
    (left right : ShippingV1Input μ F G1 G2 GT Row DecodedProof)
    (hleft : contract.supported left) (hright : contract.supported right)
    (halias : ShippingBindingAlias left right) :
    ShippingShaCollision contract left right := by
  rcases halias with hvk | hstatement | hcontext
  · left
    refine ⟨?_, ?_⟩
    · intro hpreimage
      exact hvk.1
        (contract.vkDigestPreimageInjective left right hleft hright hpreimage)
    · rw [← contract.vkDigestExact left hleft,
        ← contract.vkDigestExact right hright]
      exact hvk.2
  · right
    left
    have hcanonical : left.canonicalStatementBytes ≠
        right.canonicalStatementBytes := by
      intro heq
      apply hstatement.1
      apply contract.canonicalStatementInjective left right hleft hright
      rw [← contract.canonicalStatementExact left hleft,
        ← contract.canonicalStatementExact right hright]
      exact heq
    refine ⟨?_, ?_⟩
    · exact fun hpreimage =>
        hcanonical (List.append_right_injective _ hpreimage)
    · rw [← contract.statementDigestExact left hleft,
        ← contract.statementDigestExact right hright]
      exact hstatement.2
  · right
    right
    refine ⟨?_, ?_⟩
    · exact fun hpreimage =>
        hcontext.1 (List.append_right_injective _ hpreimage)
    · rw [← contract.challengeContextExact left hleft,
        ← contract.challengeContextExact right hright]
      exact congrArg List.ofFn hcontext.2

/-- Equal successful wrapped inputs bind the serialized VK, ordered public
claim, formal statement/proof projection, and both accepted padding
interpretations unless one of the deployed SHA-256 calls collides. -/
theorem verified_call_binds_unique_shipping_input
    {μ : Nat} {F G1 G2 GT Row DecodedProof : Type}
    [CommSemiring F] [AddCommMonoid G1] [Module F G1]
    [AddCommMonoid G2] [Module F G2]
    [AddCommMonoid GT] [Module F GT]
    (projection : ShippingProjection μ F G1 G2 GT Row DecodedProof)
    (contract : StatementBindingContract μ F G1 G2 GT Row DecodedProof)
    (left right : ShippingV1Input μ F G1 G2 GT Row DecodedProof)
    (hleft : contract.supported left) (hright : contract.supported right)
    (hdigest : left.statementDigest = right.statementDigest)
    (hwrapped : left.wrappedProofBytes = right.wrappedProofBytes)
    (hcollision : ¬ShippingShaCollision contract left right) :
    left.serializedVk = right.serializedVk ∧
      left.publicClaim = right.publicClaim ∧
      projection.statementOf left.publicClaim =
        projection.statementOf right.publicClaim ∧
      projection.proofOf left.decodedProof =
        projection.proofOf right.decodedProof ∧
      (ValidCounts left ∧ RealPrefixExact left ∧
        RepeatFinalPadding left) ∧
      (ValidCounts right ∧ RealPrefixExact right ∧
        RepeatFinalPadding right) := by
  have hstatementCollision :
      ¬Sha256Collision contract.sha256
        (statementDigestPreimage left.canonicalStatementBytes)
        (statementDigestPreimage right.canonicalStatementBytes) := by
    intro collision
    exact hcollision (Or.inr (Or.inl collision))
  have hclaim :=
    shipping_statement_binds_public_claim contract left right hleft hright
      hdigest hstatementCollision
  have hvkDigest : left.vkDigest = right.vkDigest :=
    congrArg (fun claim => claim.vkDigest) hclaim
  have hvk : left.serializedVk = right.serializedVk := by
    by_contra hne
    apply hcollision
    apply shipping_binding_alias_implies_sha_collision
      contract left right hleft hright
    exact Or.inl ⟨hne, hvkDigest⟩
  have hprojections :=
    verified_call_projects_unique_v1 projection contract left right
      hleft hright hdigest hwrapped hstatementCollision
  exact ⟨hvk, hclaim, hprojections.1, hprojections.2,
    ⟨contract.validCounts left hleft,
      contract.realPrefixExact left hleft,
      contract.repeatFinalPadding left hleft⟩,
    ⟨contract.validCounts right hright,
      contract.realPrefixExact right hright,
      contract.repeatFinalPadding right hright⟩⟩

/-- Successful construction retains the exact caller-order real prefix and
then applies the repeat-final padding policy used by the formal power-of-two
statement. -/
theorem shipping_input_preserves_order_and_padding
    {μ : Nat} {F G1 G2 GT Row DecodedProof : Type}
    [CommSemiring F] [AddCommMonoid G1] [Module F G1]
    [AddCommMonoid G2] [Module F G2]
    [AddCommMonoid GT] [Module F GT]
    (contract : StatementBindingContract μ F G1 G2 GT Row DecodedProof)
    (input : ShippingV1Input μ F G1 G2 GT Row DecodedProof)
    (hsupported : contract.supported input) :
    ValidCounts input ∧ RealPrefixExact input ∧ RepeatFinalPadding input :=
  ⟨contract.validCounts input hsupported,
    contract.realPrefixExact input hsupported,
    contract.repeatFinalPadding input hsupported⟩

/-- The authenticated family, serialized VK, SRS id, and every ordered padded
row project to the exact formal statement components consumed by v1. -/
theorem shipping_input_projects_exact_statement
    {μ : Nat} {F G1 G2 GT Row DecodedProof : Type}
    [Field F] [AddCommGroup G1] [Module F G1]
    [AddCommGroup G2] [Module F G2]
    [AddCommGroup GT] [Module F GT]
    (projection : ShippingProjection μ F G1 G2 GT Row DecodedProof)
    (binding : StatementBindingContract μ F G1 G2 GT Row DecodedProof)
    (semantics : StatementProjectionContract projection binding)
    (input : ShippingV1Input μ F G1 G2 GT Row DecodedProof)
    (hsupported : binding.supported input) :
    semantics.Projects input := by
  simpa [StatementProjectionContract.Projects] using
    semantics.exact input hsupported

#print axioms shipping_statement_binds_public_claim
#print axioms verified_call_projects_unique_v1
#print axioms verified_call_binds_unique_shipping_input
#print axioms shipping_input_preserves_order_and_padding
#print axioms shipping_input_projects_exact_statement

end Ipp.ShippingV1
