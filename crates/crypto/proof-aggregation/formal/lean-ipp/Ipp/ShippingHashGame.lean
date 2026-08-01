import Ipp.Bls12377
import Ipp.CanonicalDecode
import Ipp.ChallengeMessageSerialization
import Ipp.RandomOracleCurry
import Ipp.RandomOracleMap
import Ipp.RandomOracleReindex
import Ipp.S1
import Ipp.ShippingScalarReduction
import Ipp.ShippingV1
import VCVio.OracleComp.QueryTracking.RandomOracle.Simulation

/-!
The deployed SnarkPack hash boundary.

SHA-256 binds the VK, canonical statement, and challenge context.  The
Fiat--Shamir stages use family-domain-separated Blake2b output, reduced by
arkworks into a BLS12-377 scalar. Ideal-byte reduction loss and deployed-hash
replacement are deliberately separate.
-/

open OracleSpec OracleComp ENNReal
open scoped OracleSpec.PrimitiveQuery ENNReal BigOperators

namespace Ipp.ShippingHashGame

noncomputable section

abbrev DigestBytes := Fin 64 → UInt8

/-- Exact deployed Arkworks scalar conversion.  Every Blake2b digest is read
as one 512-bit little-endian integer and reduced modulo the BLS12-377 scalar
modulus; the API is total. -/
def shippingDecodeFr (digest : DigestBytes) :
    Option Ipp.Bls12377.Fr :=
  Ipp.ShippingScalarReduction.decodeFr digest

@[simp] theorem shippingDecodeFr_eq_some
    (digest : DigestBytes) :
    shippingDecodeFr digest =
      some (Ipp.ShippingScalarReduction.reduceFr digest) := by
  rfl

@[simp] theorem shippingDecodeFr_ne_none
    (digest : DigestBytes) :
    shippingDecodeFr digest ≠ none := by
  simp [shippingDecodeFr]

local instance : Fact Ipp.Bls12377.scalarModulus.Prime :=
  ⟨Ipp.Bls12377.arithmeticFacts.scalarPrime⟩

/-- Filter one optional value through a stage-specific rejection predicate. -/
def acceptOption {α : Type} (acceptable : α → Bool) : Option α → Option α
  | none => none
  | some value => if acceptable value then some value else none

theorem acceptOption_eq_some_iff
    {α : Type} (acceptable : α → Bool)
    (input : Option α) (value : α) :
    acceptOption acceptable input = some value ↔
      input = some value ∧ acceptable value = true := by
  cases input with
  | none =>
      simp [acceptOption]
  | some decoded =>
      by_cases hacceptable : acceptable decoded = true
      · simp only [acceptOption]
        rw [if_pos hacceptable]
        constructor
        · intro heq
          refine ⟨heq, ?_⟩
          exact (Option.some.inj heq) ▸ hacceptable
        · exact fun conclusion => conclusion.1
      · simp only [acceptOption]
        rw [if_neg hacceptable]
        constructor
        · intro heq
          cases heq
        · rintro ⟨heq, hvalueAccepted⟩
          have hvalue : decoded = value := Option.some.inj heq
          exact False.elim (hacceptable (hvalue ▸ hvalueAccepted))

/-- One truthful deployed digest attempt: reduce all 64 bytes modulo the
scalar field, then apply the stage's zero/one predicate. -/
def shippingFreshDecodedAttempt
    [SampleableType DigestBytes]
    (acceptable : Ipp.Bls12377.Fr → Bool) :
    ProbComp (Option Ipp.Bls12377.Fr) :=
  (fun digest => acceptOption acceptable (shippingDecodeFr digest)) <$>
    ($ᵗ DigestBytes)

/-- The corresponding fresh field-oracle attempt. -/
def freshFieldAttempt
    (acceptable : Ipp.Bls12377.Fr → Bool) :
    ProbComp (Option Ipp.Bls12377.Fr) :=
  (fun value => if acceptable value then some value else none) <$>
    ($ᵗ Ipp.Bls12377.Fr)

/-- First successful value from at most `fuel` independent attempts. -/
def firstSome {α : Type} (attempt : ProbComp (Option α)) :
    Nat → ProbComp (Option α)
  | 0 => pure none
  | fuel + 1 => do
      let result ← attempt
      match result with
      | none => firstSome attempt fuel
      | some value => pure (some value)

