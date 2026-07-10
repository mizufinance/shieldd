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

/-- The six product-lane commitments hashed at one GIPA round. -/
structure RoundComs (F G1 GT : Type) where
  LA : U4Commitment F G1 GT
  RA : U4Commitment F G1 GT
  LB : U4Commitment F G1 GT
  RB : U4Commitment F G1 GT
  LT : U4Commitment F G1 GT
  RT : U4Commitment F G1 GT
deriving DecidableEq

/-- Structured Fiat--Shamir preimages in SnarkPack verifier order (DESIGN
§U5d(1); `fs.stage-labels`, `fs.challenge-preimage`, `tipp-mipp.gipa`).

Constructor disjointness makes stage/payload encoding injective in this model.
Injectivity of the concrete byte encoding remains the responsibility of the
shieldd-byte `fs.challenge-preimage` rows. -/
inductive ChallengePoint (F G1 GT RandomizerPayload X0Payload BridgePayload
    KzgPayload : Type) where
  | randomizer (payload : RandomizerPayload)
  | x0 (payload : X0Payload)
  | round (level : Nat) (prev : F) (coms : RoundComs F G1 GT)
  | bridge (payload : BridgePayload)
  | kzg (payload : KzgPayload)
deriving DecidableEq

/-- The uniform structured challenge oracle. Every stage has scalar range
`F`; its sum constructors separate the five `fs.stage-labels`. -/
abbrev SnarkpackFsSpec (F G1 GT RandomizerPayload X0Payload BridgePayload
    KzgPayload : Type) : OracleSpec (ChallengePoint F G1 GT RandomizerPayload
      X0Payload BridgePayload KzgPayload) :=
  ChallengePoint F G1 GT RandomizerPayload X0Payload BridgePayload KzgPayload →ₒ F

/-- Aggregate proof data consumed by the U5d verifier. -/
structure Proof (μ : Nat) (F G1 G2 GT : Type) where
  rounds : Fin μ → RoundComs F G1 GT
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

/-- The five stage payload constructors. Non-round payloads remain abstract,
while their dependence on the proof and prior transcript is explicit. -/
structure FsPayloads (μ : Nat) (F G1 G2 GT RandomizerPayload X0Payload
    BridgePayload KzgPayload : Type) where
  randomizer : Proof μ F G1 G2 GT → RandomizerPayload
  x0 : Proof μ F G1 G2 GT → F → X0Payload
  bridge : Proof μ F G1 G2 GT → F → F → (Fin μ → F) → BridgePayload
  kzg : Proof μ F G1 G2 GT → F → F → (Fin μ → F) → F → KzgPayload

/-- Public inputs and abstract verifier relations needed by U4. -/
structure FsStatement (μ : Nat) (F G1 G2 GT RandomizerPayload X0Payload
    BridgePayload KzgPayload : Type) [CommSemiring F]
    [AddCommMonoid G1] [Module F G1] [AddCommMonoid G2] [Module F G2]
    [AddCommMonoid GT] [Module F GT] where
  e : G1 →ₗ[F] G2 →ₗ[F] GT
  srsV : Fin (2 ^ μ) → G2
  srsW : Fin (2 ^ μ) → G1
  acceptV : (Fin (2 ^ μ) → F) → G2 → G2 → Prop
  acceptW : (Fin (2 ^ μ) → F) → G1 → G1 → Prop
  ComA : U4Commitment F G1 GT
  ComB : U4Commitment F G1 GT
  alpha : G1
  beta : G2
  gamma : G2
  delta : G2
  A : Fin (2 ^ μ) → G1
  B : Fin (2 ^ μ) → G2
  C : Fin (2 ^ μ) → G1
  Aic : Fin (2 ^ μ) → G1
  payloads : FsPayloads μ F G1 G2 GT RandomizerPayload X0Payload BridgePayload
    KzgPayload

/-- Answers and input chaining for the consecutive round-stage queries. -/
structure RoundTranscript (μ : Nat) (F : Type) where
  prev : Fin μ → F
  answer : Fin μ → F
  last : F
deriving DecidableEq

