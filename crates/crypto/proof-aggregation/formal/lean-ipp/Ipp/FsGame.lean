/-
U5d(1--3): the structured SnarkPack Fiat--Shamir oracle, the aggregate
verification game, and the accepted-run data transferred into the U5c tree.

The tree-to-`AcceptTree` assembly is deliberately left to U5d(4).
-/
import Ipp.Composition
import Ipp.ForkTree

open OracleSpec OracleComp
open scoped BigOperators OracleSpec.PrimitiveQuery

namespace Ipp

noncomputable section

/-- The six lane-native commitments hashed at one GIPA round, carried
LANE-NATIVELY (the per-lane group elements the real proof transports;
DESIGN §U5d(4) lane-nativity decision). Tagged `U4Commitment` values are
CONSTRUCTED from these via the lane-pure embeddings, so off-lane
components are zero by construction. -/
structure RoundComs (G1 GT : Type) where
  LA : GT × GT
  RA : GT × GT
  LB : GT
  RB : GT
  LT : GT × G1
  RT : GT × G1
deriving DecidableEq

/-- Exact Rust message fields hashed by `aggregate.randomizer`. `comA` and
`comC` are the two components of the model's A-lane statement commitment.
Injectivity of their byte serialization remains the shieldd-byte
`fs.challenge-preimage` obligation. -/
structure RandomizerPayload (GT : Type) where
  comA : GT
  comB : GT
  comC : GT
deriving DecidableEq

/-- Exact Rust message fields hashed by `tipp-mipp.x0`. Byte-serialization
injectivity remains the shieldd-byte `fs.challenge-preimage` obligation. -/
structure X0Payload (F G1 GT : Type) where
  r : F
  comA : GT
  comB : GT
  comC : GT
  ipAb : GT
  aggC : G1
deriving DecidableEq

/-- Exact Rust message fields hashed by `tipp-mipp.final-bridge`.
Byte-serialization injectivity remains the shieldd-byte
`fs.challenge-preimage` obligation. -/
structure BridgePayload (F G1 G2 : Type) where
  lastRawChallenge : F
  vFinal : G2
  wFinal : G1
  aFinal : G1
  bFinal : G2
  cFinal : G1
deriving DecidableEq

/-- Exact Rust message fields hashed by `tipp-mipp.kzg`. Byte-serialization
injectivity remains the shieldd-byte `fs.challenge-preimage` obligation. -/
structure KzgPayload (F G1 G2 : Type) where
  bridgeChallenge : F
  vFinal : G2
  wFinal : G1
deriving DecidableEq

/-- Structured Fiat--Shamir preimages in SnarkPack verifier order. Every point
contains the nonce serialized by Rust as `u64_le(nonce)`; `Nat` models the
non-overflowing prefix of that loop. Round level is deliberately out-of-band:
Rust hashes only the prior raw challenge and the two commitment objects.
Constructor disjointness and typed record equality give abstract injectivity;
byte-level injectivity remains the shieldd-byte `fs.challenge-preimage` row. -/
inductive ChallengePoint (F G1 G2 GT : Type) where
  | randomizer (payload : RandomizerPayload GT) (nonce : Nat)
  | x0 (payload : X0Payload F G1 GT) (nonce : Nat)
  | round (prev : F) (coms : RoundComs G1 GT) (nonce : Nat)
  | bridge (payload : BridgePayload F G1 G2) (nonce : Nat)
  | kzg (payload : KzgPayload F G1 G2) (nonce : Nat)
deriving DecidableEq

/-- The uniform structured challenge oracle. Every stage has scalar range
`F`; its sum constructors separate the five `fs.stage-labels`. -/
abbrev SnarkpackFsSpec (F G1 G2 GT : Type) : OracleSpec (ChallengePoint F G1 G2 GT) :=
  ChallengePoint F G1 G2 GT →ₒ F

/-- Aggregate proof data consumed by the U5d verifier. -/
structure Proof (μ : Nat) (F G1 G2 GT : Type) where
  rounds : Fin μ → RoundComs G1 GT
  aFinal : G1
  bFinal : G2
  cFinal : G1
  vFinal : G2
  vOpening : G2
  wFinal : G1
  wOpening : G1
  ipAb : GT
  aggC : G1
deriving DecidableEq

/-- Public inputs and abstract verifier relations needed by U4. -/
structure FsStatement (μ : Nat) (F G1 G2 GT : Type) [CommSemiring F]
    [AddCommMonoid G1] [Module F G1] [AddCommMonoid G2] [Module F G2]
    [AddCommMonoid GT] [Module F GT] where
  e : G1 →ₗ[F] G2 →ₗ[F] GT
  srsV : Fin (2 ^ μ) → G2
  srsW : Fin (2 ^ μ) → G1
  acceptV : F → (Fin (2 ^ μ) → F) → G2 → G2 → Prop
  acceptW : F → (Fin (2 ^ μ) → F) → G1 → G1 → Prop
  ComA : GT × GT
  ComB : GT
  alpha : G1
  beta : G2
  gamma : G2
  delta : G2
  A : Fin (2 ^ μ) → G1
  B : Fin (2 ^ μ) → G2
  C : Fin (2 ^ μ) → G1
  Aic : Fin (2 ^ μ) → G1
  /-- Maximum attempts per scalar stage. Exhaustion rejects the run. -/
  rejectionFuel : Nat

