import Mathlib.Data.List.Basic
import ShielddGnarkFormal.Poseidon377
import ShielddGnarkFormal.ChoiceFreeZMod

/-!
Deployment-independent protocol primitives shared by shielded-pool actions.

The definitions fix the concrete Decaf and state-tree relations without
importing circuit, extractor, generated, or deployed modules.
-/

namespace Shieldd.GnarkFormal.Protocol.Common

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

abbrev F := Poseidon377.F

/-- An affine point at a protocol boundary. -/
structure Point (K : Type u) where
  x : K
  y : K
  deriving DecidableEq, Repr

/--
Generic canonical transaction-envelope binding relation. Identity aggregate
keys accept only the all-zero signature sentinel; nonidentity keys require an
auth-hash signature. The identity branch conveys no message authentication and
is eligible only when the transaction contains no shielded proofs. Proof-bearing
target relations use `proofBearingBindingSignatureAccepted` instead.
-/
def canonicalBindingSignatureAccepted
    (aggregateKeyIsIdentity signatureIsZeroSentinel
      signatureVerifiesAgainstAuthHash : Prop) : Prop :=
  (aggregateKeyIsIdentity ∧ signatureIsZeroSentinel) ∨
    (¬ aggregateKeyIsIdentity ∧ signatureVerifiesAgainstAuthHash)

/--
Binding authorization for a transaction carrying at least one shielded proof.
Its aggregate binding key must be nonidentity and the signature must verify
over the final authorization hash. The identity-key sentinel branch is
reserved for transactions with no shielded proofs.
-/
def proofBearingBindingSignatureAccepted
    (aggregateKeyNonIdentity signatureVerifiesAgainstAuthHash : Prop) : Prop :=
  aggregateKeyNonIdentity ∧ signatureVerifiesAgainstAuthHash

abbrev QuadPath (depth : Nat) (K : Type u) := Fin depth → Fin 3 → K
abbrev Path16 := QuadPath 16 F
abbrev Path24 := QuadPath 24 F

/--
`after` contains exactly the entries already in `before` followed by the
entries committed by `delta`, modulo storage ordering.  Multiplicity is
preserved: two equal proof-bound outputs are two created state entries.
-/
def exactExtension (before delta after : List α) : Prop :=
  after.Perm (before ++ delta)

theorem exactExtension_length
    (before delta after : List α)
    (h : exactExtension before delta after) :
    after.length = before.length + delta.length := by
  rw [exactExtension] at h
  simpa using h.length_eq

theorem duplicateDeltaNotCollapsed (value : α) :
    ¬ exactExtension [] [value, value] [value] := by
  intro h
  have hLength := exactExtension_length [] [value, value] [value] h
  simp at hLength

/--
`target` occurs in `whole` with at least the same multiplicity.  This is the
transaction-level join between one action's exact effects and the enclosing
transaction's complete effect list.
-/
def includedWithMultiplicity (target whole : List α) : Prop :=
  ∃ remainder, whole.Perm (target ++ remainder)

theorem includedWithMultiplicity_refl (values : List α) :
    includedWithMultiplicity values values := by
  exact ⟨[], by simp⟩

/-- Ordered action execution over action-local state snapshots. -/
inductive Steps {State : Type u} (step : State → State → Prop) :
    State → State → Prop
  | refl (state : State) : Steps step state state
  | next {before middle after : State} :
      step before middle →
      Steps step middle after →
      Steps step before after

/--
Transaction-executor envelope for complete shielded-pool effects. The caller
must supply the complete lists; this structure checks their global uniqueness,
freshness, and exact multiset extension but does not derive their provenance
from a typed list of every transaction action.
-/
structure CommittedEffects
    {State : Type u} {Item : Type v}
    (spent outputs : State → List Item)
    (before after : State) where
  nullifiers : List Item
  outputCommitments : List Item
  nullifiersUnique : nullifiers.Nodup
  nullifiersFresh :
    ∀ nullifier ∈ nullifiers, nullifier ∉ spent before
  spentExact : exactExtension (spent before) nullifiers (spent after)
  outputsExact :
    exactExtension (outputs before) outputCommitments (outputs after)

