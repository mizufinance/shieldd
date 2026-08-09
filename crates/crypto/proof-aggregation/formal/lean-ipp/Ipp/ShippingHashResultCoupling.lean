import Ipp.ShippingHashCacheCoupling

/-!
Cache-preserving coupling from decoded digest blocks to the structured
field-valued Fiat--Shamir execution.
-/

open OracleSpec OracleComp ENNReal
open scoped OracleSpec.PrimitiveQuery ENNReal BigOperators

namespace Ipp.ShippingHashGame

noncomputable section

local instance : Fact Ipp.Bls12377.scalarModulus.Prime :=
  ⟨Ipp.Bls12377.arithmeticFacts.scalarPrime⟩

abbrev ResultCache (G1 G2 GT : Type) :=
  (ResultOracleSpec G1 G2 GT).QueryCache

/-- A source distribution interpreted as one consistently cached result per
nonce-free challenge payload. Exhaustion (`none`) is cached as well, exactly
as in the factored lazy random oracle. -/
def cachedResultSample
    {G1 G2 GT : Type}
    [DecidableEq G1] [DecidableEq G2] [DecidableEq GT]
    (source :
      ChallengeBase Ipp.Bls12377.Fr G1 G2 GT →
        ProbComp (Option Ipp.Bls12377.Fr))
    (base : ChallengeBase Ipp.Bls12377.Fr G1 G2 GT) :
    StateComp (ResultCache G1 G2 GT) (Option Ipp.Bls12377.Fr) :=
  fun cache => (QueryImpl.withCaching source base).run cache

/-- Successful-output domination lifts through one exact full-result cache
query, including equality of the final cache on every successful output. -/
theorem cachedResultSample_someDom
    {G1 G2 GT : Type}
    [DecidableEq G1] [DecidableEq G2] [DecidableEq GT]
    {left right :
      ChallengeBase Ipp.Bls12377.Fr G1 G2 GT →
        ProbComp (Option Ipp.Bls12377.Fr)}
    (hsource : ∀ base, SomeDom (left base) (right base))
    (base : ChallengeBase Ipp.Bls12377.Fr G1 G2 GT) :
    StateSomeDom
      (cachedResultSample left base)
      (cachedResultSample right base) := by
  intro initial value final
  unfold cachedResultSample
  cases hcached : initial base with
  | some cached =>
      rw [QueryImpl.withCaching_run_some left hcached,
        QueryImpl.withCaching_run_some right hcached]
  | none =>
      rw [QueryImpl.withCaching_run_none left hcached,
        QueryImpl.withCaching_run_none right hcached]
      simp only [map_eq_bind_pure_comp]
      rw [probOutput_bind_eq_tsum, probOutput_bind_eq_tsum]
      apply ENNReal.tsum_le_tsum
      intro sampled
      cases sampled with
      | none =>
          simp only [Function.comp_apply]
          have hzero :
              Pr[= (some value, final) |
                (pure
                  (none,
                    initial.cacheQuery base
                      (none : Option Ipp.Bls12377.Fr)) :
                  ProbComp
                    (Option Ipp.Bls12377.Fr ×
                      ResultCache G1 G2 GT))] = 0 := by
            simp
          rw [hzero, mul_zero, mul_zero]
      | some sampled =>
          exact mul_le_mul' (hsource base sampled) le_rfl

#print axioms cachedResultSample_someDom

/-- All GIPA rounds over the exact full-result cache used by
`QueryImpl.withCaching`. -/
def cachedResultRounds
    {G1 G2 GT : Type}
    [DecidableEq G1] [DecidableEq G2] [DecidableEq GT]
    (source :
      ChallengeBase Ipp.Bls12377.Fr G1 G2 GT →
        ProbComp (Option Ipp.Bls12377.Fr)) :
    (μ : Nat) → Ipp.Bls12377.Fr → (Fin μ → Ipp.RoundComs G1 GT) →
      StateComp (ResultCache G1 G2 GT)
        (Option (Ipp.RoundTranscript μ Ipp.Bls12377.Fr))
  | 0, previous, _ => fun cache => pure (some {
      prev := Fin.elim0
      answer := Fin.elim0
      nonce := Fin.elim0
      last := previous }, cache)
  | μ + 1, previous, rounds =>
      stateOptionBind
        (cachedResultSample source
          (.round previous (rounds 0))) fun value =>
        stateOptionMap (fun tail => {
          prev := Fin.cases previous tail.prev
          answer := Fin.cases value tail.answer
          nonce := Fin.cases 0 tail.nonce
          last := tail.last })
          (cachedResultRounds source μ value
            (fun i => rounds i.succ))