/-- Answers and input chaining for the consecutive round-stage queries. -/
structure RoundTranscript (μ : Nat) (F : Type) where
  prev : Fin μ → F
  answer : Fin μ → F
  nonce : Fin μ → Nat
  last : F
deriving DecidableEq

/-- The transcript recomputed by the verifier, in the order recorded by
`SnarkpackOracle.lean`. -/
structure FsTranscript (μ : Nat) (F : Type) where
  randomizer : F
  randomizerNonce : Nat
  x0 : F
  x0Nonce : Nat
  roundPrev : Fin μ → F
  roundAnswer : Fin μ → F
  roundNonce : Fin μ → Nat
  bridge : F
  bridgeNonce : Nat
  kzg : F
  kzgNonce : Nat
deriving DecidableEq

/-- Chronological Fiat--Shamir chaining exported to the replay-tree assembly
boundary. -/
structure TranscriptChaining {F : Type} {μ : Nat} (x0 : F)
    (roundPrev roundAnswer : Fin μ → F) : Prop where
  zero : ∀ hμ : 0 < μ, roundPrev ⟨0, hμ⟩ = x0
  succ : ∀ (j : Nat) (hj : j + 1 < μ),
    roundPrev ⟨j + 1, hj⟩ = roundAnswer ⟨j, Nat.lt_of_succ_lt hj⟩

/-- Round zero is chained from x0. -/
theorem roundPrev_zero {F : Type} {μ : Nat} {x0 : F}
    {roundPrev roundAnswer : Fin μ → F}
    (h : TranscriptChaining x0 roundPrev roundAnswer) (hμ : 0 < μ) :
    roundPrev ⟨0, hμ⟩ = x0 := h.zero hμ

/-- Each later round is chained from the preceding round answer. -/
theorem roundPrev_succ {F : Type} {μ : Nat} {x0 : F}
    {roundPrev roundAnswer : Fin μ → F}
    (h : TranscriptChaining x0 roundPrev roundAnswer)
    (j : Nat) (hj : j + 1 < μ) :
    roundPrev ⟨j + 1, hj⟩ = roundAnswer ⟨j, Nat.lt_of_succ_lt hj⟩ := h.succ j hj

/-- SnarkPack's notation swap: the GIPA verifier challenge is the inverse of
the random-oracle answer. -/
def gipaChallenge {F : Type} [Inv F] (x : F) : F := x⁻¹

/-- SnarkPack's `c_inv` is the random-oracle answer itself. -/
def gipaChallengeInv {F : Type} (x : F) : F := x

/-- Reverse verifier chronology for final-key and structured-scalar consumers. -/
def reversedView {F : Type} {μ : Nat} (x : Fin μ → F) : Fin μ → F :=
  fun i => x (Fin.rev i)

def nonzeroB {F : Type} [Zero F] (x : F) : Bool :=
  @decide (x ≠ 0) (Classical.propDecidable _)

def randomizerAcceptedB {F : Type} [Zero F] [One F] (x : F) : Bool :=
  @decide (x ≠ 0 ∧ x ≠ 1) (Classical.propDecidable _)

/-- Bounded model of Rust's nonce loop. Attempt `n` queries the point built
with nonce `n`; rejected field answers advance the nonce. The oracle already
ranges over decoded field elements, so byte-to-field decode failures are
abstracted away. Fuel exhaustion returns `none` and the verifier rejects. -/
def queryAccepting {F G1 G2 GT : Type}
    (mkPoint : Nat → ChallengePoint F G1 G2 GT) (acceptable : F → Bool) :
    Nat → Nat → OracleComp (unifSpec + SnarkpackFsSpec F G1 G2 GT) (Option (F × Nat))
  | 0, _ => pure none
  | fuel + 1, nonce => do
      let x ← (unifSpec + SnarkpackFsSpec F G1 G2 GT).query
        (Sum.inr (mkPoint nonce))
      if acceptable x then
        pure (some (x, nonce))
      else
        queryAccepting mkPoint acceptable fuel (nonce + 1)

def queryRounds {F G1 G2 GT : Type} [Zero F]
    (fuel : Nat) : (μ : Nat) → F → (Fin μ → RoundComs G1 GT) →
      OracleComp (unifSpec + SnarkpackFsSpec F G1 G2 GT) (Option (RoundTranscript μ F))
  | 0, prev, _ => pure (some {
      prev := Fin.elim0, answer := Fin.elim0, nonce := Fin.elim0, last := prev })
  | μ + 1, prev, rounds => do
      let sampled ← queryAccepting
        (fun nonce => .round prev (rounds 0) nonce) nonzeroB fuel 0
      match sampled with
      | none => pure none
      | some (x, nonce) =>
          let tail ← queryRounds fuel μ x (fun i => rounds i.succ)
          match tail with
          | none => pure none
          | some tail => pure (some {
              prev := Fin.cases prev tail.prev
              answer := Fin.cases x tail.answer
              nonce := Fin.cases nonce tail.nonce
              last := tail.last
            })

/-- The three lane-native commitment values folded by the verifier. -/
structure FoldedValues (G1 GT : Type) where
  comA : GT × GT
  comB : GT
  comT : GT × G1

