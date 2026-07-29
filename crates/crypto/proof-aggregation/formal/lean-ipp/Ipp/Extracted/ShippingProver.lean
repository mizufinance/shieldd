import Ipp.Extracted.ProverGipaExecution
import Ipp.Extracted.StructuredScalarPower
import Ipp.Extracted.SyntheticDivision

/-!
Exact contract between the shipping aggregate prover and the kernel-checked
honest SnarkPack-v1 construction. The extracted full GIPA execution pins every
round and terminal fold together; only exact effect, KZG, input-projection,
and wire-emission postconditions remain external.
-/

namespace Ipp.Extracted.ShippingProver

open Aeneas Aeneas.Std Result
open ark_ip_proofs
open Polynomial
open scoped BigOperators

noncomputable section

variable {F G1 G2 GT : Type}
  [Field F]
  [AddCommGroup G1] [Module F G1]
  [AddCommGroup G2] [Module F G2]
  [AddCommGroup GT] [Module F GT]

/-- Polynomial represented by a finite coefficient vector in ascending degree
order. -/
def coefficientPolynomial {n : Nat} (coefficients : Fin n → F) : F[X] :=
  ∑ i : Fin n, C (coefficients i) * X ^ (i : Nat)

theorem coefficientPolynomial_eval {n : Nat}
    (coefficients : Fin n → F) (z : F) :
    (coefficientPolynomial coefficients).eval z =
      ∑ i : Fin n, coefficients i * z ^ (i : Nat) := by
  unfold coefficientPolynomial
  rw [eval_finsetSum]
  apply Finset.sum_congr rfl
  intro i _
  rw [eval_mul, eval_C, eval_pow, eval_X]

/-- Shipping opens an even-degree encoding of the logical transcript
polynomial against every proving-SRS power, not the `n`-element logical key
used by the GIPA fold. -/
def fullSrsLength (μ : Nat) : Nat :=
  2 * (2 ^ μ) - 1

theorem fullSrsLength_eq (μ : Nat) :
    fullSrsLength μ = 2 ^ (μ + 1) - 1 := by
  simp only [fullSrsLength, pow_succ]
  omega

/-- The logical GIPA key at index `i` is the even proving-SRS power at `2i`. -/
def evenIndex {μ : Nat} (i : Fin (2 ^ μ)) : Fin (fullSrsLength μ) :=
  ⟨2 * (i : Nat), by
    have hpow : 0 < 2 ^ μ := pow_pos (by decide) μ
    have hi := i.isLt
    simp only [fullSrsLength]
    omega⟩

@[simp] theorem evenIndex_val {μ : Nat} (i : Fin (2 ^ μ)) :
    (evenIndex i : Nat) = 2 * (i : Nat) :=
  rfl

/-- Exact polynomial encoded by
`polynomial_coefficients_from_transcript`: logical coefficients occupy even
degrees and every intervening odd coefficient is zero. -/
def evenCoefficientPolynomial {n : Nat}
    (coefficients : Fin n → F) : F[X] :=
  ∑ i : Fin n, C (coefficients i) * X ^ (2 * (i : Nat))

/-- Evaluating the executed interleaving at `z` is evaluating the logical
transcript polynomial at `z²`. -/
theorem evenCoefficientPolynomial_eval {n : Nat}
    (coefficients : Fin n → F) (z : F) :
    (evenCoefficientPolynomial coefficients).eval z =
      (coefficientPolynomial coefficients).eval (z ^ 2) := by
  unfold evenCoefficientPolynomial coefficientPolynomial
  rw [eval_finsetSum, eval_finsetSum]
  apply Finset.sum_congr rfl
  intro i _
  simp only [eval_mul, eval_C, eval_pow, eval_X]
  rw [pow_mul]

private theorem coefficientPolynomial_coeff_of_lt {n : Nat}
    (coefficients : Fin n → F) (i : Nat) (hi : i < n) :
    (coefficientPolynomial coefficients).coeff i =
      coefficients ⟨i, hi⟩ := by
  simpa [coefficientPolynomial,
    Ipp.Extracted.SyntheticDivision.coefficientPolynomial] using
    Ipp.Extracted.SyntheticDivision.coefficientPolynomial_coeff_of_lt
      coefficients i hi

private theorem coefficientPolynomial_coeff_of_ge {n : Nat}
    (coefficients : Fin n → F) (i : Nat) (hi : n ≤ i) :
    (coefficientPolynomial coefficients).coeff i = 0 := by
  classical
  simp only [coefficientPolynomial, Polynomial.finsetSum_coeff,
    Polynomial.coeff_C_mul_X_pow]
  apply Finset.sum_eq_zero
  intro j _
  have hne : i ≠ (j : Nat) := by omega
  simp [hne]

private theorem evenCoefficientPolynomial_coeff_even {n : Nat}
    (coefficients : Fin n → F) (i : Fin n) :
    (evenCoefficientPolynomial coefficients).coeff (2 * (i : Nat)) =
      coefficients i := by
  classical
  simp only [evenCoefficientPolynomial, Polynomial.finsetSum_coeff,
    Polynomial.coeff_C_mul_X_pow]
  rw [Fintype.sum_eq_single i]
  · simp
  · intro j hji
    have hne : 2 * (i : Nat) ≠ 2 * (j : Nat) := by
      intro heq
      apply hji
      apply Fin.ext
      omega
    simp [hne]

private theorem evenCoefficientPolynomial_coeff_odd {n : Nat}
    (coefficients : Fin n → F) (i : Nat) :
    (evenCoefficientPolynomial coefficients).coeff (2 * i + 1) = 0 := by
  classical
  simp only [evenCoefficientPolynomial, Polynomial.finsetSum_coeff,
    Polynomial.coeff_C_mul_X_pow]
  apply Finset.sum_eq_zero
  intro j _
  have hne : 2 * i + 1 ≠ 2 * (j : Nat) := by omega
  simp [hne]

private theorem evenCoefficientPolynomial_coeff_of_fullLength_le
    {μ : Nat} (coefficients : Fin (2 ^ μ) → F) (i : Nat)
    (hi : fullSrsLength μ ≤ i) :
    (evenCoefficientPolynomial coefficients).coeff i = 0 := by
  classical
  simp only [evenCoefficientPolynomial, Polynomial.finsetSum_coeff,
    Polynomial.coeff_C_mul_X_pow]
  apply Finset.sum_eq_zero
  intro j _
  have hj := j.isLt
  have hpow : 0 < 2 ^ μ := pow_pos (by decide) μ
  have hne : i ≠ 2 * (j : Nat) := by
    simp only [fullSrsLength] at hi
    omega
  simp [hne]

/-- Even/odd entry mapping is enough to identify the exact full coefficient
polynomial emitted by the extracted interleaver. -/
theorem interleaved_coefficients_polynomial_exact {μ : Nat}
    (logicalCoefficients : Fin (2 ^ μ) → F)
    (fullCoefficients : Fin (fullSrsLength μ) → F)
    (heven : ∀ i,
      fullCoefficients (evenIndex i) = logicalCoefficients i)
    (hodd : ∀ i (hi : 2 * i + 1 < fullSrsLength μ),
      fullCoefficients ⟨2 * i + 1, hi⟩ = 0) :
    coefficientPolynomial fullCoefficients =
      evenCoefficientPolynomial logicalCoefficients := by
  apply Polynomial.ext
  intro degree
  by_cases hdegree : degree < fullSrsLength μ
  · obtain ⟨i, hi | hi⟩ := Nat.even_or_odd' degree
    · subst degree
      have hlogical : i < 2 ^ μ := by
        simp only [fullSrsLength] at hdegree
        have hpow : 0 < 2 ^ μ := pow_pos (by decide) μ
        omega
      rw [coefficientPolynomial_coeff_of_lt fullCoefficients
        (2 * i) hdegree]
      change fullCoefficients (evenIndex ⟨i, hlogical⟩) =
        (evenCoefficientPolynomial logicalCoefficients).coeff (2 * i)
      rw [heven ⟨i, hlogical⟩]
      symm
      exact evenCoefficientPolynomial_coeff_even
        logicalCoefficients ⟨i, hlogical⟩
    · subst degree
      rw [coefficientPolynomial_coeff_of_lt fullCoefficients
        (2 * i + 1) hdegree, hodd i hdegree,
        evenCoefficientPolynomial_coeff_odd]
  · have hge : fullSrsLength μ ≤ degree := Nat.le_of_not_gt hdegree
    rw [coefficientPolynomial_coeff_of_ge fullCoefficients degree hge,
      evenCoefficientPolynomial_coeff_of_fullLength_le
        logicalCoefficients degree hge]