/-- The transcript recomputed by the verifier, in the order recorded by
`SnarkpackOracle.lean`. -/
structure FsTranscript (μ : Nat) (F : Type) where
  randomizer : F
  x0 : F
  roundPrev : Fin μ → F
  roundAnswer : Fin μ → F
  bridge : F
  kzg : F
deriving DecidableEq

/-- SnarkPack's notation swap: the GIPA verifier challenge is the inverse of
the random-oracle answer. -/
def gipaChallenge {F : Type} [Inv F] (x : F) : F := x⁻¹

/-- SnarkPack's `c_inv` is the random-oracle answer itself. -/
def gipaChallengeInv {F : Type} (x : F) : F := x

private def queryRounds
    {F G1 GT RandomizerPayload X0Payload BridgePayload KzgPayload : Type}
    (level : Nat) : (μ : Nat) → F → (Fin μ → RoundComs F G1 GT) →
      OracleComp (unifSpec + SnarkpackFsSpec F G1 GT RandomizerPayload X0Payload
        BridgePayload KzgPayload) (RoundTranscript μ F)
  | 0, prev, _ => pure { prev := Fin.elim0, answer := Fin.elim0, last := prev }
  | μ + 1, prev, rounds => do
      let x ← (unifSpec + SnarkpackFsSpec F G1 GT RandomizerPayload X0Payload
        BridgePayload KzgPayload).query
          (Sum.inr (.round level prev (rounds 0)))
      let tail ← queryRounds (level + 1) μ x (fun i => rounds i.succ)
      pure {
        prev := Fin.cases prev tail.prev
        answer := Fin.cases x tail.answer
        last := tail.last
      }

/-- The three U4 commitment values folded by the verifier. -/
structure FoldedValues (M : Type) where
  comA : M
  comB : M
  comT : M

private def foldOne {F G1 GT : Type} [Field F]
    [AddCommGroup G1] [Module F G1] [AddCommGroup GT] [Module F GT]
    (x : F) (coms : RoundComs F G1 GT)
    (acc : FoldedValues (U4Commitment F G1 GT)) :
    FoldedValues (U4Commitment F G1 GT) :=
  { comA := foldCom (gipaChallenge x) coms.LA acc.comA coms.RA
    comB := foldCom (gipaChallenge x) coms.LB acc.comB coms.RB
    comT := foldCom (gipaChallenge x) coms.LT acc.comT coms.RT }

private def foldRounds {F G1 GT : Type} [Field F]
    [AddCommGroup G1] [Module F G1] [AddCommGroup GT] [Module F GT] :
    (μ : Nat) → (Fin μ → F) → (Fin μ → RoundComs F G1 GT) →
      FoldedValues (U4Commitment F G1 GT) →
        FoldedValues (U4Commitment F G1 GT)
  | 0, _, _, acc => acc
  | μ + 1, x, rounds, acc =>
      foldRounds μ (fun i => x i.succ) (fun i => rounds i.succ)
        (foldOne (x 0) (rounds 0) acc)

/-- Commitment values at the terminal verifier leaf. -/
def terminalFold {F G1 G2 GT : Type} [Field F]
    [AddCommGroup G1] [Module F G1] [AddCommGroup GT] [Module F GT]
    {μ : Nat} (ComA ComB : U4Commitment F G1 GT)
    (proof : Proof μ F G1 G2 GT) (x : Fin μ → F) :
    FoldedValues (U4Commitment F G1 GT) :=
  foldRounds μ x proof.rounds
    { comA := ComA, comB := ComB, comT := u4TCommitMap (proof.ipAb, proof.aggC) }

/-- The scalar terminal message checked in the fifth base equation. -/
def terminalR {F : Type} [Field F] {μ : Nat} (randomizer : F)
    (x : Fin μ → F) : F :=
  ∏ i : Fin μ, (1 + x i * randomizer ^ (2 ^ (i : Nat)))

