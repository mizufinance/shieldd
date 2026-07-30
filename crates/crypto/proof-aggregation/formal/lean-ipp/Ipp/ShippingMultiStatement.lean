import Ipp.FsFork
import Ipp.ForkTree
import Ipp.Bls12377PairingAdapter
import Ipp.ShippingHashGame

/-!
Global, multi-statement Fiat--Shamir foundations for shipping SnarkPack.

The adversary and the selected verifier share one oracle program.  In
particular, the adversary may query before choosing a heterogeneous
statement/proof pair.  There is no reduction here from a continuation with an
arbitrary populated cache to a fresh fixed-statement game.

The structured ideal query retains the logical statement preimages as an
annotation, while `globalQueryEncoding` erases that annotation to the bytes
used by production.  Exact duplicate calls therefore share one logical key,
but distinct statements whose SHA-derived contexts alias remain distinct
structured queries with equal byte encodings.  The later deployed-hash
coupling must charge precisely those reachable aliases to its SHA event.
-/

open OracleSpec OracleComp ENNReal Function
open scoped OracleSpec.PrimitiveQuery ENNReal BigOperators

namespace Ipp.ShippingMultiStatement

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

/-- The two production-selected byte components shared by every challenge in
one statement.  `familyDomain` is the already-registered Blake2b prefix;
`challengeContext` is the 32-byte SHA-derived context. -/
structure EncodedFamilyContext where
  familyDomain : List UInt8
  challengeContext : Ipp.ChallengeEncoding.Context
deriving DecidableEq

/-- Logical statement identity retained across the adaptive experiment.

No synthetic invocation identifier appears here: repeated calls for the exact
same canonical statement remain the same oracle domain.  The unhashed
preimages are retained so a distinct-statement/equal-context alias can be
witnessed and reduced to one of the named SHA-256 games. -/
structure ShippingStatementKey where
  family : Ipp.ShippingV1.Family
  srsId : Ipp.ShippingV1.Bytes
  serializedVk : Ipp.ShippingV1.Bytes
  canonicalStatement : Ipp.ShippingV1.Bytes
  statementDigest : Ipp.ShippingV1.Bytes
  challengeContext : Ipp.ChallengeEncoding.Context
deriving DecidableEq

/-- One global shipping-oracle query.  `statement` is a logical annotation;
the deployed Blake2b input is exactly `globalQueryEncoding query` below. -/
structure GlobalShippingQuery where
  statement : ShippingStatementKey
  encoded : EncodedFamilyContext
  attempt : Ipp.ShippingHashGame.ShippingAttempt
deriving DecidableEq

/-- Exact deployed Blake2b input for a global query. -/
def globalQueryEncoding (q : GlobalShippingQuery) : List UInt8 :=
  q.encoded.familyDomain ++
    Ipp.ShippingHashGame.shippingAttemptPreimage
      q.encoded.challengeContext q.attempt

/-- Construct a global query after production family registration has supplied
its exact transcript-domain bytes and the concrete statement projection has
retained the unhashed binding inputs. -/
def GlobalShippingQuery.ofRegistered
    (statement : ShippingStatementKey)
    (domain : List UInt8)
    (_registered : statement.family.transcriptDomain = some domain)
    (attempt : Ipp.ShippingHashGame.ShippingAttempt) :
    GlobalShippingQuery := {
  statement := statement
  encoded := {
    familyDomain := domain
    challengeContext := statement.challengeContext
  }
  attempt := attempt
}

/-- The global encoder is byte-for-byte the deployed family-prefixed
challenge preimage for a registered family. -/
@[simp] theorem globalQueryEncoding_ofRegistered
    (statement : ShippingStatementKey)
    (domain : List UInt8)
    (registered : statement.family.transcriptDomain = some domain)
    (attempt : Ipp.ShippingHashGame.ShippingAttempt) :
    globalQueryEncoding
        (GlobalShippingQuery.ofRegistered
          statement domain registered attempt) =
      Ipp.ShippingHashGame.shippingBlake2bPreimage
        statement.family statement.challengeContext
        (Ipp.ShippingHashGame.shippingAttemptPoint attempt) := by
  simp [globalQueryEncoding, GlobalShippingQuery.ofRegistered,
    Ipp.ShippingHashGame.shippingAttemptPreimage,
    Ipp.ShippingHashGame.shippingBlake2bPreimage, registered]

/-- Within one already-encoded family/context key, exact production framing
is injective over every bounded stage/payload/nonce attempt. -/
theorem globalQueryEncoding_fixed_key_injective
    (statement : ShippingStatementKey)
    (encoded : EncodedFamilyContext) :
    Function.Injective
      (fun attempt : Ipp.ShippingHashGame.ShippingAttempt =>
        globalQueryEncoding {
          statement := statement
          encoded := encoded
          attempt := attempt
        }) := by
  intro left right heq
  apply
    Ipp.ShippingHashGame.shippingAttemptPreimage_injective
      encoded.challengeContext
  exact List.append_right_injective encoded.familyDomain heq

/-- A concrete cross-key alias at the deployed byte boundary.  The later
coupling must show that any reachable instance either has equal logical
statement keys or induces the named SHA-256 collision event. -/
def GlobalQueryEncodingCollision
    (left right : GlobalShippingQuery) : Prop :=
  left ≠ right ∧ globalQueryEncoding left = globalQueryEncoding right

/-- Exact injectivity condition for the finite set of queries reached by one
whole adversary-and-verifier execution.  This is the collision-free branch,
not an unconditional axiom about variable-length production prefixes. -/
def EncodingCollisionFreeOn
    (reached : Set GlobalShippingQuery) : Prop :=
  Set.InjOn globalQueryEncoding reached

/-- Reachable byte injectivity is the exact collision-free branch consumed by
the logical-query/byte-query reindexing theorem.  Unlike equality of an
already-hashed context, this predicate can witness two different retained
statement preimages that encode to the same Blake2b query. -/
def ReachableEncodingCollisionFree
    (reached : Set GlobalShippingQuery) : Prop :=
  Set.InjOn globalQueryEncoding reached

/-- Structured algebraic query used by the adaptive S1 game.  This is kept
separate from `GlobalShippingQuery`: the latter is the canonical byte-level
attempt domain, while this point carries the exact algebraic values consumed
by `FsGame` and the forking lemmas.  Their one-to-one correspondence is a
concrete serialization/refinement theorem, not a definitional identification
of decoded group values with wire values. -/
structure GlobalFsQuery where
  statement : ShippingStatementKey
  encoded : EncodedFamilyContext
  point :
    Ipp.ChallengePoint Ipp.Bls12377.Fr
      Ipp.Bls12377.g1PrimeSubgroup
      Ipp.Bls12377.g2PrimeSubgroup
      Ipp.Bls12377.ArkPairingOutput
deriving DecidableEq

/-- Map only the GT carrier of a formal challenge point into the canonical
decoded wire carrier.  G1, G2, Fr, stage, payload order, and nonce are
preserved definitionally. -/
def mapChallengePointGt
    (encodeGt : Ipp.Bls12377.ArkPairingOutput →
      Ipp.ChallengeMessageSerialization.CanonicalGt) :
    Ipp.ChallengePoint Ipp.Bls12377.Fr
        Ipp.Bls12377.g1PrimeSubgroup
        Ipp.Bls12377.g2PrimeSubgroup
        Ipp.Bls12377.ArkPairingOutput →
      Ipp.ShippingHashGame.ShippingPoint
  | .randomizer payload nonce =>
      .randomizer {
        comA := encodeGt payload.comA
        comB := encodeGt payload.comB
        comC := encodeGt payload.comC
      } nonce
  | .x0 payload nonce =>
      .x0 {
        r := payload.r
        comA := encodeGt payload.comA
        comB := encodeGt payload.comB
        comC := encodeGt payload.comC
        ipAb := encodeGt payload.ipAb
        aggC := payload.aggC
      } nonce
  | .round previous commitments nonce =>
      .round previous {
        LA := (encodeGt commitments.LA.1, encodeGt commitments.LA.2)
        RA := (encodeGt commitments.RA.1, encodeGt commitments.RA.2)
        LB := encodeGt commitments.LB
        RB := encodeGt commitments.RB
        LT := (encodeGt commitments.LT.1, commitments.LT.2)
        RT := (encodeGt commitments.RT.1, commitments.RT.2)
      } nonce
  | .bridge payload nonce => .bridge payload nonce
  | .kzg payload nonce => .kzg payload nonce