theorem cachedResultRounds_someDom
    {G1 G2 GT : Type}
    [DecidableEq G1] [DecidableEq G2] [DecidableEq GT]
    {left right :
      ChallengeBase Ipp.Bls12377.Fr G1 G2 GT →
        ProbComp (Option Ipp.Bls12377.Fr)}
    (hsource : ∀ base, SomeDom (left base) (right base))
    (μ : Nat) (previous : Ipp.Bls12377.Fr)
    (rounds : Fin μ → Ipp.RoundComs G1 GT) :
    StateSomeDom
      (cachedResultRounds left μ previous rounds)
      (cachedResultRounds right μ previous rounds) := by
  induction μ generalizing previous with
  | zero =>
      intro initial output final
      simp [cachedResultRounds]
  | succ μ ih =>
      apply stateSomeDom_optionBind
        (cachedResultSample_someDom hsource
          (.round previous (rounds 0)))
      intro value
      exact stateSomeDom_optionMap _
        (ih value (fun i => rounds i.succ))

/-- The explicit round cache semantics is exactly the `StateT` execution of
the factored payload-result oracle. -/
theorem simulateQ_resultRounds_withCaching_run
    {G1 G2 GT : Type}
    [DecidableEq G1] [DecidableEq G2] [DecidableEq GT]
    (source :
      ChallengeBase Ipp.Bls12377.Fr G1 G2 GT →
        ProbComp (Option Ipp.Bls12377.Fr))
    (μ : Nat) (previous : Ipp.Bls12377.Fr)
    (rounds : Fin μ → Ipp.RoundComs G1 GT)
    (cache : ResultCache G1 G2 GT) :
    (simulateQ (QueryImpl.withCaching source)
        (resultRoundsOracle μ previous rounds)).run cache =
      cachedResultRounds source μ previous rounds cache := by
  induction μ generalizing previous cache with
  | zero =>
      rfl
  | succ μ ih =>
      simp only [resultRoundsOracle, cachedResultRounds,
        cachedResultSample, stateOptionBind, stateOptionMap,
        simulateQ_bind, simulateQ_spec_query, StateT.run_bind]
      refine congrArg
        (fun continuation :
          (Option Ipp.Bls12377.Fr × ResultCache G1 G2 GT) →
            ProbComp
              (Option
                  (Ipp.RoundTranscript (μ + 1) Ipp.Bls12377.Fr) ×
                ResultCache G1 G2 GT) =>
          (QueryImpl.withCaching source
            (.round previous (rounds 0))).run cache >>=
              continuation) ?_
      funext result
      rcases result with ⟨sampled, nextCache⟩
      cases sampled with
      | none =>
          rfl
      | some value =>
          simp only [simulateQ_bind, StateT.run_bind]
          rw [ih]
          rw [map_eq_bind_pure_comp]
          refine congrArg
            (fun continuation :
              (Option
                  (Ipp.RoundTranscript μ Ipp.Bls12377.Fr) ×
                ResultCache G1 G2 GT) →
                ProbComp
                  (Option
                      (Ipp.RoundTranscript (μ + 1)
                        Ipp.Bls12377.Fr) ×
                    ResultCache G1 G2 GT) =>
              cachedResultRounds source μ value
                (fun i => rounds i.succ) nextCache >>=
                  continuation) ?_
          funext tailResult
          rcases tailResult with ⟨tail, finalCache⟩
          cases tail <;> rfl