def foldOne {F G1 GT : Type} [Field F]
    [AddCommGroup G1] [Module F G1] [AddCommGroup GT] [Module F GT]
    (x : F) (coms : RoundComs G1 GT)
    (acc : FoldedValues G1 GT) :
    FoldedValues G1 GT :=
  { comA := foldCom (gipaChallenge x) coms.LA acc.comA coms.RA
    comB := foldCom (gipaChallenge x) coms.LB acc.comB coms.RB
    comT := foldCom (gipaChallenge x) coms.LT acc.comT coms.RT }

def foldRounds {F G1 GT : Type} [Field F]
    [AddCommGroup G1] [Module F G1] [AddCommGroup GT] [Module F GT] :
    (μ : Nat) → (Fin μ → F) → (Fin μ → RoundComs G1 GT) →
      FoldedValues G1 GT → FoldedValues G1 GT
  | 0, _, _, acc => acc
  | μ + 1, x, rounds, acc =>
      foldRounds μ (fun i => x i.succ) (fun i => rounds i.succ)
        (foldOne (x 0) (rounds 0) acc)

/-- Chronological folding can equivalently peel its last round. -/
theorem foldRounds_succ_last {F G1 GT : Type} [Field F]
    [AddCommGroup G1] [Module F G1] [AddCommGroup GT] [Module F GT]
    {μ : Nat} (x : Fin (μ + 1) → F) (rounds : Fin (μ + 1) → RoundComs G1 GT)
    (acc : FoldedValues G1 GT) :
    foldRounds (μ + 1) x rounds acc =
      foldOne (x (Fin.last μ)) (rounds (Fin.last μ))
        (foldRounds μ (fun i => x i.castSucc) (fun i => rounds i.castSucc) acc) := by
  induction μ generalizing acc with
  | zero => rfl
  | succ μ ih =>
      conv_lhs => rw [foldRounds]
      rw [ih]
      rfl

/-- Lane-native commitment values at the terminal verifier leaf. -/
def terminalFold {F G1 G2 GT : Type} [Field F]
    [AddCommGroup G1] [Module F G1] [AddCommGroup GT] [Module F GT]
    {μ : Nat} (ComA : GT × GT) (ComB : GT)
    (proof : Proof μ F G1 G2 GT) (x : Fin μ → F) :
    FoldedValues G1 GT :=
  foldRounds μ x proof.rounds
    { comA := ComA, comB := ComB, comT := (proof.ipAb, proof.aggC) }

/-- The scalar terminal message checked in the fifth base equation. -/
def terminalR {F : Type} [Field F] {μ : Nat} (randomizer : F)
    (x : Fin μ → F) : F :=
  ∏ i : Fin μ, (1 + x i * randomizer ^ (2 ^ (i : Nat)))

/-- The public `r_vec` lane folded by the reversed raw transcript is exactly
the terminal scalar used by the fifth real leaf equation. -/
theorem foldKey_public_eq_terminalR {F : Type} [Field F] {μ : Nat}
    (x : Fin μ → F) (randomizer : F) :
    foldKey x (fun i : Fin (2 ^ μ) => randomizer ^ (i : Nat)) 0 =
      terminalR randomizer x := by
  simpa [terminalR] using foldKey_public_terminal x randomizer

/-- Exact U4 leaf payload: five terminal equations and the two KZG accepts at
the recomputed transcript coefficients (DESIGN §U5d(3); `tipp-mipp.gipa`). -/
def LeafData {F G1 G2 GT : Type}
    [Field F]
    [AddCommGroup G1] [Module F G1] [AddCommGroup G2] [Module F G2]
    [AddCommGroup GT] [Module F GT] {μ : Nat}
    (stmt : FsStatement μ F G1 G2 GT) (proof : Proof μ F G1 G2 GT)
    (transcript : FsTranscript μ F) :
    Prop :=
  let folded := terminalFold stmt.ComA stmt.ComB proof transcript.roundAnswer
  stmt.e proof.aFinal proof.vFinal = folded.comA.1 ∧
  stmt.e proof.wFinal proof.bFinal = folded.comB ∧
  stmt.e proof.aFinal proof.bFinal = folded.comT.1 ∧
  stmt.e proof.cFinal proof.vFinal = folded.comA.2 ∧
  terminalR transcript.randomizer (reversedView transcript.roundAnswer) • proof.cFinal =
    folded.comT.2 ∧
  stmt.acceptV transcript.kzg
    (transcriptCoeffs (reversedView transcript.roundAnswer) 1)
    proof.vFinal proof.vOpening ∧
  stmt.acceptW transcript.kzg
    (transcriptCoeffs
      (fun i => gipaChallenge (reversedView transcript.roundAnswer i))
      transcript.randomizer⁻¹) proof.wFinal proof.wOpening

/-- Two-round parity with `structured_scalar_final_from_raw_transcript` in
`groth16_aggregation.rs`: verifier chronology `[x0, x1]` is reversed before
the KZG coefficients and before assigning powers `r, r^2` to `terminalR`. -/
theorem reversedView_two_round_parity {F : Type} [Field F] (x0 x1 r : F) :
    transcriptCoeffs (reversedView ![x0, x1]) 1 =
        transcriptCoeffs ![x1, x0] 1 ∧
      terminalR r (reversedView ![x0, x1]) =
        (1 + x1 * r) * (1 + x0 * r ^ 2) := by
  constructor
  · rfl
  · simp [terminalR, reversedView]