/-- Exact boundary required to reindex structured algebraic queries through
the deployed byte-attempt domain.  The implementation proof must construct
this relation from the shipping serializers and may use it only on reachable
queries. -/
structure GlobalQuerySerialization where
  encodeGt : Ipp.Bls12377.ArkPairingOutput →
    Ipp.ChallengeMessageSerialization.CanonicalGt
  toByteAttempt : GlobalFsQuery → GlobalShippingQuery
  statement_exact : ∀ q,
    (toByteAttempt q).statement = q.statement
  encoded_exact : ∀ q,
    (toByteAttempt q).encoded = q.encoded
  point_exact : ∀ q,
    Ipp.ShippingHashGame.shippingAttemptPoint
        (toByteAttempt q).attempt =
      mapChallengePointGt encodeGt q.point

def GlobalQuerySerialization.byteEncoding
    (serialization : GlobalQuerySerialization)
    (q : GlobalFsQuery) : List UInt8 :=
  globalQueryEncoding (serialization.toByteAttempt q)

/-- Joint injectivity required only on queries reachable in one complete
adaptive execution.  Its proof decomposes into registered-family
prefix-freedom, canonical payload framing, and the named SHA collision-free
branch for distinct logical statements. -/
def ReachableGlobalSerializationInjective
    (serialization : GlobalQuerySerialization)
    (reached : Set GlobalFsQuery) : Prop :=
  Set.InjOn serialization.byteEncoding reached

/-- The exact logical alias that must be charged to SHA-256 rather than hidden
by equality of already-hashed challenge contexts. -/
def LogicalStatementContextAlias
    (left right : GlobalFsQuery) : Prop :=
  left.statement ≠ right.statement ∧
    left.encoded = right.encoded

/-- The ideal global field oracle used after the byte-to-field coupling. -/
abbrev GlobalFieldOracleSpec :=
  GlobalFsQuery →ₒ Ipp.Bls12377.Fr

/-- Ambient sampling plus the one global structured field oracle.  This has
the same shape consumed by `FsFork.fsRandomFunction` and `ForkTree`. -/
abbrev GlobalFsSourceSpec :=
  unifSpec + GlobalFieldOracleSpec

local instance globalFsSourceUniform :
    IsUniformSpec GlobalFsSourceSpec :=
  IsUniformSpec.ofFintypeInhabited _

local instance fsWrappedUniform :
    IsUniformSpec (Ipp.FsWrappedSpec Ipp.Bls12377.Fr) :=
  IsUniformSpec.ofFintypeInhabited _

/-- One formal statement/proof choice in the explicit `μ` partition.  The
opaque production `call` is retained in fork outputs.  `logicalKey` preserves
the exact statement identity; `encodedKey` records the registered domain and
SHA-derived context actually used by the deployed challenge function. -/
structure SelectionAt (Call : Type) (μ : Nat) where
  call : Call
  logicalKey : ShippingStatementKey
  encodedKey : EncodedFamilyContext
  /-- The byte prefix used by every selected challenge is exactly the
  registered transcript domain of the selected logical family. -/
  familyDomain_exact :
    logicalKey.family.transcriptDomain = some encodedKey.familyDomain
  /-- The byte context used by every selected challenge is exactly the
  SHA-derived context retained in the selected logical statement key. -/
  challengeContext_exact :
    encodedKey.challengeContext = logicalKey.challengeContext
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

/-- Heterogeneous statement selection, partitioned by the exact round count. -/
abbrev PackedSelection (Call : Type) :=
  Sigma (SelectionAt Call)

namespace PackedSelection

def logicalKey {Call : Type}
    (selection : PackedSelection Call) : ShippingStatementKey :=
  selection.2.logicalKey

def encodedKey {Call : Type}
    (selection : PackedSelection Call) : EncodedFamilyContext :=
  selection.2.encodedKey

end PackedSelection

/-- Every inhabitant of `SelectionAt` carries the exact registered
family-domain and SHA-derived challenge context used by its global queries.
This is structural: an adaptive adversary cannot return a mismatched pair. -/
def SelectionAt.EncodingExact {Call : Type} {μ : Nat}
    (selection : SelectionAt Call μ) : Prop :=
  selection.logicalKey.family.transcriptDomain =
      some selection.encodedKey.familyDomain ∧
    selection.encodedKey.challengeContext =
      selection.logicalKey.challengeContext

@[simp] theorem SelectionAt.encodingExact
    {Call : Type} {μ : Nat}
    (selection : SelectionAt Call μ) :
    selection.EncodingExact :=
  ⟨selection.familyDomain_exact, selection.challengeContext_exact⟩

/-- A selected global query encodes to the exact production
family-domain-separated Blake2b preimage. -/
@[simp] theorem SelectionAt.globalQueryEncoding_eq_shipping
    {Call : Type} {μ : Nat}
    (selection : SelectionAt Call μ)
    (attempt : Ipp.ShippingHashGame.ShippingAttempt) :
    globalQueryEncoding {
        statement := selection.logicalKey
        encoded := selection.encodedKey
        attempt := attempt
      } =
      Ipp.ShippingHashGame.shippingBlake2bPreimage
        selection.logicalKey.family
        selection.logicalKey.challengeContext
        (Ipp.ShippingHashGame.shippingAttemptPoint attempt) := by
  simp [globalQueryEncoding,
    Ipp.ShippingHashGame.shippingAttemptPreimage,
    Ipp.ShippingHashGame.shippingBlake2bPreimage,
    selection.familyDomain_exact, selection.challengeContext_exact]

/-- Forward ambient sampling into the one global adaptive source. -/
def globalFsUnifFwd :
    QueryImpl unifSpec (OracleComp GlobalFsSourceSpec) :=
  fun n =>
    (GlobalFsSourceSpec).query (Sum.inl n)

/-- Tag every verifier challenge with the exact statement selected by the
adversary.  The algebraic point itself is unchanged. -/
def globalFsPointFwd {Call : Type} {μ : Nat}
    (selection : SelectionAt Call μ) :
    QueryImpl
      (Ipp.SnarkpackFsSpec Ipp.Bls12377.Fr
        Ipp.Bls12377.g1PrimeSubgroup
        Ipp.Bls12377.g2PrimeSubgroup
        Ipp.Bls12377.ArkPairingOutput)
      (OracleComp GlobalFsSourceSpec) :=
  fun point =>
    (GlobalFsSourceSpec).query (Sum.inr {
      statement := selection.logicalKey
      encoded := selection.encodedKey
      point := point
    })

/-- The exact globally tagged formal verifier.  The returned proof is reset
definitionally to the selected proof, preventing an arbitrary verifier
callback from accepting a different proof under the selected invalidity
predicate. -/
def globalFsVerifier {Call : Type} {μ : Nat}
    (selection : SelectionAt Call μ) :
    OracleComp GlobalFsSourceSpec
      (Ipp.FsResult μ Ipp.Bls12377.Fr
        Ipp.Bls12377.g1PrimeSubgroup
        Ipp.Bls12377.g2PrimeSubgroup
        Ipp.Bls12377.ArkPairingOutput) := do
  let result ←
    simulateQ (globalFsUnifFwd + globalFsPointFwd selection)
      (Ipp.fsVerifier selection.statement selection.proof)
  pure { result with proof := selection.proof }

/-- Every output of the global verifier carries exactly the selected proof. -/
theorem globalFsVerifier_support_proof_eq
    {Call : Type} {μ : Nat}
    (selection : SelectionAt Call μ)
    {result :
      Ipp.FsResult μ Ipp.Bls12377.Fr
        Ipp.Bls12377.g1PrimeSubgroup
        Ipp.Bls12377.g2PrimeSubgroup
        Ipp.Bls12377.ArkPairingOutput}
    (hresult : result ∈ support (globalFsVerifier selection)) :
    result.proof = selection.proof := by
  rw [globalFsVerifier, support_bind] at hresult
  simp only [Set.mem_iUnion] at hresult
  obtain ⟨raw, _, hpure⟩ := hresult
  simp only [support_pure, Set.mem_singleton_iff] at hpure
  subst result
  rfl

/-- Result type inside one exact `μ` partition. -/
structure OutcomeAt (Call : Type) (μ : Nat) where
  selection : SelectionAt Call μ
  verifierResult :
    Ipp.FsResult μ Ipp.Bls12377.Fr
      Ipp.Bls12377.g1PrimeSubgroup
      Ipp.Bls12377.g2PrimeSubgroup
      Ipp.Bls12377.ArkPairingOutput

namespace OutcomeAt

/-- The exact structured query whose answer occupies one accepted transcript
round.  Its point is reconstructed from the selected proof and the verifier's
typed transcript; no pre-selection fixed slot is assumed. -/
def roundQuery? {Call : Type} {μ : Nat}
    (output : OutcomeAt Call μ) (level : Nat) :
    Option GlobalFsQuery := by
  if hlevel : level < μ then
    let i : Fin μ := ⟨level, hlevel⟩
    exact some {
      statement := output.selection.logicalKey
      encoded := output.selection.encodedKey
      point := .round
        (output.verifierResult.transcript.roundPrev i)
        (output.verifierResult.proof.rounds i)
        (output.verifierResult.transcript.roundNonce i)
    }
  else
    exact none