/-- Complete nonce-erased transcript using the exact full-result cache of the
factored lazy oracle. -/
def cachedResultTranscript
    {G1 G2 GT : Type}
    [AddCommGroup G1] [Module Ipp.Bls12377.Fr G1]
    [AddCommGroup G2] [Module Ipp.Bls12377.Fr G2]
    [AddCommGroup GT] [Module Ipp.Bls12377.Fr GT]
    [DecidableEq G1] [DecidableEq G2] [DecidableEq GT]
    {μ : Nat}
    (source :
      ChallengeBase Ipp.Bls12377.Fr G1 G2 GT →
        ProbComp (Option Ipp.Bls12377.Fr))
    (stmt : Ipp.FsStatement μ Ipp.Bls12377.Fr G1 G2 GT)
    (proof : Ipp.Proof μ Ipp.Bls12377.Fr G1 G2 GT) :
    StateComp (ResultCache G1 G2 GT)
      (Option (Ipp.FsTranscript μ Ipp.Bls12377.Fr)) :=
  stateOptionBind
    (cachedResultSample source
      (.randomizer
        { comA := proof.ComA.1
          comB := proof.ComB
          comC := proof.ComA.2 }))
    fun randomizer =>
  stateOptionBind
    (cachedResultSample source
      (.x0
        { r := randomizer
          comA := proof.ComA.1
          comB := proof.ComB
          comC := proof.ComA.2
          ipAb := proof.ipAb
          aggC := proof.aggC }))
    fun x0 =>
  stateOptionBind
    (cachedResultRounds source μ x0 proof.rounds) fun rounds =>
  stateOptionBind
    (cachedResultSample source
      (.bridge
        { lastRawChallenge := rounds.last
          vFinal := proof.vFinal
          wFinal := proof.wFinal
          aFinal := proof.aFinal
          bFinal := proof.bFinal
          cFinal := proof.cFinal }))
    fun bridge =>
  stateOptionMap (fun kzg => {
    randomizer := randomizer
    randomizerNonce := 0
    x0 := x0
    x0Nonce := 0
    roundPrev := rounds.prev
    roundAnswer := rounds.answer
    roundNonce := rounds.nonce
    bridge := bridge
    bridgeNonce := 0
    kzg := kzg
    kzgNonce := 0 })
    (cachedResultSample source
      (.kzg
        { bridgeChallenge := bridge
          vFinal := proof.vFinal
          wFinal := proof.wFinal }))

