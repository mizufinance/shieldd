import Ipp.Bls12377
import Mathlib.NumberTheory.LucasPrimality
import Mathlib.FieldTheory.Finite.Basic

/-!
Kernel-checked Pocklington certificates for the BLS12-377 moduli.
Concrete certificate trees are supplied by the modulus-specific modules.
-/

namespace Ipp.Bls12377Certificates

/-- The canonical natural-number representative of a modular power. -/
def powResidue (witness exponent modulus : Nat) : Nat :=
  (npowBinRec exponent (witness : ZMod modulus)).val

private theorem npowBinRec_eq_pow {M : Type*} [Monoid M] (exponent : Nat) (x : M) :
    npowBinRec exponent x = x ^ exponent := by
  induction exponent with
  | zero => simpa using npowBinRec_zero x
  | succ exponent ih => rw [npowBinRec_succ, ih, pow_succ]

private theorem powResidue_eq_val {n witness exponent : Nat} :
    powResidue witness exponent n = ((witness : ZMod n) ^ exponent).val := by
  unfold powResidue
  rw [npowBinRec_eq_pow]

/-- An Euler-criterion residue of `-1` certifies that `a` is not a square modulo an
odd prime. -/
theorem not_square_of_powResidue_eq_neg_one {p a : Nat}
    (hp : p.Prime) (hodd : Odd p)
    (hresidue : powResidue a ((p - 1) / 2) p = p - 1) :
    ∀ x : ZMod p, x ^ 2 ≠ (a : ZMod p) := by
  rcases hodd with ⟨k, hk⟩
  have hpTwo : 2 < p := by
    have := hp.two_le
    omega
  have hexponent : 0 < (p - 1) / 2 := by omega
  have htwice : 2 * ((p - 1) / 2) = p - 1 := by omega
  have hnegOneVal : (-1 : ZMod p).val = p - 1 := by
    rw [show p = (p - 1).succ by omega]
    exact ZMod.val_neg_one (p - 1)
  have honeVal : (1 : ZMod p).val = 1 := ZMod.val_one'' (by omega)
  have hnegOne_ne_one : (-1 : ZMod p) ≠ 1 := by
    intro h
    have hval := congrArg ZMod.val h
    rw [hnegOneVal, honeVal] at hval
    omega
  letI : Fact p.Prime := ⟨hp⟩
  have hapow_eq_negOne : (a : ZMod p) ^ ((p - 1) / 2) = -1 := by
    apply ZMod.val_injective
    rw [← powResidue_eq_val, hresidue, hnegOneVal]
  intro x hx
  have ha_ne_zero : (a : ZMod p) ≠ 0 := by
    intro ha
    rw [ha, zero_pow hexponent.ne'] at hapow_eq_negOne
    exact neg_ne_zero.mpr one_ne_zero hapow_eq_negOne.symm
  have hx_ne_zero : x ≠ 0 := by
    intro hxzero
    apply ha_ne_zero
    rw [← hx, hxzero]
    norm_num
  apply hnegOne_ne_one
  rw [← hapow_eq_negOne]
  calc
    (a : ZMod p) ^ ((p - 1) / 2) = (x ^ 2) ^ ((p - 1) / 2) := by rw [hx]
    _ = x ^ (2 * ((p - 1) / 2)) := by rw [pow_mul]
    _ = x ^ (p - 1) := by rw [htwice]
    _ = 1 := ZMod.pow_card_sub_one_eq_one hx_ne_zero

/-- A checked gcd exclusion remains nontrivial modulo every prime divisor. -/
private theorem pow_ne_one_of_coprime {n p witness exponent : Nat}
    (hn : 0 < n) (hp : p.Prime) (hpn : p ∣ n)
    (hcoprime : Nat.Coprime
      (powResidue witness exponent n + n - 1) n) :
    (witness : ZMod p) ^ exponent ≠ 1 := by
  letI : NeZero n := ⟨hn.ne'⟩
  rw [powResidue_eq_val] at hcoprime
  intro hpow
  have hval : Nat.ModEq p (((witness : ZMod n) ^ exponent).val) 1 := by
    apply (ZMod.natCast_eq_natCast_iff _ _ p).mp
    calc
      ((((witness : ZMod n) ^ exponent).val : Nat) : ZMod p) =
          ZMod.castHom hpn (ZMod p) ((witness : ZMod n) ^ exponent) := by
            rw [ZMod.castHom_apply, ← ZMod.natCast_val]
      _ = (witness : ZMod p) ^ exponent := by
        rw [ZMod.castHom_apply, ZMod.cast_pow hpn, ZMod.cast_natCast hpn]
      _ = ((1 : Nat) : ZMod p) := by simpa only [Nat.cast_one] using hpow
  have hnmod : Nat.ModEq p n 0 := Nat.modEq_zero_iff_dvd.mpr hpn
  have hone : 1 ≤ ((witness : ZMod n) ^ exponent).val + n := by omega
  have hzero : Nat.ModEq p
      (((witness : ZMod n) ^ exponent).val + n - 1) 0 :=
    Nat.ModEq.sub hone (by omega) (hval.add hnmod) Nat.ModEq.rfl
  have hpgcd : p ∣ Nat.gcd
      (((witness : ZMod n) ^ exponent).val + n - 1) n :=
    Nat.dvd_gcd (Nat.modEq_zero_iff_dvd.mp hzero) hpn
  rw [Nat.coprime_iff_gcd_eq_one] at hcoprime
  exact hp.not_dvd_one (by simpa [hcoprime] using hpgcd)

/-- One certified prime power divides the witness order modulo a prime divisor of `n`. -/
private theorem primePower_dvd_order {n p witness q exponent : Nat}
    (hn : 0 < n) (hp : p.Prime) (hpn : p ∣ n)
    (hq : q.Prime) (hexponent : 0 < exponent)
    (hpower : q ^ exponent ∣ n - 1)
    (hfermat : (witness : ZMod n) ^ (n - 1) = 1)
    (hcoprime : Nat.Coprime
      (powResidue witness ((n - 1) / q) n + n - 1) n) :
    q ^ exponent ∣ orderOf (witness : ZMod p) := by
  let x : ZMod p := witness
  let power := q ^ exponent
  have hfermatP : x ^ (n - 1) = 1 := by
    have hmapped := congrArg (ZMod.castHom hpn (ZMod p)) hfermat
    simpa only [ZMod.castHom_apply, ZMod.cast_pow hpn, ZMod.cast_natCast hpn,
      ZMod.cast_one hpn, x] using hmapped
  have hpowerPos : 0 < power := pow_pos hq.pos exponent
  have hyOrder : orderOf (x ^ ((n - 1) / power)) = power := by
    apply orderOf_eq_of_pow_and_pow_div_prime hpowerPos
    · rw [← pow_mul, Nat.div_mul_cancel hpower]
      exact hfermatP
    · intro r hr hrpower
      have hrq : r = q :=
        (Nat.prime_dvd_prime_iff_eq hr hq).mp (hr.dvd_of_dvd_pow hrpower)
      subst r
      have hqpower : q ∣ power := by
        simp [power, hexponent.ne']
      have hexponents :
          (n - 1) / power * (power / q) = (n - 1) / q := by
        obtain ⟨k, hk⟩ := hpower
        calc
          (n - 1) / power * (power / q) = k * (power / q) := by
            rw [hk, Nat.mul_div_cancel_left k hpowerPos]
          _ = (power * k) / q := by
            rw [Nat.mul_comm power k, Nat.mul_div_assoc k hqpower]
          _ = (n - 1) / q := by rw [hk]
      rw [← pow_mul, hexponents]
      exact pow_ne_one_of_coprime hn hp hpn hcoprime
  have : power ∣ orderOf x := by
    rw [← hyOrder]
    exact orderOf_pow_dvd _
  simpa [power, x] using this

/-- A terminal certificate for two, or a Pocklington node for `n`.
Each factor is an exponent paired with a recursive certificate for its base.
-/
inductive Certificate where
  | two
  | step (n witness cofactor : Nat) (factors : List (Nat × Certificate))

namespace Certificate

def number : Certificate → Nat
  | .two => 2
  | .step n _ _ _ => n

def factorPower (factor : Nat × Certificate) : Nat :=
  factor.2.number ^ factor.1

/-- The certified part of `n - 1`. LCM makes duplicate prime-power rows harmless. -/
def factoredPart (factors : List (Nat × Certificate)) : Nat :=
  (factors.map factorPower).foldr Nat.lcm 1

private theorem factorPower_dvd_factoredPart {factor : Nat × Certificate}
    {factors : List (Nat × Certificate)} (member : factor ∈ factors) :
    factorPower factor ∣ factoredPart factors := by
  induction factors with
  | nil => simp at member
  | cons head tail ih =>
      simp only [List.mem_cons] at member
      simp only [factoredPart, List.map_cons, List.foldr_cons]
      rcases member with rfl | member
      · exact Nat.dvd_lcm_left _ _
      · exact (ih member).trans (Nat.dvd_lcm_right _ _)

private theorem factoredPart_dvd {factors : List (Nat × Certificate)} {d : Nat}
    (each : ∀ factor ∈ factors, factorPower factor ∣ d) :
    factoredPart factors ∣ d := by
  induction factors with
  | nil => simp [factoredPart]
  | cons head tail ih =>
      simp only [factoredPart, List.map_cons, List.foldr_cons]
      apply Nat.lcm_dvd
      · exact each head (by simp)
      · exact ih (by
          intro factor member
          exact each factor (by simp [member]))

/-- Nonrecursive conditions checked at a Pocklington node. -/
def NodeConditions (n witness cofactor : Nat) (factors : List (Nat × Certificate)) : Prop :=
  2 < n ∧
  n - 1 = factoredPart factors * cofactor ∧
  n < factoredPart factors ^ 2 ∧
  powResidue witness (n - 1) n = 1 % n

mutual
  /-- A certificate whose arithmetic and recursive factor checks succeeded. -/
  inductive Checked : Certificate → Prop where
    | two : Checked .two
    | step {n witness cofactor : Nat} {factors : List (Nat × Certificate)}
        (node : NodeConditions n witness cofactor factors)
        (factorChecks : FactorsChecked n witness factors) :
        Checked (.step n witness cofactor factors)

  /-- Successful checks for every prime-power row of a node. -/
  inductive FactorsChecked : Nat → Nat → List (Nat × Certificate) → Prop where
    | nil {n witness : Nat} : FactorsChecked n witness []
    | cons {n witness : Nat} {factor : Nat × Certificate}
        {factors : List (Nat × Certificate)}
        (positiveExponent : 0 < factor.1)
        (certificate : Checked factor.2)
        (coprime : Nat.Coprime
          (powResidue witness ((n - 1) / factor.2.number) n + n - 1) n)
        (tail : FactorsChecked n witness factors) :
        FactorsChecked n witness (factor :: factors)
end

/-- Sound Pocklington step once all recursive factor certificates are prime. -/
private theorem node_prime {n witness cofactor : Nat}
    {factors : List (Nat × Certificate)}
    (node : NodeConditions n witness cofactor factors)
    (factorPrimes : ∀ factor ∈ factors, factor.2.number.Prime)
    (factorConditions : ∀ factor ∈ factors,
      0 < factor.1 ∧
      Nat.Coprime
        (powResidue witness ((n - 1) / factor.2.number) n + n - 1) n) :
    n.Prime := by
  rcases node with ⟨hnTwo, hdecomp, hbound, hfermat⟩
  have hn : 0 < n := by omega
  letI : NeZero n := ⟨hn.ne'⟩
  have hfermatZ : (witness : ZMod n) ^ (n - 1) = 1 := by
    apply ZMod.val_injective
    rw [← powResidue_eq_val, ZMod.val_one_eq_one_mod]
    exact hfermat
  by_contra hnPrime
  let p := n.minFac
  have hp : p.Prime := Nat.minFac_prime (by omega)
  have hpn : p ∣ n := Nat.minFac_dvd n
  letI : Fact p.Prime := ⟨hp⟩
  let x : ZMod p := witness
  have hpartDivOrder : factoredPart factors ∣ orderOf x := by
    apply factoredPart_dvd
    intro factor member
    have hfactorPart : factorPower factor ∣ factoredPart factors :=
      factorPower_dvd_factoredPart member
    have hpartDivPred : factoredPart factors ∣ n - 1 := by
      exact ⟨cofactor, hdecomp⟩
    have hfactorDivPred : factorPower factor ∣ n - 1 :=
      hfactorPart.trans hpartDivPred
    exact primePower_dvd_order hn hp hpn (factorPrimes factor member)
      (factorConditions factor member).1 hfactorDivPred hfermatZ
      (factorConditions factor member).2
  have hfermatP : x ^ (n - 1) = 1 := by
    have hmapped := congrArg (ZMod.castHom hpn (ZMod p)) hfermatZ
    simpa only [ZMod.castHom_apply, ZMod.cast_pow hpn, ZMod.cast_natCast hpn,
      ZMod.cast_one hpn, x] using hmapped
  have hx : x ≠ 0 := by
    intro hx
    rw [hx, zero_pow (by omega)] at hfermatP
    exact zero_ne_one hfermatP
  have horderDiv : orderOf x ∣ p - 1 := ZMod.orderOf_dvd_card_sub_one hx
  have hpartLt : factoredPart factors < p := by
    have horderPos : 0 < orderOf x := orderOf_pos_iff.mpr <|
      isOfFinOrder_iff_pow_eq_one.mpr ⟨n - 1, by omega, hfermatP⟩
    have hpartLeOrder := Nat.le_of_dvd horderPos hpartDivOrder
    have horderLe := Nat.le_of_dvd (Nat.sub_pos_of_lt hp.one_lt) horderDiv
    omega
  have hsquare : p ^ 2 ≤ n := Nat.minFac_sq_le_self hn hnPrime
  nlinarith

mutual
  def check : Certificate → Bool
    | .two => true
    | .step n witness cofactor factors =>
        decide (2 < n) &&
        decide (n - 1 = factoredPart factors * cofactor) &&
        decide (n < factoredPart factors ^ 2) &&
        decide (powResidue witness (n - 1) n = 1 % n) &&
        checkFactors n witness factors

  def checkFactors (n witness : Nat) : List (Nat × Certificate) → Bool
    | [] => true
    | factor :: factors =>
        decide (0 < factor.1) &&
        check factor.2 &&
        decide (Nat.Coprime
          (powResidue witness ((n - 1) / factor.2.number) n + n - 1) n) &&
        checkFactors n witness factors
end

mutual
  private theorem checked_of_check : ∀ certificate,
      check certificate = true → Checked certificate
    | .two, _ => .two
    | .step n witness cofactor factors, accepted => by
        simp only [check, Bool.and_eq_true] at accepted
        rcases accepted with ⟨⟨⟨⟨hn, hdecomp⟩, hbound⟩, hfermat⟩, hfactors⟩
        exact .step
          ⟨of_decide_eq_true hn,
            of_decide_eq_true hdecomp,
            of_decide_eq_true hbound,
            of_decide_eq_true hfermat⟩
          (factorsChecked_of_check factors hfactors)

  private theorem factorsChecked_of_check {n witness} : ∀ factors,
      checkFactors n witness factors = true → FactorsChecked n witness factors
    | [], _ => .nil
    | factor :: factors, accepted => by
        simp only [checkFactors, Bool.and_eq_true] at accepted
        rcases accepted with ⟨⟨⟨hpositive, hcertificate⟩, hcoprime⟩, htail⟩
        exact .cons
          (of_decide_eq_true hpositive)
          (checked_of_check factor.2 hcertificate)
          (of_decide_eq_true hcoprime)
          (factorsChecked_of_check factors htail)
end

mutual
  private def treeSize : Certificate → Nat
    | .two => 1
    | .step _ _ _ factors => forestSize factors + 1

  private def forestSize : List (Nat × Certificate) → Nat
    | [] => 0
    | factor :: factors => treeSize factor.2 + forestSize factors + 1
end

mutual
  private theorem prime_of_checked : ∀ {certificate},
      Checked certificate → certificate.number.Prime
    | .two, .two => Nat.prime_two
    | .step _ _ _ _, .step node factorChecks =>
        node_prime node
          (fun factor member => factors_prime factorChecks factor member)
          (fun factor member => factors_conditions factorChecks factor member)
  termination_by certificate _ => treeSize certificate
  decreasing_by simp [treeSize]

  private theorem factors_prime : ∀ {n witness factors},
      FactorsChecked n witness factors →
      ∀ factor ∈ factors, factor.2.number.Prime
    | _, _, [], .nil, _, member => by simp at member
    | _, _, head :: tail, .cons _ certificate _ checkedTail, factor, member => by
        simp only [List.mem_cons] at member
        rcases member with rfl | member
        · exact prime_of_checked certificate
        · exact factors_prime checkedTail factor member
  termination_by _ _ factors _ _ _ => forestSize factors
  decreasing_by
    · subst_vars
      simp [forestSize]
    · simp [forestSize]

  private theorem factors_conditions : ∀ {n witness factors},
      FactorsChecked n witness factors →
      ∀ factor ∈ factors,
        0 < factor.1 ∧
        Nat.Coprime
          (powResidue witness ((n - 1) / factor.2.number) n + n - 1) n
    | _, _, [], .nil, _, member => by simp at member
    | _, _, head :: tail, .cons positive _ coprime checkedTail, factor, member => by
        simp only [List.mem_cons] at member
        rcases member with rfl | member
        · exact ⟨positive, coprime⟩
        · exact factors_conditions checkedTail factor member
  termination_by _ _ factors _ _ _ => forestSize factors
  decreasing_by simp [forestSize]
end

/-- Every accepted certificate proves the primality of its recorded number. -/
theorem prime_of_check {certificate : Certificate} (accepted : check certificate = true) :
    certificate.number.Prime :=
  prime_of_checked (checked_of_check certificate accepted)

/-- A small end-to-end reduction test for the certificate kernel. -/
def smallExample : Certificate :=
  .step 65537 3 1 [(16, .two)]

theorem smallExample_checked : check smallExample = true := by
  have hfermat : powResidue 3 65536 65537 = 1 := by
    rfl
  have hhalf : powResidue 3 32768 65537 = 65536 := by
    rfl
  simp only [smallExample, check, Bool.and_eq_true]
  refine ⟨⟨⟨⟨decide_eq_true (by norm_num), decide_eq_true ?_⟩,
    decide_eq_true ?_⟩, decide_eq_true ?_⟩, ?_⟩
  · norm_num [factoredPart, factorPower, number]
  · norm_num [factoredPart, factorPower, number]
  · simpa using hfermat
  · simp only [checkFactors, Bool.and_eq_true, check]
    refine ⟨⟨⟨decide_eq_true (by norm_num), True.intro⟩, decide_eq_true ?_⟩, True.intro⟩
    have hhalf' : powResidue 3 ((65537 - 1) / 2) 65537 = 65536 := by
      simpa using hhalf
    simp only [number]
    rw [hhalf']
    norm_num

example : (65537 : Nat).Prime :=
  prime_of_check smallExample_checked

/-- The valid small certificate with a corrupted top-level witness. -/
def corruptSmallExample : Certificate :=
  .step 65537 1 1 [(16, .two)]

example : check corruptSmallExample = false := by
  have hfermat : powResidue 1 65536 65537 = 1 := by rfl
  have hhalf : powResidue 1 32768 65537 = 1 := by rfl
  norm_num [corruptSmallExample, check, checkFactors, factoredPart, factorPower, number,
    hfermat, hhalf]

end Certificate

end Ipp.Bls12377Certificates

namespace Ipp.Bls12377Certificates.Certificate

/-- Pocklington data for the BLS12-377 scalar modulus.

The root uses the certified part
`2^47 * 9586122913090633729^2`; the remaining cofactor is
`652944383040798880568355`. -/
def scalarModulusCertificate : Certificate :=
  .step 8444461749428370424248824938781546531375899335154063827935233455917409239041
    11 652944383040798880568355
    [(47, .two),
      (2, .step 9586122913090633729 11 136227 [(46, .two)])]

set_option maxRecDepth 100000 in
theorem scalarModulusCertificate_checked : check scalarModulusCertificate = true := by
  decide

theorem scalarModulus_prime :
    Ipp.Bls12377.scalarModulus.Prime := by
  have h := prime_of_check scalarModulusCertificate_checked
  simpa [scalarModulusCertificate, Ipp.Bls12377.scalarModulus] using h

end Ipp.Bls12377Certificates.Certificate

namespace Ipp.Bls12377Certificates.Certificate

def baseModulusThreeCertificate : Certificate :=
  .step 3 2 1 [(1, .two)]

def baseModulusFiveCertificate : Certificate :=
  .step 5 2 1 [(2, .two)]

def baseModulusElevenCertificate : Certificate :=
  .step 11 2 1 [(1, .two), (1, baseModulusFiveCertificate)]

def baseModulusThirteenCertificate : Certificate :=
  .step 13 2 3 [(2, .two)]

def baseModulusSeventeenCertificate : Certificate :=
  .step 17 3 1 [(4, .two)]

def baseModulusNineteenCertificate : Certificate :=
  .step 19 2 3 [(1, .two), (1, baseModulusThreeCertificate)]

def baseModulusTwentyThreeCertificate : Certificate :=
  .step 23 11 1 [(1, .two), (1, baseModulusElevenCertificate)]

def baseModulusTwoHundredSeventySevenCertificate : Certificate :=
  .step 277 11 12 [(1, baseModulusTwentyThreeCertificate)]

def baseModulusTwelveThousandSevenHundredFortyThreeCertificate : Certificate :=
  .step 12743 11 46 [(1, baseModulusTwoHundredSeventySevenCertificate)]

def baseModulusFiveMillionThreeHundredEightNineCertificate : Certificate :=
  .step 5301089 11 416
    [(1, baseModulusTwelveThousandSevenHundredFortyThreeCertificate)]

def baseModulusEightMillionFiveHundredEightyThreeFiveOneCertificate : Certificate :=
  .step 8583511 6 1693
    [(1, .two), (1, baseModulusThreeCertificate),
      (1, baseModulusFiveCertificate), (2, baseModulusThirteenCertificate)]

def baseModulusFiveQuadrillionCertificate : Certificate :=
  .step 5187222954756607 11 114
    [(1, baseModulusEightMillionFiveHundredEightyThreeFiveOneCertificate),
      (1, baseModulusFiveMillionThreeHundredEightNineCertificate)]

def baseModulusNinetyThreeBitCertificate : Certificate :=
  .step 7880826209898991662826602799 11 1519276552914
    [(1, baseModulusFiveQuadrillionCertificate)]

def baseModulusTwoHundredTwentyNineCertificate : Certificate :=
  .step 229 11 12 [(1, baseModulusNineteenCertificate)]

def baseModulusFourHundredFortyThreeCertificate : Certificate :=
  .step 443 11 2
    [(1, baseModulusSeventeenCertificate), (1, baseModulusThirteenCertificate)]

def baseModulusSeventySixBillionCertificate : Certificate :=
  .step 76872275827 11 2622
    [(2, baseModulusSeventeenCertificate),
      (1, baseModulusTwoHundredTwentyNineCertificate),
      (1, baseModulusFourHundredFortyThreeCertificate)]

def baseModulusOnePointEightTrillionCertificate : Certificate :=
  .step 1844934619849 11 24 [(1, baseModulusSeventySixBillionCertificate)]

def baseModulusOneHundredElevenQuintillionCertificate : Certificate :=
  .step 111286271775829695101 11 60319900
    [(1, baseModulusOnePointEightTrillionCertificate)]

def baseModulusTwoHundredTwentyTwoQuintillionCertificate : Certificate :=
  .step 222572543551659390203 11 2
    [(1, baseModulusOneHundredElevenQuintillionCertificate)]

def baseModulusSeventySevenBitCertificate : Certificate :=
  .step 97931919162730131689321 11 440
    [(1, baseModulusTwoHundredTwentyTwoQuintillionCertificate)]

def baseModulusEightyTwoBitCertificate : Certificate :=
  .step 3721412928183745004194199 11 38
    [(1, baseModulusSeventySevenBitCertificate)]

def baseModulusNineteenMillionCertificate : Certificate :=
  .step 2521 17 35 [(3, .two), (2, baseModulusThreeCertificate)]

def baseModulusThreeHundredSeventeenCertificate : Certificate :=
  .step 317 11 4 [(1, .step 79 11 6 [(1, baseModulusThirteenCertificate)])]

def baseModulusSeventyOneMillionCertificate : Certificate :=
  .step 71924131 11 90
    [(1, baseModulusThreeHundredSeventeenCertificate),
      (1, baseModulusNineteenMillionCertificate)]

def baseModulusFortySevenThousandCertificate : Certificate :=
  .step 47521 17 55 [(5, .two), (3, baseModulusThreeCertificate)]

def baseModulusSixtyThreeBitCertificate : Certificate :=
  .step 6633514200929891813 11 1940812
    [(1, baseModulusSeventyOneMillionCertificate),
      (1, baseModulusFortySevenThousandCertificate)]

def baseModulusTwoHundredTwentySixBitCertificate : Certificate :=
  .step 73387170334035996766247648424745786170238574695861388454532790956181
    11 2502306649616180
    [(1, baseModulusEightyTwoBitCertificate),
      (1, baseModulusNinetyThreeBitCertificate)]

/-- Pocklington data for the 377-bit BLS12-377 base modulus. -/
def baseModulusCertificate : Certificate :=
  .step 258664426012969094010652733694893533536393512754914660539884262666720468348340822774968888139573360124440321458177
    11 531340473991726911341985792
    [(1, baseModulusTwoHundredTwentySixBitCertificate),
      (1, baseModulusSixtyThreeBitCertificate)]

private theorem check_step_of_conditions {n witness cofactor : Nat}
    {factors : List (Nat × Certificate)}
    (hgreater : 2 < n)
    (hdecomp : n - 1 = factoredPart factors * cofactor)
    (hbound : n < factoredPart factors ^ 2)
    (hfermat : powResidue witness (n - 1) n = 1 % n)
    (hfactors : checkFactors n witness factors = true) :
    check (.step n witness cofactor factors) = true := by
  simp only [check]
  rw [decide_eq_true hgreater, decide_eq_true hdecomp,
    decide_eq_true hbound, decide_eq_true hfermat, hfactors]
  rfl

private theorem checkFactors_cons_of_conditions
    {n witness : Nat} {factor : Nat × Certificate}
    {factors : List (Nat × Certificate)}
    (hpositive : 0 < factor.1)
    (hcertificate : check factor.2 = true)
    (hcoprime : Nat.Coprime
      (powResidue witness ((n - 1) / factor.2.number) n + n - 1) n)
    (htail : checkFactors n witness factors = true) :
    checkFactors n witness (factor :: factors) = true := by
  simp only [checkFactors]
  rw [decide_eq_true hpositive, hcertificate,
    decide_eq_true hcoprime, htail]
  rfl

set_option maxRecDepth 100000 in
theorem baseModulusTwoHundredTwentySixBitCertificate_checked :
    check baseModulusTwoHundredTwentySixBitCertificate = true := by
  decide

set_option maxRecDepth 100000 in
theorem baseModulusSixtyThreeBitCertificate_checked :
    check baseModulusSixtyThreeBitCertificate = true := by
  decide

set_option maxRecDepth 100000 in
theorem baseModulusCertificate_checked : check baseModulusCertificate = true := by
  apply check_step_of_conditions
  · decide
  · decide
  · decide
  · decide
  · apply checkFactors_cons_of_conditions
    · decide
    · exact baseModulusTwoHundredTwentySixBitCertificate_checked
    · decide
    · apply checkFactors_cons_of_conditions
      · decide
      · exact baseModulusSixtyThreeBitCertificate_checked
      · decide
      · rfl

theorem baseModulus_prime :
    Ipp.Bls12377.baseModulus.Prime := by
  have h := prime_of_check baseModulusCertificate_checked
  simpa [baseModulusCertificate, Ipp.Bls12377.baseModulus] using h

end Ipp.Bls12377Certificates.Certificate

namespace Ipp.Bls12377Certificates

set_option maxRecDepth 100000 in
theorem baseModulus_minus_five_powResidue :
    powResidue (Ipp.Bls12377.baseModulus - 5)
        ((Ipp.Bls12377.baseModulus - 1) / 2) Ipp.Bls12377.baseModulus =
      Ipp.Bls12377.baseModulus - 1 := by
  rfl

/-- The Fq2 defining constant `-5` is not a square in the BLS12-377 base field. -/
theorem fq2Nonresidue :
    ∀ x : ZMod Ipp.Bls12377.baseModulus, x ^ 2 ≠ -5 := by
  have h := not_square_of_powResidue_eq_neg_one
    Certificate.baseModulus_prime
    (⟨129332213006484547005326366847446766768196756377457330269942131333360234174170411387484444069786680062220160729088,
      by norm_num [Ipp.Bls12377.baseModulus]⟩ : Odd Ipp.Bls12377.baseModulus)
    baseModulus_minus_five_powResidue
  intro x
  simpa [Ipp.Bls12377.baseModulus] using h x

end Ipp.Bls12377Certificates