/-- Algebraic identity used to check the extracted synthetic-division loop.
The loop proof only needs to show that its returned coefficient vector
represents `divByMonic`; the exact KZG quotient equation then follows here. -/
theorem divByMonic_X_sub_C_exact
    (polynomial : F[X]) (z : F) :
    (X - C z) * (polynomial /ₘ (X - C z)) =
      polynomial - C (polynomial.eval z) := by
  rw [Polynomial.X_sub_C_mul_divByMonic_eq_sub_modByMonic,
    Polynomial.modByMonic_X_sub_C_eq_C_eval]

/-- Converts the two concrete mapping facts—the interleaved coefficient
polynomial and the synthetic quotient polynomial—into the exact quotient
equation consumed by `ExecutedKzgOpeningAlgorithm`. -/
theorem synthetic_quotient_mapping_exact
    {logicalLength fullLength : Nat}
    (logicalCoefficients : Fin logicalLength → F)
    (fullCoefficients quotientCoefficients : Fin fullLength → F)
    (z : F)
    (hfull :
      coefficientPolynomial fullCoefficients =
        evenCoefficientPolynomial logicalCoefficients)
    (hquotient :
      coefficientPolynomial quotientCoefficients =
        coefficientPolynomial fullCoefficients /ₘ (X - C z)) :
    (X - C z) * coefficientPolynomial quotientCoefficients =
      coefficientPolynomial fullCoefficients -
        C ((evenCoefficientPolynomial logicalCoefficients).eval z) := by
  rw [hquotient, divByMonic_X_sub_C_exact, hfull]

/-- The zero padding performed immediately before the production opening MSM
does not change the quotient polynomial. -/
theorem padded_synthetic_quotient_polynomial_exact {n : Nat}
    (fullCoefficients : Fin n → F) (z : F) :
    coefficientPolynomial
        (Ipp.Extracted.SyntheticDivision.paddedQuotientCoefficients
          fullCoefficients z) =
      coefficientPolynomial fullCoefficients /ₘ (X - C z) := by
  simpa [coefficientPolynomial,
    Ipp.Extracted.SyntheticDivision.coefficientPolynomial] using
    Ipp.Extracted.SyntheticDivision.coefficientPolynomial_paddedQuotientCoefficients
      fullCoefficients z

/-- Composition of the extracted interleaving model, extracted synthetic
division model, and standard zero padding. No KZG or curve assumption appears
in this arithmetic theorem. -/
theorem extracted_kzg_quotient_equation {μ : Nat}
    (logicalCoefficients : Fin (2 ^ μ) → F)
    (fullCoefficients : Fin (fullSrsLength μ) → F)
    (z : F)
    (hfull :
      coefficientPolynomial fullCoefficients =
        evenCoefficientPolynomial logicalCoefficients) :
    (X - C z) *
        coefficientPolynomial
          (Ipp.Extracted.SyntheticDivision.paddedQuotientCoefficients
            fullCoefficients z) =
      coefficientPolynomial fullCoefficients -
        C ((evenCoefficientPolynomial logicalCoefficients).eval z) := by
  apply synthetic_quotient_mapping_exact logicalCoefficients
    fullCoefficients
    (Ipp.Extracted.SyntheticDivision.paddedQuotientCoefficients
      fullCoefficients z) z hfull
  exact padded_synthetic_quotient_polynomial_exact fullCoefficients z

/-- Actual production randomizer-power execution, used to discharge
`ShippingProverContract.randomizerPower`. -/
theorem production_randomizer_powers_exact
    (μ : Nat) (randomizer : F) :
    ark_ip_proofs.tipa.structured_scalar_message.structured_scalar_power
        (Ipp.Extracted.StructuredScalarPower.cloneModel F)
        (Ipp.Extracted.StructuredScalarPower.oneModel F)
        (Ipp.Extracted.StructuredScalarPower.mulModel F)
        ⟨2 ^ μ⟩ randomizer =
      .ok (Ipp.Extracted.StructuredScalarPower.finVec
        (fun i : Fin (2 ^ μ) => randomizer ^ (i : Nat))) :=
  Ipp.Extracted.StructuredScalarPower.shipping_randomizer_powers_exact
    μ randomizer

/-- Exact postconditions of one production KZG opening algorithm.

The concrete coefficient builder emits `2n-1` entries for the even-degree
polynomial, synthetic division operates on all of them, and the opening MSM
uses the full `2n-1` proving SRS. `fullSrsEven` records the exact relation to
the `n` logical GIPA keys. It is intentionally insufficient by itself to prove
that the verifier accepts: that additionally needs the structured-SRS and
pairing equation exposed by `ExecutedKzgOpeningAcceptance` below.
-/
structure ExecutedKzgOpeningAlgorithm {μ : Nat} {G : Type}
    [AddCommGroup G] [Module F G]
    (logicalSrs : Fin (2 ^ μ) → G) where
  fullSrs : Fin (fullSrsLength μ) → G
  fullSrsEven : ∀ i, fullSrs (evenIndex i) = logicalSrs i
  coefficients :
    (Fin (2 ^ μ) → F) → Fin (fullSrsLength μ) → F
  coefficientsExact : ∀ logicalCoefficients,
    coefficientPolynomial (coefficients logicalCoefficients) =
      evenCoefficientPolynomial logicalCoefficients
  quotient :
    F → (Fin (2 ^ μ) → F) → Fin (fullSrsLength μ) → F
  opening : F → (Fin (2 ^ μ) → F) → G
  quotientExact : ∀ z logicalCoefficients,
    (X - C z) *
        coefficientPolynomial (quotient z logicalCoefficients) =
      coefficientPolynomial (coefficients logicalCoefficients) -
        C ((evenCoefficientPolynomial logicalCoefficients).eval z)
  openingMsm : ∀ z logicalCoefficients,
    opening z logicalCoefficients =
      Ipp.msm (quotient z logicalCoefficients) fullSrs

/-- Constructor that discharges all KZG coefficient and quotient arithmetic
from the extracted even/odd mapping. The caller supplies only the full SRS
projection, the observed opening value, and the exact Arkworks MSM result. -/
def ExecutedKzgOpeningAlgorithm.ofExtractedArithmetic
    {μ : Nat} {G : Type}
    [AddCommGroup G] [Module F G]
    (logicalSrs : Fin (2 ^ μ) → G)
    (fullSrs : Fin (fullSrsLength μ) → G)
    (fullSrsEven : ∀ i, fullSrs (evenIndex i) = logicalSrs i)
    (coefficients :
      (Fin (2 ^ μ) → F) → Fin (fullSrsLength μ) → F)
    (coefficientsEven : ∀ logicalCoefficients i,
      coefficients logicalCoefficients (evenIndex i) =
        logicalCoefficients i)
    (coefficientsOdd : ∀ logicalCoefficients i
      (hi : 2 * i + 1 < fullSrsLength μ),
      coefficients logicalCoefficients ⟨2 * i + 1, hi⟩ = 0)
    (opening : F → (Fin (2 ^ μ) → F) → G)
    (openingMsm : ∀ z logicalCoefficients,
      opening z logicalCoefficients =
        Ipp.msm
          (Ipp.Extracted.SyntheticDivision.paddedQuotientCoefficients
            (coefficients logicalCoefficients) z)
          fullSrs) :
    ExecutedKzgOpeningAlgorithm (F := F) logicalSrs :=
  {
    fullSrs := fullSrs
    fullSrsEven := fullSrsEven
    coefficients := coefficients
    coefficientsExact := fun logicalCoefficients =>
      interleaved_coefficients_polynomial_exact logicalCoefficients
        (coefficients logicalCoefficients)
        (coefficientsEven logicalCoefficients)
        (coefficientsOdd logicalCoefficients)
    quotient := fun z logicalCoefficients =>
      Ipp.Extracted.SyntheticDivision.paddedQuotientCoefficients
        (coefficients logicalCoefficients) z
    opening := opening
    quotientExact := fun z logicalCoefficients =>
      extracted_kzg_quotient_equation logicalCoefficients
        (coefficients logicalCoefficients) z
        (interleaved_coefficients_polynomial_exact logicalCoefficients
          (coefficients logicalCoefficients)
          (coefficientsEven logicalCoefficients)
          (coefficientsOdd logicalCoefficients))
    openingMsm := openingMsm
  }

/-- The exact residual structured-SRS/pairing postcondition: the verifier's
ordered KZG equation accepts the opening built from the full proving SRS.

This is deliberately separate from polynomial construction. The current
abstract `FsStatement` exposes the `n` even powers and verifier relation, but
not the secret-power relation for all `2n-1` proving powers; consequently this
bridge cannot be derived from `quotientExact` alone.
-/
def ExecutedKzgOpeningAcceptance {μ : Nat} {G : Type}
    [AddCommGroup G] [Module F G]
    (logicalSrs : Fin (2 ^ μ) → G)
    (accept : F → (Fin (2 ^ μ) → F) → G → G → Prop)
    (algorithm : ExecutedKzgOpeningAlgorithm (F := F) logicalSrs) : Prop :=
  ∀ z coefficients,
    accept z coefficients (Ipp.msm coefficients logicalSrs)
      (algorithm.opening z coefficients)

