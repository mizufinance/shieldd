import Ipp.ShippingHashFsCoupling

/-!
Deterministic execution witnesses for the deployed byte-valued challenge
program.  These records expose the sampler equations already executed by
`shippingTranscriptOptionOracle`; they contain no verifier-acceptance or
cryptographic-security premise.
-/

open OracleSpec OracleComp

namespace Ipp.ShippingHashExecutionTrace

noncomputable section

open Ipp.Bls12377

/-- Deterministic interpretation of one bounded shipping challenge query. -/
def pointSample
    {G1 G2 GT : Type}
    (blake2b : List UInt8 → Ipp.ShippingHashGame.DigestBytes)
    (encode : Ipp.ChallengePoint Fr G1 G2 GT → List UInt8)
    (mkPoint : Nat → Ipp.ChallengePoint Fr G1 G2 GT)
    (acceptable : Fr → Bool)
    (fuel : Nat) :
    Option (Fr × Nat) :=
  evalWithAnswerFn blake2b
    (Ipp.ShippingHashGame.queryDecodedPointOracle
      encode mkPoint acceptable fuel 0)

/-- Exact byte-level facts carried by one successful bounded point sample.
The rejected prefix is explicit because the deployed trace records every
attempt, not only the final accepted nonce. -/
structure SuccessfulPointSample
    {G1 G2 GT : Type}
    (blake2b : List UInt8 → Ipp.ShippingHashGame.DigestBytes)
    (encode : Ipp.ChallengePoint Fr G1 G2 GT → List UInt8)
    (mkPoint : Nat → Ipp.ChallengePoint Fr G1 G2 GT)
    (acceptable : Fr → Bool)
    (fuel : Nat)
    (value : Fr)
    (nonce : Nat) : Prop where
  nonce_lt_fuel : nonce < fuel
  decode :
    Ipp.ShippingHashGame.shippingDecodeFr
        (blake2b (encode (mkPoint nonce))) =
      some value
  accepted : acceptable value = true
  rejectedBefore : ∀ prior, prior < nonce →
    ∀ priorValue,
      Ipp.ShippingHashGame.shippingDecodeFr
          (blake2b (encode (mkPoint prior))) =
        some priorValue →
      acceptable priorValue = false