theorem probOutput_firstSome_succ_some
    {α : Type} [DecidableEq α] (attempt : ProbComp (Option α))
    (fuel : Nat) (value : α) :
    Pr[= some value | firstSome attempt (fuel + 1)] =
      Pr[= none | attempt] * Pr[= some value | firstSome attempt fuel] +
        Pr[= some value | attempt] := by
  rw [firstSome, probOutput_bind_eq_tsum,
    tsum_option _ ENNReal.summable]
  simp_rw [probOutput_pure]
  simp only [Option.some.injEq, mul_ite, mul_one, mul_zero]
  rw [show
    (∑' x : α, if value = x then Pr[= some x | attempt] else 0) =
      Pr[= some value | attempt] by
        simpa only [eq_comm] using
          (tsum_ite_eq value
            (fun x : α => Pr[= some x | attempt]))]

theorem probOutput_firstSome_succ_none
    {α : Type} [DecidableEq α] (attempt : ProbComp (Option α))
    (fuel : Nat) :
    Pr[= none | firstSome attempt (fuel + 1)] =
      Pr[= none | attempt] * Pr[= none | firstSome attempt fuel] := by
  rw [firstSome, probOutput_bind_eq_tsum,
    tsum_option _ ENNReal.summable]
  simp

/-- Exact bounded-exhaustion probability of an independent retry sampler. -/
theorem probOutput_firstSome_none
    {α : Type} [DecidableEq α] (attempt : ProbComp (Option α))
    (fuel : Nat) :
    Pr[= none | firstSome attempt fuel] =
      Pr[= none | attempt] ^ fuel := by
  induction fuel with
  | zero =>
      simp [firstSome]
  | succ fuel ih =>
      rw [probOutput_firstSome_succ_none, ih, pow_succ']

def someMass {α : Type} [Fintype α]
    (mx : ProbComp (Option α)) : ℝ≥0∞ :=
  ∑ value : α, Pr[= some value | mx]

theorem someMass_eq_one_sub_none
    {α : Type} [Fintype α]
    (mx : ProbComp (Option α)) :
    someMass mx = 1 - Pr[= none | mx] := by
  have htotal :
      Pr[= none | mx] + someMass mx = 1 := by
    simpa [someMass, tsum_fintype, probFailure_eq_zero (mx := mx)] using
      (probOutput_none_add_tsum_some (mx := mx))
  have hnone : Pr[= none | mx] ≠ ⊤ :=
    ne_top_of_le_ne_top one_ne_top probOutput_le_one
  exact ENNReal.eq_sub_of_add_eq hnone (by simpa [add_comm] using htotal)

theorem someMass_firstSome
    {α : Type} [Fintype α] [DecidableEq α]
    (attempt : ProbComp (Option α)) (fuel : Nat) :
    someMass (firstSome attempt fuel) =
      1 - Pr[= none | attempt] ^ fuel := by
  rw [someMass_eq_one_sub_none, probOutput_firstSome_none]

theorem someMass_mono
    {α : Type} [Fintype α]
    {left right : ProbComp (Option α)}
    (h : ∀ value : α,
      Pr[= some value | left] ≤ Pr[= some value | right]) :
    someMass left ≤ someMass right := by
  exact Finset.sum_le_sum fun value _ => h value

theorem probOutput_none_anti_of_someMass_le
    {α : Type} [Fintype α]
    {left right : ProbComp (Option α)}
    (h : someMass left ≤ someMass right) :
    Pr[= none | right] ≤ Pr[= none | left] := by
  rw [someMass_eq_one_sub_none, someMass_eq_one_sub_none] at h
  exact (ENNReal.sub_le_sub_iff_left
    (a := 1) (b := Pr[= none | left]) (c := Pr[= none | right])
    probOutput_le_one one_ne_top).mp h

theorem someMass_firstSome_mono_of_attempt
    {α : Type} [Fintype α] [DecidableEq α]
    {left right : ProbComp (Option α)}
    (h : ∀ value : α,
      Pr[= some value | left] ≤ Pr[= some value | right])
    (fuel : Nat) :
    someMass (firstSome left fuel) ≤ someMass (firstSome right fuel) := by
  rw [someMass_firstSome, someMass_firstSome]
  have hnone :
      Pr[= none | right] ≤ Pr[= none | left] :=
    probOutput_none_anti_of_someMass_le (someMass_mono h)
  have hpow :
      Pr[= none | right] ^ fuel ≤ Pr[= none | left] ^ fuel :=
    pow_le_pow_left' hnone fuel
  exact (ENNReal.sub_le_sub_iff_left
    (a := 1)
    (b := Pr[= none | left] ^ fuel)
    (c := Pr[= none | right] ^ fuel)
    (pow_le_one₀ (by simp) probOutput_le_one)
    one_ne_top).mpr hpow

theorem probOutput_firstSome_some_eq_of_attempt
    {α : Type} [DecidableEq α]
    (attempt : ProbComp (Option α))
    {left right : α}
    (h : Pr[= some left | attempt] = Pr[= some right | attempt])
    (fuel : Nat) :
    Pr[= some left | firstSome attempt fuel] =
      Pr[= some right | firstSome attempt fuel] := by
  induction fuel with
  | zero =>
      simp [firstSome]
  | succ fuel ih =>
      rw [probOutput_firstSome_succ_some,
        probOutput_firstSome_succ_some, ih, h]

theorem someMass_eq_acceptedCard_mul
    {α : Type} [Fintype α] [DecidableEq α]
    (mx : ProbComp (Option α))
    (acceptable : α → Bool)
    (anchor : α)
    (hzero : ∀ value, acceptable value ≠ true →
      Pr[= some value | mx] = 0)
    (hsymmetric : ∀ value, acceptable value = true →
      Pr[= some value | mx] = Pr[= some anchor | mx]) :
    someMass mx =
      ((Finset.univ.filter fun value => acceptable value = true).card :
          ℝ≥0∞) *
        Pr[= some anchor | mx] := by
  rw [someMass]
  calc
    (∑ value : α, Pr[= some value | mx]) =
        ∑ value : α,
          if acceptable value = true
          then Pr[= some value | mx] else 0 := by
      apply Finset.sum_congr rfl
      intro value _
      by_cases hacceptable : acceptable value = true
      · rw [if_pos hacceptable]
      · rw [if_neg hacceptable, hzero value hacceptable]
    _ = (∑ value ∈ Finset.univ.filter
          (fun value => acceptable value = true),
          Pr[= some value | mx]) := by
      rw [Finset.sum_filter]
    _ = (∑ _value ∈ Finset.univ.filter
          (fun value => acceptable value = true),
          Pr[= some anchor | mx]) := by
      apply Finset.sum_congr rfl
      intro value hvalue
      exact hsymmetric value (Finset.mem_filter.mp hvalue).2
    _ = ((Finset.univ.filter fun value => acceptable value = true).card :
          ℝ≥0∞) *
        Pr[= some anchor | mx] := by
      simp

theorem probOutput_firstSome_some_eq_zero_of_attempt
    {α : Type} [DecidableEq α]
    (attempt : ProbComp (Option α))
    (value : α)
    (hzero : Pr[= some value | attempt] = 0)
    (fuel : Nat) :
    Pr[= some value | firstSome attempt fuel] = 0 := by
  induction fuel with
  | zero =>
      simp [firstSome]
  | succ fuel ih =>
      rw [probOutput_firstSome_succ_some, ih, hzero, mul_zero, add_zero]

theorem probOutput_firstSome_some_le_of_attempt
    {α : Type} [Fintype α] [DecidableEq α]
    (acceptable : α → Bool)
    {left right : ProbComp (Option α)}
    (hleftZero : ∀ value, acceptable value ≠ true →
      Pr[= some value | left] = 0)
    (hrightZero : ∀ value, acceptable value ≠ true →
      Pr[= some value | right] = 0)
    (hleftSymmetric : ∀ x y,
      acceptable x = true → acceptable y = true →
      Pr[= some x | left] = Pr[= some y | left])
    (hrightSymmetric : ∀ x y,
      acceptable x = true → acceptable y = true →
      Pr[= some x | right] = Pr[= some y | right])
    (hpoint : ∀ value,
      Pr[= some value | left] ≤ Pr[= some value | right])
    (fuel : Nat) (value : α)
    (hacceptable : acceptable value = true) :
    Pr[= some value | firstSome left fuel] ≤
      Pr[= some value | firstSome right fuel] := by
  have hmass :
      someMass (firstSome left fuel) ≤
        someMass (firstSome right fuel) :=
    someMass_firstSome_mono_of_attempt hpoint fuel
  have hleftFormula :=
    someMass_eq_acceptedCard_mul
      (firstSome left fuel) acceptable value
      (fun x hx =>
        probOutput_firstSome_some_eq_zero_of_attempt
          left x (hleftZero x hx) fuel)
      (fun x hx =>
        probOutput_firstSome_some_eq_of_attempt left
          (hleftSymmetric x value hx hacceptable) fuel)
  have hrightFormula :=
    someMass_eq_acceptedCard_mul
      (firstSome right fuel) acceptable value
      (fun x hx =>
        probOutput_firstSome_some_eq_zero_of_attempt
          right x (hrightZero x hx) fuel)
      (fun x hx =>
        probOutput_firstSome_some_eq_of_attempt right
          (hrightSymmetric x value hx hacceptable) fuel)
  rw [hleftFormula, hrightFormula] at hmass
  let acceptedCard : Nat :=
    (Finset.univ.filter fun x : α => acceptable x = true).card
  have hcardPositive : 0 < acceptedCard := by
    rw [Finset.card_pos]
    exact ⟨value, Finset.mem_filter.mpr
      ⟨Finset.mem_univ value, hacceptable⟩⟩
  have hcardNonzero : (acceptedCard : ℝ≥0∞) ≠ 0 :=
    Nat.cast_ne_zero.mpr (Nat.ne_of_gt hcardPositive)
  have hcardFinite : (acceptedCard : ℝ≥0∞) ≠ ⊤ :=
    ENNReal.natCast_ne_top acceptedCard
  exact (ENNReal.mul_le_mul_iff_right hcardNonzero hcardFinite).mp hmass

/-- A fresh field attempt assigns the uniform field point mass to every
stage-accepted value. -/
theorem freshFieldAttempt_some
    (acceptable : Ipp.Bls12377.Fr → Bool)
    (value : Ipp.Bls12377.Fr)
    (hacceptable : acceptable value = true) :
    Pr[= some value | freshFieldAttempt acceptable] =
      (Fintype.card Ipp.Bls12377.Fr : ℝ≥0∞)⁻¹ := by
  rw [freshFieldAttempt, probOutput_map_eq_sum_fintype_ite]
  have hfiber : ∀ input : Ipp.Bls12377.Fr,
      some value = (if acceptable input then some input else none) ↔
        input = value := by
    intro input
    by_cases hinput : acceptable input = true
    · simp only [hinput, if_true, Option.some.injEq]
      exact eq_comm
    · constructor
      · intro heq
        rw [if_neg hinput] at heq
        cases heq
      · intro heq
        subst input
        exact False.elim (hinput hacceptable)
  simp_rw [hfiber]
  rw [Finset.sum_ite_eq' Finset.univ value,
    if_pos (Finset.mem_univ value)]
  exact probOutput_uniformSample Ipp.Bls12377.Fr value

/-- Rejected values have no output mass in a field attempt. -/
theorem freshFieldAttempt_some_eq_zero_of_rejected
    (acceptable : Ipp.Bls12377.Fr → Bool)
    (value : Ipp.Bls12377.Fr)
    (hrejected : acceptable value ≠ true) :
    Pr[= some value | freshFieldAttempt acceptable] = 0 := by
  rw [freshFieldAttempt, probOutput_map_eq_sum_fintype_ite]
  apply Finset.sum_eq_zero
  intro input _
  rw [if_neg]
  intro heq
  have hfiltered :=
    (acceptOption_eq_some_iff acceptable (some input) value).1 heq.symm
  exact hrejected hfiltered.2

/-- Pointwise domination on successful optional outputs. Failure mass is
intentionally unconstrained; this generic relation is used by the
fail-closed sampler-composition lemmas below. -/
def SomeDom {α : Type} (left right : ProbComp (Option α)) : Prop :=
  ∀ value, Pr[= some value | left] ≤ Pr[= some value | right]

/-- Stop a probabilistic chain on `none`; only successful outputs continue. -/
def optionBind {α β : Type}
    (mx : ProbComp (Option α))
    (f : α → ProbComp (Option β)) : ProbComp (Option β) := do
  match ← mx with
  | none => pure none
  | some value => f value

/-- Successful-output domination composes through fail-closed sequencing. -/
theorem someDom_optionBind
    {α β : Type}
    {left right : ProbComp (Option α)}
    {leftNext rightNext : α → ProbComp (Option β)}
    (hsource : SomeDom left right)
    (hnext : ∀ value, SomeDom (leftNext value) (rightNext value)) :
    SomeDom (optionBind left leftNext) (optionBind right rightNext) := by
  intro output
  rw [optionBind, optionBind, probOutput_bind_eq_tsum,
    probOutput_bind_eq_tsum]
  apply ENNReal.tsum_le_tsum
  intro sampled
  cases sampled with
  | none =>
      have hzero :
          Pr[= some output | (pure none : ProbComp (Option β))] = 0 := by
        simp
      rw [hzero, mul_zero, mul_zero]
  | some value =>
      exact mul_le_mul' (hsource value) (hnext value output)

/-- Apply a deterministic projection to an optional probabilistic output. -/
def optionMapM {α β : Type} (f : α → β)
    (mx : ProbComp (Option α)) : ProbComp (Option β) :=
  Option.map f <$> mx

/-- Successful-output domination is preserved by every deterministic
projection, including the transcript constructors below. -/
theorem someDom_optionMapM
    {α β : Type} (f : α → β)
    {left right : ProbComp (Option α)}
    (h : SomeDom left right) :
    SomeDom (optionMapM f left) (optionMapM f right) := by
  classical
  letI : DecidableEq β := Classical.decEq β
  intro output
  rw [optionMapM, optionMapM, probOutput_map_eq_tsum_ite,
    probOutput_map_eq_tsum_ite]
  apply ENNReal.tsum_le_tsum
  intro sampled
  cases sampled with
  | none =>
      simp
  | some value =>
      simp only [Option.map]
      by_cases heq : output = f value
      · simp only [heq, if_true]
        exact h value
      · simp only [Option.some.injEq, heq, if_false]
        exact le_rfl

/-- Fresh independent construction of all round answers. Query payloads do
not affect a fresh uniform response, but the exact chronological predecessor
chain is retained in the resulting transcript. -/
def freshRounds
    (sample : (Ipp.Bls12377.Fr → Bool) →
      ProbComp (Option Ipp.Bls12377.Fr)) :
    (μ : Nat) → Ipp.Bls12377.Fr →
      ProbComp (Option (Ipp.RoundTranscript μ Ipp.Bls12377.Fr))
  | 0, previous => pure (some {
      prev := Fin.elim0
      answer := Fin.elim0
      nonce := Fin.elim0
      last := previous })
  | μ + 1, previous =>
      optionBind (sample Ipp.nonzeroB) fun value =>
        optionMapM (fun tail => {
          prev := Fin.cases previous tail.prev
          answer := Fin.cases value tail.answer
          nonce := Fin.cases 0 tail.nonce
          last := tail.last })
          (freshRounds sample μ value)

theorem freshRounds_someDom
    {left right : (Ipp.Bls12377.Fr → Bool) →
      ProbComp (Option Ipp.Bls12377.Fr)}
    (hsample : ∀ acceptable, SomeDom (left acceptable) (right acceptable))
    (μ : Nat) (previous : Ipp.Bls12377.Fr) :
    SomeDom (freshRounds left μ previous) (freshRounds right μ previous) := by
  induction μ generalizing previous with
  | zero =>
      intro output
      simp [freshRounds]
  | succ μ ih =>
      apply someDom_optionBind (hsample Ipp.nonzeroB)
      intro value
      exact someDom_optionMapM _ (ih value)

/-- Value-level verifier transcript in exact shipping stage order. Nonces are
erased because `FsAccepts` has been proved independent of them. -/
def freshTranscript
    {μ : Nat}
    (sample : (Ipp.Bls12377.Fr → Bool) →
      ProbComp (Option Ipp.Bls12377.Fr)) :
    ProbComp (Option (Ipp.FsTranscript μ Ipp.Bls12377.Fr)) :=
  optionBind (sample Ipp.randomizerAcceptedB) fun randomizer =>
  optionBind (sample Ipp.nonzeroB) fun x0 =>
  optionBind (freshRounds sample μ x0) fun rounds =>
  optionBind (sample Ipp.nonzeroB) fun bridge =>
  optionMapM (fun kzg => {
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
    (sample Ipp.nonzeroB)

/-- Per-stage successful-output domination composes through the complete
randomizer, x0, rounds, bridge, and KZG transcript. -/
theorem freshTranscript_someDom
    {μ : Nat}
    {left right : (Ipp.Bls12377.Fr → Bool) →
      ProbComp (Option Ipp.Bls12377.Fr)}
    (hsample : ∀ acceptable, SomeDom (left acceptable) (right acceptable)) :
    SomeDom (freshTranscript (μ := μ) left)
      (freshTranscript (μ := μ) right) := by
  unfold freshTranscript
  apply someDom_optionBind (hsample Ipp.randomizerAcceptedB)
  intro randomizer
  apply someDom_optionBind (hsample Ipp.nonzeroB)
  intro x0
  apply someDom_optionBind (freshRounds_someDom hsample μ x0)
  intro rounds
  apply someDom_optionBind (hsample Ipp.nonzeroB)
  intro bridge
  exact someDom_optionMapM _ (hsample Ipp.nonzeroB)

def shippingDecodedFreshSample [SampleableType DigestBytes]
    (fuel : Nat) (acceptable : Ipp.Bls12377.Fr → Bool) :
    ProbComp (Option Ipp.Bls12377.Fr) :=
  firstSome (shippingFreshDecodedAttempt acceptable) fuel

def fieldFreshSample
    (fuel : Nat) (acceptable : Ipp.Bls12377.Fr → Bool) :
    ProbComp (Option Ipp.Bls12377.Fr) :=
  firstSome (freshFieldAttempt acceptable) fuel

def optionSatisfies {α : Type} (predicate : α → Prop) : Option α → Prop
  | none => False
  | some value => predicate value

theorem probEvent_optionSatisfies_le_of_someDom
    {α : Type}
    {left right : ProbComp (Option α)}
    (h : SomeDom left right)
    (predicate : α → Prop) :
    Pr[optionSatisfies predicate | left] ≤
      Pr[optionSatisfies predicate | right] := by
  rw [probEvent_eq_tsum_indicator, probEvent_eq_tsum_indicator]
  apply ENNReal.tsum_le_tsum
  intro output
  cases output with
  | none =>
      simp [optionSatisfies]
  | some value =>
      by_cases hsatisfies : predicate value
      · simpa [optionSatisfies, hsatisfies] using h value
      · simp [optionSatisfies, hsatisfies]

/-- Every sampler stage queries all `u64` nonces before exhaustion. Kept
irreducible so elaboration never expands the full numeral while composing
generic retry theorems. -/
@[irreducible] def rejectionFuel : Nat := 2 ^ 64

@[irreducible] def lastNonce : Nat := rejectionFuel - 1

theorem lastNonce_add_one : lastNonce + 1 = rejectionFuel := by
  unfold lastNonce
  exact Nat.sub_add_cancel (by simp [rejectionFuel])

theorem lastNonce_lt_fuel : lastNonce < rejectionFuel := by
  rw [← lastNonce_add_one]
  exact Nat.lt_succ_self _

/-- Exact eight-byte little-endian encoding of a shipping nonce. -/
def nonceBytes (nonce : Nat) : Ipp.ChallengeEncoding.Nonce :=
  fun i =>
    (Ipp.CanonicalWire.encodeLE 8 nonce).get
      ⟨i.val, by simpa [Ipp.CanonicalWire.encodeLE_length] using i.isLt⟩

theorem nonceBytes_toList (nonce : Nat) :
    List.ofFn (nonceBytes nonce) = Ipp.CanonicalWire.encodeLE 8 nonce := by
  simpa [nonceBytes, Ipp.CanonicalWire.encodeLE_length] using
    (List.ofFn_getElem (xs := Ipp.CanonicalWire.encodeLE 8 nonce))

/-- The deployed nonce frame is injective throughout the complete `u64`
domain. -/
theorem nonceBytes_injective_of_lt
    {left right : Nat}
    (hleft : left < rejectionFuel) (hright : right < rejectionFuel)
    (heq : nonceBytes left = nonceBytes right) :
    left = right := by
  have hbytes :
      Ipp.CanonicalWire.encodeLE 8 left =
        Ipp.CanonicalWire.encodeLE 8 right := by
    rw [← nonceBytes_toList left, ← nonceBytes_toList right, heq]
  have hleft' : left < 256 ^ 8 := by
    simpa [rejectionFuel] using hleft
  have hright' : right < 256 ^ 8 := by
    simpa [rejectionFuel] using hright
  have hdecoded := congrArg Ipp.CanonicalWire.decodeLE hbytes
  simpa [Ipp.CanonicalWire.decodeLE_encodeLE_of_lt 8 left hleft',
    Ipp.CanonicalWire.decodeLE_encodeLE_of_lt 8 right hright'] using hdecoded

def pointNonce
    {F G1 G2 GT : Type} : Ipp.ChallengePoint F G1 G2 GT → Nat
  | .randomizer _ nonce => nonce
  | .x0 _ nonce => nonce
  | .round _ _ nonce => nonce
  | .bridge _ nonce => nonce
  | .kzg _ nonce => nonce

/-- A challenge query without its retry nonce. This is the cache key of the
derived bounded hash-to-field sampler: repeating a payload repeats the entire
sampler result rather than resampling each internal digest attempt. -/
inductive ChallengeBase (F G1 G2 GT : Type) where
  | randomizer (payload : Ipp.RandomizerPayload GT)
  | x0 (payload : Ipp.X0Payload F G1 GT)
  | round (prev : F) (coms : Ipp.RoundComs G1 GT)
  | bridge (payload : Ipp.BridgePayload F G1 G2)
  | kzg (payload : Ipp.KzgPayload F G1 G2)
deriving DecidableEq

def pointBase {F G1 G2 GT : Type} :
    Ipp.ChallengePoint F G1 G2 GT → ChallengeBase F G1 G2 GT
  | .randomizer payload _ => .randomizer payload
  | .x0 payload _ => .x0 payload
  | .round prev coms _ => .round prev coms
  | .bridge payload _ => .bridge payload
  | .kzg payload _ => .kzg payload

def basePoint {F G1 G2 GT : Type} :
    ChallengeBase F G1 G2 GT → Nat → Ipp.ChallengePoint F G1 G2 GT
  | .randomizer payload, nonce => .randomizer payload nonce
  | .x0 payload, nonce => .x0 payload nonce
  | .round prev coms, nonce => .round prev coms nonce
  | .bridge payload, nonce => .bridge payload nonce
  | .kzg payload, nonce => .kzg payload nonce

theorem basePoint_pointBase_pointNonce
    {F G1 G2 GT : Type}
    (point : Ipp.ChallengePoint F G1 G2 GT) :
    basePoint (pointBase point) (pointNonce point) = point := by
  cases point <;> rfl

theorem pointBase_basePoint
    {F G1 G2 GT : Type}
    (base : ChallengeBase F G1 G2 GT) (nonce : Nat) :
    pointBase (basePoint base nonce) = base := by
  cases base <;> rfl

theorem pointNonce_basePoint
    {F G1 G2 GT : Type}
    (base : ChallengeBase F G1 G2 GT) (nonce : Nat) :
    pointNonce (basePoint base nonce) = nonce := by
  cases base <;> rfl

/-- Exact factorization of every typed challenge point into its nonce-free
payload cache key and retry nonce. -/
def challengePointEquivBaseNonce
    {F G1 G2 GT : Type} :
    Ipp.ChallengePoint F G1 G2 GT ≃
      ChallengeBase F G1 G2 GT × Nat where
  toFun point := (pointBase point, pointNonce point)
  invFun pair := basePoint pair.1 pair.2
  left_inv := basePoint_pointBase_pointNonce
  right_inv pair := by
    apply Prod.ext
    · exact pointBase_basePoint pair.1 pair.2
    · exact pointNonce_basePoint pair.1 pair.2

/-- Retry-coordinate sets for distinct nonce-free payloads are disjoint. -/
theorem basePoint_pair_injective
    {F G1 G2 GT : Type} :
    Function.Injective
      (fun pair : ChallengeBase F G1 G2 GT × Nat =>
        basePoint pair.1 pair.2) :=
  challengePointEquivBaseNonce.symm.injective

/-- A stateful probabilistic computation used to cache the successful result
of a complete bounded sampler by nonce-free challenge payload. -/
abbrev StateComp (σ α : Type) := σ → ProbComp (α × σ)

def stateOptionBind {σ α β : Type}
    (mx : StateComp σ (Option α))
    (f : α → StateComp σ (Option β)) :
    StateComp σ (Option β) :=
  fun initial => do
    let (sampled, middle) ← mx initial
    match sampled with
    | none => pure (none, middle)
    | some value => f value middle

/-- Pointwise successful-output domination including the exact final cache. -/
def StateSomeDom {σ α : Type}
    (left right : StateComp σ (Option α)) : Prop :=
  ∀ initial value final,
    Pr[= (some value, final) | left initial] ≤
      Pr[= (some value, final) | right initial]

theorem stateSomeDom_optionBind
    {σ α β : Type}
    {left right : StateComp σ (Option α)}
    {leftNext rightNext : α → StateComp σ (Option β)}
    (hsource : StateSomeDom left right)
    (hnext : ∀ value, StateSomeDom (leftNext value) (rightNext value)) :
    StateSomeDom
      (stateOptionBind left leftNext)
      (stateOptionBind right rightNext) := by
  intro initial output final
  rw [stateOptionBind, stateOptionBind, probOutput_bind_eq_tsum,
    probOutput_bind_eq_tsum]
  apply ENNReal.tsum_le_tsum
  intro sampled
  rcases sampled with ⟨sampled, middle⟩
  cases sampled with
  | none =>
      have hzero :
          Pr[= (some output, final) |
            (pure (none, middle) :
              ProbComp (Option β × σ))] = 0 := by
        simp
      rw [hzero, mul_zero, mul_zero]
  | some value =>
      exact mul_le_mul'
        (hsource initial value middle)
        (hnext value middle output final)

def stateOptionMap {σ α β : Type}
    (f : α → β) (mx : StateComp σ (Option α)) :
    StateComp σ (Option β) :=
  fun initial =>
    (fun result => (Option.map f result.1, result.2)) <$> mx initial

theorem stateSomeDom_optionMap
    {σ α β : Type} (f : α → β)
    {left right : StateComp σ (Option α)}
    (h : StateSomeDom left right) :
    StateSomeDom (stateOptionMap f left) (stateOptionMap f right) := by
  classical
  letI : DecidableEq β := Classical.decEq β
  letI : DecidableEq σ := Classical.decEq σ
  intro initial output final
  rw [stateOptionMap, stateOptionMap,
    probOutput_map_eq_tsum_ite, probOutput_map_eq_tsum_ite]
  apply ENNReal.tsum_le_tsum
  intro sampled
  rcases sampled with ⟨sampled, middle⟩
  cases sampled with
  | none =>
      simp
  | some value =>
      simp only [Option.map]
      by_cases heq : output = f value ∧ final = middle
      · simp only [heq.1, heq.2, if_true]
        exact h initial value middle
      · have hne :
          (some output, final) ≠ (some (f value), middle) := by
            simpa [Prod.ext_iff] using heq
        simp [hne]

abbrev SuccessfulCache (Base : Type) :=
  Base → Option Ipp.Bls12377.Fr

/-- Cache only successful bounded-sampler results. Exhaustion is not cached
because it immediately rejects the verifier run. -/
def cachedSuccessfulSample
    {Base : Type} [DecidableEq Base]
    (source : Base → ProbComp (Option Ipp.Bls12377.Fr))
    (base : Base) :
    StateComp (SuccessfulCache Base) (Option Ipp.Bls12377.Fr) :=
  fun cache =>
    match cache base with
    | some value => pure (some value, cache)
    | none => do
        match ← source base with
        | none => pure (none, cache)
        | some value =>
            pure (some value, Function.update cache base (some value))

theorem cachedSuccessfulSample_someDom
    {Base : Type} [DecidableEq Base]
    {left right : Base → ProbComp (Option Ipp.Bls12377.Fr)}
    (hsource : ∀ base, SomeDom (left base) (right base))
    (base : Base) :
    StateSomeDom
      (cachedSuccessfulSample left base)
      (cachedSuccessfulSample right base) := by
  intro initial value final
  unfold cachedSuccessfulSample
  cases hcached : initial base with
  | some cached =>
      simp
  | none =>
      simp only
      rw [probOutput_bind_eq_tsum, probOutput_bind_eq_tsum]
      apply ENNReal.tsum_le_tsum
      intro sampled
      cases sampled with
      | none =>
          have hzero :
              Pr[= (some value, final) |
                (pure (none, initial) :
                  ProbComp (Option Ipp.Bls12377.Fr ×
                    SuccessfulCache Base))] = 0 := by
            simp
          rw [hzero, mul_zero, mul_zero]
      | some sampled =>
          exact mul_le_mul' (hsource base sampled) le_rfl

def baseAcceptable {F G1 G2 GT : Type} [Zero F] [One F] :
    ChallengeBase F G1 G2 GT → F → Bool
  | .randomizer _ => Ipp.randomizerAcceptedB
  | .x0 _ => Ipp.nonzeroB
  | .round .. => Ipp.nonzeroB
  | .bridge _ => Ipp.nonzeroB
  | .kzg _ => Ipp.nonzeroB

def fieldBaseSource
    {G1 G2 GT : Type}
    (fuel : Nat)
    (base : ChallengeBase Ipp.Bls12377.Fr G1 G2 GT) :
    ProbComp (Option Ipp.Bls12377.Fr) :=
  fieldFreshSample fuel (baseAcceptable base)

/-- All GIPA rounds over a cache shared by nonce-free challenge payload. -/
def cachedRounds
    {G1 G2 GT : Type}
    [DecidableEq G1] [DecidableEq G2] [DecidableEq GT]
    (source :
      ChallengeBase Ipp.Bls12377.Fr G1 G2 GT →
        ProbComp (Option Ipp.Bls12377.Fr)) :
    (μ : Nat) → Ipp.Bls12377.Fr → (Fin μ → Ipp.RoundComs G1 GT) →
      StateComp
        (SuccessfulCache
          (ChallengeBase Ipp.Bls12377.Fr G1 G2 GT))
        (Option (Ipp.RoundTranscript μ Ipp.Bls12377.Fr))
  | 0, previous, _ => fun cache => pure (some {
      prev := Fin.elim0
      answer := Fin.elim0
      nonce := Fin.elim0
      last := previous }, cache)
  | μ + 1, previous, rounds =>
      stateOptionBind
        (cachedSuccessfulSample source
          (.round previous (rounds 0))) fun value =>
        stateOptionMap (fun tail => {
          prev := Fin.cases previous tail.prev
          answer := Fin.cases value tail.answer
          nonce := Fin.cases 0 tail.nonce
          last := tail.last })
          (cachedRounds source μ value (fun i => rounds i.succ))

theorem cachedRounds_someDom
    {G1 G2 GT : Type}
    [DecidableEq G1] [DecidableEq G2] [DecidableEq GT]
    {left right :
      ChallengeBase Ipp.Bls12377.Fr G1 G2 GT →
        ProbComp (Option Ipp.Bls12377.Fr)}
    (hsource : ∀ base, SomeDom (left base) (right base))
    (μ : Nat) (previous : Ipp.Bls12377.Fr)
    (rounds : Fin μ → Ipp.RoundComs G1 GT) :
    StateSomeDom
      (cachedRounds left μ previous rounds)
      (cachedRounds right μ previous rounds) := by
  induction μ generalizing previous with
  | zero =>
      intro initial output final
      simp [cachedRounds]
  | succ μ ih =>
      apply stateSomeDom_optionBind
        (cachedSuccessfulSample_someDom hsource
          (.round previous (rounds 0)))
      intro value
      exact stateSomeDom_optionMap _
        (ih value (fun i => rounds i.succ))

/-- Complete verifier transcript using one shared cache of bounded sampler
results keyed by nonce-free challenge payload. -/
def cachedTranscript
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
    StateComp
      (SuccessfulCache
        (ChallengeBase Ipp.Bls12377.Fr G1 G2 GT))
      (Option (Ipp.FsTranscript μ Ipp.Bls12377.Fr)) :=
  stateOptionBind
    (cachedSuccessfulSample source
      (.randomizer
        { comA := proof.ComA.1, comB := proof.ComB, comC := proof.ComA.2 }))
    fun randomizer =>
  stateOptionBind
    (cachedSuccessfulSample source
      (.x0
        { r := randomizer
          comA := proof.ComA.1
          comB := proof.ComB
          comC := proof.ComA.2
          ipAb := proof.ipAb
          aggC := proof.aggC }))
    fun x0 =>
  stateOptionBind (cachedRounds source μ x0 proof.rounds) fun rounds =>
  stateOptionBind
    (cachedSuccessfulSample source
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
    (cachedSuccessfulSample source
      (.kzg
        { bridgeChallenge := bridge
          vFinal := proof.vFinal
          wFinal := proof.wFinal }))

theorem cachedTranscript_someDom
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
      (cachedTranscript left stmt proof)
      (cachedTranscript right stmt proof) := by
  unfold cachedTranscript
  apply stateSomeDom_optionBind
    (cachedSuccessfulSample_someDom hsource _)
  intro randomizer
  apply stateSomeDom_optionBind
    (cachedSuccessfulSample_someDom hsource _)
  intro x0
  apply stateSomeDom_optionBind
    (cachedRounds_someDom hsource μ x0 proof.rounds)
  intro rounds
  apply stateSomeDom_optionBind
    (cachedSuccessfulSample_someDom hsource _)
  intro bridge
  exact stateSomeDom_optionMap _
    (cachedSuccessfulSample_someDom hsource _)

def stateOptionSatisfies {σ α : Type}
    (predicate : α → Prop) (output : Option α × σ) : Prop :=
  optionSatisfies predicate output.1

theorem probEvent_stateOptionSatisfies_le_of_stateSomeDom
    {σ α : Type}
    {left right : StateComp σ (Option α)}
    (h : StateSomeDom left right)
    (initial : σ)
    (predicate : α → Prop) :
    Pr[stateOptionSatisfies predicate | left initial] ≤
      Pr[stateOptionSatisfies predicate | right initial] := by
  rw [probEvent_eq_tsum_indicator, probEvent_eq_tsum_indicator]
  apply ENNReal.tsum_le_tsum
  intro output
  rcases output with ⟨output, final⟩
  cases output with
  | none =>
      simp [stateOptionSatisfies, optionSatisfies]
  | some value =>
      by_cases hsatisfies : predicate value
      · simpa [stateOptionSatisfies, optionSatisfies, hsatisfies] using
          h initial value final
      · simp [stateOptionSatisfies, optionSatisfies, hsatisfies]

/-- Typed payload serialized by the shipping verifier at a challenge point. -/
def pointMessage :
    Ipp.ChallengePoint Ipp.Bls12377.Fr Ipp.Bls12377.g1PrimeSubgroup
        Ipp.Bls12377.g2PrimeSubgroup
        Ipp.ChallengeMessageSerialization.CanonicalGt →
      Ipp.ChallengeMessageSerialization.ChallengeMessage
  | .randomizer payload _ => .randomizer payload
  | .x0 payload _ => .x0 payload
  | .round previous commitments _ => .round (previous, commitments)
  | .bridge payload _ => .bridge payload
  | .kzg payload _ => .kzg payload

abbrev ShippingPoint :=
  Ipp.ChallengePoint Ipp.Bls12377.Fr Ipp.Bls12377.g1PrimeSubgroup
    Ipp.Bls12377.g2PrimeSubgroup
    Ipp.ChallengeMessageSerialization.CanonicalGt

/-- Exact challenge frame passed to the family-specific Blake2b digest.  The
digest's fixed family prefix is modeled separately by
`shippingBlake2bPreimage`. -/
def shippingPreimage
    (context : Ipp.ChallengeEncoding.Context)
    (point : ShippingPoint) : List UInt8 :=
  Ipp.ChallengeEncoding.challengePreimage
    (Ipp.challengePointStage point) context
    (nonceBytes (pointNonce point))
    (Ipp.ChallengeMessageSerialization.serializeChallengeMessage
      (pointMessage point))

theorem shippingPreimage_eq_challengePointPreimage
    (context : Ipp.ChallengeEncoding.Context)
    (point : ShippingPoint) :
    shippingPreimage context point =
      Ipp.challengePointPreimage
        (fun _ => context)
        (fun point => nonceBytes (pointNonce point))
        (fun point =>
      Ipp.ChallengeMessageSerialization.serializeChallengeMessage
            (pointMessage point))
        point := by
  rfl

/-- Exact byte string consumed by Blake2b: the production family-domain
prefix followed by the fully framed challenge query.  Unsupported families
use an empty prefix only to keep the encoder total; the shipping composition
proves registration before this function is used. -/
def shippingBlake2bPreimage
    (family : Ipp.ShippingV1.Family)
    (context : Ipp.ChallengeEncoding.Context)
    (point : ShippingPoint) : List UInt8 :=
  family.transcriptDomain.getD [] ++ shippingPreimage context point

theorem shippingBlake2bPreimage_of_registered
    (family : Ipp.ShippingV1.Family)
    (context : Ipp.ChallengeEncoding.Context)
    (point : ShippingPoint)
    {domain : List UInt8}
    (hregistered : family.transcriptDomain = some domain) :
    shippingBlake2bPreimage family context point =
      domain ++ shippingPreimage context point := by
  simp [shippingBlake2bPreimage, hregistered]

/-- Challenge points whose nonce is representable by the deployed `u64`
counter. -/
abbrev BoundedShippingPoint :=
  {point : ShippingPoint // pointNonce point < rejectionFuel}

set_option maxHeartbeats 1000000 in
/-- Distinct typed challenge points in the deployed nonce domain have distinct
byte-oracle preimages. This supplies the one-to-one query correspondence used
by the shipping/`FsGame` coupling. -/
theorem shippingPreimage_bounded_injective
    (context : Ipp.ChallengeEncoding.Context) :
    Function.Injective
      (fun point : BoundedShippingPoint =>
        shippingPreimage context point.1) := by
  rintro ⟨left, hleft⟩ ⟨right, hright⟩ heq
  have htuple :
      (Ipp.challengePointStage left, context,
          nonceBytes (pointNonce left),
          Ipp.ChallengeMessageSerialization.serializeChallengeMessage
            (pointMessage left)) =
        (Ipp.challengePointStage right, context,
          nonceBytes (pointNonce right),
          Ipp.ChallengeMessageSerialization.serializeChallengeMessage
            (pointMessage right)) :=
    Ipp.ChallengeEncoding.challengePreimage_injective heq
  have hnonce :
      nonceBytes (pointNonce left) =
        nonceBytes (pointNonce right) := by
    simpa using congrArg (fun value => value.2.2.1) htuple
  have hnonceNat :
      pointNonce left = pointNonce right :=
    nonceBytes_injective_of_lt hleft hright hnonce
  have hmessageBytes :
      Ipp.ChallengeMessageSerialization.serializeChallengeMessage
          (pointMessage left) =
        Ipp.ChallengeMessageSerialization.serializeChallengeMessage
          (pointMessage right) := by
    simpa using congrArg (fun value => value.2.2.2) htuple
  have hmessage :
      pointMessage left = pointMessage right :=
    Ipp.ChallengeMessageSerialization.challenge_message_serialize_injective
      hmessageBytes
  apply Subtype.ext
  cases left <;> cases right <;>
    simp_all [pointNonce, pointMessage, Ipp.challengePointStage]

/-- Prefixing every framed query by the same concrete family domain preserves
the already-proved one-to-one correspondence with typed challenge points. -/
theorem shippingBlake2bPreimage_bounded_injective
    (family : Ipp.ShippingV1.Family)
    (context : Ipp.ChallengeEncoding.Context) :
    Function.Injective
      (fun point : BoundedShippingPoint =>
        shippingBlake2bPreimage family context point.1) := by
  intro left right heq
  apply shippingPreimage_bounded_injective context
  exact List.append_right_injective
    (family.transcriptDomain.getD []) heq

/-- Nonce-free concrete payloads used by the deployed BLS12-377 challenge
sampler. -/
abbrev ShippingBase :=
  ChallengeBase Ipp.Bls12377.Fr Ipp.Bls12377.g1PrimeSubgroup
    Ipp.Bls12377.g2PrimeSubgroup
    Ipp.ChallengeMessageSerialization.CanonicalGt

def shippingBaseMessage (base : ShippingBase) :
    Ipp.ChallengeMessageSerialization.ChallengeMessage :=
  pointMessage (basePoint base 0)

theorem shippingBaseMessage_injective :
    Function.Injective shippingBaseMessage := by
  intro left right h
  cases left <;> cases right <;>
    simp_all [shippingBaseMessage, basePoint, pointMessage]

theorem shippingBaseMessage_length_le (base : ShippingBase) :
    (Ipp.ChallengeMessageSerialization.serializeChallengeMessage
      (shippingBaseMessage base)).length ≤ 4864 := by
  rw [Ipp.ChallengeMessageSerialization.serializeChallengeMessage_length]
  cases base <;> simp [shippingBaseMessage, basePoint, pointMessage,
    Ipp.ChallengeMessageSerialization.messageLength]

/-- Finite code for every nonce-free shipping payload. The first coordinate
records the exact serialized length and the second zero-pads to the largest
stage-message width. -/
noncomputable def shippingBaseCode (base : ShippingBase) :
    Fin 4865 × (Fin 4864 → UInt8) :=
  let bytes :=
    Ipp.ChallengeMessageSerialization.serializeChallengeMessage
      (shippingBaseMessage base)
  (⟨bytes.length, Nat.lt_succ_of_le (shippingBaseMessage_length_le base)⟩,
    fun i =>
      if h : i.val < bytes.length then bytes.get ⟨i.val, h⟩ else 0)

theorem shippingBaseCode_injective :
    Function.Injective shippingBaseCode := by
  intro left right hcode
  apply shippingBaseMessage_injective
  apply Ipp.ChallengeMessageSerialization.challenge_message_serialize_injective
  apply List.ext_get
  · exact congrArg (fun code => code.1.val) hcode
  · intro i hleft hright
    have hi : i < 4864 :=
      lt_of_lt_of_le hleft (shippingBaseMessage_length_le left)
    have hfunctions :
        (shippingBaseCode left).2 = (shippingBaseCode right).2 :=
      congrArg Prod.snd hcode
    simpa [shippingBaseCode, hleft, hright] using
      congrFun hfunctions ⟨i, hi⟩

/-- The deployed nonce-free payload domain is finite because its canonical
serializer is injective and has one of five bounded fixed widths. -/
noncomputable instance shippingBaseFinite : Finite ShippingBase :=
  Finite.of_injective shippingBaseCode shippingBaseCode_injective

/-- Exact finite coordinate of one deployed bounded hash attempt. -/
abbrev BoundedAttempt (G1 G2 GT : Type) :=
  ChallengeBase Ipp.Bls12377.Fr G1 G2 GT × Fin rejectionFuel

abbrev ShippingAttempt :=
  BoundedAttempt Ipp.Bls12377.g1PrimeSubgroup
    Ipp.Bls12377.g2PrimeSubgroup
    Ipp.ChallengeMessageSerialization.CanonicalGt

def shippingAttemptPoint (attempt : ShippingAttempt) : ShippingPoint :=
  basePoint attempt.1 attempt.2.val

def boundedShippingAttemptPoint
    (attempt : ShippingAttempt) : BoundedShippingPoint :=
  ⟨shippingAttemptPoint attempt, by
    simpa [shippingAttemptPoint, pointNonce_basePoint] using attempt.2.isLt⟩

def shippingAttemptPreimage
    (context : Ipp.ChallengeEncoding.Context)
    (attempt : ShippingAttempt) : List UInt8 :=
  shippingPreimage context (shippingAttemptPoint attempt)

/-- The concrete finite base/nonce attempt domain injects into deployed byte
preimages. This is the exact input to the generic lazy-RO reindex theorem. -/
theorem shippingAttemptPreimage_injective
    (context : Ipp.ChallengeEncoding.Context) :
    Function.Injective (shippingAttemptPreimage context) := by
  intro left right heq
  have hbounded :
      boundedShippingAttemptPoint left =
        boundedShippingAttemptPoint right :=
    shippingPreimage_bounded_injective context heq
  have hpoint :
      shippingAttemptPoint left = shippingAttemptPoint right :=
    congrArg Subtype.val hbounded
  have hpair :
      (left.1, left.2.val) = (right.1, right.2.val) :=
    basePoint_pair_injective hpoint
  apply Prod.ext
  · exact congrArg (fun pair : ShippingBase × Nat => pair.1) hpair
  · apply Fin.ext
    exact congrArg (fun pair : ShippingBase × Nat => pair.2) hpair

/-- Ideal digest oracle indexed by the exact finite deployed attempt domain. -/
abbrev AttemptOracleSpec (G1 G2 GT : Type) :=
  BoundedAttempt G1 G2 GT →ₒ DigestBytes

abbrev ShippingAttemptOracleSpec :=
  AttemptOracleSpec Ipp.Bls12377.g1PrimeSubgroup
    Ipp.Bls12377.g2PrimeSubgroup
    Ipp.ChallengeMessageSerialization.CanonicalGt

local instance {G1 G2 GT : Type} :
    IsUniformSpec (AttemptOracleSpec G1 G2 GT) :=
  IsUniformSpec.ofFintypeInhabited _

/-- One bounded sampler over the finite base/nonce attempt oracle. The proof
argument makes every constructed nonce a `Fin rejectionFuel`; no unbounded
or wrapping query can be expressed. -/
def queryDecodedAttemptOracle
    {G1 G2 GT : Type}
    (base : ChallengeBase Ipp.Bls12377.Fr G1 G2 GT)
    (acceptable : Ipp.Bls12377.Fr → Bool) :
    (fuel start : Nat) → start + fuel ≤ rejectionFuel →
      OracleComp (AttemptOracleSpec G1 G2 GT)
        (Option Ipp.Bls12377.Fr)
  | 0, _, _ => pure none
  | fuel + 1, start, hbound => do
      have hstart : start < rejectionFuel := by omega
      let digest ← (AttemptOracleSpec G1 G2 GT).query
        (base, ⟨start, hstart⟩)
      match shippingDecodeFr digest with
      | none =>
          queryDecodedAttemptOracle base acceptable fuel (start + 1)
            (by omega)
      | some value =>
          if acceptable value then
            pure (some value)
          else
            queryDecodedAttemptOracle base acceptable fuel (start + 1)
              (by omega)

def queryDecodedAttemptOracleFull
    {G1 G2 GT : Type}
    (base : ChallengeBase Ipp.Bls12377.Fr G1 G2 GT)
    (acceptable : Ipp.Bls12377.Fr → Bool) :
    OracleComp (AttemptOracleSpec G1 G2 GT)
      (Option Ipp.Bls12377.Fr) :=
  queryDecodedAttemptOracle base acceptable rejectionFuel 0 (by simp)

/-- Under fresh-query semantics, the finite attempt-indexed computation is
exactly the previously proved independent digest retry sampler. -/
theorem evalDist_queryDecodedAttemptOracle
    [SampleableType DigestBytes]
    {G1 G2 GT : Type}
    (base : ChallengeBase Ipp.Bls12377.Fr G1 G2 GT)
    (acceptable : Ipp.Bls12377.Fr → Bool)
    (fuel start : Nat)
    (hbound : start + fuel ≤ rejectionFuel) :
    𝒟[queryDecodedAttemptOracle base acceptable fuel start hbound] =
      𝒟[firstSome (shippingFreshDecodedAttempt acceptable) fuel] := by
  induction fuel generalizing start with
  | zero =>
      rw [queryDecodedAttemptOracle.eq_def, firstSome]
      rfl
  | succ fuel ih =>
      rw [queryDecodedAttemptOracle.eq_def, firstSome]
      simp only [shippingFreshDecodedAttempt, map_eq_bind_pure_comp,
        bind_assoc]
      rw [evalDist_bind, evalDist_bind]
      rw [evalDist_query, evalDist_uniformSample]
      refine congrArg _ ?_
      funext digest
      rw [shippingDecodeFr_eq_some]
      by_cases hacceptable :
          acceptable (Ipp.ShippingScalarReduction.reduceFr digest) = true
      · simp [acceptOption, hacceptable]
      · simpa [acceptOption, hacceptable] using
          ih (start + 1) (by omega)

theorem evalDist_queryDecodedAttemptOracleFull
    [SampleableType DigestBytes]
    {G1 G2 GT : Type}
    (base : ChallengeBase Ipp.Bls12377.Fr G1 G2 GT)
    (acceptable : Ipp.Bls12377.Fr → Bool) :
    𝒟[queryDecodedAttemptOracleFull base acceptable] =
      𝒟[shippingDecodedFreshSample rejectionFuel acceptable] := by
  exact evalDist_queryDecodedAttemptOracle
    base acceptable rejectionFuel 0 (by simp)

/-- Byte-valued random oracle used by the idealized shipping hash execution. -/
abbrev Blake2bOracleSpec := List UInt8 →ₒ DigestBytes

/-- One accepted scalar result per nonce-free payload. `none` is fail-closed
exhaustion of that payload's complete bounded retry domain. -/
abbrev ResultOracleSpec (G1 G2 GT : Type) :=
  ChallengeBase Ipp.Bls12377.Fr G1 G2 GT →ₒ
    Option Ipp.Bls12377.Fr

/-- GIPA round transcript over the payload-result oracle. -/
def resultRoundsOracle
    {G1 G2 GT : Type} :
    (μ : Nat) → Ipp.Bls12377.Fr → (Fin μ → Ipp.RoundComs G1 GT) →
      OracleComp (ResultOracleSpec G1 G2 GT)
        (Option (Ipp.RoundTranscript μ Ipp.Bls12377.Fr))
  | 0, previous, _ => pure (some {
      prev := Fin.elim0
      answer := Fin.elim0
      nonce := Fin.elim0
      last := previous })
  | μ + 1, previous, rounds => do
      let sampled ← (ResultOracleSpec G1 G2 GT).query
        (.round previous (rounds 0))
      match sampled with
      | none => pure none
      | some value =>
          let tail ← resultRoundsOracle μ value
            (fun i => rounds i.succ)
          match tail with
          | none => pure none
          | some tail => pure (some {
              prev := Fin.cases previous tail.prev
              answer := Fin.cases value tail.answer
              nonce := Fin.cases 0 tail.nonce
              last := tail.last })

/-- Complete nonce-erased verifier transcript after each bounded retry stage
has been factored into one payload-result query. -/
def resultTranscriptOracle
    {G1 G2 GT : Type}
    [AddCommGroup G1] [Module Ipp.Bls12377.Fr G1]
    [AddCommGroup G2] [Module Ipp.Bls12377.Fr G2]
    [AddCommGroup GT] [Module Ipp.Bls12377.Fr GT]
    {μ : Nat}
    (stmt : Ipp.FsStatement μ Ipp.Bls12377.Fr G1 G2 GT)
    (proof : Ipp.Proof μ Ipp.Bls12377.Fr G1 G2 GT) :
    OracleComp (ResultOracleSpec G1 G2 GT)
      (Option (Ipp.FsTranscript μ Ipp.Bls12377.Fr)) := do
  let randomizer ← (ResultOracleSpec G1 G2 GT).query
    (.randomizer
      { comA := proof.ComA.1, comB := proof.ComB, comC := proof.ComA.2 })
  match randomizer with
  | none => pure none
  | some randomizer =>
    let x0 ← (ResultOracleSpec G1 G2 GT).query
      (.x0
        { r := randomizer
          comA := proof.ComA.1
          comB := proof.ComB
          comC := proof.ComA.2
          ipAb := proof.ipAb
          aggC := proof.aggC })
    match x0 with
    | none => pure none
    | some x0 =>
      let rounds ← resultRoundsOracle μ x0 proof.rounds
      match rounds with
      | none => pure none
      | some rounds =>
        let bridge ← (ResultOracleSpec G1 G2 GT).query
          (.bridge
            { lastRawChallenge := rounds.last
              vFinal := proof.vFinal
              wFinal := proof.wFinal
              aFinal := proof.aFinal
              bFinal := proof.bFinal
              cFinal := proof.cFinal })
        match bridge with
        | none => pure none
        | some bridge =>
          let kzg ← (ResultOracleSpec G1 G2 GT).query
            (.kzg
              { bridgeChallenge := bridge
                vFinal := proof.vFinal
                wFinal := proof.wFinal })
          match kzg with
          | none => pure none
          | some kzg => pure (some {
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

/-- Each payload-result query is implemented by the exact finite sequence of
deployed digest attempts and stage-specific acceptance predicate. -/
def attemptResultImpl
    {G1 G2 GT : Type} :
    QueryImpl (ResultOracleSpec G1 G2 GT)
      (OracleComp (AttemptOracleSpec G1 G2 GT)) :=
  fun base =>
    queryDecodedAttemptOracleFull base (baseAcceptable base)

/-- Complete nonce-erased verifier transcript over the exact finite attempt
oracle. Lazy interpretation preserves repeated payload/nonce consistency. -/
def attemptTranscriptOracle
    {G1 G2 GT : Type}
    [AddCommGroup G1] [Module Ipp.Bls12377.Fr G1]
    [AddCommGroup G2] [Module Ipp.Bls12377.Fr G2]
    [AddCommGroup GT] [Module Ipp.Bls12377.Fr GT]
    {μ : Nat}
    (stmt : Ipp.FsStatement μ Ipp.Bls12377.Fr G1 G2 GT)
    (proof : Ipp.Proof μ Ipp.Bls12377.Fr G1 G2 GT) :
    OracleComp (AttemptOracleSpec G1 G2 GT)
      (Option (Ipp.FsTranscript μ Ipp.Bls12377.Fr)) :=
  simulateQ attemptResultImpl (resultTranscriptOracle stmt proof)

/-- All digest answers for one payload's exact `u64` retry domain. -/
abbrev DigestBlock := Fin rejectionFuel → DigestBytes

/-- One lazy uniform digest block per nonce-free challenge payload. -/
abbrev BlockOracleSpec (G1 G2 GT : Type) :=
  ChallengeBase Ipp.Bls12377.Fr G1 G2 GT →ₒ DigestBlock

/-- Pure interpretation of one bounded digest block. -/
def decodeBlock
    (acceptable : Ipp.Bls12377.Fr → Bool)
    (block : DigestBlock) :
    (fuel start : Nat) → start + fuel ≤ rejectionFuel →
      Option Ipp.Bls12377.Fr
  | 0, _, _ => none
  | fuel + 1, start, hbound =>
      have hstart : start < rejectionFuel := by omega
      match shippingDecodeFr (block ⟨start, hstart⟩) with
      | none =>
          decodeBlock acceptable block fuel (start + 1) (by omega)
      | some value =>
          if acceptable value then
            some value
          else
            decodeBlock acceptable block fuel (start + 1) (by omega)

def decodeBlockFull
    (acceptable : Ipp.Bls12377.Fr → Bool)
    (block : DigestBlock) : Option Ipp.Bls12377.Fr :=
  decodeBlock acceptable block rejectionFuel 0 (by simp)

abbrev DigestBlockOracleSpec := Fin rejectionFuel →ₒ DigestBytes

local instance : IsUniformSpec DigestBlockOracleSpec :=
  IsUniformSpec.ofFintypeInhabited _

/-- Oracle form of the block decoder. Every recursive step queries the next
strictly larger nonce coordinate. -/
def queryDecodedBlockOracle
    (acceptable : Ipp.Bls12377.Fr → Bool) :
    (fuel start : Nat) → start + fuel ≤ rejectionFuel →
      OracleComp DigestBlockOracleSpec (Option Ipp.Bls12377.Fr)
  | 0, _, _ => pure none
  | fuel + 1, start, hbound => do
      have hstart : start < rejectionFuel := by omega
      let digest ← DigestBlockOracleSpec.query ⟨start, hstart⟩
      match shippingDecodeFr digest with
      | none =>
          queryDecodedBlockOracle acceptable fuel (start + 1) (by omega)
      | some value =>
          if acceptable value then
            pure (some value)
          else
            queryDecodedBlockOracle acceptable fuel (start + 1) (by omega)

def queryDecodedBlockOracleFull
    (acceptable : Ipp.Bls12377.Fr → Bool) :
    OracleComp DigestBlockOracleSpec (Option Ipp.Bls12377.Fr) :=
  queryDecodedBlockOracle acceptable rejectionFuel 0 (by simp)

theorem evalDist_queryDecodedBlockOracle
    [SampleableType DigestBytes]
    (acceptable : Ipp.Bls12377.Fr → Bool)
    (fuel start : Nat)
    (hbound : start + fuel ≤ rejectionFuel) :
    𝒟[queryDecodedBlockOracle acceptable fuel start hbound] =
      𝒟[firstSome (shippingFreshDecodedAttempt acceptable) fuel] := by
  induction fuel generalizing start with
  | zero =>
      rw [queryDecodedBlockOracle.eq_def, firstSome]
      rfl
  | succ fuel ih =>
      rw [queryDecodedBlockOracle.eq_def, firstSome]
      simp only [shippingFreshDecodedAttempt, map_eq_bind_pure_comp,
        bind_assoc]
      rw [evalDist_bind, evalDist_bind]
      rw [evalDist_query, evalDist_uniformSample]
      refine congrArg _ (funext fun digest => ?_)
      rw [shippingDecodeFr_eq_some]
      by_cases hacceptable :
          acceptable (Ipp.ShippingScalarReduction.reduceFr digest) = true
      · simp [acceptOption, hacceptable]
      · simpa [acceptOption, hacceptable] using
          ih (start + 1) (by omega)

theorem evalWithAnswerFn_queryDecodedBlockOracle
    (block : DigestBlock)
    (acceptable : Ipp.Bls12377.Fr → Bool)
    (fuel start : Nat)
    (hbound : start + fuel ≤ rejectionFuel) :
    evalWithAnswerFn (QueryImpl.ofFn block)
        (queryDecodedBlockOracle acceptable fuel start hbound) =
      decodeBlock acceptable block fuel start hbound := by
  induction fuel generalizing start with
  | zero =>
      rfl
  | succ fuel ih =>
      rw [queryDecodedBlockOracle.eq_def, decodeBlock.eq_def,
        evalWithAnswerFn_bind]
      rw [show
        evalWithAnswerFn (QueryImpl.ofFn block)
            (liftM (DigestBlockOracleSpec.query ⟨start, by omega⟩)) =
          block ⟨start, by omega⟩ from
        simulateQ_spec_query
          (impl := QueryImpl.ofFn block) ⟨start, by omega⟩]
      rw [shippingDecodeFr_eq_some]
      by_cases hacceptable :
          acceptable
            (Ipp.ShippingScalarReduction.reduceFr
              (block ⟨start, by omega⟩)) = true
      · simp [hacceptable]
      · simpa [hacceptable] using
          ih (start + 1) (by omega)

/-- A block-oracle cache contains no entry at the current or any later nonce.
The bounded sampler preserves this invariant because it queries nonces in
strictly increasing order. -/
def BlockCacheFreshFrom
    (cache : DigestBlockOracleSpec.QueryCache) (start : Nat) : Prop :=
  ∀ nonce, start ≤ nonce.val → cache nonce = none

theorem blockCacheFreshFrom_empty (start : Nat) :
    BlockCacheFreshFrom (∅ : DigestBlockOracleSpec.QueryCache) start := by
  intro nonce _
  simp

theorem blockCacheFreshFrom_cacheQuery
    (cache : DigestBlockOracleSpec.QueryCache)
    (start : Nat) (hstart : start < rejectionFuel)
    (digest : DigestBytes)
    (hfresh : BlockCacheFreshFrom cache start) :
    BlockCacheFreshFrom
      (cache.cacheQuery ⟨start, hstart⟩ digest) (start + 1) := by
  intro nonce hnonce
  have hne : nonce ≠ ⟨start, hstart⟩ := by
    intro heq
    have : nonce.val = start := congrArg Fin.val heq
    omega
  rw [QueryCache.cacheQuery_of_ne _ _ hne]
  exact hfresh nonce (by omega)

/-- Deterministic table evaluation of the fine-grained attempt sampler is
exactly interpretation of the corresponding curried digest block. -/
theorem evalWithAnswerFn_queryDecodedAttemptOracle
    {G1 G2 GT : Type}
    (table : BoundedAttempt G1 G2 GT → DigestBytes)
    (base : ChallengeBase Ipp.Bls12377.Fr G1 G2 GT)
    (acceptable : Ipp.Bls12377.Fr → Bool)
    (fuel start : Nat)
    (hbound : start + fuel ≤ rejectionFuel) :
    evalWithAnswerFn (QueryImpl.ofFn table)
        (queryDecodedAttemptOracle base acceptable fuel start hbound) =
      decodeBlock acceptable
        (fun nonce => table (base, nonce)) fuel start hbound := by
  induction fuel generalizing start with
  | zero =>
      rfl
  | succ fuel ih =>
      rw [queryDecodedAttemptOracle.eq_def, decodeBlock.eq_def,
        evalWithAnswerFn_bind]
      rw [show
        evalWithAnswerFn (QueryImpl.ofFn table)
            (liftM ((AttemptOracleSpec G1 G2 GT).query
              (base, ⟨start, by omega⟩))) =
          table (base, ⟨start, by omega⟩) from
        simulateQ_spec_query
          (impl := QueryImpl.ofFn table) (base, ⟨start, by omega⟩)]
      rw [shippingDecodeFr_eq_some]
      by_cases hacceptable :
          acceptable
            (Ipp.ShippingScalarReduction.reduceFr
              (table (base, ⟨start, by omega⟩))) = true
      · simp [hacceptable]
      · simpa [hacceptable] using
          ih (start + 1) (by omega)

theorem evalWithAnswerFn_queryDecodedAttemptOracleFull
    {G1 G2 GT : Type}
    (table : BoundedAttempt G1 G2 GT → DigestBytes)
    (base : ChallengeBase Ipp.Bls12377.Fr G1 G2 GT)
    (acceptable : Ipp.Bls12377.Fr → Bool) :
    evalWithAnswerFn (QueryImpl.ofFn table)
        (queryDecodedAttemptOracleFull base acceptable) =
      decodeBlockFull acceptable
        ((Equiv.curry
          (ChallengeBase Ipp.Bls12377.Fr G1 G2 GT)
          (Fin rejectionFuel) DigestBytes) table base) := by
  exact evalWithAnswerFn_queryDecodedAttemptOracle
    table base acceptable rejectionFuel 0 (by simp)

def blockResultProcess
    {G1 G2 GT : Type}
    (base : ChallengeBase Ipp.Bls12377.Fr G1 G2 GT)
    (block : DigestBlock) : Option Ipp.Bls12377.Fr :=
  decodeBlockFull (baseAcceptable base) block

/-- Payload-result verifier interpreted through one full digest block on each
payload-cache miss. -/
def blockTranscriptOracle
    {G1 G2 GT : Type}
    [AddCommGroup G1] [Module Ipp.Bls12377.Fr G1]
    [AddCommGroup G2] [Module Ipp.Bls12377.Fr G2]
    [AddCommGroup GT] [Module Ipp.Bls12377.Fr GT]
    {μ : Nat}
    (stmt : Ipp.FsStatement μ Ipp.Bls12377.Fr G1 G2 GT)
    (proof : Ipp.Proof μ Ipp.Bls12377.Fr G1 G2 GT) :
    OracleComp (BlockOracleSpec G1 G2 GT)
      (Option (Ipp.FsTranscript μ Ipp.Bls12377.Fr)) :=
  simulateQ
    (Ipp.RandomOracleMap.mapRangeImpl
      (@blockResultProcess G1 G2 GT))
    (resultTranscriptOracle stmt proof)

/-- Currying a deterministic fine-grained attempt table into payload blocks
does not change the nonce-erased verifier result. -/
theorem evalWithAnswerFn_attemptTranscript_eq_block
    {G1 G2 GT : Type}
    [AddCommGroup G1] [Module Ipp.Bls12377.Fr G1]
    [AddCommGroup G2] [Module Ipp.Bls12377.Fr G2]
    [AddCommGroup GT] [Module Ipp.Bls12377.Fr GT]
    {μ : Nat}
    (table : BoundedAttempt G1 G2 GT → DigestBytes)
    (stmt : Ipp.FsStatement μ Ipp.Bls12377.Fr G1 G2 GT)
    (proof : Ipp.Proof μ Ipp.Bls12377.Fr G1 G2 GT) :
    evalWithAnswerFn (QueryImpl.ofFn table)
        (attemptTranscriptOracle stmt proof) =
      evalWithAnswerFn
        (QueryImpl.ofFn
          ((Equiv.curry
            (ChallengeBase Ipp.Bls12377.Fr G1 G2 GT)
            (Fin rejectionFuel) DigestBytes) table))
        (blockTranscriptOracle stmt proof) := by
  rw [attemptTranscriptOracle, blockTranscriptOracle,
    Ipp.RandomOracleMap.evalWithAnswerFn_simulateQ,
    Ipp.RandomOracleMap.evalWithAnswerFn_simulateQ]
  apply congrArg
    (fun answer =>
      evalWithAnswerFn answer (resultTranscriptOracle stmt proof))
  funext base
  simp only [attemptResultImpl, Ipp.RandomOracleMap.mapRangeImpl]
  have hfine :=
    evalWithAnswerFn_queryDecodedAttemptOracleFull
      table base (baseAcceptable base)
  refine hfine.trans ?_
  symm
  calc
    evalWithAnswerFn
        (QueryImpl.ofFn
          ((Equiv.curry
            (ChallengeBase Ipp.Bls12377.Fr G1 G2 GT)
            (Fin rejectionFuel) DigestBytes) table))
        (blockResultProcess base <$>
          liftM ((BlockOracleSpec G1 G2 GT).query base))
        =
      blockResultProcess base
        (evalWithAnswerFn
          (QueryImpl.ofFn
            ((Equiv.curry
              (ChallengeBase Ipp.Bls12377.Fr G1 G2 GT)
              (Fin rejectionFuel) DigestBytes) table))
          (liftM ((BlockOracleSpec G1 G2 GT).query base))) :=
        evalWithAnswerFn_map _ _ _
    _ =
      blockResultProcess base
        ((Equiv.curry
          (ChallengeBase Ipp.Bls12377.Fr G1 G2 GT)
          (Fin rejectionFuel) DigestBytes) table base) := by
        rw [show
          evalWithAnswerFn
              (QueryImpl.ofFn
                ((Equiv.curry
                  (ChallengeBase Ipp.Bls12377.Fr G1 G2 GT)
                  (Fin rejectionFuel) DigestBytes) table))
              (liftM ((BlockOracleSpec G1 G2 GT).query base)) =
            (Equiv.curry
              (ChallengeBase Ipp.Bls12377.Fr G1 G2 GT)
              (Fin rejectionFuel) DigestBytes) table base from
          simulateQ_spec_query
            (impl := QueryImpl.ofFn
              ((Equiv.curry
                (ChallengeBase Ipp.Bls12377.Fr G1 G2 GT)
                (Fin rejectionFuel) DigestBytes) table)) base]
    _ =
      decodeBlockFull (baseAcceptable base)
        ((Equiv.curry
          (ChallengeBase Ipp.Bls12377.Fr G1 G2 GT)
          (Fin rejectionFuel) DigestBytes) table base) := rfl

def attemptIdealVerifier
    {G1 G2 GT : Type}
    [AddCommGroup G1] [Module Ipp.Bls12377.Fr G1]
    [AddCommGroup G2] [Module Ipp.Bls12377.Fr G2]
    [AddCommGroup GT] [Module Ipp.Bls12377.Fr GT]
    [DecidableEq G1] [DecidableEq G2] [DecidableEq GT]
    [SampleableType DigestBytes]
    {μ : Nat}
    (stmt : Ipp.FsStatement μ Ipp.Bls12377.Fr G1 G2 GT)
    (proof : Ipp.Proof μ Ipp.Bls12377.Fr G1 G2 GT) :
    ProbComp (Option (Ipp.FsTranscript μ Ipp.Bls12377.Fr)) :=
  (simulateQ (AttemptOracleSpec G1 G2 GT).randomOracle
    (attemptTranscriptOracle stmt proof)).run' ∅

/-- Lazy uniform payload-block interpretation of the same verifier. -/
def blockIdealVerifier
    {G1 G2 GT : Type}
    [AddCommGroup G1] [Module Ipp.Bls12377.Fr G1]
    [AddCommGroup G2] [Module Ipp.Bls12377.Fr G2]
    [AddCommGroup GT] [Module Ipp.Bls12377.Fr GT]
    [DecidableEq G1] [DecidableEq G2] [DecidableEq GT]
    [SampleableType DigestBlock]
    {μ : Nat}
    (stmt : Ipp.FsStatement μ Ipp.Bls12377.Fr G1 G2 GT)
    (proof : Ipp.Proof μ Ipp.Bls12377.Fr G1 G2 GT) :
    ProbComp (Option (Ipp.FsTranscript μ Ipp.Bls12377.Fr)) :=
  (simulateQ (BlockOracleSpec G1 G2 GT).randomOracle
    (blockTranscriptOracle stmt proof)).run' ∅

/-- Lazy payload-result oracle obtained by deterministically decoding one
fresh uniform digest block on each payload-cache miss. -/
def decodedResultIdealVerifier
    {G1 G2 GT : Type}
    [AddCommGroup G1] [Module Ipp.Bls12377.Fr G1]
    [AddCommGroup G2] [Module Ipp.Bls12377.Fr G2]
    [AddCommGroup GT] [Module Ipp.Bls12377.Fr GT]
    [DecidableEq G1] [DecidableEq G2] [DecidableEq GT]
    [SampleableType DigestBlock]
    {μ : Nat}
    (stmt : Ipp.FsStatement μ Ipp.Bls12377.Fr G1 G2 GT)
    (proof : Ipp.Proof μ Ipp.Bls12377.Fr G1 G2 GT) :
    ProbComp (Option (Ipp.FsTranscript μ Ipp.Bls12377.Fr)) :=
  (simulateQ
    (Ipp.RandomOracleMap.mappedRandomOracle
      (@blockResultProcess G1 G2 GT))
    (resultTranscriptOracle stmt proof)).run' ∅

/-- The payload-block oracle and the payload-result oracle are exactly equal
after deterministic block decoding, including repeated-query caching. -/
theorem blockIdealVerifier_evalDist_eq_decodedResult
    {G1 G2 GT : Type}
    [AddCommGroup G1] [Module Ipp.Bls12377.Fr G1]
    [AddCommGroup G2] [Module Ipp.Bls12377.Fr G2]
    [AddCommGroup GT] [Module Ipp.Bls12377.Fr GT]
    [DecidableEq G1] [DecidableEq G2] [DecidableEq GT]
    [SampleableType DigestBlock]
    {μ : Nat}
    (stmt : Ipp.FsStatement μ Ipp.Bls12377.Fr G1 G2 GT)
    (proof : Ipp.Proof μ Ipp.Bls12377.Fr G1 G2 GT) :
    𝒟[blockIdealVerifier stmt proof] =
      𝒟[decodedResultIdealVerifier stmt proof] := by
  exact Ipp.RandomOracleMap.evalDist_randomOracle_mapRange
    (@blockResultProcess G1 G2 GT)
    (resultTranscriptOracle stmt proof) ∅

/-- The concrete fine-grained `(payload, nonce)` lazy oracle is exactly the
payload-block lazy oracle. This is the cache-preserving factorization needed
when two GIPA rounds repeat the same nonce-free preimage. -/
theorem attemptIdealVerifier_evalDist_eq_block
    {G1 G2 GT : Type}
    [AddCommGroup G1] [Module Ipp.Bls12377.Fr G1]
    [AddCommGroup G2] [Module Ipp.Bls12377.Fr G2]
    [AddCommGroup GT] [Module Ipp.Bls12377.Fr GT]
    [DecidableEq G1] [DecidableEq G2] [DecidableEq GT]
    [Finite (ChallengeBase Ipp.Bls12377.Fr G1 G2 GT)]
    [SampleableType DigestBytes]
    [SampleableType DigestBlock]
    [SampleableType (BoundedAttempt G1 G2 GT → DigestBytes)]
    [SampleableType
      (ChallengeBase Ipp.Bls12377.Fr G1 G2 GT → DigestBlock)]
    {μ : Nat}
    (stmt : Ipp.FsStatement μ Ipp.Bls12377.Fr G1 G2 GT)
    (proof : Ipp.Proof μ Ipp.Bls12377.Fr G1 G2 GT) :
    𝒟[attemptIdealVerifier stmt proof] =
      𝒟[blockIdealVerifier stmt proof] := by
  exact Ipp.RandomOracleCurry.evalDist_randomOracle_curry
    (attemptTranscriptOracle stmt proof)
    (blockTranscriptOracle stmt proof)
    (fun table =>
      evalWithAnswerFn_attemptTranscript_eq_block table stmt proof)

/-- The same finite-attempt verifier after injectively translating each typed
query to the deployed byte-oracle domain. -/
def reindexedByteIdealVerifier
    {G1 G2 GT : Type}
    [AddCommGroup G1] [Module Ipp.Bls12377.Fr G1]
    [AddCommGroup G2] [Module Ipp.Bls12377.Fr G2]
    [AddCommGroup GT] [Module Ipp.Bls12377.Fr GT]
    [DecidableEq G1] [DecidableEq G2] [DecidableEq GT]
    [SampleableType DigestBytes]
    {μ : Nat}
    (encode : BoundedAttempt G1 G2 GT → List UInt8)
    (stmt : Ipp.FsStatement μ Ipp.Bls12377.Fr G1 G2 GT)
    (proof : Ipp.Proof μ Ipp.Bls12377.Fr G1 G2 GT) :
    ProbComp (Option (Ipp.FsTranscript μ Ipp.Bls12377.Fr)) :=
  (simulateQ Blake2bOracleSpec.randomOracle
    (simulateQ (Ipp.RandomOracleReindex.reindexImpl encode)
      (attemptTranscriptOracle stmt proof))).run' ∅

/-- Injective exact framing transports the complete lazy byte-oracle verifier
to the finite typed attempt oracle with no statistical loss. -/
theorem reindexedByteIdealVerifier_evalDist_eq_attempt
    {G1 G2 GT : Type}
    [AddCommGroup G1] [Module Ipp.Bls12377.Fr G1]
    [AddCommGroup G2] [Module Ipp.Bls12377.Fr G2]
    [AddCommGroup GT] [Module Ipp.Bls12377.Fr GT]
    [DecidableEq G1] [DecidableEq G2] [DecidableEq GT]
    [SampleableType DigestBytes]
    {μ : Nat}
    (encode : BoundedAttempt G1 G2 GT → List UInt8)
    (hinjective : Function.Injective encode)
    (stmt : Ipp.FsStatement μ Ipp.Bls12377.Fr G1 G2 GT)
    (proof : Ipp.Proof μ Ipp.Bls12377.Fr G1 G2 GT) :
    𝒟[reindexedByteIdealVerifier encode stmt proof] =
      𝒟[attemptIdealVerifier stmt proof] := by
  exact Ipp.RandomOracleReindex.evalDist_randomOracle_reindex
    hinjective (attemptTranscriptOracle stmt proof) ∅

/-- A reduced digest is rejected exactly when it does not supply an accepted
field value for the current Fiat--Shamir stage. -/
def digestRejected
    (acceptable : Ipp.Bls12377.Fr → Bool) (digest : DigestBytes) : Prop :=
  ∀ value, shippingDecodeFr digest = some value → acceptable value = false

/-- Executable bounded shipping sampler over a consistent byte-oracle
function. Attempt `nonce` hashes the exact framed query, reduces the returned
digest with the Arkworks model, and retries on stage rejection. -/
def queryDecoded
    (oracle : List UInt8 → DigestBytes)
    (context : Ipp.ChallengeEncoding.Context)
    (mkPoint : Nat → ShippingPoint)
    (acceptable : Ipp.Bls12377.Fr → Bool) :
    Nat → Nat → Option (Ipp.Bls12377.Fr × Nat)
  | 0, _ => none
  | fuel + 1, nonce =>
      match shippingDecodeFr
          (oracle (shippingPreimage context (mkPoint nonce))) with
      | none => queryDecoded oracle context mkPoint acceptable fuel (nonce + 1)
      | some value =>
          if acceptable value then
            some (value, nonce)
          else
            queryDecoded oracle context mkPoint acceptable fuel (nonce + 1)

/-- The same bounded sampler as an actual byte-oracle computation.  This is
the program interpreted by the consistent lazy random oracle below. -/
def queryDecodedOracle
    (context : Ipp.ChallengeEncoding.Context)
    (mkPoint : Nat → ShippingPoint)
    (acceptable : Ipp.Bls12377.Fr → Bool) :
    Nat → Nat → OracleComp Blake2bOracleSpec
      (Option (Ipp.Bls12377.Fr × Nat))
  | 0, _ => pure none
  | fuel + 1, nonce => do
      let digest ← Blake2bOracleSpec.query
        (shippingPreimage context (mkPoint nonce))
      match shippingDecodeFr digest with
      | none =>
          queryDecodedOracle context mkPoint acceptable fuel (nonce + 1)
      | some value =>
          if acceptable value then
            pure (some (value, nonce))
          else
            queryDecodedOracle context mkPoint acceptable fuel (nonce + 1)

/-- Replacing oracle queries by a total answer function yields exactly the
executable pure sampler above. -/
theorem evalWithAnswerFn_queryDecodedOracle
    (oracle : QueryImpl Blake2bOracleSpec Id)
    (context : Ipp.ChallengeEncoding.Context)
    (mkPoint : Nat → ShippingPoint)
    (acceptable : Ipp.Bls12377.Fr → Bool)
    (fuel start : Nat) :
    evalWithAnswerFn oracle
        (queryDecodedOracle context mkPoint acceptable fuel start) =
      queryDecoded (fun input => oracle input)
        context mkPoint acceptable fuel start := by
  induction fuel generalizing start with
  | zero =>
      rfl
  | succ fuel ih =>
      rw [queryDecodedOracle, queryDecoded, evalWithAnswerFn_bind]
      rw [show
        evalWithAnswerFn oracle
            (liftM (Blake2bOracleSpec.query
              (shippingPreimage context (mkPoint start)))) =
          oracle (shippingPreimage context (mkPoint start)) from
        simulateQ_spec_query
          (impl := oracle) (shippingPreimage context (mkPoint start))]
      rw [shippingDecodeFr_eq_some]
      by_cases hacceptable :
          acceptable
            (Ipp.ShippingScalarReduction.reduceFr
              (oracle (shippingPreimage context (mkPoint start)))) = true
      · simp [hacceptable]
      · simp [hacceptable, ih]

/-- One ideal shipping challenge stage executed against a consistent lazy
uniform byte oracle, returning the final oracle cache as evidence of
repeated-query consistency. -/
def shippingIdealQuery
    [SampleableType DigestBytes]
    (context : Ipp.ChallengeEncoding.Context)
    (mkPoint : Nat → ShippingPoint)
    (acceptable : Ipp.Bls12377.Fr → Bool)
    (fuel start : Nat) :
    ProbComp
      (Option (Ipp.Bls12377.Fr × Nat) × Blake2bOracleSpec.QueryCache) :=
  (simulateQ Blake2bOracleSpec.randomOracle
    (queryDecodedOracle context mkPoint acceptable fuel start)).run ∅

/-- Support of the lazy-oracle execution is exactly evaluation by a total
answer function agreeing with the starting cache.  In particular, repeated
byte preimages cannot receive inconsistent answers. -/
theorem shippingIdealQuery_support_iff_exists_consistent
    [SampleableType DigestBytes]
    (context : Ipp.ChallengeEncoding.Context)
    (mkPoint : Nat → ShippingPoint)
    (acceptable : Ipp.Bls12377.Fr → Bool)
    (fuel start : Nat) (out : Option (Ipp.Bls12377.Fr × Nat)) :
    (∃ oracle : QueryImpl Blake2bOracleSpec Id,
        (∅ : Blake2bOracleSpec.QueryCache).AgreesWithFn oracle ∧
          queryDecoded (fun input => oracle input)
            context mkPoint acceptable fuel start = out) ↔
      ∃ cache : Blake2bOracleSpec.QueryCache,
        (out, cache) ∈ support
          (shippingIdealQuery context mkPoint acceptable fuel start) := by
  simpa [shippingIdealQuery, evalWithAnswerFn_queryDecodedOracle] using
    (OracleComp.exists_agreesWithFn_evalWithAnswerFn_eq_iff_mem_support
      (queryDecodedOracle context mkPoint acceptable fuel start)
      (∅ : Blake2bOracleSpec.QueryCache) out)

/-- Generic form of the shipping sampler used to run the complete verifier.
The encoding argument is later instantiated by the extracted Rust stage
serializers and framing theorem. -/
def queryDecodedPointOracle
    {G1 G2 GT : Type}
    (encode : Ipp.ChallengePoint Ipp.Bls12377.Fr G1 G2 GT → List UInt8)
    (mkPoint : Nat → Ipp.ChallengePoint Ipp.Bls12377.Fr G1 G2 GT)
    (acceptable : Ipp.Bls12377.Fr → Bool) :
    Nat → Nat → OracleComp Blake2bOracleSpec
      (Option (Ipp.Bls12377.Fr × Nat))
  | 0, _ => pure none
  | fuel + 1, nonce => do
      let digest ← Blake2bOracleSpec.query (encode (mkPoint nonce))
      match shippingDecodeFr digest with
      | none =>
          queryDecodedPointOracle encode mkPoint acceptable fuel (nonce + 1)
      | some value =>
          if acceptable value then
            pure (some (value, nonce))
          else
            queryDecodedPointOracle encode mkPoint acceptable fuel (nonce + 1)

/-- Shipping byte-oracle execution of all GIPA round challenges. -/
def shippingQueryRoundsOracle
    {G1 G2 GT : Type}
    (encode : Ipp.ChallengePoint Ipp.Bls12377.Fr G1 G2 GT → List UInt8)
    (fuel : Nat) :
    (μ : Nat) → Ipp.Bls12377.Fr → (Fin μ → Ipp.RoundComs G1 GT) →
      OracleComp Blake2bOracleSpec
        (Option (Ipp.RoundTranscript μ Ipp.Bls12377.Fr))
  | 0, previous, _ => pure (some {
      prev := Fin.elim0
      answer := Fin.elim0
      nonce := Fin.elim0
      last := previous })
  | μ + 1, previous, rounds => do
      let sampled ← queryDecodedPointOracle encode
        (fun nonce => .round previous (rounds 0) nonce)
        Ipp.nonzeroB fuel 0
      match sampled with
      | none => pure none
      | some (value, nonce) =>
          let tail ← shippingQueryRoundsOracle encode fuel μ value
            (fun i => rounds i.succ)
          match tail with
          | none => pure none
          | some tail => pure (some {
              prev := Fin.cases previous tail.prev
              answer := Fin.cases value tail.answer
              nonce := Fin.cases nonce tail.nonce
              last := tail.last })

/-- Complete shipping verifier in Rust stage order, before replacing the
deployed Blake2b function by the consistent ideal byte oracle. -/
def shippingVerifierOracle
    {G1 G2 GT : Type}
    [AddCommGroup G1] [Module Ipp.Bls12377.Fr G1]
    [AddCommGroup G2] [Module Ipp.Bls12377.Fr G2]
    [AddCommGroup GT] [Module Ipp.Bls12377.Fr GT]
    {μ : Nat}
    (encode : Ipp.ChallengePoint Ipp.Bls12377.Fr G1 G2 GT → List UInt8)
    (stmt : Ipp.FsStatement μ Ipp.Bls12377.Fr G1 G2 GT)
    (proof : Ipp.Proof μ Ipp.Bls12377.Fr G1 G2 GT) :
    OracleComp Blake2bOracleSpec
      (Ipp.FsResult μ Ipp.Bls12377.Fr G1 G2 GT) := do
  let randomizerSample ← queryDecodedPointOracle encode
    (fun nonce => .randomizer
      { comA := proof.ComA.1, comB := proof.ComB, comC := proof.ComA.2 } nonce)
    Ipp.randomizerAcceptedB stmt.rejectionFuel 0
  match randomizerSample with
  | none => pure (Ipp.rejectedResult proof)
  | some (randomizer, randomizerNonce) =>
    let x0Sample ← queryDecodedPointOracle encode
      (fun nonce => .x0
        { r := randomizer
          comA := proof.ComA.1
          comB := proof.ComB
          comC := proof.ComA.2
          ipAb := proof.ipAb
          aggC := proof.aggC } nonce)
      Ipp.nonzeroB stmt.rejectionFuel 0
    match x0Sample with
    | none => pure (Ipp.rejectedResult proof)
    | some (x0, x0Nonce) =>
      let roundSample ← shippingQueryRoundsOracle encode
        stmt.rejectionFuel μ x0 proof.rounds
      match roundSample with
      | none => pure (Ipp.rejectedResult proof)
      | some rounds =>
        let bridgeSample ← queryDecodedPointOracle encode
          (fun nonce => .bridge
            { lastRawChallenge := rounds.last
              vFinal := proof.vFinal
              wFinal := proof.wFinal
              aFinal := proof.aFinal
              bFinal := proof.bFinal
              cFinal := proof.cFinal } nonce)
          Ipp.nonzeroB stmt.rejectionFuel 0
        match bridgeSample with
        | none => pure (Ipp.rejectedResult proof)
        | some (bridge, bridgeNonce) =>
          let kzgSample ← queryDecodedPointOracle encode
            (fun nonce => .kzg
              { bridgeChallenge := bridge
                vFinal := proof.vFinal
                wFinal := proof.wFinal } nonce)
            Ipp.nonzeroB stmt.rejectionFuel 0
          match kzgSample with
          | none => pure (Ipp.rejectedResult proof)
          | some (kzg, kzgNonce) =>
            let transcript : Ipp.FsTranscript μ Ipp.Bls12377.Fr := {
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
              kzgNonce := kzgNonce }
            pure {
              proof := proof
              transcript := transcript
              accept := @ite Bool (Ipp.FsAccepts stmt proof transcript)
                (Classical.propDecidable _) true false }

/-- Complete verifier interpreted by one consistent lazy uniform byte oracle. -/
def shippingIdealVerifier
    {G1 G2 GT : Type}
    [AddCommGroup G1] [Module Ipp.Bls12377.Fr G1]
    [AddCommGroup G2] [Module Ipp.Bls12377.Fr G2]
    [AddCommGroup GT] [Module Ipp.Bls12377.Fr GT]
    [SampleableType DigestBytes]
    {μ : Nat}
    (encode : Ipp.ChallengePoint Ipp.Bls12377.Fr G1 G2 GT → List UInt8)
    (stmt : Ipp.FsStatement μ Ipp.Bls12377.Fr G1 G2 GT)
    (proof : Ipp.Proof μ Ipp.Bls12377.Fr G1 G2 GT) :
    ProbComp
      (Ipp.FsResult μ Ipp.Bls12377.Fr G1 G2 GT ×
        Blake2bOracleSpec.QueryCache) :=
  (simulateQ Blake2bOracleSpec.randomOracle
    (shippingVerifierOracle encode stmt proof)).run ∅

/-- Nonce metadata is operational evidence only. It is not consulted by any
v1 acceptance equation. -/
def eraseTranscriptNonces {F : Type} {μ : Nat}
    (transcript : Ipp.FsTranscript μ F) : Ipp.FsTranscript μ F := {
  randomizer := transcript.randomizer
  randomizerNonce := 0
  x0 := transcript.x0
  x0Nonce := 0
  roundPrev := transcript.roundPrev
  roundAnswer := transcript.roundAnswer
  roundNonce := fun _ => 0
  bridge := transcript.bridge
  bridgeNonce := 0
  kzg := transcript.kzg
  kzgNonce := 0 }

/-- Erasing every nonce leaves the complete SnarkPack v1 acceptance predicate
unchanged. This is the composition boundary used by value-level sampler
domination. -/
theorem fsAccepts_eraseTranscriptNonces_iff
    {F G1 G2 GT : Type}
    [Field F]
    [AddCommGroup G1] [Module F G1]
    [AddCommGroup G2] [Module F G2]
    [AddCommGroup GT] [Module F GT]
    {μ : Nat}
    (stmt : Ipp.FsStatement μ F G1 G2 GT)
    (proof : Ipp.Proof μ F G1 G2 GT)
    (transcript : Ipp.FsTranscript μ F) :
    Ipp.FsAccepts stmt proof (eraseTranscriptNonces transcript) ↔
      Ipp.FsAccepts stmt proof transcript := by
  rfl

theorem queryDecoded_exhausts
    (oracle : List UInt8 → DigestBytes)
    (context : Ipp.ChallengeEncoding.Context)
    (mkPoint : Nat → ShippingPoint)
    (acceptable : Ipp.Bls12377.Fr → Bool)
    (fuel start : Nat)
    (hreject : ∀ offset, offset < fuel →
      digestRejected acceptable
        (oracle (shippingPreimage context (mkPoint (start + offset))))) :
    queryDecoded oracle context mkPoint acceptable fuel start = none := by
  induction fuel generalizing start with
  | zero =>
      rfl
  | succ fuel ih =>
      rw [queryDecoded]
      rw [shippingDecodeFr_eq_some]
      have hfalse :
          acceptable
            (Ipp.ShippingScalarReduction.reduceFr
              (oracle (shippingPreimage context (mkPoint start)))) =
            false := by
        exact hreject 0 (Nat.zero_lt_succ fuel) _ (by simp)
      simp only [hfalse, Bool.false_eq_true, if_false]
      apply ih (start := start + 1)
      intro offset hoffset
      simpa [Nat.add_assoc, Nat.add_left_comm, Nat.add_comm] using
        hreject (offset + 1) (Nat.succ_lt_succ hoffset)

theorem queryDecoded_success_at_offset
    (oracle : List UInt8 → DigestBytes)
    (context : Ipp.ChallengeEncoding.Context)
    (mkPoint : Nat → ShippingPoint)
    (acceptable : Ipp.Bls12377.Fr → Bool)
    (offset start : Nat) (value : Ipp.Bls12377.Fr)
    (hreject : ∀ index, index < offset →
      digestRejected acceptable
        (oracle (shippingPreimage context (mkPoint (start + index)))))
    (hdecode :
      shippingDecodeFr
          (oracle (shippingPreimage context (mkPoint (start + offset)))) =
        some value)
    (hacceptable : acceptable value = true) :
    queryDecoded oracle context mkPoint acceptable (offset + 1) start =
      some (value, start + offset) := by
  induction offset generalizing start with
  | zero =>
      simp only [Nat.add_zero] at hdecode ⊢
      rw [queryDecoded, hdecode]
      simp only [hacceptable, ↓reduceIte]
  | succ offset ih =>
      rw [queryDecoded]
      rw [shippingDecodeFr_eq_some]
      have hfalse :
          acceptable
            (Ipp.ShippingScalarReduction.reduceFr
              (oracle (shippingPreimage context (mkPoint start)))) =
            false := by
        exact hreject 0 (Nat.zero_lt_succ offset) _ (by simp)
      simp only [hfalse, Bool.false_eq_true, if_false]
      have htail := ih (start := start + 1)
        (fun index hindex => by
          simpa [Nat.add_assoc, Nat.add_left_comm, Nat.add_comm] using
            hreject (index + 1) (Nat.succ_lt_succ hindex))
        (by
          simpa [Nat.add_assoc, Nat.add_left_comm, Nat.add_comm] using hdecode)
      simpa [Nat.add_assoc, Nat.add_left_comm, Nat.add_comm] using htail

/-- If every representable nonce is rejected, the deployed sampler exhausts
after querying `u64::MAX` and fails closed. -/
theorem queryDecoded_u64_exhausts
    (oracle : List UInt8 → DigestBytes)
    (context : Ipp.ChallengeEncoding.Context)
    (mkPoint : Nat → ShippingPoint)
    (acceptable : Ipp.Bls12377.Fr → Bool)
    (hreject : ∀ nonce, nonce < rejectionFuel →
      digestRejected acceptable
        (oracle (shippingPreimage context (mkPoint nonce)))) :
    queryDecoded oracle context mkPoint acceptable rejectionFuel 0 = none := by
  apply queryDecoded_exhausts
  intro offset hoffset
  simpa using hreject offset hoffset

/-- The two external computational losses are kept separate. -/
structure HashAdvantages where
  sha256 : ℝ≥0∞
  blake2bRom : ℝ≥0∞

def HashAdvantages.total (advantages : HashAdvantages) : ℝ≥0∞ :=
  advantages.sha256 + advantages.blake2bRom

/-- The sole computational interface for deployed hashing.  It replaces the
real SHA-256/Blake2b execution by the exact ideal byte-oracle experiment.
The ideal-to-`FsGame` relation is proved separately and is not a field here. -/
structure Coupling (realAccept idealAccept : ℝ≥0∞) where
  advantages : HashAdvantages
  real_le_ideal_add : realAccept ≤ idealAccept + advantages.total

theorem shippingReal_acceptance_le_ideal_add_hashAdvantage
    {realAccept idealAccept : ℝ≥0∞}
    (coupling : Coupling realAccept idealAccept) :
    realAccept ≤ idealAccept + coupling.advantages.total :=
  coupling.real_le_ideal_add

#print axioms lastNonce_add_one
#print axioms nonceBytes_injective_of_lt
#print axioms basePoint_pair_injective
#print axioms shippingPreimage_bounded_injective
#print axioms shippingAttemptPreimage_injective
#print axioms evalDist_queryDecodedAttemptOracleFull
#print axioms reindexedByteIdealVerifier_evalDist_eq_attempt
#print axioms evalWithAnswerFn_queryDecodedOracle
#print axioms shippingIdealQuery_support_iff_exists_consistent
#print axioms fsAccepts_eraseTranscriptNonces_iff
#print axioms queryDecoded_exhausts
#print axioms queryDecoded_success_at_offset
#print axioms queryDecoded_u64_exhausts
#print axioms shippingReal_acceptance_le_ideal_add_hashAdvantage

end

end Ipp.ShippingHashGame