/-- Named bridge consumed by the old honest-construction interface. Its sole
premise is the exact external Arkworks KZG equation postcondition above. -/
theorem executed_full_opening_implies_accept
    {μ : Nat} {G : Type}
    [AddCommGroup G] [Module F G]
    (logicalSrs : Fin (2 ^ μ) → G)
    (accept : F → (Fin (2 ^ μ) → F) → G → G → Prop)
    (algorithm : ExecutedKzgOpeningAlgorithm (F := F) logicalSrs)
    (bridge : ExecutedKzgOpeningAcceptance
      (F := F) logicalSrs accept algorithm)
    (z : F) (coefficients : Fin (2 ^ μ) → F) :
    accept z coefficients (Ipp.msm coefficients logicalSrs)
      (algorithm.opening z coefficients) :=
  bridge z coefficients

/-- Both concrete KZG executions plus the two exact verifier-equation
bridges. No full-SRS behavior is hidden inside the old `KzgOpenings`
interface. -/
structure KzgBoundary {μ : Nat}
    (statement : Ipp.FsStatement μ F G1 G2 GT) where
  v : ExecutedKzgOpeningAlgorithm (F := F) statement.srsV
  w : ExecutedKzgOpeningAlgorithm (F := F) statement.srsW
  vAccepts : ExecutedKzgOpeningAcceptance (F := F)
    statement.srsV statement.acceptV v
  wAccepts : ExecutedKzgOpeningAcceptance (F := F)
    statement.srsW statement.acceptW w

def KzgBoundary.toOpenings {μ : Nat}
    {statement : Ipp.FsStatement μ F G1 G2 GT}
    (boundary : KzgBoundary statement) :
    Ipp.SnarkPackV1.HonestProver.KzgOpenings statement :=
  {
    openV := boundary.v.opening
    openW := boundary.w.opening
    acceptV := executed_full_opening_implies_accept
      statement.srsV statement.acceptV boundary.v boundary.vAccepts
    acceptW := executed_full_opening_implies_accept
      statement.srsW statement.acceptW boundary.w boundary.wAccepts
  }

/-- Values observable at the production aggregate-prover boundary. Round
commitments are chronological here; `AggregateProver.assemble` performs the
single production wire reversal. -/
structure Observation (D : Type) (μ : Nat) where
  comA : GT × GT
  comB : GT
  rounds : Fin μ → Ipp.RoundComs G1 GT
  aFinal : G1
  bFinal : G2
  cFinal : G1
  vFinal : G2
  vOpening : G2
  wFinal : G1
  wOpening : G1
  ipAb : GT
  aggC : G1
  randomizerPowers : Fin (2 ^ μ) → F
  roundInverses : Fin μ → F
  randomizerInverse : F
  wireProof : AggregateProver.WireProof G1 G2 GT D

def Observation.toFormalProof {D : Type} {μ : Nat}
    (observation : Observation (F := F) (G1 := G1) (G2 := G2) (GT := GT)
      D μ) :
    Ipp.Proof μ F G1 G2 GT :=
  {
    ComA := observation.comA
    ComB := observation.comB
    rounds := observation.rounds
    aFinal := observation.aFinal
    bFinal := observation.bFinal
    cFinal := observation.cFinal
    vFinal := observation.vFinal
    vOpening := observation.vOpening
    wFinal := observation.wFinal
    wOpening := observation.wOpening
    ipAb := observation.ipAb
    aggC := observation.aggC
  }

private theorem proof_ext {μ : Nat}
    {left right : Ipp.Proof μ F G1 G2 GT}
    (hComA : left.ComA = right.ComA)
    (hComB : left.ComB = right.ComB)
    (hRounds : left.rounds = right.rounds)
    (hAFinal : left.aFinal = right.aFinal)
    (hBFinal : left.bFinal = right.bFinal)
    (hCFinal : left.cFinal = right.cFinal)
    (hVFinal : left.vFinal = right.vFinal)
    (hVOpening : left.vOpening = right.vOpening)
    (hWFinal : left.wFinal = right.wFinal)
    (hWOpening : left.wOpening = right.wOpening)
    (hIpAb : left.ipAb = right.ipAb)
    (hAggC : left.aggC = right.aggC) :
    left = right := by
  cases left
  cases right
  simp_all

private def gipaFinVec {T : Type} {n : Nat}
    (values : Fin n → T) : alloc.vec.Vec T :=
  ⟨List.ofFn values⟩

abbrev ShippingCoreCommitment (G1 GT : Type) :=
  Ipp.Extracted.ProverGipaExecution.Commitment GT
    (AggregateProver.WireIdentity GT) (AggregateProver.WireIdentity G1)

/-- Exact singleton-wrapper projection used by the shipping round
commitment effect. -/
def shippingCoreRound (round : Ipp.RoundComs G1 GT) :
    ShippingCoreCommitment G1 GT × ShippingCoreCommitment G1 GT :=
  (
    {
      ab := (round.LA.1, round.LB, ⟨[round.LT.1]⟩)
      c := (round.LA.2, ⟨[round.LT.2]⟩)
    },
    {
      ab := (round.RA.1, round.RB, ⟨[round.RT.1]⟩)
      c := (round.RA.2, ⟨[round.RT.2]⟩)
    }
  )

private theorem gipaFinVec_injective {T : Type} {n : Nat} :
    Function.Injective (@gipaFinVec T n) := by
  intro left right h
  funext i
  have hlists : List.ofFn left = List.ofFn right :=
    congrArg alloc.vec.Vec.val h
  have hi := congrArg (fun values => values[(i : Nat)]?) hlists
  simpa using hi

@[simp] private theorem gipaFinVec_len {T : Type} {n : Nat}
    (values : Fin n → T) :
    ark_ip_proofs.alloc.vec.Vec.len (gipaFinVec values) =
      Aeneas.Std.Usize.ofNat n := by
  simp [ark_ip_proofs.alloc.vec.Vec.len, gipaFinVec,
    Aeneas.Std.Usize.ofNat]

private theorem gipaFinVec_powerOfTwo {T : Type}
    (μ : Nat) (values : Fin (2 ^ μ) → T) :
    ark_ip_proofs.core.num.Usize.is_power_of_two
        (ark_ip_proofs.alloc.vec.Vec.len (gipaFinVec values)) =
      Aeneas.Result.ok true := by
  simp [ark_ip_proofs.core.num.Usize.is_power_of_two,
    Nat.log2_two_pow]

@[simp] private theorem gipaFinVec_index_zero {T : Type}
    (values : Fin 1 → T) :
    ark_ip_proofs.alloc.vec.Vec.index
        (ark_ip_proofs.core.slice.index.SliceIndexUsizeSlice T)
        (gipaFinVec values) 0#usize =
      Aeneas.Result.ok (values 0) := by
  simp [ark_ip_proofs.alloc.vec.Vec.index, gipaFinVec]

private theorem reverse_gipaFinVec_exact {T : Type} {n : Nat}
    (values : Fin n → T) :
    applications.groth16_aggregation.reverse_chronological_core
        (gipaFinVec values) =
      .ok (gipaFinVec (Ipp.reversedView values)) := by
  unfold applications.groth16_aggregation.reverse_chronological_core
    gipaFinVec
  simp only [alloc.vec.Vec.deref_mut, core.slice.Slice.reverse, lift,
    Result.bind_ok]
  rw [Ipp.Extracted.VerifyTippMipp.reverse_chronological_eq_reversedView
    (F := T) values]

private theorem reversed_shippingCoreRound_exact {μ : Nat}
    (rounds : Fin μ → Ipp.RoundComs G1 GT) :
    Ipp.reversedView (fun i => shippingCoreRound (rounds i)) =
      fun i => shippingCoreRound (Ipp.reversedView rounds i) :=
  rfl