private theorem successfulPointSampleFrom_of_eval_eq_some
    {G1 G2 GT : Type}
    (blake2b : List UInt8 → Ipp.ShippingHashGame.DigestBytes)
    (encode : Ipp.ChallengePoint Fr G1 G2 GT → List UInt8)
    (mkPoint : Nat → Ipp.ChallengePoint Fr G1 G2 GT)
    (acceptable : Fr → Bool)
    (fuel start : Nat)
    {value : Fr} {nonce : Nat}
    (hexec :
      evalWithAnswerFn blake2b
          (Ipp.ShippingHashGame.queryDecodedPointOracle
            encode mkPoint acceptable fuel start) =
        some (value, nonce)) :
    start ≤ nonce ∧ nonce < start + fuel ∧
      Ipp.ShippingHashGame.shippingDecodeFr
          (blake2b (encode (mkPoint nonce))) =
        some value ∧
      acceptable value = true ∧
      ∀ prior, start ≤ prior → prior < nonce →
        ∀ priorValue,
          Ipp.ShippingHashGame.shippingDecodeFr
              (blake2b (encode (mkPoint prior))) =
            some priorValue →
          acceptable priorValue = false := by
  induction fuel generalizing start with
  | zero =>
      simp only [Ipp.ShippingHashGame.queryDecodedPointOracle,
        evalWithAnswerFn_pure] at hexec
      simp at hexec
  | succ fuel ih =>
      simp only [Ipp.ShippingHashGame.queryDecodedPointOracle,
        evalWithAnswerFn_bind] at hexec
      rw [show
        evalWithAnswerFn blake2b
            (liftM (Ipp.ShippingHashGame.Blake2bOracleSpec.query
              (encode (mkPoint start)))) =
          blake2b (encode (mkPoint start)) from
        simulateQ_spec_query
          (impl := QueryImpl.ofFn blake2b) (encode (mkPoint start))] at hexec
      rw [Ipp.ShippingHashGame.shippingDecodeFr_eq_some] at hexec
      let current :=
        Ipp.ShippingScalarReduction.reduceFr
          (blake2b (encode (mkPoint start)))
      by_cases haccepted : acceptable current = true
      · simp only [current] at haccepted
        simp only [haccepted, ↓reduceIte, evalWithAnswerFn_pure] at hexec
        have hpairs :
            (current, start) = (value, nonce) := by
          simpa only [current] using Option.some.inj hexec
        have hpairs' : current = value ∧ start = nonce := by
          simpa only [Prod.mk.injEq] using hpairs
        rcases hpairs' with ⟨rfl, rfl⟩
        refine ⟨Nat.le_refl _, by omega, ?_, ?_, ?_⟩
        · exact Ipp.ShippingHashGame.shippingDecodeFr_eq_some _
        · simpa only [current] using haccepted
        · intro prior _ hprior _ _
          omega
      · have hrejected : acceptable current = false :=
          Bool.eq_false_of_not_eq_true haccepted
        simp only [current] at hrejected
        simp only [hrejected, Bool.false_eq_true, if_false] at hexec
        obtain ⟨hstart, hnonce, hdecode, haccepted, hprior⟩ :=
          ih (start + 1) hexec
        refine ⟨by omega, by omega, hdecode, haccepted, ?_⟩
        intro prior hstartPrior hpriorNonce priorValue hpriorDecode
        by_cases hfirst : prior = start
        · subst prior
          have hvalue :
              Ipp.ShippingScalarReduction.reduceFr
                  (blake2b (encode (mkPoint start))) =
                priorValue := by
            exact Option.some.inj
              ((Ipp.ShippingHashGame.shippingDecodeFr_eq_some _).symm.trans
                hpriorDecode)
          simpa only [hvalue] using hrejected
        · exact hprior prior (by omega) hpriorNonce priorValue hpriorDecode

/-- A successful deterministic point sample determines the exact accepted
digest, every rejected predecessor, and a nonce inside the supplied fuel. -/
theorem successfulPointSample_of_eq_some
    {G1 G2 GT : Type}
    (blake2b : List UInt8 → Ipp.ShippingHashGame.DigestBytes)
    (encode : Ipp.ChallengePoint Fr G1 G2 GT → List UInt8)
    (mkPoint : Nat → Ipp.ChallengePoint Fr G1 G2 GT)
    (acceptable : Fr → Bool)
    (fuel : Nat)
    {value : Fr} {nonce : Nat}
    (hexec :
      pointSample blake2b encode mkPoint acceptable fuel =
        some (value, nonce)) :
    SuccessfulPointSample blake2b encode mkPoint acceptable fuel
      value nonce := by
  obtain ⟨_, hnonce, hdecode, haccepted, hbefore⟩ :=
    successfulPointSampleFrom_of_eval_eq_some
      blake2b encode mkPoint acceptable fuel 0
        (by simpa only [pointSample] using hexec)
  exact {
    nonce_lt_fuel := by simpa using hnonce
    decode := hdecode
    accepted := haccepted
    rejectedBefore := fun prior hlt =>
      hbefore prior (Nat.zero_le _) hlt
  }

/-- Chronological predecessor selected by the recursive shipping round
program.  This is definitionally the same schedule used by the extracted
TIPP/MIPP verifier. -/
def priorAt {n : Nat} (answer : Fin n → Fr) (initial : Fr) : Nat → Fr
  | 0 => initial
  | k + 1 => if hk : k < n then answer ⟨k, hk⟩ else initial

private theorem priorAt_cases_succ
    {n : Nat} (initial value : Fr) (tail : Fin n → Fr)
    (i : Fin n) :
    priorAt (Fin.cases value tail) initial i.succ.val =
      priorAt tail value i.val := by
  rcases i with ⟨i, hi⟩
  cases i with
  | zero =>
      rfl
  | succ i =>
      simp only [Fin.succ_mk, priorAt]
      rw [dif_pos (by omega), dif_pos (by omega)]
      rfl