@[simp] theorem roundQuery?_of_lt {Call : Type} {μ : Nat}
    (output : OutcomeAt Call μ) (level : Nat) (hlevel : level < μ) :
    output.roundQuery? level = some {
      statement := output.selection.logicalKey
      encoded := output.selection.encodedKey
      point := .round
        (output.verifierResult.transcript.roundPrev ⟨level, hlevel⟩)
        (output.verifierResult.proof.rounds ⟨level, hlevel⟩)
        (output.verifierResult.transcript.roundNonce ⟨level, hlevel⟩)
    } := by
  simp [roundQuery?, hlevel]

end OutcomeAt

/-- Heterogeneous game output.  The dependent package prevents a verifier
result from being silently reinterpreted at another proof size. -/
abbrev PackedOutcome (Call : Type) :=
  Sigma (OutcomeAt Call)

namespace PackedOutcome

/-- Forget the verifier result while retaining the exact selected call,
statement, proof, and already-encoded statement key. -/
def selection {Call : Type}
    (output : PackedOutcome Call) : PackedSelection Call :=
  ⟨output.1, output.2.selection⟩

/-- Reconstruct one selected round query without erasing the dependent proof
size.  Out-of-range levels fail closed. -/
def roundQuery? {Call : Type}
    (level : Nat) : PackedOutcome Call → Option GlobalFsQuery
  | ⟨_, output⟩ => output.roundQuery? level

def accept {Call : Type} : PackedOutcome Call → Bool
  | ⟨_, output⟩ => output.verifierResult.accept

/-- The logical statement key selected by one heterogeneous output. -/
def logicalKey {Call : Type} : PackedOutcome Call → ShippingStatementKey
  | ⟨_, output⟩ => output.selection.logicalKey

/-- Project a heterogeneous output into one `μ` partition, failing when its
dependent index differs. -/
def at? {Call : Type} (μ : Nat) :
    PackedOutcome Call → Option (OutcomeAt Call μ)
  | ⟨ν, output⟩ =>
      if h : ν = μ then some (h ▸ output) else none

@[simp] theorem at?_self {Call : Type} (μ : Nat)
    (output : OutcomeAt Call μ) :
    at? μ (⟨μ, output⟩ : PackedOutcome Call) = some output := by
  simp [at?]

end PackedOutcome

/-- The selected-`μ` partition event. -/
def SelectedMu {Call : Type} (μ : Nat) :
    PackedOutcome Call → Prop
  | ⟨ν, _⟩ => ν = μ

/-- Every heterogeneous output belongs to its own dependent-size partition. -/
@[simp] theorem selectedMu_index {Call : Type}
    (output : PackedOutcome Call) :
    SelectedMu output.1 output := by
  cases output
  rfl

/-- Multi-statement Fiat--Shamir game.

The first bind runs the adversary inside `GlobalFsSourceSpec`; only after that
computation returns a dependent selection does the matching verifier run.
Thus every pre-selection query and every verifier query is in one shared
oracle program. -/
def MultiStatementFsGame {Call : Type}
    (adversary :
      OracleComp GlobalFsSourceSpec (PackedSelection Call)) :
    OracleComp GlobalFsSourceSpec (PackedOutcome Call) := do
  let selected ← adversary
  match selected with
  | ⟨μ, selection⟩ => do
      let result ← globalFsVerifier selection
      pure ⟨μ, {
        selection := selection
        verifierResult := result
      }⟩

/-- Verify one already-selected heterogeneous call without leaving the shared
oracle program. -/
def verifyPackedSelection {Call : Type} :
    PackedSelection Call →
      OracleComp GlobalFsSourceSpec (PackedOutcome Call)
  | ⟨μ, selection⟩ => do
      let result ← globalFsVerifier selection
      pure ⟨μ, {
        selection := selection
        verifierResult := result
      }⟩

/-- Sequentially verify a planned heterogeneous bundle.  This recursion lives
inside one oracle computation; answers queried for earlier calls remain in
the same cache for every later call. -/
def verifyPackedBundle {Call : Type} :
    List (PackedSelection Call) →
      OracleComp GlobalFsSourceSpec (List (PackedOutcome Call))
  | [] => pure []
  | selected :: rest => do
      let output ← verifyPackedSelection selected
      let outputs ← verifyPackedBundle rest
      pure (output :: outputs)

/-- Adaptive bundle game: the adversary may query before choosing the complete
ordered call list, after which all shipping calls execute against that same
global oracle state. -/
def MultiStatementBundleFsGame {Call : Type}
    (adversary :
      OracleComp GlobalFsSourceSpec (List (PackedSelection Call))) :
    OracleComp GlobalFsSourceSpec (List (PackedOutcome Call)) := do
  let planned ← adversary
  verifyPackedBundle planned

/-- Whole-game query accounting keeps adversary and selected-verifier
budgets additive; it never resets the global oracle between the two phases. -/
theorem multiStatementFsGame_isTotalQueryBound
    {Call : Type}
    (adversary :
      OracleComp GlobalFsSourceSpec (PackedSelection Call))
    (adversaryQueries verifierQueries : Nat)
    (hadversary : IsTotalQueryBound adversary adversaryQueries)
    (hverifier : ∀ (μ : Nat) (selection : SelectionAt Call μ),
      IsTotalQueryBound
        (globalFsVerifier (μ := μ) selection) verifierQueries) :
    IsTotalQueryBound
      (MultiStatementFsGame adversary)
      (adversaryQueries + verifierQueries) := by
  unfold MultiStatementFsGame
  refine isTotalQueryBound_bind
    (n₁ := adversaryQueries) (n₂ := verifierQueries) hadversary ?_
  rintro ⟨μ, selection⟩
  refine
    (isTotalQueryBound_bind
      (n₁ := verifierQueries) (n₂ := 0)
      (hverifier μ selection) ?_).mono ?_
  · intro result
    exact trivial
  · simp

/-- Composite adaptive-game capstone: every query made by the selected
verifier has the exact registered family prefix and retained SHA challenge
context, while the complete adversary-plus-verifier program is bounded by the
declared additive query budget. Arbitrary adversarial prequeries require the
separate reached-query invariant used by the final coupling. -/
theorem multiStatementFsGame_selectedFraming_queryBounded
    {Call : Type}
    (adversary :
      OracleComp GlobalFsSourceSpec (PackedSelection Call))
    (adversaryQueries verifierQueries : Nat)
    (hadversary : IsTotalQueryBound adversary adversaryQueries)
    (hverifier : ∀ (μ : Nat) (selection : SelectionAt Call μ),
      IsTotalQueryBound
        (globalFsVerifier (μ := μ) selection) verifierQueries) :
    IsTotalQueryBound
        (MultiStatementFsGame adversary)
        (adversaryQueries + verifierQueries) ∧
      ∀ μ (selection : SelectionAt Call μ),
        selection.EncodingExact ∧
          ∀ attempt : Ipp.ShippingHashGame.ShippingAttempt,
            globalQueryEncoding {
                statement := selection.logicalKey
                encoded := selection.encodedKey
                attempt := attempt
              } =
              Ipp.ShippingHashGame.shippingBlake2bPreimage
                selection.logicalKey.family
                selection.logicalKey.challengeContext
                (Ipp.ShippingHashGame.shippingAttemptPoint attempt) := by
  refine
    ⟨multiStatementFsGame_isTotalQueryBound adversary
      adversaryQueries verifierQueries hadversary hverifier, ?_⟩
  intro μ selection
  exact
    ⟨selection.encodingExact,
      fun attempt =>
        selection.globalQueryEncoding_eq_shipping attempt⟩

/-- Wrapped output retaining the chronological structured miss trace needed
to locate the selected statement's GIPA round slots after adversarial
prequeries. -/
abbrev MultiStatementWrappedRun (Call : Type) :=
  Ipp.WrappedFsRun GlobalFsQuery (PackedOutcome Call)

/-- The complete adversary-and-verifier program behind one shared cached
field oracle, reindexed to the single forkable source while retaining every
structured cache miss. -/
def multiStatementForkMain {Call : Type}
    (game : OracleComp GlobalFsSourceSpec (PackedOutcome Call)) :
    OracleComp (Ipp.FsWrappedSpec Ipp.Bls12377.Fr)
      (MultiStatementWrappedRun Call) :=
  Ipp.wrapFs game