private theorem shippingCoreRound_injective :
    Function.Injective (@shippingCoreRound G1 GT) := by
  intro left right h
  have hLA : left.LA = right.LA := by
    simpa [shippingCoreRound] using congrArg
      (fun encoded => (encoded.1.ab.1, encoded.1.c.1)) h
  have hRA : left.RA = right.RA := by
    simpa [shippingCoreRound] using congrArg
      (fun encoded => (encoded.2.ab.1, encoded.2.c.1)) h
  have hLB : left.LB = right.LB := by
    simpa [shippingCoreRound] using congrArg
      (fun encoded => encoded.1.ab.2.1) h
  have hRB : left.RB = right.RB := by
    simpa [shippingCoreRound] using congrArg
      (fun encoded => encoded.2.ab.2.1) h
  have hLT : left.LT = right.LT := by
    have hparts :
        left.LT.1 = right.LT.1 ∧ left.LT.2 = right.LT.2 := by
      simpa [shippingCoreRound] using congrArg
        (fun encoded => (encoded.1.ab.2.2, encoded.1.c.2)) h
    exact Prod.ext hparts.1 hparts.2
  have hRT : left.RT = right.RT := by
    have hparts :
        left.RT.1 = right.RT.1 ∧ left.RT.2 = right.RT.2 := by
      simpa [shippingCoreRound] using congrArg
        (fun encoded => (encoded.2.ab.2.2, encoded.2.c.2)) h
    exact Prod.ext hparts.1 hparts.2
  cases left
  cases right
  simp_all

def lastGipaChallenge :
    (μ : Nat) → Ipp.FsTranscript μ F → F
  | 0, transcript => transcript.x0
  | μ + 1, transcript => transcript.roundAnswer (Fin.last μ)

/-- Exact formal projection of the vectors passed to the production-used
GIPA core. -/
def honestGipaInput {μ : Nat}
    (statement : Ipp.FsStatement μ F G1 G2 GT)
    (witness : Ipp.Goal.Witness (2 ^ μ)
      (Ipp.SnarkPackV1.Refinement.WitnessRow G1 G2))
    (transcript : Ipp.FsTranscript μ F) :
    applications.groth16_aggregation.ProverGipaCoreInput F G1 G2 GT :=
  let root :=
    Ipp.SnarkPackV1.HonestProver.initialState
      statement witness transcript.randomizer
  {
    a := gipaFinVec
      (Ipp.SnarkPackV1.HonestProver.witnessA witness)
    b := gipaFinVec
      (Ipp.SnarkPackV1.HonestProver.scaledB
        witness transcript.randomizer)
    c := gipaFinVec
      (Ipp.SnarkPackV1.HonestProver.witnessC witness)
    public_values := gipaFinVec (n := 2 ^ μ)
      (Ipp.SnarkPackV1.HonestProver.rPowers
        (n := 2 ^ μ) transcript.randomizer)
    ck_v := gipaFinVec statement.srsV
    ck_w := gipaFinVec
      (Ipp.SnarkPackV1.HonestProver.shiftedW
        statement transcript.randomizer)
    randomizer := transcript.randomizer
    com_a := root.comA.1
    com_b := root.comB
    com_c := root.comA.2
    ip_ab := root.comT.1
    agg_c := root.comT.2
  }

/-- Complete expected output of the generated GIPA loop. This record includes
both transcript orders and the terminal public fold, not only proof fields. -/
def honestGipaOutput {μ : Nat}
    (statement : Ipp.FsStatement μ F G1 G2 GT)
    (witness : Ipp.Goal.Witness (2 ^ μ)
      (Ipp.SnarkPackV1.Refinement.WitnessRow G1 G2))
    (transcript : Ipp.FsTranscript μ F) :
    applications.groth16_aggregation.ProverGipaCoreOutput F G1 G2 GT
      (AggregateProver.WireIdentity GT)
      (AggregateProver.WireIdentity G1) :=
  let rounds :=
    Ipp.SnarkPackV1.HonestProver.honestRounds statement.e μ
      statement.srsV
      (Ipp.SnarkPackV1.HonestProver.shiftedW
        statement transcript.randomizer)
      (Ipp.SnarkPackV1.HonestProver.witnessA witness)
      (Ipp.SnarkPackV1.HonestProver.witnessC witness)
      (Ipp.SnarkPackV1.HonestProver.scaledB
        witness transcript.randomizer)
      (Ipp.SnarkPackV1.HonestProver.rPowers
        (n := 2 ^ μ) transcript.randomizer)
      transcript.roundAnswer
  let inverses :=
    Ipp.SnarkPackV1.HonestProver.inverseRounds transcript
  {
    rounds_chrono := gipaFinVec (fun i => shippingCoreRound (rounds i))
    rounds_wire := gipaFinVec
      (fun i => shippingCoreRound (Ipp.reversedView rounds i))
    raw_transcript_chrono := gipaFinVec transcript.roundAnswer
    raw_transcript_wire :=
      gipaFinVec (Ipp.reversedView transcript.roundAnswer)
    inv_transcript_chrono := gipaFinVec inverses
    inv_transcript_wire := gipaFinVec (Ipp.reversedView inverses)
    last_raw_challenge := lastGipaChallenge μ transcript
    final_ck := (
      Ipp.SnarkPackV1.HonestProver.foldChrono μ
        statement.srsV transcript.roundAnswer 0,
      Ipp.SnarkPackV1.HonestProver.foldChrono μ
        (Ipp.SnarkPackV1.HonestProver.shiftedW
          statement transcript.randomizer) inverses 0
    )
    final_messages := (
      Ipp.SnarkPackV1.HonestProver.foldChrono μ
        (Ipp.SnarkPackV1.HonestProver.witnessA witness) inverses 0,
      Ipp.SnarkPackV1.HonestProver.foldChrono μ
        (Ipp.SnarkPackV1.HonestProver.scaledB
          witness transcript.randomizer) transcript.roundAnswer 0,
      Ipp.SnarkPackV1.HonestProver.foldChrono μ
        (Ipp.SnarkPackV1.HonestProver.witnessC witness) inverses 0
    )
    final_public_value :=
      Ipp.SnarkPackV1.HonestProver.foldChrono μ
        (Ipp.SnarkPackV1.HonestProver.rPowers
          (n := 2 ^ μ) transcript.randomizer)
        transcript.roundAnswer 0
  }

/-- Full generated output reconstructed from the values observed at the
shipping proof boundary. -/
def observedGipaOutput {D : Type} {μ : Nat}
    (transcript : Ipp.FsTranscript μ F)
    (observation : Observation (F := F) (G1 := G1) (G2 := G2) (GT := GT)
      D μ) :
    applications.groth16_aggregation.ProverGipaCoreOutput F G1 G2 GT
      (AggregateProver.WireIdentity GT)
      (AggregateProver.WireIdentity G1) :=
  {
    rounds_chrono :=
      gipaFinVec (fun i => shippingCoreRound (observation.rounds i))
    rounds_wire := gipaFinVec
      (fun i => shippingCoreRound
        (Ipp.reversedView observation.rounds i))
    raw_transcript_chrono := gipaFinVec transcript.roundAnswer
    raw_transcript_wire :=
      gipaFinVec (Ipp.reversedView transcript.roundAnswer)
    inv_transcript_chrono := gipaFinVec observation.roundInverses
    inv_transcript_wire :=
      gipaFinVec (Ipp.reversedView observation.roundInverses)
    last_raw_challenge := lastGipaChallenge μ transcript
    final_ck := (observation.vFinal, observation.wFinal)
    final_messages :=
      (observation.aFinal, observation.bFinal, observation.cFinal)
    final_public_value :=
      Ipp.SnarkPackV1.HonestProver.foldChrono μ
        (Ipp.SnarkPackV1.HonestProver.rPowers
          (n := 2 ^ μ) transcript.randomizer)
        transcript.roundAnswer 0
  }

/-- Algebra dictionaries instantiated by the extracted production core.
Their exact Arkworks refinement remains an explicit curve-operation boundary. -/
structure GipaAlgebra (F G1 G2 GT : Type) where
  cloneF : core.clone.Clone F
  mulF : core.ops.arith.Mul F F F
  addF : core.ops.arith.Add F F F
  cloneG1 : core.clone.Clone G1
  mulG1 : core.ops.arith.Mul G1 F G1
  addG1 : core.ops.arith.Add G1 G1 G1
  cloneG2 : core.clone.Clone G2
  mulG2 : core.ops.arith.Mul G2 F G2
  addG2 : core.ops.arith.Add G2 G2 G2
  cloneGT : core.clone.Clone GT
  cloneAB : core.clone.Clone (AggregateProver.WireIdentity GT)
  cloneC : core.clone.Clone (AggregateProver.WireIdentity G1)