private theorem priorAt_cases_last
    {n : Nat} (initial value : Fr) (tail : Fin n → Fr) :
    priorAt (Fin.cases value tail) initial (n + 1) =
      priorAt tail value n := by
  cases n with
  | zero =>
      rfl
  | succ n =>
      simp only [priorAt]
      rw [dif_pos (by omega), dif_pos (by omega)]
      rfl

/-- Every deterministic sampler result executed by one successful recursive
round program, together with its exact chronological chaining. -/
structure RoundExecution
    {G1 G2 GT : Type}
    (blake2b : List UInt8 → Ipp.ShippingHashGame.DigestBytes)
    (encode : Ipp.ChallengePoint Fr G1 G2 GT → List UInt8)
    (fuel : Nat)
    {μ : Nat}
    (initial : Fr)
    (rounds : Fin μ → Ipp.RoundComs G1 GT)
    (transcript : Ipp.RoundTranscript μ Fr) : Prop where
  sample : ∀ i : Fin μ,
    pointSample blake2b encode
        (fun nonce => .round (transcript.prev i) (rounds i) nonce)
        Ipp.nonzeroB fuel =
      some (transcript.answer i, transcript.nonce i)
  prevExact : ∀ i : Fin μ,
    transcript.prev i = priorAt transcript.answer initial i.val
  lastExact :
    transcript.last = priorAt transcript.answer initial μ

/-- The deterministic round program exposes every successful query it
executed.  No oracle-distribution argument is involved: `blake2b` is one
fixed total answer function. -/
theorem roundExecution_of_eval_eq_some
    {G1 G2 GT : Type}
    (blake2b : List UInt8 → Ipp.ShippingHashGame.DigestBytes)
    (encode : Ipp.ChallengePoint Fr G1 G2 GT → List UInt8)
    (fuel : Nat)
    {μ : Nat}
    (initial : Fr)
    (rounds : Fin μ → Ipp.RoundComs G1 GT)
    (transcript : Ipp.RoundTranscript μ Fr)
    (hexec :
      evalWithAnswerFn blake2b
          (Ipp.ShippingHashGame.shippingQueryRoundsOracle
            encode fuel μ initial rounds) =
        some transcript) :
    RoundExecution blake2b encode fuel initial rounds transcript := by
  induction μ generalizing initial with
  | zero =>
      simp only [Ipp.ShippingHashGame.shippingQueryRoundsOracle,
        evalWithAnswerFn_pure] at hexec
      cases hexec
      exact {
        sample := fun i => Fin.elim0 i
        prevExact := fun i => Fin.elim0 i
        lastExact := rfl
      }
  | succ μ ih =>
      simp only [Ipp.ShippingHashGame.shippingQueryRoundsOracle,
        evalWithAnswerFn_bind] at hexec
      generalize hhead :
          evalWithAnswerFn blake2b
            (Ipp.ShippingHashGame.queryDecodedPointOracle encode
              (fun nonce => .round initial (rounds 0) nonce)
              Ipp.nonzeroB fuel 0) = head at hexec
      cases head with
      | none =>
          simp only [evalWithAnswerFn_pure] at hexec
          simp at hexec
      | some pair =>
          rcases pair with ⟨value, nonce⟩
          simp only [evalWithAnswerFn_bind] at hexec
          generalize htail :
              evalWithAnswerFn blake2b
                (Ipp.ShippingHashGame.shippingQueryRoundsOracle
                  encode fuel μ value (fun i => rounds i.succ)) = tailResult
              at hexec
          cases tailResult with
          | none =>
              simp only [evalWithAnswerFn_pure] at hexec
              simp at hexec
          | some tail =>
              simp only [evalWithAnswerFn_pure] at hexec
              have tailExecution :=
                ih value (fun i => rounds i.succ) tail htail
              have htranscript :
                  transcript = {
                    prev := Fin.cases initial tail.prev
                    answer := Fin.cases value tail.answer
                    nonce := Fin.cases nonce tail.nonce
                    last := tail.last } := by
                exact Option.some.inj hexec |>.symm
              subst transcript
              refine {
                sample := ?_
                prevExact := ?_
                lastExact := ?_
              }
              · intro i
                refine Fin.cases ?_ (fun j => ?_) i
                · simpa [pointSample] using hhead
                · simpa using tailExecution.sample j
              · intro i
                refine Fin.cases ?_ (fun j => ?_) i
                · rfl
                · change tail.prev j =
                    priorAt (Fin.cases value tail.answer) initial j.succ.val
                  rw [tailExecution.prevExact j]
                  exact (priorAt_cases_succ initial value tail.answer j).symm
              · rw [tailExecution.lastExact]
                exact (priorAt_cases_last initial value tail.answer).symm