/-- The explicit full-result transcript cache is exactly the `StateT`
execution of `resultTranscriptOracle`. -/
theorem simulateQ_resultTranscript_withCaching_run
    {G1 G2 GT : Type}
    [AddCommGroup G1] [Module Ipp.Bls12377.Fr G1]
    [AddCommGroup G2] [Module Ipp.Bls12377.Fr G2]
    [AddCommGroup GT] [Module Ipp.Bls12377.Fr GT]
    [DecidableEq G1] [DecidableEq G2] [DecidableEq GT]
    {μ : Nat}
    (source :
      ChallengeBase Ipp.Bls12377.Fr G1 G2 GT →
        ProbComp (Option Ipp.Bls12377.Fr))
    (stmt : Ipp.FsStatement μ Ipp.Bls12377.Fr G1 G2 GT)
    (proof : Ipp.Proof μ Ipp.Bls12377.Fr G1 G2 GT)
    (cache : ResultCache G1 G2 GT) :
    (simulateQ (QueryImpl.withCaching source)
        (resultTranscriptOracle stmt proof)).run cache =
      cachedResultTranscript source stmt proof cache := by
  unfold resultTranscriptOracle cachedResultTranscript
  simp only [cachedResultSample, stateOptionBind, stateOptionMap,
    simulateQ_bind, simulateQ_spec_query, StateT.run_bind]
  refine congrArg
    (fun continuation :
      (Option Ipp.Bls12377.Fr × ResultCache G1 G2 GT) →
        ProbComp
          (Option (Ipp.FsTranscript μ Ipp.Bls12377.Fr) ×
            ResultCache G1 G2 GT) =>
      (QueryImpl.withCaching source
        (.randomizer
          { comA := proof.ComA.1
            comB := proof.ComB
            comC := proof.ComA.2 })).run cache >>=
          continuation) ?_
  funext randomizerResult
  rcases randomizerResult with ⟨randomizer, cache₁⟩
  cases randomizer with
  | none =>
      rfl
  | some randomizer =>
      simp only [simulateQ_bind, simulateQ_spec_query, StateT.run_bind]
      refine congrArg
        (fun continuation :
          (Option Ipp.Bls12377.Fr × ResultCache G1 G2 GT) →
            ProbComp
              (Option (Ipp.FsTranscript μ Ipp.Bls12377.Fr) ×
                ResultCache G1 G2 GT) =>
          (QueryImpl.withCaching source
            (.x0
              { r := randomizer
                comA := proof.ComA.1
                comB := proof.ComB
                comC := proof.ComA.2
                ipAb := proof.ipAb
                aggC := proof.aggC })).run cache₁ >>=
              continuation) ?_
      funext x0Result
      rcases x0Result with ⟨x0, cache₂⟩
      cases x0 with
      | none =>
          rfl
      | some x0 =>
          simp only [simulateQ_bind, StateT.run_bind]
          rw [simulateQ_resultRounds_withCaching_run]
          refine congrArg
            (fun continuation :
              (Option
                  (Ipp.RoundTranscript μ Ipp.Bls12377.Fr) ×
                ResultCache G1 G2 GT) →
                ProbComp
                  (Option (Ipp.FsTranscript μ Ipp.Bls12377.Fr) ×
                    ResultCache G1 G2 GT) =>
              cachedResultRounds source μ x0 proof.rounds cache₂ >>=
                continuation) ?_
          funext roundsResult
          rcases roundsResult with ⟨rounds, cache₃⟩
          cases rounds with
          | none =>
              rfl
          | some rounds =>
              simp only [simulateQ_bind, simulateQ_spec_query,
                StateT.run_bind]
              refine congrArg
                (fun continuation :
                  (Option Ipp.Bls12377.Fr ×
                    ResultCache G1 G2 GT) →
                    ProbComp
                      (Option
                          (Ipp.FsTranscript μ Ipp.Bls12377.Fr) ×
                        ResultCache G1 G2 GT) =>
                  (QueryImpl.withCaching source
                    (.bridge
                      { lastRawChallenge := rounds.last
                        vFinal := proof.vFinal
                        wFinal := proof.wFinal
                        aFinal := proof.aFinal
                        bFinal := proof.bFinal
                        cFinal := proof.cFinal })).run cache₃ >>=
                      continuation) ?_
              funext bridgeResult
              rcases bridgeResult with ⟨bridge, cache₄⟩
              cases bridge with
              | none =>
                  rfl
              | some bridge =>
                  simp only [simulateQ_bind, simulateQ_spec_query,
                    StateT.run_bind, map_eq_bind_pure_comp]
                  refine congrArg
                    (fun continuation :
                      (Option Ipp.Bls12377.Fr ×
                        ResultCache G1 G2 GT) →
                        ProbComp
                          (Option
                              (Ipp.FsTranscript μ
                                Ipp.Bls12377.Fr) ×
                            ResultCache G1 G2 GT) =>
                      (QueryImpl.withCaching source
                        (.kzg
                          { bridgeChallenge := bridge
                            vFinal := proof.vFinal
                            wFinal := proof.wFinal })).run cache₄ >>=
                          continuation) ?_
                  funext kzgResult
                  rcases kzgResult with ⟨kzg, finalCache⟩
                  cases kzg <;> rfl