/-- Exact mathematical interpretation of every algebra dictionary supplied to
the extracted GIPA core. These are the narrow curve-operation postconditions;
they contain no transcript, loop, proof, or acceptance conclusion. -/
structure GipaAlgebra.RefinesModels
    (algebra : GipaAlgebra F G1 G2 GT) : Prop where
  cloneFExact :
    algebra.cloneF = Ipp.Extracted.ProverGipaExecution.cloneModel F
  mulFExact :
    algebra.mulF = Ipp.Extracted.ProverGipaExecution.mulModel F
  addFExact :
    algebra.addF = Ipp.Extracted.ProverGipaExecution.addModel F
  cloneG1Exact :
    algebra.cloneG1 = Ipp.Extracted.ProverGipaExecution.cloneModel G1
  mulG1Exact :
    algebra.mulG1 =
      Ipp.Extracted.ProverGipaExecution.rightSmulModel F G1
  addG1Exact :
    algebra.addG1 = Ipp.Extracted.ProverGipaExecution.addModel G1
  cloneG2Exact :
    algebra.cloneG2 = Ipp.Extracted.ProverGipaExecution.cloneModel G2
  mulG2Exact :
    algebra.mulG2 =
      Ipp.Extracted.ProverGipaExecution.rightSmulModel F G2
  addG2Exact :
    algebra.addG2 = Ipp.Extracted.ProverGipaExecution.addModel G2
  cloneGTExact :
    algebra.cloneGT = Ipp.Extracted.ProverGipaExecution.cloneModel GT
  cloneABExact :
    algebra.cloneAB = Ipp.Extracted.ProverGipaExecution.cloneModel
      (AggregateProver.WireIdentity GT)
  cloneCExact :
    algebra.cloneC = Ipp.Extracted.ProverGipaExecution.cloneModel
      (AggregateProver.WireIdentity G1)