/--
One target action at exact local pre/post states, embedded in an executor-
supplied transaction envelope and joined to its complete durable effect lists.
`otherStep` deliberately abstracts other action families; it is not evidence
of their individual circuit or runtime validity.
-/
structure CommittedTargetTransaction
    {State : Type u} {Item : Type v}
    (spent outputs : State → List Item)
    (targetNullifiers targetOutputs : List Item)
    (otherStep targetStep : State → State → Prop)
    (transactionBefore actionBefore actionAfter transactionAfter : State) where
  beforeSteps : Steps otherStep transactionBefore actionBefore
  targetStepProof : targetStep actionBefore actionAfter
  afterSteps : Steps otherStep actionAfter transactionAfter
  effects : CommittedEffects spent outputs transactionBefore transactionAfter
  targetNullifiersIncluded :
    includedWithMultiplicity targetNullifiers effects.nullifiers
  targetOutputsIncluded :
    includedWithMultiplicity targetOutputs effects.outputCommitments

namespace Decaf

def curveD : F := 3021

def generator : Point F :=
  ⟨4959445789346820725352484487855828915252512307947624787834978378872129235627,
   6060471950081851567114691557659790004756535011754163002297540472747064943288⟩

def valueBlindingGenerator : Point F :=
  ⟨4661681602708190761543544705274244814260880986867766715334030151044279151219,
   4337336842509898676347982752646772244181661588533917621717979456142867120378⟩

def identity : Point F := ⟨0, 1⟩

/--
An on-curve companion-Edwards point is outside the Decaf identity class.
The two identity-class representatives are exactly the points with `x = 0`.
-/
def nonIdentity (point : Point F) : Prop :=
  point.x ≠ 0

/-- Native full-viewing-key validity predicate (`DEC-AUTHORIZATION-KEY-NONIDENTITY`). -/
def authorizationKeyNonIdentity (point : Point F) : Prop :=
  nonIdentity point

/-- Native address validity predicate (`DEC-DIVERSIFIED-GENERATOR-NONIDENTITY`). -/
def diversifiedGeneratorNonIdentity (point : Point F) : Prop :=
  nonIdentity point

/-- Reduced incoming-viewing scalar accepted by the circuit is nonzero. -/
def incomingViewingKeyNonzero (ivkReduced : F) : Prop :=
  ivkReduced ≠ 0

/-- A note-owner transmission point is outside the Decaf identity class. -/
def transmissionKeyNonIdentity (point : Point F) : Prop :=
  nonIdentity point

/--
A serialized spend randomized verification key is outside the Decaf identity
class. This is a consensus-side authorization precondition, not an R1CS fact.
-/
def randomizedVerificationKeyNonIdentity [Zero K] (point : Point K) : Prop :=
  point.x ≠ 0

def add (p q : Point F) : Point F :=
  let v0 := q.y * p.x
  let v1 := q.x * p.y
  let v2 := curveD * v0 * v1
  let u := (p.y + p.x) * (q.x + q.y)
  ⟨(v0 + v1) * (1 + v2)⁻¹, (-v0 - v1 + u) * (1 - v2)⁻¹⟩

def neg (p : Point F) : Point F := ⟨-p.x, p.y⟩

def double (p : Point F) : Point F :=
  let u := p.x * p.y
  let v := p.x * p.x
  let w := p.y * p.y
  ⟨(2 * u) * (w - v)⁻¹, (w + v) * (2 - (w - v))⁻¹⟩

def scalarMulLEFrom (scalar : F) : Nat → Nat → Point F → Point F → Point F
  | 0, _, result, _ => result
  | fuel + 1, bitIndex, result, current =>
      let sum := add result current
      let result' := if scalar.val.testBit bitIndex then sum else result
      scalarMulLEFrom scalar fuel (bitIndex + 1) result' (double current)

def scalarMulLE (nBits : Nat) (base : Point F) (scalar : F) : Point F :=
  scalarMulLEFrom scalar nBits 0 identity base

/-- The table entry selected by one high/low bit pair in the deployed
two-bit variable-base ladder. -/
def window2Digit (base : Point F) (high low : Bool) : Point F :=
  if low then
    if high then add (double base) base else base
  else if high then double base else identity

/-- Remaining two-bit windows of the deployed MSB-first variable-base
ladder. `highBit` names the high bit of the next pair. -/
def scalarMulWindow2PairsFrom (base : Point F) (scalar : F) :
    Nat → Nat → Point F → Point F
  | 0, _, accumulator => accumulator
  | fuel + 1, highBit, accumulator =>
      let shifted := double (double accumulator)
      let digit := window2Digit base
        (scalar.val.testBit highBit)
        (scalar.val.testBit (highBit - 1))
      scalarMulWindow2PairsFrom base scalar fuel (highBit - 2)
        (add shifted digit)