theorem cachedResultTranscript_someDom
    {G1 G2 GT : Type}
    [AddCommGroup G1] [Module Ipp.Bls12377.Fr G1]
    [AddCommGroup G2] [Module Ipp.Bls12377.Fr G2]
    [AddCommGroup GT] [Module Ipp.Bls12377.Fr GT]
    [DecidableEq G1] [DecidableEq G2] [DecidableEq GT]
    {μ : Nat}
    {left right :
      ChallengeBase Ipp.Bls12377.Fr G1 G2 GT →
        ProbComp (Option Ipp.Bls12377.Fr)}
    (hsource : ∀ base, SomeDom (left base) (right base))
    (stmt : Ipp.FsStatement μ Ipp.Bls12377.Fr G1 G2 GT)
    (proof : Ipp.Proof μ Ipp.Bls12377.Fr G1 G2 GT) :
    StateSomeDom
      (cachedResultTranscript left stmt proof)
      (cachedResultTranscript right stmt proof) := by
  unfold cachedResultTranscript
  apply stateSomeDom_optionBind
    (cachedResultSample_someDom hsource _)
  intro randomizer
  apply stateSomeDom_optionBind
    (cachedResultSample_someDom hsource _)
  intro x0
  apply stateSomeDom_optionBind
    (cachedResultRounds_someDom hsource μ x0 proof.rounds)
  intro rounds
  apply stateSomeDom_optionBind
    (cachedResultSample_someDom hsource _)
  intro bridge
  exact stateSomeDom_optionMap _
    (cachedResultSample_someDom hsource _)

#print axioms cachedResultTranscript_someDom

/-- Source distribution obtained by sampling one complete digest block and
running the exact deployed decoder/rejection loop for a payload. -/
def decodedBlockBaseSource
    [SampleableType DigestBlock]
    {G1 G2 GT : Type}
    (base : ChallengeBase Ipp.Bls12377.Fr G1 G2 GT) :
    ProbComp (Option Ipp.Bls12377.Fr) := do
  let block ← $ᵗ DigestBlock
  pure (blockResultProcess base block)

/-- A source distribution interpreted through one consistent cached result
per nonce-free payload. -/
def sourceResultIdealVerifier
    {G1 G2 GT : Type}
    [AddCommGroup G1] [Module Ipp.Bls12377.Fr G1]
    [AddCommGroup G2] [Module Ipp.Bls12377.Fr G2]
    [AddCommGroup GT] [Module Ipp.Bls12377.Fr GT]
    [DecidableEq G1] [DecidableEq G2] [DecidableEq GT]
    {μ : Nat}
    (source :
      ChallengeBase Ipp.Bls12377.Fr G1 G2 GT →
        ProbComp (Option Ipp.Bls12377.Fr))
    (stmt : Ipp.FsStatement μ Ipp.Bls12377.Fr G1 G2 GT)
    (proof : Ipp.Proof μ Ipp.Bls12377.Fr G1 G2 GT) :
    ProbComp (Option (Ipp.FsTranscript μ Ipp.Bls12377.Fr)) :=
  (simulateQ (QueryImpl.withCaching source)
    (resultTranscriptOracle stmt proof)).run' ∅

/-- Output-only form of the exact `StateT`/explicit-cache correspondence. -/
theorem sourceResultIdealVerifier_eq_cachedResultTranscript
    {G1 G2 GT : Type}
    [AddCommGroup G1] [Module Ipp.Bls12377.Fr G1]
    [AddCommGroup G2] [Module Ipp.Bls12377.Fr G2]
    [AddCommGroup GT] [Module Ipp.Bls12377.Fr GT]
    [DecidableEq G1] [DecidableEq G2] [DecidableEq GT]
    {μ : Nat}
    (source :
      ChallengeBase Ipp.Bls12377.Fr G1 G2 GT →
        ProbComp (Option Ipp.Bls12377.Fr))
    (stmt : Ipp.FsStatement μ Ipp.Bls12377.Fr G1 G2 GT)
    (proof : Ipp.Proof μ Ipp.Bls12377.Fr G1 G2 GT) :
    sourceResultIdealVerifier source stmt proof =
      Prod.fst <$>
        cachedResultTranscript source stmt proof
          (∅ : ResultCache G1 G2 GT) := by
  unfold sourceResultIdealVerifier StateT.run'
  change
    Prod.fst <$>
        (simulateQ (QueryImpl.withCaching source)
          (resultTranscriptOracle stmt proof)).run ∅ =
      Prod.fst <$>
        cachedResultTranscript source stmt proof ∅
  rw [simulateQ_resultTranscript_withCaching_run]