/-- Output/log carrier of the globally cached random-function execution. -/
abbrev MultiStatementRunLog (Call : Type) :=
  MultiStatementWrappedRun Call ×
    QueryLog (Ipp.FsWrappedSpec Ipp.Bls12377.Fr)

/-- One cached global random function around the entire selection-and-verify
game, with both the structured miss trace and source-answer log exposed for
the replay-fork construction. -/
def multiStatementFsProbComp {Call : Type}
    (game : OracleComp GlobalFsSourceSpec (PackedOutcome Call)) :
    OracleComp (Ipp.FsWrappedSpec Ipp.Bls12377.Fr)
      (MultiStatementRunLog Call) :=
  replayFirstRun (multiStatementForkMain game)

/-- Dynamically locate the first cache miss for the selected output's
round-`level` structured query.  Adversarial queries before selection remain
in the trace and therefore shift this slot rather than being discarded. -/
def multiStatementRoundSlot {Call : Type}
    (queryBound level : Nat)
    (run : MultiStatementWrappedRun Call) :
    Option (Fin (queryBound + 1)) := by
  match run.out.roundQuery? level with
  | none => exact none
  | some q =>
      if hmem : q ∈ run.trace then
        let index := run.trace.findIdx (· == q)
        if hindex : index < queryBound + 1 then
          exact some ⟨index, hindex⟩
        else
          exact none
      else
        exact none

/-- A selected heterogeneous round query carries the logical statement key
of the output that selected it. -/
theorem packedOutcome_roundQuery?_statement
    {Call : Type} {level : Nat}
    {output : PackedOutcome Call} {query : GlobalFsQuery}
    (hquery : output.roundQuery? level = some query) :
    query.statement = output.logicalKey := by
  rcases output with ⟨μ, output⟩
  change output.roundQuery? level = some query at hquery
  by_cases hlevel : level < μ
  · rw [OutcomeAt.roundQuery?_of_lt output level hlevel] at hquery
    have heq := Option.some.inj hquery
    subst query
    rfl
  · simp [OutcomeAt.roundQuery?, hlevel] at hquery

/-- A successful dynamic selector points at the selected structured query in
the chronological miss trace. -/
theorem multiStatementRoundSlot_query_at_trace
    {Call : Type}
    (queryBound level : Nat)
    (run : MultiStatementWrappedRun Call)
    {slot : Fin (queryBound + 1)}
    (hslot : multiStatementRoundSlot queryBound level run = some slot) :
    ∃ query : GlobalFsQuery,
      run.out.roundQuery? level = some query ∧
        run.trace[(slot : Nat)]? = some query := by
  cases hquery : run.out.roundQuery? level with
  | none =>
      simp [multiStatementRoundSlot, hquery] at hslot
  | some query =>
      by_cases hmem : query ∈ run.trace
      · let index := run.trace.findIdx (· == query)
        by_cases hindex : index < queryBound + 1
        · have hselected :
              (⟨index, hindex⟩ : Fin (queryBound + 1)) = slot := by
            exact Option.some.inj (by
              simpa [multiStatementRoundSlot, hquery, hmem, index] using hslot)
          have hindexSlot : index = (slot : Nat) :=
            congrArg Fin.val hselected
          have htraceBound :
              run.trace.findIdx (· == query) < run.trace.length :=
            List.findIdx_lt_length_of_exists
              ⟨query, hmem, by simp⟩
          have htraceValue :
              run.trace[run.trace.findIdx (· == query)] = query := by
            simpa using
              (List.findIdx_getElem
                (xs := run.trace) (p := fun x => x == query)
                (w := htraceBound))
          have hatIndex : run.trace[index]? = some query := by
            simpa [index, htraceBound, htraceValue]
          exact ⟨query, hquery, by simpa [hindexSlot] using hatIndex⟩
        · simp [multiStatementRoundSlot, hquery, hmem, index, hindex] at hslot
      · simp [multiStatementRoundSlot, hquery, hmem] at hslot