/-- All relations checked by the aggregate verifier. -/
def FsAccepts {F G1 G2 GT : Type}
    [Field F]
    [AddCommGroup G1] [Module F G1] [AddCommGroup G2] [Module F G2]
    [AddCommGroup GT] [Module F GT] {μ : Nat}
    (stmt : FsStatement μ F G1 G2 GT) (proof : Proof μ F G1 G2 GT)
    (transcript : FsTranscript μ F) :
    Prop :=
  transcript.randomizer ≠ 0 ∧ transcript.randomizer ≠ 1 ∧
    transcript.x0 ≠ 0 ∧ (∀ i, transcript.roundAnswer i ≠ 0) ∧
    transcript.bridge ≠ 0 ∧ transcript.kzg ≠ 0 ∧
    LeafData stmt proof transcript ∧
    stmt.e ((∑ i : Fin (2 ^ μ), transcript.randomizer ^ (i : Nat)) • stmt.alpha)
        stmt.beta +
      stmt.e (∑ i : Fin (2 ^ μ), transcript.randomizer ^ (i : Nat) • stmt.Aic i)
        stmt.gamma +
      stmt.e proof.aggC stmt.delta = proof.ipAb

/-- Output of the FS verification experiment. -/
structure FsResult (μ : Nat) (F G1 G2 GT : Type) where
  proof : Proof μ F G1 G2 GT
  transcript : FsTranscript μ F
  accept : Bool
deriving DecidableEq

/-- Canonical rejected output used only when a bounded nonce loop exhausts. -/
def rejectedResult {F G1 G2 GT : Type} [Zero F] {μ : Nat}
    (proof : Proof μ F G1 G2 GT) : FsResult μ F G1 G2 GT :=
  { proof := proof
    transcript :=
      { randomizer := 0, randomizerNonce := 0
        x0 := 0, x0Nonce := 0
        roundPrev := fun _ => 0, roundAnswer := fun _ => 0,
        roundNonce := fun _ => 0
        bridge := 0, bridgeNonce := 0
        kzg := 0, kzgNonce := 0 }
    accept := false }

/-- Verifier computation in Rust stage order with bounded nonce loops at every
scalar stage. Fuel exhaustion stops immediately with a rejected result; on an
accepting output the computation is the straight-line randomizer, x0, rounds,
final bridge, KZG chain (DESIGN §U5d(2); `fs.stage-labels`). -/
def fsVerifier {F G1 G2 GT : Type} [Field F] [AddCommGroup G1] [Module F G1]
    [AddCommGroup G2] [Module F G2] [AddCommGroup GT] [Module F GT] {μ : Nat}
    (stmt : FsStatement μ F G1 G2 GT) (proof : Proof μ F G1 G2 GT) :
    OracleComp (unifSpec + SnarkpackFsSpec F G1 G2 GT) (FsResult μ F G1 G2 GT) := do
  let rSample ← queryAccepting
    (fun nonce => .randomizer
      { comA := stmt.ComA.1, comB := stmt.ComB, comC := stmt.ComA.2 } nonce)
    randomizerAcceptedB stmt.rejectionFuel 0
  match rSample with
  | none => pure (rejectedResult proof)
  | some (r, rNonce) =>
    let x0Sample ← queryAccepting
      (fun nonce => .x0
        { r := r, comA := stmt.ComA.1, comB := stmt.ComB, comC := stmt.ComA.2,
          ipAb := proof.ipAb, aggC := proof.aggC } nonce)
      nonzeroB stmt.rejectionFuel 0
    match x0Sample with
    | none => pure (rejectedResult proof)
    | some (x0, x0Nonce) =>
      let roundSample ← queryRounds stmt.rejectionFuel μ x0 proof.rounds
      match roundSample with
      | none => pure (rejectedResult proof)
      | some rounds =>
        let bridgeSample ← queryAccepting
          (fun nonce => .bridge
            { lastRawChallenge := rounds.last
              vFinal := proof.vFinal, wFinal := proof.wFinal
              aFinal := proof.aFinal, bFinal := proof.bFinal, cFinal := proof.cFinal }
            nonce) nonzeroB stmt.rejectionFuel 0
        match bridgeSample with
        | none => pure (rejectedResult proof)
        | some (bridge, bridgeNonce) =>
          let zSample ← queryAccepting
            (fun nonce => .kzg
              { bridgeChallenge := bridge, vFinal := proof.vFinal,
                wFinal := proof.wFinal } nonce) nonzeroB stmt.rejectionFuel 0
          match zSample with
          | none => pure (rejectedResult proof)
          | some (z, zNonce) =>
            let transcript : FsTranscript μ F :=
              { randomizer := r, randomizerNonce := rNonce
                x0 := x0, x0Nonce := x0Nonce
                roundPrev := rounds.prev, roundAnswer := rounds.answer,
                roundNonce := rounds.nonce
                bridge := bridge, bridgeNonce := bridgeNonce
                kzg := z, kzgNonce := zNonce }
            pure {
              proof := proof
              transcript := transcript
              accept := @ite Bool (FsAccepts stmt proof transcript)
                (Classical.propDecidable _) true false
            }