/-- Exact sampler equations executed by one successful complete shipping
transcript computation. -/
structure TranscriptExecution
    {G1 G2 GT : Type}
    [AddCommGroup G1] [Module Fr G1]
    [AddCommGroup G2] [Module Fr G2]
    [AddCommGroup GT] [Module Fr GT]
    {μ : Nat}
    (blake2b : List UInt8 → Ipp.ShippingHashGame.DigestBytes)
    (encode : Ipp.ChallengePoint Fr G1 G2 GT → List UInt8)
    (stmt : Ipp.FsStatement μ Fr G1 G2 GT)
    (proof : Ipp.Proof μ Fr G1 G2 GT)
    (transcript : Ipp.FsTranscript μ Fr) : Prop where
  randomizer :
    pointSample blake2b encode
        (fun nonce => .randomizer {
          comA := proof.ComA.1
          comB := proof.ComB
          comC := proof.ComA.2
        } nonce)
        Ipp.randomizerAcceptedB stmt.rejectionFuel =
      some (transcript.randomizer, transcript.randomizerNonce)
  x0 :
    pointSample blake2b encode
        (fun nonce => .x0 {
          r := transcript.randomizer
          comA := proof.ComA.1
          comB := proof.ComB
          comC := proof.ComA.2
          ipAb := proof.ipAb
          aggC := proof.aggC
        } nonce)
        Ipp.nonzeroB stmt.rejectionFuel =
      some (transcript.x0, transcript.x0Nonce)
  round : ∀ i : Fin μ,
    pointSample blake2b encode
        (fun nonce => .round
          (transcript.roundPrev i) (proof.rounds i) nonce)
        Ipp.nonzeroB stmt.rejectionFuel =
      some (transcript.roundAnswer i, transcript.roundNonce i)
  roundPrev : ∀ i : Fin μ,
    transcript.roundPrev i =
      priorAt transcript.roundAnswer transcript.x0 i.val
  bridge :
    pointSample blake2b encode
        (fun nonce => .bridge {
          lastRawChallenge :=
            priorAt transcript.roundAnswer transcript.x0 μ
          vFinal := proof.vFinal
          wFinal := proof.wFinal
          aFinal := proof.aFinal
          bFinal := proof.bFinal
          cFinal := proof.cFinal
        } nonce)
        Ipp.nonzeroB stmt.rejectionFuel =
      some (transcript.bridge, transcript.bridgeNonce)
  kzg :
    pointSample blake2b encode
        (fun nonce => .kzg {
          bridgeChallenge := transcript.bridge
          vFinal := proof.vFinal
          wFinal := proof.wFinal
        } nonce)
        Ipp.nonzeroB stmt.rejectionFuel =
      some (transcript.kzg, transcript.kzgNonce)

/- Exact successful-attempt facts for every stage of one transcript
execution.  These projections are the handwritten target for the retained
production challenge trace. -/
namespace TranscriptExecution