def scalarBits (nBits : Nat) (scalar : F) : List.Vector Bool nBits :=
  List.Vector.ofFn (fun i : Fin nBits => scalar.val.testBit i.val)

def scalarMulWindow2PairsFromBits {nBits : Nat}
    (bits : List.Vector Bool nBits) (base : Point F) :
    Nat → Nat → Point F → Point F
  | 0, _, accumulator => accumulator
  | fuel + 1, highBit, accumulator =>
      let shifted := double (double accumulator)
      let digit := window2Digit base bits[highBit]! bits[highBit - 1]!
      scalarMulWindow2PairsFromBits bits base fuel (highBit - 2)
        (add shifted digit)

def scalarMulWindow2FromBits {nBits : Nat}
    (bits : List.Vector Bool nBits) (base : Point F) : Point F :=
  match nBits with
  | 0 => identity
  | 1 => if bits[0]! then base else identity
  | width + 2 =>
      let highBit := width + 1
      let initial := window2Digit base bits[highBit]! bits[highBit - 1]!
      let accumulator := scalarMulWindow2PairsFromBits bits base
        ((width + 2) / 2 - 1) (highBit - 2) initial
      if highBit % 2 = 0 then
        let shifted := double accumulator
        if bits[0]! then add shifted base else shifted
      else accumulator

/-- Closed form of `scalarMulWindow2FromBits` for an odd width `2*m+1`.
This is the common deployed shape at widths 129 and 251. -/
def scalarMulWindow2OddFromBits (m : Nat)
    (bits : List.Vector Bool (2 * m + 1)) (base : Point F) : Point F :=
  let initial := window2Digit base bits[2 * m]! bits[2 * m - 1]!
  let accumulator := scalarMulWindow2PairsFromBits bits base
    (m - 1) (2 * m - 2) initial
  let shifted := double accumulator
  if bits[0]! then add shifted base else shifted

/-- Exact MSB-first radix-4/window-2 variable-base scalar multiplication used
by deployed gnark circuits. The final one-bit tail is present exactly at odd
bit widths. -/
def scalarMulWindow2 (nBits : Nat) (base : Point F) (scalar : F) : Point F :=
  scalarMulWindow2FromBits (scalarBits nBits scalar) base

/--
MSB-first joint ladder over the explicit Edwards formulas. This fixes the
DLEQ verifier arithmetic; it does not assert an abstract group interpretation.
-/
def doubleBaseDigit
    (first second : Point F) (firstScalar secondScalar : F)
    (bitIndex : Nat) : Point F :=
  if firstScalar.val.testBit bitIndex then
    if secondScalar.val.testBit bitIndex then add first second else first
  else if secondScalar.val.testBit bitIndex then second else identity

def doubleBaseScalarMulMSBFrom
    (first second : Point F) (firstScalar secondScalar : F) :
    Nat → Point F → Point F
  | 0, accumulator => accumulator
  | fuel + 1, accumulator =>
      doubleBaseScalarMulMSBFrom
        first second firstScalar secondScalar fuel
        (add (double accumulator)
          (doubleBaseDigit
            first second firstScalar secondScalar fuel))

def doubleBaseScalarMulMSB
    (nBits : Nat) (first second : Point F)
    (firstScalar secondScalar : F) : Point F :=
  match nBits with
  | 0 => identity
  | remaining + 1 =>
      doubleBaseScalarMulMSBFrom
        first second firstScalar secondScalar remaining
        (doubleBaseDigit
          first second firstScalar secondScalar remaining)

def onCurve (point : Point F) : Prop :=
  point.y * point.y - point.x * point.x =
    1 + curveD * (point.x * point.x) * (point.y * point.y)

def equivalent (p q : Point F) : Prop :=
  onCurve p ∧ onCurve q ∧ p.x * q.y = q.x * p.y

def absF (value : F) : F :=
  if value.val % 2 = 0 then value else -value

def aMinusD : F :=
  8444461749428370424248824938781546531375899335154063827935233455917409236019

def zeta : F :=
  2841681278031794617739547238867782961338435681360110683443920362658525667816

def compressU1 (x y : F) : F := (x + x * y) * (x - x * y)

def compressDenominator (x y : F) : F :=
  compressU1 x y * aMinusD * (x * x)