/-- The bounded rejection sampler makes at most one oracle query per unit of fuel. -/
theorem queryAccepting_isTotalQueryBound {F G1 G2 GT : Type}
    (mkPoint : Nat → ChallengePoint F G1 G2 GT) (acceptable : F → Bool)
    (fuel nonce : Nat) :
    IsTotalQueryBound (queryAccepting mkPoint acceptable fuel nonce) fuel := by
  induction fuel generalizing nonce with
  | zero => exact trivial
  | succ fuel ih =>
      rw [queryAccepting, isTotalQueryBound_query_bind_iff]
      refine ⟨Nat.succ_pos _, fun x => ?_⟩
      split
      · exact trivial
      · simpa using ih (nonce := nonce + 1)

/-- Each round's bounded rejection sampler consumes at most `fuel` queries. -/
theorem queryRounds_isTotalQueryBound {F G1 G2 GT : Type} [Zero F]
    (fuel μ : Nat) (prev : F) (rounds : Fin μ → RoundComs G1 GT) :
    IsTotalQueryBound (queryRounds (G2 := G2) fuel μ prev rounds) (μ * fuel) := by
  induction μ generalizing prev with
  | zero => exact trivial
  | succ μ ih =>
      rw [queryRounds]
      have hsample :
          IsTotalQueryBound
            (queryAccepting (G2 := G2)
              (fun nonce => .round prev (rounds 0) nonce) nonzeroB fuel 0)
            fuel :=
        queryAccepting_isTotalQueryBound (G2 := G2) _ _ _ _
      have htail : ∀ (x : F) (_nonce : Nat),
          IsTotalQueryBound
            (queryRounds (G2 := G2) fuel μ x (fun i => rounds i.succ))
            (μ * fuel) :=
        fun x _ => ih x (fun i => rounds i.succ)
      refine (isTotalQueryBound_bind (n₁ := fuel) (n₂ := μ * fuel) hsample ?_).mono ?_
      · intro sampled
        cases sampled with
        | none => exact trivial
        | some pair =>
            rcases pair with ⟨x, nonce⟩
            refine (isTotalQueryBound_bind (n₁ := μ * fuel) (n₂ := 0)
              (htail x nonce) ?_).mono ?_
            · intro tail
              cases tail <;> exact trivial
            · simp
      · simp [Nat.succ_mul, Nat.add_comm]

/-- The verifier has `μ + 4` bounded rejection-sampling stages. -/
theorem fsVerifier_isTotalQueryBound {F G1 G2 GT : Type}
    [Field F] [AddCommGroup G1] [Module F G1]
    [AddCommGroup G2] [Module F G2] [AddCommGroup GT] [Module F GT] {μ : Nat}
    (stmt : FsStatement μ F G1 G2 GT) (proof : Proof μ F G1 G2 GT) :
    IsTotalQueryBound (fsVerifier stmt proof) ((μ + 4) * stmt.rejectionFuel) := by
  unfold fsVerifier
  refine (isTotalQueryBound_bind (n₁ := stmt.rejectionFuel)
    (n₂ := μ * stmt.rejectionFuel +
      (stmt.rejectionFuel + (stmt.rejectionFuel + stmt.rejectionFuel)))
    (queryAccepting_isTotalQueryBound (G2 := G2) _ _ stmt.rejectionFuel 0) ?_).mono ?_
  · intro rSample
    match rSample with
    | none => exact trivial
    | some (r, rNonce) =>
        refine (isTotalQueryBound_bind (n₁ := stmt.rejectionFuel)
          (n₂ := μ * stmt.rejectionFuel + (stmt.rejectionFuel + stmt.rejectionFuel))
          (queryAccepting_isTotalQueryBound (G2 := G2) _ _ stmt.rejectionFuel 0) ?_).mono ?_
        · intro x0Sample
          match x0Sample with
          | none => exact trivial
          | some (x0, x0Nonce) =>
              refine (isTotalQueryBound_bind (n₁ := μ * stmt.rejectionFuel)
                (n₂ := stmt.rejectionFuel + stmt.rejectionFuel)
                (queryRounds_isTotalQueryBound (G2 := G2)
                  stmt.rejectionFuel μ x0 proof.rounds) ?_).mono ?_
              · intro roundSample
                match roundSample with
                | none => exact trivial
                | some rounds =>
                    refine (isTotalQueryBound_bind (n₁ := stmt.rejectionFuel)
                      (n₂ := stmt.rejectionFuel)
                      (queryAccepting_isTotalQueryBound (G2 := G2) _ _ stmt.rejectionFuel 0) ?_).mono ?_
                    · intro bridgeSample
                      match bridgeSample with
                      | none => exact trivial
                      | some (bridge, bridgeNonce) =>
                          refine isTotalQueryBound_bind (n₁ := stmt.rejectionFuel) (n₂ := 0)
                            (queryAccepting_isTotalQueryBound (G2 := G2) _ _ stmt.rejectionFuel 0) ?_
                          intro zSample
                          match zSample with
                          | none => exact trivial
                          | some (z, zNonce) => exact trivial
                    · omega
              · omega
        · omega
  · simp [Nat.succ_mul, Nat.add_assoc, Nat.add_comm]