variable
    {G1 G2 GT : Type}
    [AddCommGroup G1] [Module Fr G1]
    [AddCommGroup G2] [Module Fr G2]
    [AddCommGroup GT] [Module Fr GT]
    {μ : Nat}
    {blake2b : List UInt8 → Ipp.ShippingHashGame.DigestBytes}
    {encode : Ipp.ChallengePoint Fr G1 G2 GT → List UInt8}
    {stmt : Ipp.FsStatement μ Fr G1 G2 GT}
    {proof : Ipp.Proof μ Fr G1 G2 GT}
    {transcript : Ipp.FsTranscript μ Fr}

theorem randomizerSuccess
    (execution :
      TranscriptExecution blake2b encode stmt proof transcript) :
    SuccessfulPointSample blake2b encode
        (fun nonce => .randomizer {
          comA := proof.ComA.1
          comB := proof.ComB
          comC := proof.ComA.2
        } nonce)
        Ipp.randomizerAcceptedB stmt.rejectionFuel
        transcript.randomizer transcript.randomizerNonce :=
  successfulPointSample_of_eq_some
    blake2b encode
      (fun nonce => .randomizer {
        comA := proof.ComA.1
        comB := proof.ComB
        comC := proof.ComA.2
      } nonce)
      Ipp.randomizerAcceptedB stmt.rejectionFuel execution.randomizer

theorem x0Success
    (execution :
      TranscriptExecution blake2b encode stmt proof transcript) :
    SuccessfulPointSample blake2b encode
        (fun nonce => .x0 {
          r := transcript.randomizer
          comA := proof.ComA.1
          comB := proof.ComB
          comC := proof.ComA.2
          ipAb := proof.ipAb
          aggC := proof.aggC
        } nonce)
        Ipp.nonzeroB stmt.rejectionFuel transcript.x0 transcript.x0Nonce :=
  successfulPointSample_of_eq_some
    blake2b encode
      (fun nonce => .x0 {
        r := transcript.randomizer
        comA := proof.ComA.1
        comB := proof.ComB
        comC := proof.ComA.2
        ipAb := proof.ipAb
        aggC := proof.aggC
      } nonce)
      Ipp.nonzeroB stmt.rejectionFuel execution.x0

theorem roundSuccess
    (execution :
      TranscriptExecution blake2b encode stmt proof transcript)
    (i : Fin μ) :
    SuccessfulPointSample blake2b encode
        (fun nonce => .round
          (transcript.roundPrev i) (proof.rounds i) nonce)
        Ipp.nonzeroB stmt.rejectionFuel
        (transcript.roundAnswer i) (transcript.roundNonce i) :=
  successfulPointSample_of_eq_some
    blake2b encode
      (fun nonce => .round
        (transcript.roundPrev i) (proof.rounds i) nonce)
      Ipp.nonzeroB stmt.rejectionFuel (execution.round i)

theorem bridgeSuccess
    (execution :
      TranscriptExecution blake2b encode stmt proof transcript) :
    SuccessfulPointSample blake2b encode
        (fun nonce => .bridge {
          lastRawChallenge :=
            priorAt transcript.roundAnswer transcript.x0 μ
          vFinal := proof.vFinal
          wFinal := proof.wFinal
          aFinal := proof.aFinal
          bFinal := proof.bFinal
          cFinal := proof.cFinal
        } nonce)
        Ipp.nonzeroB stmt.rejectionFuel
        transcript.bridge transcript.bridgeNonce :=
  successfulPointSample_of_eq_some
    blake2b encode
      (fun nonce => .bridge {
        lastRawChallenge :=
          priorAt transcript.roundAnswer transcript.x0 μ
        vFinal := proof.vFinal
        wFinal := proof.wFinal
        aFinal := proof.aFinal
        bFinal := proof.bFinal
        cFinal := proof.cFinal
      } nonce)
      Ipp.nonzeroB stmt.rejectionFuel execution.bridge