def sqrtCase (x y sqrtRatio : F) : Prop :=
  (compressDenominator x y ≠ 0 ∧
      sqrtRatio * sqrtRatio * compressDenominator x y = 1) ∨
  (compressDenominator x y = 0 ∧ sqrtRatio = 0) ∨
  (compressDenominator x y ≠ 0 ∧
      sqrtRatio * sqrtRatio * compressDenominator x y = zeta)

def compressedOutput (x y sqrtRatio : F) : F :=
  absF
    (aMinusD * sqrtRatio *
      (absF (sqrtRatio * compressU1 x y) - x * y) * x)

def compressesTo (point : Point F) (output : F) : Prop :=
  onCurve point ∧
    ∃ sqrtRatio,
      sqrtCase point.x point.y sqrtRatio ∧
        output = compressedOutput point.x point.y sqrtRatio

def rvk (authorizationKey : Point F) (randomizer : F) : Point F :=
  add authorizationKey (scalarMulLE 251 generator randomizer)

def randomizedVerificationKey
    (authorizationKey : Point F) (randomizer : F) (output : Point F) : Prop :=
  output = rvk authorizationKey randomizer

def scalarOrder : Nat :=
  2111115437357092606062206234695386632838870926408408195193685246394721360383

def dtkIvkModQ (nullifierKey authorizationKeyEncoding : F) : F :=
  Poseidon377.hash2
    Poseidon377.ivkDomain nullifierKey authorizationKeyEncoding

def dtk
    (diversifiedGenerator : Point F) (ivkReduced : F) : Point F :=
  scalarMulWindow2 251 diversifiedGenerator ivkReduced

def authorizationKeyEncodingValid (authorizationKey : Point F) : Prop :=
  ∃ authorizationKeyEncoding,
    compressesTo authorizationKey authorizationKeyEncoding

def incomingViewingKeyDerived
    (nullifierKey : F)
    (authorizationKey : Point F)
    (ivkReduced ivkQuotientA : F) : Prop :=
  ∃ authorizationKeyEncoding,
    compressesTo authorizationKey authorizationKeyEncoding ∧
    ivkReduced.val =
      (dtkIvkModQ nullifierKey authorizationKeyEncoding).val % scalarOrder ∧
    ivkQuotientA.val =
      (dtkIvkModQ nullifierKey authorizationKeyEncoding).val / scalarOrder

def diversifiedTransmissionKey
    (nullifierKey : F)
    (authorizationKey diversifiedGenerator : Point F)
    (ivkReduced ivkQuotientA : F)
    (output : Point F) : Prop :=
  incomingViewingKeyDerived nullifierKey authorizationKey
    ivkReduced ivkQuotientA ∧
  output = dtk diversifiedGenerator ivkReduced

end Decaf

namespace EncodeToCurve

def zeta : F :=
  2841681278031794617739547238867782961338435681360110683443920362658525667816

def a : F := -1

def d : F := Decaf.curveD

def selectF (selector whenTrue whenFalse : F) : F :=
  whenFalse - selector * (whenFalse - whenTrue)

def u (input : F) : F := zeta * input * input

def numerator (input : F) : F :=
  (u input + 1) * (a - 2 * d)

def denominator (input : F) : F :=
  (d * u input - (d - a)) * ((d - a) * u input - d)

def sqrtDenominator (input : F) : F :=
  numerator input * denominator input

def sqrtRatioCase (input wasSquare inverseSqrt : F) : Prop :=
  (wasSquare = 1 ∧ sqrtDenominator input ≠ 0 ∧
      inverseSqrt * inverseSqrt * sqrtDenominator input = 1) ∨
  (wasSquare = 0 ∧ sqrtDenominator input = 0 ∧ inverseSqrt = 0) ∨
  (wasSquare = 0 ∧ sqrtDenominator input ≠ 0 ∧
      inverseSqrt * inverseSqrt * sqrtDenominator input = zeta)

def rawTwiddle (input wasSquare : F) : F :=
  selectF wasSquare 1 input

def rawSign (wasSquare : F) : F :=
  selectF wasSquare 1 (-1)

def rawIsri (input wasSquare inverseSqrt : F) : F :=
  inverseSqrt * rawTwiddle input wasSquare

def rawT (input wasSquare inverseSqrt : F) : F :=
  rawIsri input wasSquare inverseSqrt * numerator input