/-- NMA-style FS game: the adversary chooses a proof and the verifier
recomputes the complete structured transcript. -/
def FsGame {F G1 G2 GT : Type}
    [Field F] [AddCommGroup G1] [Module F G1]
    [AddCommGroup G2] [Module F G2] [AddCommGroup GT] [Module F GT] {μ : Nat}
    (stmt : FsStatement μ F G1 G2 GT)
    (adv : OracleComp (unifSpec + SnarkpackFsSpec F G1 G2 GT)
      (Proof μ F G1 G2 GT)) :
    OracleComp (unifSpec + SnarkpackFsSpec F G1 G2 GT) (FsResult μ F G1 G2 GT) := do
  let proof ← adv
  fsVerifier stmt proof

/-- The game spends the adversary budget followed by the complete verifier budget. -/
theorem FsGame_isTotalQueryBound {F G1 G2 GT : Type}
    [Field F] [AddCommGroup G1] [Module F G1]
    [AddCommGroup G2] [Module F G2] [AddCommGroup GT] [Module F GT] {μ qa : Nat}
    (stmt : FsStatement μ F G1 G2 GT)
    (adv : OracleComp (unifSpec + SnarkpackFsSpec F G1 G2 GT)
      (Proof μ F G1 G2 GT))
    (hadv : IsTotalQueryBound adv qa) :
    IsTotalQueryBound (FsGame stmt adv)
      (qa + (μ + 4) * stmt.rejectionFuel) := by
  unfold FsGame
  exact isTotalQueryBound_bind hadv (fsVerifier_isTotalQueryBound stmt)

/-- A caller-supplied whole-game cap weakens the composed adversary/verifier bound. -/
theorem FsGame_isTotalQueryBound_of_le {F G1 G2 GT : Type}
    [Field F] [AddCommGroup G1] [Module F G1]
    [AddCommGroup G2] [Module F G2] [AddCommGroup GT] [Module F GT] {μ qa qb : Nat}
    (stmt : FsStatement μ F G1 G2 GT)
    (adv : OracleComp (unifSpec + SnarkpackFsSpec F G1 G2 GT)
      (Proof μ F G1 G2 GT))
    (hadv : IsTotalQueryBound adv qa)
    (hcap : qa + (μ + 4) * stmt.rejectionFuel ≤ qb + 1) :
    IsTotalQueryBound (FsGame stmt adv) (qb + 1) :=
  (FsGame_isTotalQueryBound stmt adv hadv).mono hcap

/-- One exact input/answer pair occurs in a query log. -/
def QueryAnswered {ι : Type} {spec : OracleSpec ι} (log : QueryLog spec)
    (t : spec.Domain) (u : spec.Range t) : Prop :=
  (⟨t, u⟩ : (t : spec.Domain) × spec.Range t) ∈ log

/-- Every verifier round query occurs in the log with its chained input and
the answer retained in the output transcript. -/
def RoundQueries {F G1 G2 GT : Type} [Field F] {μ : Nat}
    (out : FsResult μ F G1 G2 GT)
    (log : QueryLog (unifSpec + SnarkpackFsSpec F G1 G2 GT)) : Prop :=
  ∀ i : Fin μ, QueryAnswered log
    (Sum.inr (.round (out.transcript.roundPrev i) (out.proof.rounds i)
      (out.transcript.roundNonce i)))
    (out.transcript.roundAnswer i)

/-- Semantic acceptance conditions enforced by Rust's scalar nonce loops.
Decode failure is absent because the model oracle already returns `F`. -/
def ChallengesAccepted {F G1 G2 GT : Type} [Zero F] [One F] {μ : Nat}
    (out : FsResult μ F G1 G2 GT) : Prop :=
  out.transcript.randomizer ≠ 0 ∧ out.transcript.randomizer ≠ 1 ∧
  out.transcript.x0 ≠ 0 ∧
  (∀ i, out.transcript.roundAnswer i ≠ 0) ∧
  out.transcript.bridge ≠ 0 ∧ out.transcript.kzg ≠ 0

/-- Postcondition transferred from first-run support into the U5c fork tree
(DESIGN §U5d(3); `fs.challenge-preimage`, `tipp-mipp.gipa`). -/
def accepted_run_leaf_data
    {F G1 G2 GT : Type}
    [Field F] [AddCommGroup G1] [Module F G1]
    [AddCommGroup G2] [Module F G2] [AddCommGroup GT] [Module F GT] {μ : Nat}
    (stmt : FsStatement μ F G1 G2 GT) (out : FsResult μ F G1 G2 GT)
    (log : QueryLog (unifSpec + SnarkpackFsSpec F G1 G2 GT)) : Prop :=
  out.accept = true →
    RoundQueries out log ∧
    (∀ i, gipaChallenge (out.transcript.roundAnswer i) =
        (out.transcript.roundAnswer i)⁻¹ ∧
      gipaChallengeInv (out.transcript.roundAnswer i) =
        out.transcript.roundAnswer i) ∧
    LeafData stmt out.proof out.transcript ∧
    ChallengesAccepted out