/-- The extracted one-round theorem, transported across the exact production
algebra dictionaries. This is the constructor used for every continuing node
of the finite whole-loop trace below. -/
theorem GipaAlgebra.round_exact
    {E FX : Type}
    (algebra : GipaAlgebra F G1 G2 GT)
    (algebraExact : algebra.RefinesModels)
    (effects :
      applications.groth16_aggregation.ProverGipaEffect
        FX F G1 G2 GT
          (AggregateProver.WireIdentity GT)
          (AggregateProver.WireIdentity G1) E)
    {n : Nat}
    (aLeft aRight cLeft cRight wLeft wRight : Fin n → G1)
    (bLeft bRight vLeft vRight : Fin n → G2)
    (publicLeft publicRight : Fin n → F)
    (prior : F) (effect effect' : FX)
    (left right : ShippingCoreCommitment G1 GT)
    (raw inverse : F)
    (boundary : Ipp.Extracted.ProverGipaExecution.RoundEffectBoundary effects
      aLeft aRight cLeft cRight wLeft wRight
      bLeft bRight vLeft vRight publicLeft publicRight
      prior effect effect' left right raw inverse) :
    applications.groth16_aggregation.prove_tipp_mipp_gipa_round_core
        algebra.cloneF algebra.mulF algebra.addF
        algebra.cloneG1 algebra.mulG1 algebra.addG1
        algebra.cloneG2 algebra.mulG2 algebra.addG2
        algebra.cloneGT algebra.cloneAB algebra.cloneC
        effects
        ⟨List.ofFn aLeft⟩ ⟨List.ofFn aRight⟩
        ⟨List.ofFn bLeft⟩ ⟨List.ofFn bRight⟩
        ⟨List.ofFn cLeft⟩ ⟨List.ofFn cRight⟩
        ⟨List.ofFn publicLeft⟩ ⟨List.ofFn publicRight⟩
        ⟨List.ofFn vLeft⟩ ⟨List.ofFn vRight⟩
        ⟨List.ofFn wLeft⟩ ⟨List.ofFn wRight⟩
        prior effect =
      .ok (.Ok
        (Ipp.Extracted.ProverGipaExecution.expectedRoundOutput
          aLeft aRight cLeft cRight wLeft wRight
          bLeft bRight vLeft vRight publicLeft publicRight
          left right raw inverse),
        effect') := by
  rw [algebraExact.cloneFExact, algebraExact.mulFExact,
    algebraExact.addFExact, algebraExact.cloneG1Exact,
    algebraExact.mulG1Exact, algebraExact.addG1Exact,
    algebraExact.cloneG2Exact, algebraExact.mulG2Exact,
    algebraExact.addG2Exact, algebraExact.cloneGTExact,
    algebraExact.cloneABExact, algebraExact.cloneCExact]
  exact Ipp.Extracted.ProverGipaExecution.extracted_round_exact effects
    aLeft aRight cLeft cRight wLeft wRight
    bLeft bRight vLeft vRight publicLeft publicRight
    prior effect effect' left right raw inverse boundary

abbrev ShippingLoopRound (G1 GT : Type) :=
  ShippingCoreCommitment G1 GT × ShippingCoreCommitment G1 GT

abbrev ShippingLoopError (E : Type) :=
  applications.groth16_aggregation.ProverGipaCoreError E

abbrev ShippingLoopState
    (F G1 G2 GT E FX : Type) :=
  FX × (alloc.vec.Vec G1) × (alloc.vec.Vec G2) ×
    (alloc.vec.Vec G1) × (alloc.vec.Vec F) × (alloc.vec.Vec G2) ×
    (alloc.vec.Vec G1) × F × F ×
    (alloc.vec.Vec (ShippingLoopRound G1 GT)) ×
    (alloc.vec.Vec F) × (alloc.vec.Vec F) ×
    (Option (ShippingLoopError E))

abbrev ShippingLoopOutput
    (F G1 G2 GT E FX : Type) :=
  FX × (alloc.vec.Vec G1) × (alloc.vec.Vec G2) ×
    (alloc.vec.Vec G1) × (alloc.vec.Vec F) × (alloc.vec.Vec G2) ×
    (alloc.vec.Vec G1) × F ×
    (alloc.vec.Vec (ShippingLoopRound G1 GT)) ×
    (alloc.vec.Vec F) × (alloc.vec.Vec F) ×
    (Option (ShippingLoopError E))

/-- The exact extracted while-body, named so a finite trace can be stated
without hiding a whole-loop result in an equality premise. -/
def shippingLoopBody
    {E FX : Type}
    (algebra : GipaAlgebra F G1 G2 GT)
    (effects :
      applications.groth16_aggregation.ProverGipaEffect
        FX F G1 G2 GT
          (AggregateProver.WireIdentity GT)
          (AggregateProver.WireIdentity G1) E) :
    ShippingLoopState F G1 G2 GT E FX →
      Result (ControlFlow
        (ShippingLoopState F G1 G2 GT E FX)
        (ShippingLoopOutput F G1 G2 GT E FX)) :=
  fun (effect, a, b, c, publicValues, ckV, ckW, prior, last,
      rounds, rawTranscript, inverseTranscript, roundError) =>
    applications.groth16_aggregation.prove_tipp_mipp_gipa_core_loop.body
      algebra.cloneF algebra.mulF algebra.addF
      algebra.cloneG1 algebra.mulG1 algebra.addG1
      algebra.cloneG2 algebra.mulG2 algebra.addG2
      algebra.cloneGT algebra.cloneAB algebra.cloneC
      effects effect a b c publicValues ckV ckW prior last rounds
      rawTranscript inverseTranscript roundError

/-- State passed to the first generated loop iteration after the exact `x0`
effect call. -/
def honestLoopInitial
    {μ : Nat} {E FX : Type}
    (statement : Ipp.FsStatement μ F G1 G2 GT)
    (witness : Ipp.Goal.Witness (2 ^ μ)
      (Ipp.SnarkPackV1.Refinement.WitnessRow G1 G2))
    (transcript : Ipp.FsTranscript μ F)
    (afterX0 : FX) :
    ShippingLoopState F G1 G2 GT E FX :=
  let input := honestGipaInput statement witness transcript
  (afterX0, input.a, input.b, input.c, input.public_values,
    input.ck_v, input.ck_w, transcript.x0, transcript.x0,
    alloc.vec.Vec.new (ShippingLoopRound G1 GT),
    alloc.vec.Vec.new F, alloc.vec.Vec.new F, none)

/-- Mathematically determined terminal tuple of the generated loop. Every
continuing transition needed to reach it remains visible in
`SuccessfulLoopTrace`; the tuple itself contains no execution premise. -/
def honestLoopTerminal
    {μ : Nat} {E FX : Type}
    (statement : Ipp.FsStatement μ F G1 G2 GT)
    (witness : Ipp.Goal.Witness (2 ^ μ)
      (Ipp.SnarkPackV1.Refinement.WitnessRow G1 G2))
    (transcript : Ipp.FsTranscript μ F)
    (finalEffect : FX) :
    ShippingLoopOutput F G1 G2 GT E FX :=
  let rounds :=
    Ipp.SnarkPackV1.HonestProver.honestRounds statement.e μ
      statement.srsV
      (Ipp.SnarkPackV1.HonestProver.shiftedW
        statement transcript.randomizer)
      (Ipp.SnarkPackV1.HonestProver.witnessA witness)
      (Ipp.SnarkPackV1.HonestProver.witnessC witness)
      (Ipp.SnarkPackV1.HonestProver.scaledB
        witness transcript.randomizer)
      (Ipp.SnarkPackV1.HonestProver.rPowers
        (n := 2 ^ μ) transcript.randomizer)
      transcript.roundAnswer
  let inverses := Ipp.SnarkPackV1.HonestProver.inverseRounds transcript
  (finalEffect,
    gipaFinVec
      (Ipp.SnarkPackV1.HonestProver.foldChrono μ
        (Ipp.SnarkPackV1.HonestProver.witnessA witness) inverses),
    gipaFinVec
      (Ipp.SnarkPackV1.HonestProver.foldChrono μ
        (Ipp.SnarkPackV1.HonestProver.scaledB
          witness transcript.randomizer) transcript.roundAnswer),
    gipaFinVec
      (Ipp.SnarkPackV1.HonestProver.foldChrono μ
        (Ipp.SnarkPackV1.HonestProver.witnessC witness) inverses),
    gipaFinVec
      (Ipp.SnarkPackV1.HonestProver.foldChrono μ
        (Ipp.SnarkPackV1.HonestProver.rPowers
          (n := 2 ^ μ) transcript.randomizer) transcript.roundAnswer),
    gipaFinVec
      (Ipp.SnarkPackV1.HonestProver.foldChrono μ
        statement.srsV transcript.roundAnswer),
    gipaFinVec
      (Ipp.SnarkPackV1.HonestProver.foldChrono μ
        (Ipp.SnarkPackV1.HonestProver.shiftedW
          statement transcript.randomizer) inverses),
    lastGipaChallenge μ transcript,
    gipaFinVec (fun i => shippingCoreRound (rounds i)),
    gipaFinVec transcript.roundAnswer,
    gipaFinVec inverses,
    none)

/-- One concrete successful generated execution, with exact input,
root-challenge, per-iteration trace, and output projection. The former
whole-core `expectedRun` equality is deliberately absent. -/
structure GipaExecutionBoundary
    {D : Type} {μ : Nat}
    (statement : Ipp.FsStatement μ F G1 G2 GT)
    (witness : Ipp.Goal.Witness (2 ^ μ)
      (Ipp.SnarkPackV1.Refinement.WitnessRow G1 G2))
    (transcript : Ipp.FsTranscript μ F)
    (observation : Observation (F := F) (G1 := G1) (G2 := G2) (GT := GT)
      D μ) where
  algebra : GipaAlgebra F G1 G2 GT
  Effect : Type
  effects :
    applications.groth16_aggregation.ProverGipaEffect
      Effect F G1 G2 GT
        (AggregateProver.WireIdentity GT)
        (AggregateProver.WireIdentity G1) String
  concreteInput :
    applications.groth16_aggregation.ProverGipaCoreInput F G1 G2 GT
  inputExact :
    concreteInput = honestGipaInput statement witness transcript
  initialEffect : Effect
  execution :
    Ipp.Extracted.ProverGipaExecution.SuccessfulExecution
      algebra.cloneF algebra.mulF algebra.addF
      algebra.cloneG1 algebra.mulG1 algebra.addG1
      algebra.cloneG2 algebra.mulG2 algebra.addG2
      algebra.cloneGT algebra.cloneAB algebra.cloneC
      effects concreteInput initialEffect
  algebraExact : algebra.RefinesModels
  afterX0 : Effect
  x0Exact :
    effects.derive_x0 initialEffect
        concreteInput.randomizer concreteInput.com_a concreteInput.com_b
        concreteInput.com_c concreteInput.ip_ab concreteInput.agg_c =
      .ok (.Ok transcript.x0, afterX0)
  loopTrace :
    Ipp.Extracted.ProverGipaExecution.SuccessfulLoopTrace
      (shippingLoopBody algebra effects)
      (honestLoopInitial (E := String)
        statement witness transcript afterX0)
      (honestLoopTerminal (E := String)
        statement witness transcript execution.finalEffect)
  observedOutput :
    execution.output = observedGipaOutput transcript observation

/-- The finite trace reconstructs the whole extracted core result. In
particular, the honest output is now a theorem rather than a field of
`GipaExecutionBoundary`. -/
theorem GipaExecutionBoundary.expectedRun
    {D : Type} {μ : Nat}
    {statement : Ipp.FsStatement μ F G1 G2 GT}
    {witness : Ipp.Goal.Witness (2 ^ μ)
      (Ipp.SnarkPackV1.Refinement.WitnessRow G1 G2)}
    {transcript : Ipp.FsTranscript μ F}
    {observation : Observation (F := F) (G1 := G1) (G2 := G2) (GT := GT)
      D μ}
    (boundary : GipaExecutionBoundary
      statement witness transcript observation) :
    applications.groth16_aggregation.prove_tipp_mipp_gipa_core
        boundary.algebra.cloneF
        boundary.algebra.mulF
        boundary.algebra.addF
        boundary.algebra.cloneG1
        boundary.algebra.mulG1
        boundary.algebra.addG1
        boundary.algebra.cloneG2
        boundary.algebra.mulG2
        boundary.algebra.addG2
        boundary.algebra.cloneGT
        boundary.algebra.cloneAB
        boundary.algebra.cloneC
        boundary.effects boundary.concreteInput boundary.initialEffect =
      .ok (.Ok (honestGipaOutput statement witness transcript),
        boundary.execution.finalEffect) := by
  let finalEffect : boundary.Effect := boundary.execution.finalEffect
  change _ = Aeneas.Result.ok
    (core.result.Result.Ok (honestGipaOutput statement witness transcript),
      finalEffect)
  have hx0 :
      boundary.effects.derive_x0 boundary.initialEffect
          (honestGipaInput statement witness transcript).randomizer
          (honestGipaInput statement witness transcript).com_a
          (honestGipaInput statement witness transcript).com_b
          (honestGipaInput statement witness transcript).com_c
          (honestGipaInput statement witness transcript).ip_ab
          (honestGipaInput statement witness transcript).agg_c =
        .ok (.Ok transcript.x0, boundary.afterX0) := by
    simpa [boundary.inputExact] using boundary.x0Exact
  have hcloneF (value : F) :
      boundary.algebra.cloneF.clone value = .ok value := by
    rw [boundary.algebraExact.cloneFExact]
    rfl
  have hpower :
      ark_ip_proofs.core.num.Usize.is_power_of_two
          (Aeneas.Std.Usize.ofNat (2 ^ μ)) =
        Aeneas.Result.ok true := by
    simpa only [gipaFinVec_len] using
      gipaFinVec_powerOfTwo μ
        (Ipp.SnarkPackV1.HonestProver.witnessA witness)
  have hnonempty :
      Aeneas.Std.Usize.ofNat (2 ^ μ) ≠ Aeneas.Std.Usize.ofNat 0 := by
    simp [Aeneas.Std.Usize.ofNat]
  have hsame :
      (Aeneas.Std.Usize.ofNat (2 ^ μ) !=
          Aeneas.Std.Usize.ofNat (2 ^ μ)) =
        false := by
    simp
  have htrace := boundary.loopTrace.run
  have hloop :
      applications.groth16_aggregation.prove_tipp_mipp_gipa_core_loop
          boundary.algebra.cloneF
          boundary.algebra.mulF
          boundary.algebra.addF
          boundary.algebra.cloneG1
          boundary.algebra.mulG1
          boundary.algebra.addG1
          boundary.algebra.cloneG2
          boundary.algebra.mulG2
          boundary.algebra.addG2
          boundary.algebra.cloneGT
          boundary.algebra.cloneAB
          boundary.algebra.cloneC
          boundary.effects
          boundary.afterX0
          (honestGipaInput statement witness transcript).a
          (honestGipaInput statement witness transcript).b
          (honestGipaInput statement witness transcript).c
          (honestGipaInput statement witness transcript).public_values
          (honestGipaInput statement witness transcript).ck_v
          (honestGipaInput statement witness transcript).ck_w
          transcript.x0 transcript.x0
          (alloc.vec.Vec.new (ShippingLoopRound G1 GT))
          (alloc.vec.Vec.new F) (alloc.vec.Vec.new F) none =
        .ok (honestLoopTerminal (E := String)
          statement witness transcript finalEffect) := by
    simpa only [
      applications.groth16_aggregation.prove_tipp_mipp_gipa_core_loop,
      shippingLoopBody, honestLoopInitial, finalEffect] using htrace
  rw [boundary.inputExact]
  unfold applications.groth16_aggregation.prove_tipp_mipp_gipa_core
  simp only [honestGipaInput, gipaFinVec_len]
  rw [hpower]
  simp only [Result.bind_ok, hnonempty, ↓reduceIte, hsame,
    Bool.false_eq_true, if_false, if_true]
  simp only [honestGipaInput] at hx0
  rw [hx0]
  simp only [core.result.Result.map_err, Result.bind_ok,
    core.result.Result.Insts.CoreOpsTry.branch]
  rw [hcloneF]
  simp only [Result.bind_ok]
  simp only [honestGipaInput] at hloop
  rw [hloop]
  simp only [Result.bind_ok, honestLoopTerminal, ↓reduceIte]
  simp only [ark_ip_proofs.BuiltinClone,
    alloc.vec.CloneVec.clone_identity, Result.bind_ok]
  rw [reverse_gipaFinVec_exact]
  rw [boundary.algebraExact.cloneFExact]
  simp only [Ipp.Extracted.ProverGipaExecution.cloneModel,
    alloc.vec.CloneVec.clone_identity, Result.bind_ok]
  rw [reverse_gipaFinVec_exact]
  simp only [Ipp.Extracted.ProverGipaExecution.cloneModel,
    alloc.vec.CloneVec.clone_identity, Result.bind_ok]
  rw [reverse_gipaFinVec_exact]
  rw [boundary.algebraExact.cloneG1Exact,
    boundary.algebraExact.cloneG2Exact]
  simp only [Result.bind_ok,
    Ipp.Extracted.ProverGipaExecution.cloneModel,
    gipaFinVec_index_zero, reversed_shippingCoreRound_exact,
    honestGipaOutput]

theorem GipaExecutionBoundary.output_eq_honest
    {D : Type} {μ : Nat}
    {statement : Ipp.FsStatement μ F G1 G2 GT}
    {witness : Ipp.Goal.Witness (2 ^ μ)
      (Ipp.SnarkPackV1.Refinement.WitnessRow G1 G2)}
    {transcript : Ipp.FsTranscript μ F}
    {observation : Observation (F := F) (G1 := G1) (G2 := G2) (GT := GT)
      D μ}
    (boundary : GipaExecutionBoundary
      statement witness transcript observation) :
    boundary.execution.output =
      honestGipaOutput statement witness transcript := by
  have h := boundary.execution.run.symm.trans boundary.expectedRun
  simpa using h

theorem GipaExecutionBoundary.outputs_eq
    {D : Type} {μ : Nat}
    {statement : Ipp.FsStatement μ F G1 G2 GT}
    {witness : Ipp.Goal.Witness (2 ^ μ)
      (Ipp.SnarkPackV1.Refinement.WitnessRow G1 G2)}
    {transcript : Ipp.FsTranscript μ F}
    {observation : Observation (F := F) (G1 := G1) (G2 := G2) (GT := GT)
      D μ}
    (boundary : GipaExecutionBoundary
      statement witness transcript observation) :
    observedGipaOutput transcript observation =
      honestGipaOutput statement witness transcript :=
  boundary.observedOutput.symm.trans boundary.output_eq_honest

theorem GipaExecutionBoundary.roundsExact
    {D : Type} {μ : Nat}
    {statement : Ipp.FsStatement μ F G1 G2 GT}
    {witness : Ipp.Goal.Witness (2 ^ μ)
      (Ipp.SnarkPackV1.Refinement.WitnessRow G1 G2)}
    {transcript : Ipp.FsTranscript μ F}
    {observation : Observation (F := F) (G1 := G1) (G2 := G2) (GT := GT)
      D μ}
    (boundary : GipaExecutionBoundary
      statement witness transcript observation) :
    observation.rounds =
      Ipp.SnarkPackV1.HonestProver.honestRounds statement.e μ
        statement.srsV
        (Ipp.SnarkPackV1.HonestProver.shiftedW
          statement transcript.randomizer)
        (Ipp.SnarkPackV1.HonestProver.witnessA witness)
        (Ipp.SnarkPackV1.HonestProver.witnessC witness)
        (Ipp.SnarkPackV1.HonestProver.scaledB
          witness transcript.randomizer)
        (Ipp.SnarkPackV1.HonestProver.rPowers
          (n := 2 ^ μ) transcript.randomizer)
        transcript.roundAnswer := by
  have hrounds := congrArg
    (fun output => output.rounds_chrono) boundary.outputs_eq
  apply _root_.funext
  intro i
  apply shippingCoreRound_injective
  have hencoded := gipaFinVec_injective (by
    simpa [observedGipaOutput, honestGipaOutput] using hrounds)
  exact congrFun hencoded i

theorem GipaExecutionBoundary.roundInversesExact
    {D : Type} {μ : Nat}
    {statement : Ipp.FsStatement μ F G1 G2 GT}
    {witness : Ipp.Goal.Witness (2 ^ μ)
      (Ipp.SnarkPackV1.Refinement.WitnessRow G1 G2)}
    {transcript : Ipp.FsTranscript μ F}
    {observation : Observation (F := F) (G1 := G1) (G2 := G2) (GT := GT)
      D μ}
    (boundary : GipaExecutionBoundary
      statement witness transcript observation) :
    observation.roundInverses =
      Ipp.SnarkPackV1.HonestProver.inverseRounds transcript := by
  have hinverses := congrArg
    (fun output => output.inv_transcript_chrono) boundary.outputs_eq
  exact gipaFinVec_injective (by
    simpa [observedGipaOutput, honestGipaOutput] using hinverses)

theorem GipaExecutionBoundary.aFinalExact
    {D : Type} {μ : Nat}
    {statement : Ipp.FsStatement μ F G1 G2 GT}
    {witness : Ipp.Goal.Witness (2 ^ μ)
      (Ipp.SnarkPackV1.Refinement.WitnessRow G1 G2)}
    {transcript : Ipp.FsTranscript μ F}
    {observation : Observation (F := F) (G1 := G1) (G2 := G2) (GT := GT)
      D μ}
    (boundary : GipaExecutionBoundary
      statement witness transcript observation) :
    observation.aFinal =
      Ipp.SnarkPackV1.HonestProver.foldChrono μ
        (Ipp.SnarkPackV1.HonestProver.witnessA witness)
        (Ipp.SnarkPackV1.HonestProver.inverseRounds transcript) 0 := by
  have h := congrArg
    (fun output => output.final_messages.1) boundary.outputs_eq
  simpa [observedGipaOutput, honestGipaOutput] using h

theorem GipaExecutionBoundary.bFinalExact
    {D : Type} {μ : Nat}
    {statement : Ipp.FsStatement μ F G1 G2 GT}
    {witness : Ipp.Goal.Witness (2 ^ μ)
      (Ipp.SnarkPackV1.Refinement.WitnessRow G1 G2)}
    {transcript : Ipp.FsTranscript μ F}
    {observation : Observation (F := F) (G1 := G1) (G2 := G2) (GT := GT)
      D μ}
    (boundary : GipaExecutionBoundary
      statement witness transcript observation) :
    observation.bFinal =
      Ipp.SnarkPackV1.HonestProver.foldChrono μ
        (Ipp.SnarkPackV1.HonestProver.scaledB
          witness transcript.randomizer) transcript.roundAnswer 0 := by
  have h := congrArg
    (fun output => output.final_messages.2.1) boundary.outputs_eq
  simpa [observedGipaOutput, honestGipaOutput] using h

theorem GipaExecutionBoundary.cFinalExact
    {D : Type} {μ : Nat}
    {statement : Ipp.FsStatement μ F G1 G2 GT}
    {witness : Ipp.Goal.Witness (2 ^ μ)
      (Ipp.SnarkPackV1.Refinement.WitnessRow G1 G2)}
    {transcript : Ipp.FsTranscript μ F}
    {observation : Observation (F := F) (G1 := G1) (G2 := G2) (GT := GT)
      D μ}
    (boundary : GipaExecutionBoundary
      statement witness transcript observation) :
    observation.cFinal =
      Ipp.SnarkPackV1.HonestProver.foldChrono μ
        (Ipp.SnarkPackV1.HonestProver.witnessC witness)
        (Ipp.SnarkPackV1.HonestProver.inverseRounds transcript) 0 := by
  have h := congrArg
    (fun output => output.final_messages.2.2) boundary.outputs_eq
  simpa [observedGipaOutput, honestGipaOutput] using h

theorem GipaExecutionBoundary.vFinalExact
    {D : Type} {μ : Nat}
    {statement : Ipp.FsStatement μ F G1 G2 GT}
    {witness : Ipp.Goal.Witness (2 ^ μ)
      (Ipp.SnarkPackV1.Refinement.WitnessRow G1 G2)}
    {transcript : Ipp.FsTranscript μ F}
    {observation : Observation (F := F) (G1 := G1) (G2 := G2) (GT := GT)
      D μ}
    (boundary : GipaExecutionBoundary
      statement witness transcript observation) :
    observation.vFinal =
      Ipp.SnarkPackV1.HonestProver.foldChrono μ
        statement.srsV transcript.roundAnswer 0 := by
  have h := congrArg
    (fun output => output.final_ck.1) boundary.outputs_eq
  simpa [observedGipaOutput, honestGipaOutput] using h

theorem GipaExecutionBoundary.wFinalExact
    {D : Type} {μ : Nat}
    {statement : Ipp.FsStatement μ F G1 G2 GT}
    {witness : Ipp.Goal.Witness (2 ^ μ)
      (Ipp.SnarkPackV1.Refinement.WitnessRow G1 G2)}
    {transcript : Ipp.FsTranscript μ F}
    {observation : Observation (F := F) (G1 := G1) (G2 := G2) (GT := GT)
      D μ}
    (boundary : GipaExecutionBoundary
      statement witness transcript observation) :
    observation.wFinal =
      Ipp.SnarkPackV1.HonestProver.foldChrono μ
        (Ipp.SnarkPackV1.HonestProver.shiftedW
          statement transcript.randomizer)
        (Ipp.SnarkPackV1.HonestProver.inverseRounds transcript) 0 := by
  have h := congrArg
    (fun output => output.final_ck.2) boundary.outputs_eq
  simpa [observedGipaOutput, honestGipaOutput] using h

/-- Exact residual effect boundary for one successful shipping prover run.

`gipa` is one equality to the generated full control loop plus exact input and
effect projections. KZG arithmetic is extracted separately; `kzg` retains the
full-SRS, affine-MSM, and pairing postconditions. `emitted` is the exact
serialization/data-constructor boundary.
-/
structure ShippingProverContract
    (D : Type) {μ : Nat}
    (serialization : AggregateProver.Serialization G1 G2 GT)
    (statement : Ipp.FsStatement μ F G1 G2 GT)
    (witness : Ipp.Goal.Witness (2 ^ μ)
      (Ipp.SnarkPackV1.Refinement.WitnessRow G1 G2))
    (transcript : Ipp.FsTranscript μ F)
    (observation : Observation (F := F) (G1 := G1) (G2 := G2) (GT := GT)
      D μ) where
  kzg : KzgBoundary statement
  gipa : GipaExecutionBoundary statement witness transcript observation
  chaining :
    Ipp.TranscriptChaining transcript.x0
      transcript.roundPrev transcript.roundAnswer
  randomizerNonceBound :
    transcript.randomizerNonce < statement.rejectionFuel
  x0NonceBound :
    transcript.x0Nonce < statement.rejectionFuel
  roundNonceBound : ∀ i,
    transcript.roundNonce i < statement.rejectionFuel
  bridgeNonceBound :
    transcript.bridgeNonce < statement.rejectionFuel
  kzgNonceBound :
    transcript.kzgNonce < statement.rejectionFuel
  randomizerAdmissible :
    transcript.randomizer ≠ 0 ∧ transcript.randomizer ≠ 1
  x0Nonzero :
    transcript.x0 ≠ 0
  roundNonzero : ∀ i,
    transcript.roundAnswer i ≠ 0
  bridgeNonzero :
    transcript.bridge ≠ 0
  kzgNonzero :
    transcript.kzg ≠ 0
  randomizerPower : ∀ i,
    observation.randomizerPowers i =
      transcript.randomizer ^ (i : Nat)
  randomizerInverse :
    observation.randomizerInverse = transcript.randomizer⁻¹
  comA :
    observation.comA =
      (Ipp.SnarkPackV1.HonestProver.initialState
        statement witness transcript.randomizer).comA
  comB :
    observation.comB =
      (Ipp.SnarkPackV1.HonestProver.initialState
        statement witness transcript.randomizer).comB
  vOpening :
    observation.vOpening =
      kzg.v.opening transcript.kzg
        (Ipp.SnarkPackV1.HonestProver.vCoeffs transcript)
  wOpening :
    observation.wOpening =
      kzg.w.opening transcript.kzg
        (Ipp.SnarkPackV1.HonestProver.wCoeffs transcript)
  ipAb :
    observation.ipAb =
      (Ipp.SnarkPackV1.HonestProver.initialState
        statement witness transcript.randomizer).comT.1
  aggC :
    observation.aggC =
      (Ipp.SnarkPackV1.HonestProver.initialState
        statement witness transcript.randomizer).comT.2
  emitted :
    AggregateProver.assemble D serialization observation.toFormalProof =
      .ok observation.wireProof

def ShippingProverContract.admissibleTranscript
    {D : Type} {μ : Nat}
    {serialization : AggregateProver.Serialization G1 G2 GT}
    {statement : Ipp.FsStatement μ F G1 G2 GT}
    {witness : Ipp.Goal.Witness (2 ^ μ)
      (Ipp.SnarkPackV1.Refinement.WitnessRow G1 G2)}
    {transcript : Ipp.FsTranscript μ F}
    {observation : Observation (F := F) (G1 := G1) (G2 := G2) (GT := GT)
      D μ}
    (contract : ShippingProverContract D serialization statement witness
      transcript observation) :
    Ipp.SnarkPackV1.HonestProver.AdmissibleTranscript transcript :=
  ⟨contract.randomizerAdmissible.1,
    contract.randomizerAdmissible.2,
    contract.x0Nonzero,
    contract.roundNonzero,
    contract.bridgeNonzero,
    contract.kzgNonzero⟩

theorem contract_toFormalProof_eq_construct
    (D : Type) {μ : Nat}
    (serialization : AggregateProver.Serialization G1 G2 GT)
    (statement : Ipp.FsStatement μ F G1 G2 GT)
    (witness : Ipp.Goal.Witness (2 ^ μ)
      (Ipp.SnarkPackV1.Refinement.WitnessRow G1 G2))
    (transcript : Ipp.FsTranscript μ F)
    (observation : Observation (F := F) (G1 := G1) (G2 := G2) (GT := GT)
      D μ)
    (contract : ShippingProverContract D serialization statement witness
      transcript observation) :
    observation.toFormalProof =
      Ipp.SnarkPackV1.HonestProver.construct
        statement witness transcript contract.kzg.toOpenings := by
  apply proof_ext
  · exact contract.comA
  · exact contract.comB
  · funext i
    exact congrFun contract.gipa.roundsExact i
  · exact contract.gipa.aFinalExact
  · exact contract.gipa.bFinalExact
  · exact contract.gipa.cFinalExact
  · exact contract.gipa.vFinalExact
  · exact contract.vOpening
  · exact contract.gipa.wFinalExact
  · exact contract.wOpening
  · exact contract.ipAb
  · exact contract.aggC

/-- Shipping-prover completeness, with every non-structural effect exposed by
`ShippingProverContract`. The theorem does not assume an already-accepted
proof: acceptance is obtained from the independent honest-prover theorem. -/
theorem shipping_prover_refines_honest_complete
    (D : Type) {μ : Nat}
    (serialization : AggregateProver.Serialization G1 G2 GT)
    (statement : Ipp.FsStatement μ F G1 G2 GT)
    (witness : Ipp.Goal.Witness (2 ^ μ)
      (Ipp.SnarkPackV1.Refinement.WitnessRow G1 G2))
    (transcript : Ipp.FsTranscript μ F)
    (observation : Observation (F := F) (G1 := G1) (G2 := G2) (GT := GT)
      D μ)
    (contract : ShippingProverContract D serialization statement witness
      transcript observation)
    (hvalid : Ipp.Goal.ValidWithWitness
      (Ipp.SnarkPackV1.Refinement.ppeRelation statement.e)
      (Ipp.SnarkPackV1.Refinement.toGoal statement) witness) :
    AggregateProver.assemble D serialization observation.toFormalProof =
        .ok observation.wireProof ∧
      observation.wireProof =
        AggregateProver.wireProofOf D observation.toFormalProof ∧
      Ipp.SnarkPackV1.Refinement.RootOpens
        statement observation.toFormalProof witness ∧
      Ipp.SnarkPackV1.Accepts
        statement observation.toFormalProof transcript := by
  have heq := contract_toFormalProof_eq_construct D serialization
    statement witness transcript observation contract
  have hroot :=
    Ipp.SnarkPackV1.HonestProver.construct_rootOpens
      statement witness transcript contract.kzg.toOpenings
        contract.admissibleTranscript.1
  have haccepts :=
    Ipp.SnarkPackV1.HonestProver.construct_accepts
      statement witness transcript contract.kzg.toOpenings hvalid
        contract.admissibleTranscript
  refine ⟨contract.emitted, ?_, ?_, ?_⟩
  · have hassemble :=
      AggregateProver.assemble_exact D serialization observation.toFormalProof
    rw [contract.emitted] at hassemble
    exact Result.ok.inj hassemble
  · simpa [heq] using hroot
  · simpa [heq] using haccepts

#print axioms shipping_prover_refines_honest_complete

end

end Ipp.Extracted.ShippingProver