def rawYDenominator
    (input wasSquare inverseSqrt t : F) : F :=
  (-rawSign wasSquare) * rawIsri input wasSquare inverseSqrt * t *
      (u input - 1) * ((a - 2 * d) * (a - 2 * d)) - 1

def normalize (wasSquare t signedT : F) : Prop :=
  signedT =
    if (t.val.testBit 0) = (wasSquare = 1) then -t else t

/-- The deployment-independent Decaf377 map-to-curve relation. -/
def relation (input : F) (output : Point F) : Prop :=
  ∃ wasSquare inverseSqrt t yDenominator signedT,
    sqrtRatioCase input wasSquare inverseSqrt ∧
    t = rawT input wasSquare inverseSqrt ∧
    yDenominator = rawYDenominator input wasSquare inverseSqrt t ∧
    normalize wasSquare t signedT ∧
    1 + a * signedT * signedT ≠ 0 ∧
    output.x * (1 + a * signedT * signedT) = 2 * signedT ∧
    yDenominator ≠ 0 ∧
    output.y * yDenominator = 1 - a * signedT * signedT ∧
    Decaf.onCurve output

end EncodeToCurve

namespace Decaf

def valueGeneratorDomain : F :=
  6888358618106443442961843809729175081075858965522240584763322653509542282215

/--
Independent Transfer net-balance relation: two inputs, two negated outputs,
and the value-blinding term.
-/
def netBalanceCommitment2
    (input0 input1 output0 output1 assetId balanceBlinding : F)
    (output : Point F) : Prop :=
  ∃ valueGenerator,
    EncodeToCurve.relation
      (Poseidon377.hash1 valueGeneratorDomain assetId) valueGenerator ∧
    output =
      let inputSum := input0 + input1
      let outputSum := output0 + output1
      let inputs := scalarMulWindow2 129 valueGenerator inputSum
      let outputs := scalarMulWindow2 129 valueGenerator outputSum
      let blind := scalarMulLE 251 valueBlindingGenerator balanceBlinding
      add (add inputs (neg outputs)) blind

end Decaf

def noteCommitmentDomain : F :=
  1434889507249773667048406511864487084155637425201771740895788105903307238157

def stateCommitmentDomain : F :=
  545001158149490383238005163525397553024965043366546261617421270984613353336

def noteCommitmentHash
    (blinding amount assetId diversifiedGenerator transmission clueKey : F) : F :=
  Poseidon377.hash6 noteCommitmentDomain
    blinding amount assetId diversifiedGenerator transmission clueKey

def nullifier (nullifierKey commitment position : F) : F :=
  Poseidon377.hash3 Poseidon377.nullifierDomain
    nullifierKey commitment position

def pathSibling {depth : Nat}
    (path : QuadPath depth F) (level sibling : Nat) : F :=
  if hlevel : level < depth then
    if hsibling : sibling < 3 then
      path ⟨level, hlevel⟩ ⟨sibling, hsibling⟩
    else 0
  else 0

def stateChildren (cur s0 s1 s2 b0 b1 : F) : F × F × F × F :=
  let i0 := (1 - b0) * (1 - b1)
  let i1 := b0 * (1 - b1)
  let i2 := (1 - b0) * b1
  let i3 := b0 * b1
  (s0 - i0 * (s0 - cur),
   s1 - i0 * (s1 - s0) - i1 * (s1 - i0 * (s1 - s0) - cur),
   s1 - b1 * (s1 - s2) - i2 * (s1 - b1 * (s1 - s2) - cur),
   s2 - i3 * (s2 - cur))

def stateCommitmentStep
    (domain cur s0 s1 s2 b0 b1 : F) : F :=
  let children := stateChildren cur s0 s1 s2 b0 b1
  Poseidon377.hash4
    domain children.1 children.2.1 children.2.2.1 children.2.2.2

def stateCommitmentRecover
    (commitment : F) (path : Path24) (b0 b1 : Nat → F) : Nat → F
  | 0 =>
      stateCommitmentStep (stateCommitmentDomain + 1)
        (Poseidon377.hash1 stateCommitmentDomain commitment)
        (pathSibling path 0 0) (pathSibling path 0 1) (pathSibling path 0 2)
        (b0 0) (b1 0)
  | level + 1 =>
      stateCommitmentStep (stateCommitmentDomain + (level : F) + 2)
        (stateCommitmentRecover commitment path b0 b1 level)
        (pathSibling path (level + 1) 0)
        (pathSibling path (level + 1) 1)
        (pathSibling path (level + 1) 2)
        (b0 (level + 1)) (b1 (level + 1))