theorem kzgSuccess
    (execution :
      TranscriptExecution blake2b encode stmt proof transcript) :
    SuccessfulPointSample blake2b encode
        (fun nonce => .kzg {
          bridgeChallenge := transcript.bridge
          vFinal := proof.vFinal
          wFinal := proof.wFinal
        } nonce)
        Ipp.nonzeroB stmt.rejectionFuel transcript.kzg transcript.kzgNonce :=
  successfulPointSample_of_eq_some
    blake2b encode
      (fun nonce => .kzg {
        bridgeChallenge := transcript.bridge
        vFinal := proof.vFinal
        wFinal := proof.wFinal
      } nonce)
      Ipp.nonzeroB stmt.rejectionFuel execution.kzg

theorem randomizer_ne_zero
    (execution :
      TranscriptExecution blake2b encode stmt proof transcript) :
    transcript.randomizer ≠ 0 := by
  have hadmissible :
      transcript.randomizer ≠ 0 ∧ transcript.randomizer ≠ 1 := by
    simpa only [Ipp.randomizerAcceptedB, decide_eq_true_eq] using
      execution.randomizerSuccess.accepted
  exact hadmissible.1

theorem x0_ne_zero
    (execution :
      TranscriptExecution blake2b encode stmt proof transcript) :
    transcript.x0 ≠ 0 := by
  simpa only [Ipp.nonzeroB, decide_eq_true_eq] using
    execution.x0Success.accepted

theorem round_ne_zero
    (execution :
      TranscriptExecution blake2b encode stmt proof transcript)
    (i : Fin μ) :
    transcript.roundAnswer i ≠ 0 := by
  simpa only [Ipp.nonzeroB, decide_eq_true_eq] using
    (execution.roundSuccess i).accepted

theorem bridge_ne_zero
    (execution :
      TranscriptExecution blake2b encode stmt proof transcript) :
    transcript.bridge ≠ 0 := by
  simpa only [Ipp.nonzeroB, decide_eq_true_eq] using
    execution.bridgeSuccess.accepted

theorem kzg_ne_zero
    (execution :
      TranscriptExecution blake2b encode stmt proof transcript) :
    transcript.kzg ≠ 0 := by
  simpa only [Ipp.nonzeroB, decide_eq_true_eq] using
    execution.kzgSuccess.accepted

end TranscriptExecution