/-- Exact U4 leaf payload: five terminal equations and the two KZG accepts at
the recomputed transcript coefficients (DESIGN §U5d(3); `tipp-mipp.gipa`). -/
def LeafData {F G1 G2 GT RandomizerPayload X0Payload BridgePayload KzgPayload : Type}
    [Field F]
    [AddCommGroup G1] [Module F G1] [AddCommGroup G2] [Module F G2]
    [AddCommGroup GT] [Module F GT] {μ : Nat}
    (stmt : FsStatement μ F G1 G2 GT RandomizerPayload X0Payload BridgePayload
      KzgPayload) (proof : Proof μ F G1 G2 GT) (transcript : FsTranscript μ F) :
    Prop :=
  let folded := terminalFold stmt.ComA stmt.ComB proof transcript.roundAnswer
  stmt.e proof.aFinal proof.vFinal = folded.comA.1.1.1 ∧
  stmt.e proof.wFinal proof.bFinal = folded.comB.1.2.1 ∧
  stmt.e proof.aFinal proof.bFinal = folded.comT.2.1 ∧
  stmt.e proof.cFinal proof.vFinal = folded.comA.1.1.2 ∧
  terminalR transcript.randomizer transcript.roundAnswer • proof.cFinal =
    folded.comT.2.2 ∧
  stmt.acceptV (transcriptCoeffs transcript.roundAnswer 1)
    proof.vFinal proof.vOpening ∧
  stmt.acceptW
    (transcriptCoeffs (fun i => gipaChallenge (transcript.roundAnswer i))
      transcript.randomizer⁻¹) proof.wFinal proof.wOpening

/-- All relations checked by the aggregate verifier. -/
def FsAccepts {F G1 G2 GT RandomizerPayload X0Payload BridgePayload KzgPayload : Type}
    [Field F]
    [AddCommGroup G1] [Module F G1] [AddCommGroup G2] [Module F G2]
    [AddCommGroup GT] [Module F GT] {μ : Nat}
    (stmt : FsStatement μ F G1 G2 GT RandomizerPayload X0Payload BridgePayload
      KzgPayload) (proof : Proof μ F G1 G2 GT) (transcript : FsTranscript μ F) :
    Prop :=
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

/-- Straight-line verifier computation in the stage order randomizer, x0,
rounds, final bridge, KZG (DESIGN §U5d(2); `fs.stage-labels`). -/
def fsVerifier {F G1 G2 GT RandomizerPayload X0Payload BridgePayload KzgPayload :
    Type} [Field F] [AddCommGroup G1] [Module F G1]
    [AddCommGroup G2] [Module F G2] [AddCommGroup GT] [Module F GT] {μ : Nat}
    (stmt : FsStatement μ F G1 G2 GT RandomizerPayload X0Payload BridgePayload
      KzgPayload) (proof : Proof μ F G1 G2 GT) :
    OracleComp (unifSpec + SnarkpackFsSpec F G1 GT RandomizerPayload X0Payload
      BridgePayload KzgPayload) (FsResult μ F G1 G2 GT) := do
  let r ← (unifSpec + SnarkpackFsSpec F G1 GT RandomizerPayload X0Payload
    BridgePayload KzgPayload).query (Sum.inr (.randomizer (stmt.payloads.randomizer proof)))
  let x0 ← (unifSpec + SnarkpackFsSpec F G1 GT RandomizerPayload X0Payload
    BridgePayload KzgPayload).query (Sum.inr (.x0 (stmt.payloads.x0 proof r)))
  let rounds ← queryRounds 0 μ x0 proof.rounds
  let bridge ← (unifSpec + SnarkpackFsSpec F G1 GT RandomizerPayload X0Payload
    BridgePayload KzgPayload).query
      (Sum.inr (.bridge (stmt.payloads.bridge proof r x0 rounds.answer)))
  let z ← (unifSpec + SnarkpackFsSpec F G1 GT RandomizerPayload X0Payload
    BridgePayload KzgPayload).query
      (Sum.inr (.kzg (stmt.payloads.kzg proof r x0 rounds.answer bridge)))
  let transcript : FsTranscript μ F :=
    { randomizer := r
      x0 := x0
      roundPrev := rounds.prev
      roundAnswer := rounds.answer
      bridge := bridge
      kzg := z }
  pure {
    proof := proof
    transcript := transcript
    accept := @ite Bool (FsAccepts stmt proof transcript)
      (Classical.propDecidable _) true false
  }