private theorem queryAccepting_logged
    {F G1 G2 GT : Type}
    (mkPoint : Nat → ChallengePoint F G1 G2 GT) (acceptable : F → Bool)
    (fuel nonce : Nat) {x : F} {used : Nat}
    {log : QueryLog (unifSpec + SnarkpackFsSpec F G1 G2 GT)}
    (h : (some (x, used), log) ∈ support
      (replayFirstRun (queryAccepting mkPoint acceptable fuel nonce))) :
    QueryAnswered log (Sum.inr (mkPoint used)) x ∧ acceptable x = true := by
  induction fuel generalizing nonce log with
  | zero => simp [replayFirstRun, queryAccepting] at h
  | succ fuel ih =>
      simp [replayFirstRun, queryAccepting] at h
      obtain ⟨answer, qlog, hq, restLog, hrest, hlog⟩ := h
      split at hrest
      · simp at hrest
        obtain ⟨⟨rfl, rfl⟩, rfl⟩ := hrest
        subst log
        constructor
        · have hqlog : qlog = [⟨Sum.inr (mkPoint used), x⟩] := by
            have hqlog' : [⟨Sum.inr (mkPoint used), x⟩] = qlog := by
              simpa [OracleSpec.loggingOracle, QueryImpl.withLogging_apply] using hq
            exact hqlog'.symm
          subst qlog
          simp [QueryAnswered]
        · assumption
      · subst log
        have hr := ih (nonce + 1) hrest
        exact ⟨List.mem_append_right qlog hr.1, hr.2⟩

private theorem queryRounds_logged
    {F G1 G2 GT : Type} [Zero F]
    (fuel μ : Nat) (prev : F) (rounds : Fin μ → RoundComs G1 GT)
    {out : RoundTranscript μ F}
    {log : QueryLog (unifSpec + SnarkpackFsSpec F G1 G2 GT)}
    (h : (some out, log) ∈ support
      (replayFirstRun (queryRounds (G2 := G2) fuel μ prev rounds))) :
    (∀ i : Fin μ, QueryAnswered log
      (Sum.inr (.round (out.prev i) (rounds i) (out.nonce i))) (out.answer i)) ∧
    ∀ i : Fin μ, out.answer i ≠ 0 := by
  induction μ generalizing prev log with
  | zero =>
      constructor <;> intro i <;> exact Fin.elim0 i
  | succ μ ih =>
      simp [replayFirstRun, queryRounds] at h
      obtain ⟨sample, sampleLog, hs, restLog, hrest, hlog⟩ := h
      cases sample with
      | none => simp at hrest
      | some pair =>
        rcases pair with ⟨x, nonce⟩
        simp at hrest
        obtain ⟨tailOpt, tailLog, ht, outLog, hout, hrestLog⟩ := hrest
        cases tailOpt with
        | none => simp at hout
        | some tail =>
          simp at hout
          obtain ⟨hout, rfl⟩ := hout
          subst out
          subst restLog
          subst log
          have hs' := queryAccepting_logged
            (fun n => ChallengePoint.round prev (rounds 0) n) nonzeroB fuel 0 hs
          have ht' := ih x (fun i => rounds i.succ) ht
          constructor
          · intro i
            refine Fin.cases ?_ (fun j => ?_) i
            · exact List.mem_append_left _ hs'.1
            · apply List.mem_append_right sampleLog
              apply List.mem_append_left
              simpa using ht'.1 j
          · intro i
            refine Fin.cases ?_ (fun j => ?_) i
            · simpa [nonzeroB] using hs'.2
            · exact ht'.2 j

private theorem fsVerifier_logged
    {F G1 G2 GT : Type}
    [Field F] [AddCommGroup G1] [Module F G1]
    [AddCommGroup G2] [Module F G2] [AddCommGroup GT] [Module F GT] {μ : Nat}
    (stmt : FsStatement μ F G1 G2 GT) (proof : Proof μ F G1 G2 GT)
    {out : FsResult μ F G1 G2 GT}
    {log : QueryLog (unifSpec + SnarkpackFsSpec F G1 G2 GT)}
    (h : (out, log) ∈ support (replayFirstRun (fsVerifier stmt proof))) :
    out.accept = true →
      RoundQueries out log ∧ LeafData stmt out.proof out.transcript ∧
        ChallengesAccepted out := by
  simp [replayFirstRun, fsVerifier] at h
  intro ha
  obtain ⟨rOpt, rLog, hr, restLog, hrest, hlog⟩ := h
  cases rOpt with
  | none => simp [rejectedResult] at hrest; simp_all
  | some rPair =>
    rcases rPair with ⟨r, rNonce⟩
    simp at hrest
    obtain ⟨xOpt, xLog, hx, xRestLog, hxrest, hxlog⟩ := hrest
    cases xOpt with
    | none => simp [rejectedResult] at hxrest; simp_all
    | some xPair =>
      rcases xPair with ⟨x0, x0Nonce⟩
      simp at hxrest
      obtain ⟨roundOpt, roundLog, hround, roundRestLog, hrrest, hrlog⟩ := hxrest
      cases roundOpt with
      | none => simp [rejectedResult] at hrrest; simp_all
      | some rounds =>
        simp at hrrest
        obtain ⟨bridgeOpt, bridgeLog, hbridge, bridgeRestLog, hbrest, hblog⟩ := hrrest
        cases bridgeOpt with
        | none => simp [rejectedResult] at hbrest; simp_all
        | some bridgePair =>
          rcases bridgePair with ⟨bridge, bridgeNonce⟩
          simp at hbrest
          obtain ⟨zOpt, zLog, hz, zRestLog, hzrest, hzlog⟩ := hbrest
          cases zOpt with
          | none => simp [rejectedResult] at hzrest; simp_all
          | some zPair =>
            rcases zPair with ⟨z, zNonce⟩
            simp at hzrest
            obtain ⟨hout, rfl⟩ := hzrest
            subst out
            subst bridgeRestLog
            subst roundRestLog
            subst xRestLog
            subst restLog
            subst log
            let transcript : FsTranscript μ F :=
              { randomizer := r, randomizerNonce := rNonce
                x0 := x0, x0Nonce := x0Nonce
                roundPrev := rounds.prev, roundAnswer := rounds.answer,
                roundNonce := rounds.nonce
                bridge := bridge, bridgeNonce := bridgeNonce
                kzg := z, kzgNonce := zNonce }
            have hacc : FsAccepts stmt proof transcript := by simpa [transcript] using ha
            have hround' := queryRounds_logged stmt.rejectionFuel μ x0 proof.rounds hround
            constructor
            · intro i
              apply List.mem_append_right rLog
              apply List.mem_append_right xLog
              apply List.mem_append_left
              exact hround'.1 i
            · exact ⟨hacc.2.2.2.2.2.2.1,
                ⟨hacc.1, hacc.2.1, hacc.2.2.1, hacc.2.2.2.1,
                  hacc.2.2.2.2.1, hacc.2.2.2.2.2.1⟩⟩