def stateCommitmentRoot
    (commitment : F) (path : Path24) (b0 b1 : Nat → F) : F :=
  stateCommitmentRecover commitment path b0 b1 23

def statePositionFromBits (b0 b1 : Nat → F) : Nat → F
  | 0 => 0
  | level + 1 =>
      statePositionFromBits b0 b1 level +
        (2 ^ (2 * level) : F) * b0 level +
        (2 ^ (2 * level + 1) : F) * b1 level

def stateMember
    (anchor commitment position : F) (path : Path24) : Prop :=
  ∃ b0 b1 : Nat → F,
    (∀ level < 24, b0 level = 0 ∨ b0 level = 1) ∧
    (∀ level < 24, b1 level = 0 ∨ b1 level = 1) ∧
    position = statePositionFromBits b0 b1 24 ∧
    anchor = stateCommitmentRoot commitment path b0 b1

def boolean (value : F) : Prop := value = 0 ∨ value = 1

def amount128 (amount : F) : Prop := amount.val < 2 ^ 128

def quadChildren
    (current sibling0 sibling1 sibling2 : F) (index : Nat) :
    F × F × F × F :=
  match index with
  | 0 => (current, sibling0, sibling1, sibling2)
  | 1 => (sibling0, current, sibling1, sibling2)
  | 2 => (sibling0, sibling1, current, sibling2)
  | _ => (sibling0, sibling1, sibling2, current)

def quadStep
    (current sibling0 sibling1 sibling2 : F) (index : Nat) : F :=
  let children :=
    quadChildren current sibling0 sibling1 sibling2 index
  Poseidon377.hash4 0
    children.1 children.2.1 children.2.2.1 children.2.2.2

def quadRecover {depth : Nat}
    (leaf : F) (path : QuadPath depth F) (position : F) : Nat → F
  | 0 =>
      quadStep leaf
        (pathSibling path 0 0) (pathSibling path 0 1)
        (pathSibling path 0 2)
        ((if position.val.testBit 0 then 1 else 0) +
          2 * (if position.val.testBit 1 then 1 else 0))
  | level + 1 =>
      quadStep (quadRecover leaf path position level)
        (pathSibling path (level + 1) 0)
        (pathSibling path (level + 1) 1)
        (pathSibling path (level + 1) 2)
        ((if position.val.testBit (2 * (level + 1)) then 1 else 0) +
          2 * (if position.val.testBit (2 * (level + 1) + 1) then 1 else 0))

def quadRoot {depth : Nat}
    (leaf : F) (path : QuadPath depth F) (position : F) : F :=
  match depth with
  | 0 => leaf
  | depth + 1 => quadRecover leaf path position depth

def quadMember {depth : Nat}
    (root leaf : F) (path : QuadPath depth F) (position : F) : Prop :=
  position.val < 2 ^ (2 * depth) ∧
    root = quadRoot leaf path position

def statementField (fields : List F) (index : Nat) (padding : F) : F :=
  fields.getD index padding

def statementFirstBlock
    (domain pad0 pad1 : F) (fields : List F) : F :=
  Poseidon377.hash7 domain
    (statementField fields 0 pad0)
    (statementField fields 1 pad1)
    (statementField fields 2 pad0)
    (statementField fields 3 pad1)
    (statementField fields 4 pad0)
    (statementField fields 5 pad1)
    (statementField fields 6 pad0)

def statementTail (domain pad0 pad1 : F) : F → List F → F
  | hash, a :: b :: c :: d :: e :: f :: rest =>
      statementTail domain pad0 pad1
        (Poseidon377.hash7 domain hash a b c d e f) rest
  | hash, [] => hash
  | hash, rest =>
      Poseidon377.hash7 domain hash
        (statementField rest 0 pad0)
        (statementField rest 1 pad1)
        (statementField rest 2 pad0)
        (statementField rest 3 pad1)
        (statementField rest 4 pad0)
        (statementField rest 5 pad1)

/-- Poseidon7 statement sponge used by all fixed shielded-pool actions. -/
def statementHash
    (domain pad0 pad1 : F) (fields : List F) : F :=
  statementTail domain pad0 pad1
    (statementFirstBlock domain pad0 pad1 fields) (fields.drop 7)

end Shieldd.GnarkFormal.Protocol.Common