/-- NMA-style FS game: the adversary chooses a proof and the verifier
recomputes the complete structured transcript. -/
def FsGame {F G1 G2 GT RandomizerPayload X0Payload BridgePayload KzgPayload : Type}
    [Field F] [AddCommGroup G1] [Module F G1]
    [AddCommGroup G2] [Module F G2] [AddCommGroup GT] [Module F GT] {μ : Nat}
    (stmt : FsStatement μ F G1 G2 GT RandomizerPayload X0Payload BridgePayload
      KzgPayload)
    (adv : OracleComp (unifSpec + SnarkpackFsSpec F G1 GT RandomizerPayload
      X0Payload BridgePayload KzgPayload) (Proof μ F G1 G2 GT)) :
    OracleComp (unifSpec + SnarkpackFsSpec F G1 GT RandomizerPayload X0Payload
      BridgePayload KzgPayload) (FsResult μ F G1 G2 GT) := do
  let proof ← adv
  fsVerifier stmt proof

/-- One exact input/answer pair occurs in a query log. -/
def QueryAnswered {ι : Type} {spec : OracleSpec ι} (log : QueryLog spec)
    (t : spec.Domain) (u : spec.Range t) : Prop :=
  (⟨t, u⟩ : (t : spec.Domain) × spec.Range t) ∈ log

/-- Every verifier round query occurs in the log with its chained input and
the answer retained in the output transcript. -/
def RoundQueries {F G1 G2 GT RandomizerPayload X0Payload BridgePayload KzgPayload :
    Type} [Field F] {μ : Nat} (out : FsResult μ F G1 G2 GT)
    (log : QueryLog (unifSpec + SnarkpackFsSpec F G1 GT RandomizerPayload
      X0Payload BridgePayload KzgPayload)) : Prop :=
  ∀ i : Fin μ, QueryAnswered log
    (Sum.inr (.round (i : Nat) (out.transcript.roundPrev i) (out.proof.rounds i)))
    (out.transcript.roundAnswer i)

/-- The separately-accounted bad event that a GIPA random-oracle answer is
zero. -/
def ZeroChallenge {F G1 G2 GT : Type} [Zero F] {μ : Nat}
    (out : FsResult μ F G1 G2 GT) : Prop :=
  ∃ i, out.transcript.roundAnswer i = 0

/-- Postcondition transferred from first-run support into the U5c fork tree
(DESIGN §U5d(3); `fs.challenge-preimage`, `tipp-mipp.gipa`). -/
def accepted_run_leaf_data
    {F G1 G2 GT RandomizerPayload X0Payload BridgePayload KzgPayload : Type}
    [Field F] [AddCommGroup G1] [Module F G1]
    [AddCommGroup G2] [Module F G2] [AddCommGroup GT] [Module F GT] {μ : Nat}
    (stmt : FsStatement μ F G1 G2 GT RandomizerPayload X0Payload BridgePayload
      KzgPayload) (out : FsResult μ F G1 G2 GT)
    (log : QueryLog (unifSpec + SnarkpackFsSpec F G1 GT RandomizerPayload
      X0Payload BridgePayload KzgPayload)) : Prop :=
  out.accept = true →
    RoundQueries out log ∧
    (∀ i, gipaChallenge (out.transcript.roundAnswer i) =
        (out.transcript.roundAnswer i)⁻¹ ∧
      gipaChallengeInv (out.transcript.roundAnswer i) =
        out.transcript.roundAnswer i) ∧
    LeafData stmt out.proof out.transcript ∧
    (ZeroChallenge out ∨ ∀ i, out.transcript.roundAnswer i ≠ 0)

