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