/-- Pointwise source domination composes through the exact cache-aware
factored verifier. -/
theorem sourceResultIdeal_acceptance_le
    {G1 G2 GT : Type}
    [AddCommGroup G1] [Module Ipp.Bls12377.Fr G1]
    [AddCommGroup G2] [Module Ipp.Bls12377.Fr G2]
    [AddCommGroup GT] [Module Ipp.Bls12377.Fr GT]
    [DecidableEq G1] [DecidableEq G2] [DecidableEq GT]
    {μ : Nat}
    {left right :
      ChallengeBase Ipp.Bls12377.Fr G1 G2 GT →
        ProbComp (Option Ipp.Bls12377.Fr)}
    (hsource : ∀ base, SomeDom (left base) (right base))
    (stmt : Ipp.FsStatement μ Ipp.Bls12377.Fr G1 G2 GT)
    (proof : Ipp.Proof μ Ipp.Bls12377.Fr G1 G2 GT) :
    Pr[optionSatisfies (Ipp.FsAccepts stmt proof) |
        sourceResultIdealVerifier left stmt proof] ≤
      Pr[optionSatisfies (Ipp.FsAccepts stmt proof) |
        sourceResultIdealVerifier right stmt proof] := by
  let empty : ResultCache G1 G2 GT := ∅
  calc
    Pr[optionSatisfies (Ipp.FsAccepts stmt proof) |
        sourceResultIdealVerifier left stmt proof] =
        Pr[stateOptionSatisfies (Ipp.FsAccepts stmt proof) |
          cachedResultTranscript left stmt proof empty] := by
            rw [
              sourceResultIdealVerifier_eq_cachedResultTranscript]
            rw [probEvent_map]
            rfl
    _ ≤
        Pr[stateOptionSatisfies (Ipp.FsAccepts stmt proof) |
          cachedResultTranscript right stmt proof empty] :=
            probEvent_stateOptionSatisfies_le_of_stateSomeDom
              (cachedResultTranscript_someDom
                hsource stmt proof)
              empty (Ipp.FsAccepts stmt proof)
    _ =
        Pr[optionSatisfies (Ipp.FsAccepts stmt proof) |
          sourceResultIdealVerifier right stmt proof] := by
            rw [
              sourceResultIdealVerifier_eq_cachedResultTranscript]
            rw [probEvent_map]
            rfl

/-- The previously defined decoded-result verifier is definitionally the
generic cached-source verifier instantiated by full digest blocks. -/
theorem decodedResultIdealVerifier_eq_source
    {G1 G2 GT : Type}
    [AddCommGroup G1] [Module Ipp.Bls12377.Fr G1]
    [AddCommGroup G2] [Module Ipp.Bls12377.Fr G2]
    [AddCommGroup GT] [Module Ipp.Bls12377.Fr GT]
    [DecidableEq G1] [DecidableEq G2] [DecidableEq GT]
    [SampleableType DigestBlock]
    {μ : Nat}
    (stmt : Ipp.FsStatement μ Ipp.Bls12377.Fr G1 G2 GT)
    (proof : Ipp.Proof μ Ipp.Bls12377.Fr G1 G2 GT) :
    decodedResultIdealVerifier stmt proof =
      sourceResultIdealVerifier
        (@decodedBlockBaseSource _ G1 G2 GT) stmt proof := by
  rfl

def fieldResultIdealVerifier
    {G1 G2 GT : Type}
    [AddCommGroup G1] [Module Ipp.Bls12377.Fr G1]
    [AddCommGroup G2] [Module Ipp.Bls12377.Fr G2]
    [AddCommGroup GT] [Module Ipp.Bls12377.Fr GT]
    [DecidableEq G1] [DecidableEq G2] [DecidableEq GT]
    {μ : Nat}
    (stmt : Ipp.FsStatement μ Ipp.Bls12377.Fr G1 G2 GT)
    (proof : Ipp.Proof μ Ipp.Bls12377.Fr G1 G2 GT) :
    ProbComp (Option (Ipp.FsTranscript μ Ipp.Bls12377.Fr)) :=
  sourceResultIdealVerifier
    (fieldBaseSource rejectionFuel) stmt proof

#print axioms sourceResultIdeal_acceptance_le

end

end Ipp.ShippingHashGame