private theorem queryRounds_logged
    {F G1 GT RandomizerPayload X0Payload BridgePayload KzgPayload : Type}
    (level : Nat) (μ : Nat) (prev : F) (rounds : Fin μ → RoundComs F G1 GT)
    {out : RoundTranscript μ F}
    {log : QueryLog (unifSpec + SnarkpackFsSpec F G1 GT RandomizerPayload
      X0Payload BridgePayload KzgPayload)}
    (h : (out, log) ∈ support (replayFirstRun (queryRounds
      (RandomizerPayload := RandomizerPayload) (X0Payload := X0Payload)
      (BridgePayload := BridgePayload) (KzgPayload := KzgPayload)
      level μ prev rounds))) :
    ∀ i : Fin μ, QueryAnswered log
      (Sum.inr (.round (level + (i : Nat)) (out.prev i) (rounds i)))
      (out.answer i) := by
  induction μ generalizing level prev log with
  | zero => intro i; exact Fin.elim0 i
  | succ μ ih =>
      simp [replayFirstRun, queryRounds] at h
      obtain ⟨x, qlog, hq, tail, tlog, ht, hout, hlog⟩ := h
      subst out
      subst log
      intro i
      refine Fin.cases ?_ (fun j => ?_) i
      · have hqlog : qlog = [⟨Sum.inr (.round level prev (rounds 0)), x⟩] := by
          have hqlog' : [⟨Sum.inr (.round level prev (rounds 0)), x⟩] = qlog := by
            simpa [OracleSpec.loggingOracle, QueryImpl.withLogging_apply] using hq
          exact hqlog'.symm
        subst qlog
        simp [QueryAnswered]
      · apply List.mem_append_right qlog
        change QueryAnswered tlog
          (Sum.inr (.round (level + (j.succ : Nat)) (tail.prev j) (rounds j.succ)))
          (tail.answer j)
        have hsucc : (j.succ : Nat) = (j : Nat) + 1 := rfl
        have hlevel : level + ((j : Nat) + 1) = level + 1 + (j : Nat) := by omega
        rw [hsucc, hlevel]
        exact ih (level + 1) x (fun k => rounds k.succ) ht j

private theorem fsVerifier_logged
    {F G1 G2 GT RandomizerPayload X0Payload BridgePayload KzgPayload : Type}
    [Field F] [AddCommGroup G1] [Module F G1]
    [AddCommGroup G2] [Module F G2] [AddCommGroup GT] [Module F GT] {μ : Nat}
    (stmt : FsStatement μ F G1 G2 GT RandomizerPayload X0Payload BridgePayload
      KzgPayload) (proof : Proof μ F G1 G2 GT)
    {out : FsResult μ F G1 G2 GT}
    {log : QueryLog (unifSpec + SnarkpackFsSpec F G1 GT RandomizerPayload
      X0Payload BridgePayload KzgPayload)}
    (h : (out, log) ∈ support (replayFirstRun (fsVerifier stmt proof))) :
    RoundQueries out log ∧
      (out.accept = true → LeafData stmt out.proof out.transcript) := by
  simp [replayFirstRun, fsVerifier] at h
  obtain ⟨r, rLog, hr, x0, x0Log, hx0, rounds, roundLog, hrounds,
    bridge, bridgeLog, hbridge, z, zLog, hz, hout, hlog⟩ := h
  subst out
  subst log
  constructor
  · intro i
    apply List.mem_append_right rLog
    apply List.mem_append_right x0Log
    apply List.mem_append_left
    have hi := queryRounds_logged
      (RandomizerPayload := RandomizerPayload) (X0Payload := X0Payload)
      (BridgePayload := BridgePayload) (KzgPayload := KzgPayload)
      0 μ x0 proof.rounds hrounds i
    have hzero : 0 + (i : Nat) = (i : Nat) := Nat.zero_add _
    rw [hzero] at hi
    exact hi
  · intro ha
    have hacc : FsAccepts stmt proof
        { randomizer := r, x0 := x0, roundPrev := rounds.prev,
          roundAnswer := rounds.answer, bridge := bridge, kzg := z } := by
      simpa using ha
    exact hacc.1