/-- Replaying at one selected round slot cannot change the logical statement
key attached to that query.  The selected proof and opaque call may still
change after the forked answer; neither is claimed equal here. -/
theorem logicalKey_eq_of_shared_selected_slot
    {Call : Type}
    (game : OracleComp GlobalFsSourceSpec (PackedOutcome Call))
    (queryBound level slotPos : Nat)
    {runA runB : MultiStatementRunLog Call}
    {slot : Fin (queryBound + 1)}
    (hsupportA : runA ∈ support
      (replayFirstRun (multiStatementForkMain game)))
    (hsupportB : runB ∈ support
      (replayFirstRun (multiStatementForkMain game)))
    (hslotA :
      multiStatementRoundSlot queryBound level runA.1 = some slot)
    (hslotB :
      multiStatementRoundSlot queryBound level runB.1 = some slot)
    (hprefix : ∀ n, n < slotPos → runA.2[n]? = runB.2[n]?)
    (hinputA :
      QueryLog.inputAt? runA.2 slotPos = some (Sum.inr ()))
    (hinputB :
      QueryLog.inputAt? runB.2 slotPos = some (Sum.inr ()))
    (hrankA :
      (QueryLog.getQ (runA.2.take slotPos)
        (· = Sum.inr ())).length = (slot : Nat))
    (hrankB :
      (QueryLog.getQ (runB.2.take slotPos)
        (· = Sum.inr ())).length = (slot : Nat)) :
    runA.1.out.logicalKey = runB.1.out.logicalKey := by
  have htrace :=
    Ipp.trace_prefix_of_log_prefix game slotPos
      (by simpa [multiStatementForkMain] using hsupportA)
      (by simpa [multiStatementForkMain] using hsupportB)
      hprefix hinputA hinputB
  have hrankA' :
      Ipp.structuredMissCountBefore runA.2 slotPos = (slot : Nat) := by
    simpa [Ipp.structuredMissCountBefore] using hrankA
  rw [hrankA'] at htrace
  obtain ⟨queryA, hqueryA, hatA⟩ :=
    multiStatementRoundSlot_query_at_trace
      queryBound level runA.1 hslotA
  obtain ⟨queryB, hqueryB, hatB⟩ :=
    multiStatementRoundSlot_query_at_trace
      queryBound level runB.1 hslotB
  have htraceAt :
      runA.1.trace[(slot : Nat)]? =
        runB.1.trace[(slot : Nat)]? := by
    have hget :=
      congrArg (fun trace => trace[(slot : Nat)]?) htrace
    simpa [List.getElem?_take] using hget
  have hqueries : queryA = queryB :=
    Option.some.inj (hatA.symm.trans (htraceAt.trans hatB))
  have hstatementA :=
    packedOutcome_roundQuery?_statement hqueryA
  have hstatementB :=
    packedOutcome_roundQuery?_statement hqueryB
  exact hstatementA.symm.trans
    ((congrArg (fun query : GlobalFsQuery => query.statement) hqueries).trans
      hstatementB)

/-- Invalid acceptance in the exact selected partition. -/
def InvalidAccepted {Call : Type}
    (invalid : (μ : Nat) → SelectionAt Call μ → Prop) :
    PackedOutcome Call → Prop
  | ⟨μ, output⟩ =>
      invalid μ output.selection ∧ output.verifierResult.accept = true

/-- Semantic invalidity of one heterogeneous selected output, independent of
the verifier's return bit. -/
def InvalidOutput {Call : Type}
    (invalid : (μ : Nat) → SelectionAt Call μ → Prop) :
    PackedOutcome Call → Prop
  | ⟨μ, output⟩ => invalid μ output.selection

/-- Deterministically select the first invalid output in bundle order. -/
noncomputable def leastInvalidOutcome? {Call : Type}
    (invalid : (μ : Nat) → SelectionAt Call μ → Prop) :
    List (PackedOutcome Call) → Option (PackedOutcome Call)
  | [] => none
  | output :: rest =>
      @ite (Option (PackedOutcome Call))
        (InvalidOutput invalid output)
        (Classical.propDecidable _)
        (some output)
        (leastInvalidOutcome? invalid rest)

/-- The least-invalid selector never manufactures an output. -/
theorem leastInvalidOutcome?_mem {Call : Type}
    (invalid : (μ : Nat) → SelectionAt Call μ → Prop)
    {outputs : List (PackedOutcome Call)}
    {output : PackedOutcome Call}
    (h : leastInvalidOutcome? invalid outputs = some output) :
    output ∈ outputs := by
  induction outputs with
  | nil =>
      simp [leastInvalidOutcome?] at h
  | cons head tail ih =>
      simp only [leastInvalidOutcome?] at h
      split at h
      · simp only [Option.some.injEq] at h
        subst output
        simp
      · exact List.mem_cons_of_mem head (ih h)

/-- Every selected least-invalid output satisfies the invalidity predicate. -/
theorem leastInvalidOutcome?_invalid {Call : Type}
    (invalid : (μ : Nat) → SelectionAt Call μ → Prop)
    {outputs : List (PackedOutcome Call)}
    {output : PackedOutcome Call}
    (h : leastInvalidOutcome? invalid outputs = some output) :
    InvalidOutput invalid output := by
  induction outputs with
  | nil =>
      simp [leastInvalidOutcome?] at h
  | cons head tail ih =>
      simp only [leastInvalidOutcome?] at h
      split at h
      · rename_i hhead
        simp only [Option.some.injEq] at h
        subst output
        exact hhead
      · exact ih h

/-- All shipping calls returned acceptance. -/
def BundleAcceptsAll {Call : Type}
    (outputs : List (PackedOutcome Call)) : Prop :=
  ∀ output ∈ outputs, output.accept = true

/-- The least ordered invalid call is accepted whenever the bundle accepted
all calls.  Because `MultiStatementBundleFsGame` executes the list in one
oracle program, this selected call retains the cache effects of every earlier
call rather than restarting from a fresh oracle. -/
theorem bundle_acceptance_implies_least_invalid_acceptance
    {Call : Type}
    (invalid : (μ : Nat) → SelectionAt Call μ → Prop)
    {outputs : List (PackedOutcome Call)}
    {output : PackedOutcome Call}
    (hleast : leastInvalidOutcome? invalid outputs = some output)
    (hall : BundleAcceptsAll outputs) :
    InvalidOutput invalid output ∧ output.accept = true := by
  have hmem := leastInvalidOutcome?_mem invalid hleast
  exact
    ⟨leastInvalidOutcome?_invalid invalid hleast,
      hall output hmem⟩

/-- Invalid acceptance restricted to one explicit `μ` partition. -/
def InvalidAcceptedAt {Call : Type}
    (invalid : (μ : Nat) → SelectionAt Call μ → Prop)
    (μ : Nat) : MultiStatementRunLog Call → Prop :=
  fun run =>
    SelectedMu μ run.1.out ∧ InvalidAccepted invalid run.1.out

/-- Raw replay tree produced directly by the generic extractor in one
selected-size partition.  Branches may still choose different statements;
the later multi-statement forking proof must derive a common-selection event
rather than assuming it in the experiment's output type. -/
abbrev RawMultiStatementForkTree (Call : Type) (μ : Nat) :=
  Ipp.RunTree (Ipp.FsWrappedSpec Ipp.Bls12377.Fr)
    (MultiStatementWrappedRun Call) μ

/-- Every run in a replay tree carries one logical statement key.  This is
strictly weaker than equality of `SelectionAt`: response/proof fields may
legitimately depend on a forked answer. -/
def ForkCarriesLogicalKey {Call : Type} {depth : Nat}
    (key : ShippingStatementKey)
    (tree : Ipp.RunTree (Ipp.FsWrappedSpec Ipp.Bls12377.Fr)
      (MultiStatementWrappedRun Call) depth) : Prop :=
  tree.All (fun run => run.1.out.logicalKey = key)

/-- Concrete global replay experiment for one depth.  The round selector is
computed from each wrapped branch after its statement selection, so arbitrary
adversarial prequeries remain part of the selected miss ordinal. -/
noncomputable def rawMultiStatementForkExperimentAt
    {Call : Type}
    (game : OracleComp GlobalFsSourceSpec (PackedOutcome Call))
    (invalid : (μ : Nat) → SelectionAt Call μ → Prop)
    (queryBounds :
      (Ipp.FsWrappedSpec Ipp.Bls12377.Fr).Domain → Nat)
    (μ : Nat) :
    OracleComp (Ipp.FsWrappedSpec Ipp.Bls12377.Fr)
      (Option (RawMultiStatementForkTree Call μ)) := by
  classical
  exact Ipp.forkTreeCombined μ (multiStatementForkMain game)
    queryBounds (Sum.inr ())
    (fun level run =>
      multiStatementRoundSlot (queryBounds (Sum.inr ())) level run)
    (InvalidAcceptedAt invalid μ)
    μ (Nat.le_refl μ)

/-- Every consistent global replay tree carries its canonical root's logical
statement key throughout the tree.  At each node the selected round query is
formed before its forked answer is returned, so the shared pre-answer prefix
fixes the query's statement annotation even when later proof fields differ. -/
theorem treeConsistent_all_logicalKey_eq_root
    {Call : Type}
    (game : OracleComp GlobalFsSourceSpec (PackedOutcome Call))
    (queryBounds :
      (Ipp.FsWrappedSpec Ipp.Bls12377.Fr).Domain → Nat)
    (leafOk : MultiStatementRunLog Call → Prop)
    {level : Nat}
    {lower :
      Option (Fin (queryBounds (Sum.inr ()) + 1))}
    {depth : Nat}
    {tree : Ipp.RunTree (Ipp.FsWrappedSpec Ipp.Bls12377.Fr)
      (MultiStatementWrappedRun Call) depth}
    (hconsistent :
      Ipp.TreeConsistent (multiStatementForkMain game)
        queryBounds (Sum.inr ())
        (fun level run =>
          multiStatementRoundSlot
            (queryBounds (Sum.inr ())) level run)
        leafOk level lower tree) :
    ForkCarriesLogicalKey tree.root.1.out.logicalKey tree := by
  induction hconsistent with
  | leaf _level _lower run _hsupport _hgate =>
      rfl
  | @node level lower depth children slot answers cursor slotPos
      hcf hinjective hanswers hcursor hprefix hslotPos hslotInput
      hslotRank hprefixValues hstrict hchildren ih =>
      intro k
      have hsupportK :
          (children k).root ∈ support
            (replayFirstRun (multiStatementForkMain game)) :=
        (Ipp.TreeConsistent.all_support
          (multiStatementForkMain game) queryBounds (Sum.inr ())
          (fun level run =>
            multiStatementRoundSlot
              (queryBounds (Sum.inr ())) level run)
          leafOk (hchildren k)).root
      have hsupportRoot :
          (children 0).root ∈ support
            (replayFirstRun (multiStatementForkMain game)) :=
        (Ipp.TreeConsistent.all_support
          (multiStatementForkMain game) queryBounds (Sum.inr ())
          (fun level run =>
            multiStatementRoundSlot
              (queryBounds (Sum.inr ())) level run)
          leafOk (hchildren 0)).root
      have hkey :
          (children k).root.1.out.logicalKey =
            (children 0).root.1.out.logicalKey :=
        logicalKey_eq_of_shared_selected_slot
          game (queryBounds (Sum.inr ())) level slotPos
          hsupportK hsupportRoot
          (by simpa using hcf k)
          (by simpa using hcf 0)
          (hprefixValues k 0)
          (hslotInput k) (hslotInput 0)
          (hslotRank k) (hslotRank 0)
      exact (ih k).imp (fun _ hrun => by
        simpa [Ipp.RunTree.root] using hrun.trans hkey)

/-- Every tree in the support of the concrete raw experiment has one common
logical statement key.  Adaptive prequeries and the original global cache are
retained; no fresh fixed-statement continuation is introduced. -/
theorem rawMultiStatementForkExperimentAt_support_carries_logicalKey
    {Call : Type}
    (game : OracleComp GlobalFsSourceSpec (PackedOutcome Call))
    (invalid : (ν : Nat) → SelectionAt Call ν → Prop)
    (queryBounds :
      (Ipp.FsWrappedSpec Ipp.Bls12377.Fr).Domain → Nat)
    (μ : Nat)
    (hbaseReach : ∀ level, level < μ →
      Ipp.CfReachable (multiStatementForkMain game)
        queryBounds (Sum.inr ())
        (fun run =>
          multiStatementRoundSlot
            (queryBounds (Sum.inr ())) level run))
    {tree : RawMultiStatementForkTree Call μ}
    (htree : some tree ∈ support
      (rawMultiStatementForkExperimentAt
        game invalid queryBounds μ)) :
    ForkCarriesLogicalKey tree.root.1.out.logicalKey tree := by
  classical
  change some tree ∈ support
    (Ipp.forkTreeCombined μ (multiStatementForkMain game)
      queryBounds (Sum.inr ())
      (fun level run =>
        multiStatementRoundSlot
          (queryBounds (Sum.inr ())) level run)
      (InvalidAcceptedAt invalid μ)
      μ (Nat.le_refl μ)) at htree
  exact treeConsistent_all_logicalKey_eq_root
    game queryBounds (InvalidAcceptedAt invalid μ)
    (Ipp.forkTreeCombined_support_props
      μ (multiStatementForkMain game) queryBounds (Sum.inr ())
      (fun level run =>
        multiStatementRoundSlot
          (queryBounds (Sum.inr ())) level run)
      (InvalidAcceptedAt invalid μ) hbaseReach htree)

/-- A constructed tree disagrees on its logical statement key.  This event
does not count branch-local response/proof changes as statement changes. -/
def RawForkHasLogicalKeyDisagreement {Call : Type} {μ : Nat}
    (tree : RawMultiStatementForkTree Call μ) : Prop :=
  ¬ ForkCarriesLogicalKey tree.root.1.out.logicalKey tree

/-- Logical-key disagreement on the concrete raw-fork experiment. -/
def RawForkLogicalKeyDisagreesAt {Call : Type}
    (μ : Nat) :
    Option (RawMultiStatementForkTree Call μ) → Prop
  | none => False
  | some tree => RawForkHasLogicalKeyDisagreement tree

/-- The logical-statement component of the adaptive selection loss is
identically zero for the existing replay construction. -/
noncomputable def rawForkLogicalKeySelectionLossAt
    {Call : Type}
    (game : OracleComp GlobalFsSourceSpec (PackedOutcome Call))
    (invalid : (ν : Nat) → SelectionAt Call ν → Prop)
    (queryBounds :
      (Ipp.FsWrappedSpec Ipp.Bls12377.Fr).Domain → Nat)
    (μ : Nat) : ℝ≥0∞ :=
  Pr[RawForkLogicalKeyDisagreesAt μ |
    rawMultiStatementForkExperimentAt game invalid queryBounds μ]

/-- The logical statement key cannot contribute any selection/fork loss.
The remaining exact-`SelectionAt` disagreement consists only of fields that
the fixed-statement FS extractor already permits to vary across branches. -/
theorem rawForkLogicalKeySelectionLossAt_eq_zero
    {Call : Type}
    (game : OracleComp GlobalFsSourceSpec (PackedOutcome Call))
    (invalid : (ν : Nat) → SelectionAt Call ν → Prop)
    (queryBounds :
      (Ipp.FsWrappedSpec Ipp.Bls12377.Fr).Domain → Nat)
    (μ : Nat)
    (hbaseReach : ∀ level, level < μ →
      Ipp.CfReachable (multiStatementForkMain game)
        queryBounds (Sum.inr ())
        (fun run =>
          multiStatementRoundSlot
            (queryBounds (Sum.inr ())) level run)) :
    rawForkLogicalKeySelectionLossAt
      game invalid queryBounds μ = 0 := by
  apply probEvent_eq_zero
  intro result hresult hdisagreement
  cases result with
  | none =>
      simp [RawForkLogicalKeyDisagreesAt] at hdisagreement
  | some tree =>
      exact hdisagreement
        (rawMultiStatementForkExperimentAt_support_carries_logicalKey
          game invalid queryBounds μ hbaseReach hresult)

/-- One raw fork tree preserves one exact selected statement across every
branch.  This is an event to be proved from the raw experiment, not a
constructor argument supplied to that experiment. -/
def RawForkCarriesSelectionAt {Call : Type} {μ : Nat}
    (selected : SelectionAt Call μ)
    (tree : RawMultiStatementForkTree Call μ) : Prop :=
  tree.All (fun run =>
    (PackedOutcome.at? μ run.1.out).map OutcomeAt.selection =
      some selected)

/-- Common-selection invalid-acceptance event extracted from the raw global
fork.  A statement-selection/fork loss, if any, is the proved gap between the
raw fork probability and this event. -/
def RawForkHasCommonInvalidSelection {Call : Type} {μ : Nat}
    (invalid : (ν : Nat) → SelectionAt Call ν → Prop)
    (tree : RawMultiStatementForkTree Call μ) : Prop :=
  ∃ selected : SelectionAt Call μ,
    RawForkCarriesSelectionAt selected tree ∧
      invalid μ selected ∧
      tree.All (fun run => run.1.out.2.verifierResult.accept = true)

/-- Common-selection success event for the concrete per-size raw replay
experiment. -/
def RawForkSucceededAt {Call : Type}
    (invalid : (ν : Nat) → SelectionAt Call ν → Prop)
    (μ : Nat) :
    Option (RawMultiStatementForkTree Call μ) → Prop
  | none => False
  | some tree => RawForkHasCommonInvalidSelection invalid tree

/-- A successful raw fork disagrees on statement selection when its canonical
root selects an exact `μ`-statement that is not carried by every branch.

The root projection rules out counting a missing/wrong-size output as a
selection disagreement.  On trees produced by the gated raw experiment that
case is already excluded by `InvalidAcceptedAt`. -/
def RawForkHasSelectionDisagreement {Call : Type} {μ : Nat}
    (tree : RawMultiStatementForkTree Call μ) : Prop :=
  ∃ selected : SelectionAt Call μ,
    (PackedOutcome.at? μ tree.root.1.out).map OutcomeAt.selection =
        some selected ∧
      ¬ RawForkCarriesSelectionAt selected tree

/-- Statement-selection disagreement as an event on the concrete raw-fork
experiment.  Failure to construct a tree is not charged as disagreement. -/
def RawForkSelectionDisagreesAt {Call : Type}
    (μ : Nat) :
    Option (RawMultiStatementForkTree Call μ) → Prop
  | none => False
  | some tree => RawForkHasSelectionDisagreement tree

/-- An invalid accepted run in the `μ` partition projects to one exact
selected statement, preserving its invalidity. -/
theorem invalidAcceptedAt_projects_invalid_selection
    {Call : Type}
    (invalid : (ν : Nat) → SelectionAt Call ν → Prop)
    (μ : Nat)
    {run : MultiStatementRunLog Call}
    (hrun : InvalidAcceptedAt invalid μ run) :
    ∃ selected : SelectionAt Call μ,
      (PackedOutcome.at? μ run.1.out).map OutcomeAt.selection =
          some selected ∧
        invalid μ selected := by
  rcases run with ⟨wrapped, log⟩
  rcases wrapped with ⟨packed, trace⟩
  rcases packed with ⟨ν, output⟩
  change ν = μ ∧
    (invalid ν output.selection ∧
      output.verifierResult.accept = true) at hrun
  subst ν
  refine ⟨output.selection, ?_, hrun.2.1⟩
  simp

/-- Once the raw extractor's leaf gate has established invalid acceptance on
every branch, tree construction splits exactly into common selection or an
explicit root-versus-branch selection disagreement.  No fresh-cache or
pre-oracle statement choice is used. -/
theorem rawFork_all_invalid_common_or_selectionDisagrees
    {Call : Type}
    (invalid : (ν : Nat) → SelectionAt Call ν → Prop)
    (μ : Nat)
    {tree : RawMultiStatementForkTree Call μ}
    (hall : tree.All (InvalidAcceptedAt invalid μ)) :
    RawForkHasCommonInvalidSelection invalid tree ∨
      RawForkHasSelectionDisagreement tree := by
  classical
  obtain ⟨selected, hroot, hinvalid⟩ :=
    invalidAcceptedAt_projects_invalid_selection
      invalid μ hall.root
  by_cases hcarries : RawForkCarriesSelectionAt selected tree
  · left
    refine ⟨selected, hcarries, hinvalid, ?_⟩
    exact hall.imp (fun _ hrun => hrun.2.2)
  · right
    exact ⟨selected, hroot, hcarries⟩

/-- Every successfully constructed raw tree carries the exact
`InvalidAcceptedAt` gate installed in `rawMultiStatementForkExperimentAt`.
The only premise is the generic fork selector's reachability condition. -/
theorem rawMultiStatementForkExperimentAt_support_all_invalidAccepted
    {Call : Type}
    (game : OracleComp GlobalFsSourceSpec (PackedOutcome Call))
    (invalid : (ν : Nat) → SelectionAt Call ν → Prop)
    (queryBounds :
      (Ipp.FsWrappedSpec Ipp.Bls12377.Fr).Domain → Nat)
    (μ : Nat)
    (hbaseReach : ∀ level, level < μ →
      Ipp.CfReachable (multiStatementForkMain game)
        queryBounds (Sum.inr ())
        (fun run =>
          multiStatementRoundSlot
            (queryBounds (Sum.inr ())) level run))
    {tree : RawMultiStatementForkTree Call μ}
    (htree : some tree ∈ support
      (rawMultiStatementForkExperimentAt
        game invalid queryBounds μ)) :
    tree.All (InvalidAcceptedAt invalid μ) := by
  classical
  change some tree ∈ support
    (Ipp.forkTreeCombined μ (multiStatementForkMain game)
      queryBounds (Sum.inr ())
      (fun level run =>
        multiStatementRoundSlot
          (queryBounds (Sum.inr ())) level run)
      (InvalidAcceptedAt invalid μ)
      μ (Nat.le_refl μ)) at htree
  exact Ipp.forkTreeCombined_success_all_leafOk
    μ (multiStatementForkMain game) queryBounds (Sum.inr ())
    (fun level run =>
      multiStatementRoundSlot
        (queryBounds (Sum.inr ())) level run)
    (InvalidAcceptedAt invalid μ) hbaseReach htree

/-- The exact common-selection loss of the raw replay construction.  This is
neither a caller-chosen constant nor the original acceptance probability: it
is the probability that a constructed fork changes the selected statement
between its canonical root and at least one branch. -/
noncomputable def rawForkStatementSelectionLossAt
    {Call : Type}
    (game : OracleComp GlobalFsSourceSpec (PackedOutcome Call))
    (invalid : (ν : Nat) → SelectionAt Call ν → Prop)
    (queryBounds :
      (Ipp.FsWrappedSpec Ipp.Bls12377.Fr).Domain → Nat)
    (μ : Nat) : ℝ≥0∞ :=
  Pr[RawForkSelectionDisagreesAt μ |
    rawMultiStatementForkExperimentAt game invalid queryBounds μ]

/-- Constructed-fork probability is bounded by common-selection success plus
the exact, exposed statement-selection disagreement loss. -/
theorem rawFork_isSome_le_succeeded_add_selectionLoss
    {Call : Type}
    (game : OracleComp GlobalFsSourceSpec (PackedOutcome Call))
    (invalid : (ν : Nat) → SelectionAt Call ν → Prop)
    (queryBounds :
      (Ipp.FsWrappedSpec Ipp.Bls12377.Fr).Domain → Nat)
    (μ : Nat)
    (hbaseReach : ∀ level, level < μ →
      Ipp.CfReachable (multiStatementForkMain game)
        queryBounds (Sum.inr ())
        (fun run =>
          multiStatementRoundSlot
            (queryBounds (Sum.inr ())) level run)) :
    Pr[fun tree : Option (RawMultiStatementForkTree Call μ) =>
        tree.isSome |
      rawMultiStatementForkExperimentAt game invalid queryBounds μ] ≤
      Pr[RawForkSucceededAt invalid μ |
        rawMultiStatementForkExperimentAt game invalid queryBounds μ] +
        rawForkStatementSelectionLossAt
          game invalid queryBounds μ := by
  let experiment :=
    rawMultiStatementForkExperimentAt game invalid queryBounds μ
  calc
    Pr[fun tree : Option (RawMultiStatementForkTree Call μ) =>
          tree.isSome | experiment] ≤
        Pr[fun result =>
          RawForkSucceededAt invalid μ result ∨
            RawForkSelectionDisagreesAt μ result | experiment] := by
      apply probEvent_mono
      intro result hresult hconstructed
      rcases result with _ | tree
      · simp at hconstructed
      · have hall :=
          rawMultiStatementForkExperimentAt_support_all_invalidAccepted
            game invalid queryBounds μ hbaseReach hresult
        exact
          rawFork_all_invalid_common_or_selectionDisagrees
            invalid μ hall
    _ ≤ Pr[RawForkSucceededAt invalid μ | experiment] +
          Pr[RawForkSelectionDisagreesAt μ | experiment] :=
      probEvent_or_le experiment
        (RawForkSucceededAt invalid μ)
        (RawForkSelectionDisagreesAt μ)
    _ = Pr[RawForkSucceededAt invalid μ |
          rawMultiStatementForkExperimentAt game invalid queryBounds μ] +
        rawForkStatementSelectionLossAt
          game invalid queryBounds μ := by
      rfl

/-- Concrete parameters of the existing four-way `ForkTree` transform in one
selected-`μ` partition.  The field cardinality and S1 bad-event expression
are fixed below by the deployed BLS12-377 field and are not caller-selected
premises. -/
structure PerMuForkParameters where
  queryBound : Nat
  terminalBadCard : Nat

/-- The unchanged S1/ForkTree scalar transform, now indexed by the exact
`μ` selected in the global game. -/
def perMuForkTransform
    (parameters : PerMuForkParameters)
    (μ : Nat) (acceptance : ℝ≥0∞) : ℝ≥0∞ :=
  ((Ipp.forkTreeStep
      (parameters.queryBound + 1 : Nat)
      Ipp.Bls12377.scalarModulus)^[μ])
    (acceptance -
      Ipp.S1.badEventError (F := Ipp.Bls12377.Fr)
        parameters.queryBound (2 ^ μ - 1) parameters.terminalBadCard)

/-- The declared active sizes cover every possible selected output of the
whole cached game.  This support obligation prevents a final finite sum from
silently dropping an adversarially selected proof size. -/
def ActiveMuCovers {Call : Type}
    (game : OracleComp GlobalFsSourceSpec (PackedOutcome Call))
    (activeMu : Finset Nat) : Prop :=
  ∀ run ∈ support (multiStatementFsProbComp game),
    run.1.out.1 ∈ activeMu

/-- Invalid acceptance of the complete adaptive game, before partitioning by
the adversarially selected proof size. -/
def GlobalInvalidAccepted {Call : Type}
    (invalid : (μ : Nat) → SelectionAt Call μ → Prop) :
    MultiStatementRunLog Call → Prop :=
  fun run => InvalidAccepted invalid run.1.out

/-- On the support of a covered game, global invalid acceptance is exactly the
union of the declared finite `μ` partitions.  The adversary and verifier
remain inside the original shared-cache execution; this theorem does not
restart either phase. -/
theorem globalInvalidAccepted_iff_exists_activeMu_on_support
    {Call : Type}
    (game : OracleComp GlobalFsSourceSpec (PackedOutcome Call))
    (invalid : (μ : Nat) → SelectionAt Call μ → Prop)
    (activeMu : Finset Nat)
    (hcover : ActiveMuCovers game activeMu)
    (run : MultiStatementRunLog Call)
    (hrun : run ∈ support (multiStatementFsProbComp game)) :
    GlobalInvalidAccepted invalid run ↔
      ∃ μ ∈ activeMu, InvalidAcceptedAt invalid μ run := by
  constructor
  · intro hinvalid
    refine ⟨run.1.out.1, hcover run hrun, ?_⟩
    exact ⟨selectedMu_index run.1.out, hinvalid⟩
  · rintro ⟨_, _, hpartition⟩
    exact hpartition.2

/-- Finite partition bound for the complete adaptive invalid-acceptance event.
There is no fresh-cache or fixed-statement premise: all statement-selection
behavior is retained in each `InvalidAcceptedAt` probability. -/
theorem globalInvalidAccepted_le_sum_activeMu
    {Call : Type}
    (game : OracleComp GlobalFsSourceSpec (PackedOutcome Call))
    (invalid : (μ : Nat) → SelectionAt Call μ → Prop)
    (activeMu : Finset Nat)
    (hcover : ActiveMuCovers game activeMu) :
    Pr[GlobalInvalidAccepted invalid | multiStatementFsProbComp game] ≤
      ∑ μ ∈ activeMu,
        Pr[InvalidAcceptedAt invalid μ | multiStatementFsProbComp game] := by
  calc
    Pr[GlobalInvalidAccepted invalid | multiStatementFsProbComp game] =
        Pr[fun run => ∃ μ ∈ activeMu, InvalidAcceptedAt invalid μ run |
          multiStatementFsProbComp game] := by
      apply probEvent_congr'
      · intro run hrun
        exact
          globalInvalidAccepted_iff_exists_activeMu_on_support
            game invalid activeMu hcover run hrun
      · rfl
    _ ≤ ∑ μ ∈ activeMu,
          Pr[InvalidAcceptedAt invalid μ | multiStatementFsProbComp game] :=
      probEvent_exists_finset_le_sum activeMu
        (multiStatementFsProbComp game) (InvalidAcceptedAt invalid)

/-- Compose arbitrary per-size bounds without taking a maximum.  This keeps
the exact heterogeneous size distribution visible in the final expression. -/
theorem globalInvalidAccepted_le_sum_partition_bounds
    {Call : Type}
    (game : OracleComp GlobalFsSourceSpec (PackedOutcome Call))
    (invalid : (μ : Nat) → SelectionAt Call μ → Prop)
    (activeMu : Finset Nat)
    (hcover : ActiveMuCovers game activeMu)
    (bound : Nat → ℝ≥0∞)
    (hpartition : ∀ μ ∈ activeMu,
      Pr[InvalidAcceptedAt invalid μ | multiStatementFsProbComp game] ≤
        bound μ) :
    Pr[GlobalInvalidAccepted invalid | multiStatementFsProbComp game] ≤
      ∑ μ ∈ activeMu, bound μ := by
  exact
    le_trans
      (globalInvalidAccepted_le_sum_activeMu
        game invalid activeMu hcover)
      (Finset.sum_le_sum fun μ hμ => hpartition μ hμ)

/-- If every active size has the same bound, adaptive size selection costs at
most the explicit number of active partitions. -/
theorem globalInvalidAccepted_le_card_mul_partition_bound
    {Call : Type}
    (game : OracleComp GlobalFsSourceSpec (PackedOutcome Call))
    (invalid : (μ : Nat) → SelectionAt Call μ → Prop)
    (activeMu : Finset Nat)
    (hcover : ActiveMuCovers game activeMu)
    (bound : ℝ≥0∞)
    (hpartition : ∀ μ ∈ activeMu,
      Pr[InvalidAcceptedAt invalid μ | multiStatementFsProbComp game] ≤
        bound) :
    Pr[GlobalInvalidAccepted invalid | multiStatementFsProbComp game] ≤
      (activeMu.card : ℝ≥0∞) * bound := by
  calc
    Pr[GlobalInvalidAccepted invalid | multiStatementFsProbComp game] ≤
        ∑ _μ ∈ activeMu, bound :=
      globalInvalidAccepted_le_sum_partition_bounds
        game invalid activeMu hcover (fun _ => bound) hpartition
    _ = (activeMu.card : ℝ≥0∞) * bound := by
      rw [Finset.sum_const, nsmul_eq_mul]

/-- Explicit losses derived by the future multi-statement fork proof.  The
final theorem may use only a concrete value produced by that proof; callers
cannot provide this structure as a security premise. -/
structure DerivedMultiStatementForkLoss where
  statementSelection : ℝ≥0∞
  forkReplay : ℝ≥0∞

/-- Precise theorem target for the future multi-statement forking proof.

This is a transformed, per-partition lower bound on the fork event.  It is not
an assumption that invalid shipping acceptance is already small. -/
def MultiStatementForkingHolds
    {Call : Type}
    (game : OracleComp GlobalFsSourceSpec (PackedOutcome Call))
    (invalid : (μ : Nat) → SelectionAt Call μ → Prop)
    (activeMu : Finset Nat)
    (queryBounds :
      (Ipp.FsWrappedSpec Ipp.Bls12377.Fr).Domain → Nat)
    (parameters : Nat → PerMuForkParameters)
    (losses : Nat → DerivedMultiStatementForkLoss) : Prop :=
  ActiveMuCovers game activeMu ∧
    ∀ μ ∈ activeMu,
      (parameters μ).queryBound = queryBounds (Sum.inr ()) ∧
        perMuForkTransform (parameters μ) μ
            Pr[InvalidAcceptedAt invalid μ |
              multiStatementFsProbComp game] ≤
          Pr[RawForkSucceededAt invalid μ |
            rawMultiStatementForkExperimentAt game invalid queryBounds μ] +
            (losses μ).statementSelection + (losses μ).forkReplay

/-- Exact reduction target from the concrete raw replay experiment into named
per-`μ` computational extraction games.  The common-selection event must be
proved from raw branches; it cannot be supplied in a cooked tree constructor. -/
def RawForkExtractionReductionHolds
    {Call : Type}
    {Evidence : Nat → Type}
    (game : OracleComp GlobalFsSourceSpec (PackedOutcome Call))
    (invalid : (μ : Nat) → SelectionAt Call μ → Prop)
    (queryBounds :
      (Ipp.FsWrappedSpec Ipp.Bls12377.Fr).Domain → Nat)
    (activeMu : Finset Nat)
    (extractionExperiment : (μ : Nat) → ProbComp (Evidence μ))
    (extractionWins : (μ : Nat) → Evidence μ → Prop)
    (losses : Nat → DerivedMultiStatementForkLoss) : Prop :=
  ∀ μ ∈ activeMu,
    Pr[RawForkSucceededAt invalid μ |
        rawMultiStatementForkExperimentAt game invalid queryBounds μ] ≤
      Pr[extractionWins μ | extractionExperiment μ] +
        (losses μ).statementSelection + (losses μ).forkReplay

/-- External computational assumptions may bound only the explicit
per-`μ` extraction games.  They cannot directly assume a shipping-verifier or
`Ipp.Goal` conclusion. -/
structure PerMuExtractionGameSecurity
    {Evidence : Nat → Type}
    (activeMu : Finset Nat)
    (extractionExperiment : (μ : Nat) → ProbComp (Evidence μ))
    (extractionWins : (μ : Nat) → Evidence μ → Prop) where
  advantage : Nat → ℝ≥0∞
  game_le : ∀ μ ∈ activeMu,
    Pr[extractionWins μ | extractionExperiment μ] ≤ advantage μ

/-- A proved raw-fork-to-game reduction composes pointwise with explicit
computational game bounds while preserving the derived selection/replay loss. -/
theorem rawForkSucceededAt_le_explicit_game_advantage
    {Call : Type}
    {Evidence : Nat → Type}
    (game : OracleComp GlobalFsSourceSpec (PackedOutcome Call))
    (invalid : (μ : Nat) → SelectionAt Call μ → Prop)
    (queryBounds :
      (Ipp.FsWrappedSpec Ipp.Bls12377.Fr).Domain → Nat)
    (activeMu : Finset Nat)
    (extractionExperiment : (μ : Nat) → ProbComp (Evidence μ))
    (extractionWins : (μ : Nat) → Evidence μ → Prop)
    (losses : Nat → DerivedMultiStatementForkLoss)
    (reduction :
      RawForkExtractionReductionHolds game invalid queryBounds activeMu
        extractionExperiment extractionWins losses)
    (security :
      PerMuExtractionGameSecurity activeMu
        extractionExperiment extractionWins)
    (μ : Nat) (hμ : μ ∈ activeMu) :
    Pr[RawForkSucceededAt invalid μ |
        rawMultiStatementForkExperimentAt game invalid queryBounds μ] ≤
      security.advantage μ +
        (losses μ).statementSelection + (losses μ).forkReplay := by
  exact le_trans (reduction μ hμ)
    (add_le_add
      (add_le_add (security.game_le μ hμ) le_rfl)
      le_rfl)

namespace FreshCacheCounterexample

/-!
A two-point counterexample to the discarded arbitrary-cache-to-fresh route.
For either fixed statement, exactly one of two equiprobable oracle answers
wins.  An adversary that first sees the answer and then selects that statement
wins on both answers.  Thus a maximum of fresh fixed-statement probabilities
does not bound adaptive selection after oracle access.
-/

def fixedWins (statement : Bool) : Finset Bool :=
  Finset.univ.filter fun oracleAnswer => oracleAnswer = statement

def adaptiveSelection (oracleAnswer : Bool) : Bool :=
  oracleAnswer

def adaptiveWins : Finset Bool :=
  Finset.univ.filter fun oracleAnswer =>
    oracleAnswer = adaptiveSelection oracleAnswer

@[simp] theorem fixedWins_card (statement : Bool) :
    (fixedWins statement).card = 1 := by
  cases statement <;> decide

@[simp] theorem adaptiveWins_card :
    adaptiveWins.card = 2 := by
  decide

/-- On the uniform two-point space this is probability `1/2 < 1`; the
cardinality form avoids importing a second probability model merely for the
counterexample. -/
theorem adaptive_selection_beats_every_fixed_fresh
    (statement : Bool) :
    (fixedWins statement).card < adaptiveWins.card := by
  cases statement <;> decide

end FreshCacheCounterexample

#print axioms globalQueryEncoding_ofRegistered
#print axioms globalQueryEncoding_fixed_key_injective
#print axioms SelectionAt.globalQueryEncoding_eq_shipping
#print axioms globalFsVerifier_support_proof_eq
#print axioms OutcomeAt.roundQuery?_of_lt
#print axioms PackedOutcome.at?_self
#print axioms selectedMu_index
#print axioms multiStatementFsGame_isTotalQueryBound
#print axioms multiStatementFsGame_selectedFraming_queryBounded
#print axioms globalInvalidAccepted_iff_exists_activeMu_on_support
#print axioms globalInvalidAccepted_le_sum_activeMu
#print axioms globalInvalidAccepted_le_sum_partition_bounds
#print axioms globalInvalidAccepted_le_card_mul_partition_bound
#print axioms invalidAcceptedAt_projects_invalid_selection
#print axioms rawFork_all_invalid_common_or_selectionDisagrees
#print axioms rawMultiStatementForkExperimentAt_support_all_invalidAccepted
#print axioms rawFork_isSome_le_succeeded_add_selectionLoss
#print axioms rawForkSucceededAt_le_explicit_game_advantage
#print axioms FreshCacheCounterexample.adaptive_selection_beats_every_fixed_fresh

end

end Ipp.ShippingMultiStatement