/-- A successful deterministic execution of
`shippingTranscriptOptionOracle` carries its complete sampler trace. -/
theorem transcriptExecution_of_eval_eq_some
    {G1 G2 GT : Type}
    [AddCommGroup G1] [Module Fr G1]
    [AddCommGroup G2] [Module Fr G2]
    [AddCommGroup GT] [Module Fr GT]
    {μ : Nat}
    (blake2b : List UInt8 → Ipp.ShippingHashGame.DigestBytes)
    (encode : Ipp.ChallengePoint Fr G1 G2 GT → List UInt8)
    (stmt : Ipp.FsStatement μ Fr G1 G2 GT)
    (proof : Ipp.Proof μ Fr G1 G2 GT)
    (transcript : Ipp.FsTranscript μ Fr)
    (hexec :
      evalWithAnswerFn blake2b
          (Ipp.ShippingHashGame.shippingTranscriptOptionOracle
            encode stmt proof) =
        some transcript) :
    TranscriptExecution blake2b encode stmt proof transcript := by
  unfold Ipp.ShippingHashGame.shippingTranscriptOptionOracle at hexec
  simp only [evalWithAnswerFn_bind] at hexec
  generalize hrandomizer :
      evalWithAnswerFn blake2b
        (Ipp.ShippingHashGame.queryDecodedPointOracle encode
          (fun nonce => .randomizer {
            comA := proof.ComA.1
            comB := proof.ComB
            comC := proof.ComA.2
          } nonce)
          Ipp.randomizerAcceptedB stmt.rejectionFuel 0) =
        randomizerSample at hexec
  cases randomizerSample with
  | none =>
      simp only [evalWithAnswerFn_pure] at hexec
      simp at hexec
  | some randomizerPair =>
      rcases randomizerPair with ⟨randomizer, randomizerNonce⟩
      simp only [evalWithAnswerFn_bind] at hexec
      generalize hx0 :
          evalWithAnswerFn blake2b
            (Ipp.ShippingHashGame.queryDecodedPointOracle encode
              (fun nonce => .x0 {
                r := randomizer
                comA := proof.ComA.1
                comB := proof.ComB
                comC := proof.ComA.2
                ipAb := proof.ipAb
                aggC := proof.aggC
              } nonce)
              Ipp.nonzeroB stmt.rejectionFuel 0) =
            x0Sample at hexec
      cases x0Sample with
      | none =>
          simp only [evalWithAnswerFn_pure] at hexec
          simp at hexec
      | some x0Pair =>
          rcases x0Pair with ⟨x0, x0Nonce⟩
          simp only [evalWithAnswerFn_bind] at hexec
          generalize hrounds :
              evalWithAnswerFn blake2b
                (Ipp.ShippingHashGame.shippingQueryRoundsOracle
                  encode stmt.rejectionFuel μ x0 proof.rounds) =
                roundSample at hexec
          cases roundSample with
          | none =>
              simp only [evalWithAnswerFn_pure] at hexec
              simp at hexec
          | some rounds =>
              simp only [evalWithAnswerFn_bind] at hexec
              generalize hbridge :
                  evalWithAnswerFn blake2b
                    (Ipp.ShippingHashGame.queryDecodedPointOracle encode
                      (fun nonce => .bridge {
                        lastRawChallenge := rounds.last
                        vFinal := proof.vFinal
                        wFinal := proof.wFinal
                        aFinal := proof.aFinal
                        bFinal := proof.bFinal
                        cFinal := proof.cFinal
                      } nonce)
                      Ipp.nonzeroB stmt.rejectionFuel 0) =
                    bridgeSample at hexec
              cases bridgeSample with
              | none =>
                  simp only [evalWithAnswerFn_pure] at hexec
                  simp at hexec
              | some bridgePair =>
                  rcases bridgePair with ⟨bridge, bridgeNonce⟩
                  simp only [evalWithAnswerFn_bind] at hexec
                  generalize hkzg :
                      evalWithAnswerFn blake2b
                        (Ipp.ShippingHashGame.queryDecodedPointOracle encode
                          (fun nonce => .kzg {
                            bridgeChallenge := bridge
                            vFinal := proof.vFinal
                            wFinal := proof.wFinal
                          } nonce)
                          Ipp.nonzeroB stmt.rejectionFuel 0) =
                        kzgSample at hexec
                  cases kzgSample with
                  | none =>
                      simp only [evalWithAnswerFn_pure] at hexec
                      simp at hexec
                  | some kzgPair =>
                      rcases kzgPair with ⟨kzg, kzgNonce⟩
                      simp only [evalWithAnswerFn_pure] at hexec
                      have htranscript :
                          transcript = {
                            randomizer := randomizer
                            randomizerNonce := randomizerNonce
                            x0 := x0
                            x0Nonce := x0Nonce
                            roundPrev := rounds.prev
                            roundAnswer := rounds.answer
                            roundNonce := rounds.nonce
                            bridge := bridge
                            bridgeNonce := bridgeNonce
                            kzg := kzg
                            kzgNonce := kzgNonce } := by
                        exact Option.some.inj hexec |>.symm
                      subst transcript
                      have roundExecution :=
                        roundExecution_of_eval_eq_some blake2b encode
                          stmt.rejectionFuel x0 proof.rounds rounds hrounds
                      exact {
                        randomizer := by
                          simpa [pointSample] using hrandomizer
                        x0 := by simpa [pointSample] using hx0
                        round := roundExecution.sample
                        roundPrev := roundExecution.prevExact
                        bridge := by
                          rw [roundExecution.lastExact] at hbridge
                          simpa [pointSample] using hbridge
                        kzg := by simpa [pointSample] using hkzg
                      }

#print axioms roundExecution_of_eval_eq_some
#print axioms transcriptExecution_of_eval_eq_some

end

end Ipp.ShippingHashExecutionTrace