/-- Every accepting first-run support point carries the exact round queries,
challenge swap, U4 leaf payload, and explicit zero-challenge split required by
U5d(3). -/
theorem accepted_supports_leaf_data
    {F G1 G2 GT : Type}
    [Field F] [AddCommGroup G1] [Module F G1]
    [AddCommGroup G2] [Module F G2] [AddCommGroup GT] [Module F GT] {μ : Nat}
    (stmt : FsStatement μ F G1 G2 GT)
    (adv : OracleComp (unifSpec + SnarkpackFsSpec F G1 G2 GT)
      (Proof μ F G1 G2 GT))
    {out : FsResult μ F G1 G2 GT}
    {log : QueryLog (unifSpec + SnarkpackFsSpec F G1 G2 GT)}
    (h : (out, log) ∈ support (replayFirstRun (FsGame stmt adv))) :
    accepted_run_leaf_data stmt out log := by
  classical
  simp [replayFirstRun, FsGame] at h
  obtain ⟨proof, advLog, hadv, verifierLog, hver, hlog⟩ := h
  subst log
  intro haccept
  have hv := fsVerifier_logged stmt proof hver haccept
  refine ⟨?_, ?_, hv.2.1, hv.2.2⟩
  · intro i
    apply List.mem_append_right advLog
    exact hv.1 i
  · intro i
    exact ⟨rfl, rfl⟩

/-- End-to-end U5c transfer demonstration. This deliberately stops at a
`RunTree` whose runs carry `accepted_run_leaf_data`; U5d(4) will assemble the
corresponding product-lane `AcceptTree`. -/
theorem fsGame_forkTree_leaf_data
    {F G1 G2 GT : Type}
    [Field F] [AddCommGroup G1] [Module F G1]
    [AddCommGroup G2] [Module F G2] [AddCommGroup GT] [Module F GT] {μ : Nat}
    (stmt : FsStatement μ F G1 G2 GT)
    (adv : OracleComp (unifSpec + SnarkpackFsSpec F G1 G2 GT)
      (Proof μ F G1 G2 GT))
    [((unifSpec + SnarkpackFsSpec F G1 G2 GT)).DecidableEq]
    [IsUniformSpec (unifSpec + SnarkpackFsSpec F G1 G2 GT)]
    [∀ j, SampleableType ((unifSpec + SnarkpackFsSpec F G1 G2 GT).Range j)]
    [unifSpec ⊂ₒ (unifSpec + SnarkpackFsSpec F G1 G2 GT)]
    (depth : Nat)
    (qb : (unifSpec + SnarkpackFsSpec F G1 G2 GT).Domain → Nat)
    (i : (unifSpec + SnarkpackFsSpec F G1 G2 GT).Domain)
    (cf : Nat → FsResult μ F G1 G2 GT → Option (Fin (qb i + 1)))
    {tree : RunTree (unifSpec + SnarkpackFsSpec F G1 G2 GT)
      (FsResult μ F G1 G2 GT) depth}
    (h : some tree ∈ support (forkTree depth (FsGame stmt adv) qb i cf
      (fun _ => True))) :
    TreeConsistent (FsGame stmt adv) qb i cf (fun _ => True) 0 none tree ∧
      tree.All (fun run => accepted_run_leaf_data stmt run.1 run.2) :=
  forkTree_propertyTransfer depth (FsGame stmt adv) qb i cf (fun _ => True)
    (accepted_run_leaf_data stmt)
    (fun {_out _log} hrun => accepted_supports_leaf_data stmt adv hrun) h

end

end Ipp