/-- Every accepting first-run support point carries the exact round queries,
challenge swap, U4 leaf payload, and explicit zero-challenge split required by
U5d(3). -/
theorem accepted_supports_leaf_data
    {F G1 G2 GT RandomizerPayload X0Payload BridgePayload KzgPayload : Type}
    [Field F] [AddCommGroup G1] [Module F G1]
    [AddCommGroup G2] [Module F G2] [AddCommGroup GT] [Module F GT] {μ : Nat}
    (stmt : FsStatement μ F G1 G2 GT RandomizerPayload X0Payload BridgePayload
      KzgPayload)
    (adv : OracleComp (unifSpec + SnarkpackFsSpec F G1 GT RandomizerPayload
      X0Payload BridgePayload KzgPayload) (Proof μ F G1 G2 GT))
    {out : FsResult μ F G1 G2 GT}
    {log : QueryLog (unifSpec + SnarkpackFsSpec F G1 GT RandomizerPayload
      X0Payload BridgePayload KzgPayload)}
    (h : (out, log) ∈ support (replayFirstRun (FsGame stmt adv))) :
    accepted_run_leaf_data stmt out log := by
  classical
  simp [replayFirstRun, FsGame] at h
  obtain ⟨proof, advLog, hadv, verifierLog, hver, hlog⟩ := h
  subst log
  intro haccept
  have hv := fsVerifier_logged stmt proof hver
  refine ⟨?_, ?_, hv.2 haccept, ?_⟩
  · intro i
    apply List.mem_append_right advLog
    exact hv.1 i
  · intro i
    exact ⟨rfl, rfl⟩
  · by_cases hz : ZeroChallenge out
    · exact Or.inl hz
    · exact Or.inr (fun i hi => hz ⟨i, hi⟩)

/-- End-to-end U5c transfer demonstration. This deliberately stops at a
`RunTree` whose runs carry `accepted_run_leaf_data`; U5d(4) will assemble the
corresponding product-lane `AcceptTree`. -/
theorem fsGame_forkTree_leaf_data
    {F G1 G2 GT RandomizerPayload X0Payload BridgePayload KzgPayload : Type}
    [Field F] [AddCommGroup G1] [Module F G1]
    [AddCommGroup G2] [Module F G2] [AddCommGroup GT] [Module F GT] {μ : Nat}
    (stmt : FsStatement μ F G1 G2 GT RandomizerPayload X0Payload BridgePayload
      KzgPayload)
    (adv : OracleComp (unifSpec + SnarkpackFsSpec F G1 GT RandomizerPayload
      X0Payload BridgePayload KzgPayload) (Proof μ F G1 G2 GT))
    [((unifSpec + SnarkpackFsSpec F G1 GT RandomizerPayload X0Payload
      BridgePayload KzgPayload)).DecidableEq]
    [IsUniformSpec (unifSpec + SnarkpackFsSpec F G1 GT RandomizerPayload
      X0Payload BridgePayload KzgPayload)]
    [∀ j, SampleableType ((unifSpec + SnarkpackFsSpec F G1 GT RandomizerPayload
      X0Payload BridgePayload KzgPayload).Range j)]
    [unifSpec ⊂ₒ (unifSpec + SnarkpackFsSpec F G1 GT RandomizerPayload
      X0Payload BridgePayload KzgPayload)]
    (depth : Nat)
    (qb : (unifSpec + SnarkpackFsSpec F G1 GT RandomizerPayload X0Payload
      BridgePayload KzgPayload).Domain → Nat)
    (i : (unifSpec + SnarkpackFsSpec F G1 GT RandomizerPayload X0Payload
      BridgePayload KzgPayload).Domain)
    (cf : Nat → FsResult μ F G1 G2 GT → Option (Fin (qb i + 1)))
    {tree : RunTree (unifSpec + SnarkpackFsSpec F G1 GT RandomizerPayload
      X0Payload BridgePayload KzgPayload) (FsResult μ F G1 G2 GT) depth}
    (h : some tree ∈ support (forkTree depth (FsGame stmt adv) qb i cf)) :
    TreeConsistent (FsGame stmt adv) qb i cf 0 none tree ∧
      tree.All (fun run => accepted_run_leaf_data stmt run.1 run.2) :=
  forkTree_propertyTransfer depth (FsGame stmt adv) qb i cf
    (accepted_run_leaf_data stmt)
    (fun {_out _log} hrun => accepted_supports_leaf_data stmt adv hrun) h

end

end Ipp
