import Mathlib.Data.ZMod.Basic

/-!
Opt-in ring operations for `ZMod` declarations that must not inherit the
field instance's `Classical.choice` dependency. Open the scope only around
ring-only definitions and proofs; division and inversion remain unavailable.
-/

namespace Shieldd.GnarkFormal.ChoiceFreeZMod

scoped instance (priority := 2000) commRing (n : ℕ) : CommRing (ZMod n) :=
  ZMod.commRing n
scoped instance (priority := 3000) add (n : ℕ) : Add (ZMod n) :=
  (commRing n).toAdd
scoped instance (priority := 3000) mul (n : ℕ) : Mul (ZMod n) :=
  (commRing n).toMul
scoped instance (priority := 3000) natCast (n : ℕ) : NatCast (ZMod n) :=
  (commRing n).toNatCast
scoped instance (priority := 3000) zero (n : ℕ) : Zero (ZMod n) :=
  (commRing n).toZero
scoped instance (priority := 3000) one (n : ℕ) : One (ZMod n) :=
  (commRing n).toOne
scoped instance (priority := 3000) neg (n : ℕ) : Neg (ZMod n) :=
  (commRing n).toNeg
scoped instance (priority := 3000) sub (n : ℕ) : Sub (ZMod n) :=
  (commRing n).toSub
scoped instance (priority := 3000) mulOneClass (n : ℕ) : MulOneClass (ZMod n) :=
  (commRing n).toMulOneClass
scoped instance (priority := 3000) commSemiring (n : ℕ) : CommSemiring (ZMod n) :=
  (commRing n).toCommSemiring
scoped instance (priority := 3000) semiring (n : ℕ) : Semiring (ZMod n) :=
  (commRing n).toSemiring
scoped instance (priority := 3000) ring (n : ℕ) : Ring (ZMod n) :=
  (commRing n).toRing
scoped instance (priority := 3000) addGroupWithOne (n : ℕ) :
    AddGroupWithOne (ZMod n) :=
  (commRing n).toAddGroupWithOne
scoped instance (priority := 3000) natPow (n : ℕ) : Pow (ZMod n) ℕ :=
  @Monoid.toNatPow (ZMod n) (commRing n).toMonoid
scoped instance (priority := 3000) inv (n : ℕ) : Inv (ZMod n) :=
  ⟨ZMod.inv n⟩
scoped instance (priority := 3000) nontrivial (p : ℕ) [hp : Fact p.Prime] :
    Nontrivial (ZMod p) := by
  letI : Fact (1 < p) := ⟨hp.out.one_lt⟩
  exact ZMod.nontrivial p

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

/-- Euclid's lemma with the disjunction decided from natural-number divisibility. -/
private theorem prime_dvd_mul {p m n : ℕ} (hp : p.Prime) (h : p ∣ m * n) :
    p ∣ m ∨ p ∣ n := by
  if hpm : p ∣ m then
    exact Or.inl hpm
  else
    apply Or.inr
    have hcop : Nat.Coprime p m := by
      rw [Nat.coprime_iff_gcd_eq_one]
      rcases hp.eq_one_or_self_of_dvd (Nat.gcd p m) (Nat.gcd_dvd_left p m) with hg | hg
      · exact hg
      · exact (hpm (hg ▸ Nat.gcd_dvd_right p m)).elim
    exact hcop.dvd_of_dvd_mul_left h

private theorem eq_zero_of_dvd_of_lt {a b : ℕ} (hdiv : a ∣ b) (hlt : b < a) :
    b = 0 := by
  obtain ⟨c, rfl⟩ := hdiv
  cases c with
  | zero => simp
  | succ c =>
      exact (Nat.not_lt_of_ge (Nat.le_mul_of_pos_right a (Nat.succ_pos c)) hlt).elim

/-- Prime moduli have no zero divisors without constructing the field inverse. -/
theorem eq_zero_or_eq_zero_of_mul_eq_zero (p : ℕ) [Fact p.Prime]
    {a b : ZMod p} (h : a * b = 0) : a = 0 ∨ b = 0 := by
  cases p with
  | zero => exact (Nat.not_prime_zero Fact.out).elim
  | succ p =>
      have hmod : (a.val * b.val) % (p + 1) = 0 := by
        simpa [ZMod, Fin.mul_def] using congrArg Fin.val h
      have hdvd : p + 1 ∣ a.val * b.val :=
        Nat.dvd_iff_mod_eq_zero.mpr hmod
      exact (prime_dvd_mul Fact.out hdvd).imp
        (fun ha => Fin.ext (eq_zero_of_dvd_of_lt ha a.isLt))
        (fun hb => Fin.ext (eq_zero_of_dvd_of_lt hb b.isLt))

/-- A product of nonzero prime-field residues is nonzero, without selecting a
field or division structure. -/
theorem mul_ne_zero (p : ℕ) [Fact p.Prime] {a b : ZMod p}
    (ha : a ≠ 0) (hb : b ≠ 0) : a * b ≠ 0 := by
  intro h
  exact (eq_zero_or_eq_zero_of_mul_eq_zero p h).elim ha hb

scoped instance (priority := 3000) noZeroDivisors (p : ℕ) [Fact p.Prime] :
    NoZeroDivisors (ZMod p) where
  eq_zero_or_eq_zero_of_mul_eq_zero :=
    eq_zero_or_eq_zero_of_mul_eq_zero p

/-- The extended-Euclid inverse on a prime `ZMod` cancels without constructing
the standard field instance. -/
theorem mul_inv_cancel (p : ℕ) [hp : Fact p.Prime] (a : ZMod p) (ha : a ≠ 0) :
    a * a⁻¹ = 1 := by
  cases p with
  | zero => exact (Nat.not_prime_zero hp.out).elim
  | succ p =>
      rw [ZMod.mul_inv_eq_gcd]
      have hgcdDvd : Nat.gcd a.val (p + 1) ∣ p + 1 :=
        Nat.gcd_dvd_right a.val (p + 1)
      rcases hp.out.eq_one_or_self_of_dvd (Nat.gcd a.val (p + 1)) hgcdDvd with
        hgcd | hgcd
      · simp only [hgcd, Nat.cast_one]
      · exfalso
        apply ha
        apply Fin.ext
        have hvalDvd : p + 1 ∣ a.val := by
          obtain ⟨k, hk⟩ := Nat.gcd_dvd_left a.val (p + 1)
          exact ⟨k, hk.trans (congrArg (fun divisor => divisor * k) hgcd)⟩
        exact eq_zero_of_dvd_of_lt
          hvalDvd
          a.isLt

/-- Right cancellation for the same constructive inverse. -/
theorem inv_mul_cancel (p : ℕ) [Fact p.Prime] (a : ZMod p) (ha : a ≠ 0) :
    a⁻¹ * a = 1 := by
  rw [mul_comm]
  exact mul_inv_cancel p a ha

/-- Rewrite a checked division relation using only the constructive `ZMod`
inverse and commutative-ring operations. -/
theorem eq_mul_inv_iff_mul_eq (p : ℕ) [Fact p.Prime] {a b c : ZMod p}
    (hb : b ≠ 0) : a = c * b⁻¹ ↔ a * b = c := by
  have hinv := mul_inv_cancel p b hb
  constructor
  · intro h
    rw [h, mul_assoc, mul_comm b⁻¹ b, hinv, mul_one]
  · intro h
    calc
      a = a * 1 := (mul_one a).symm
      _ = a * (b * b⁻¹) := by rw [hinv]
      _ = (a * b) * b⁻¹ := (mul_assoc a b b⁻¹).symm
      _ = c * b⁻¹ := by rw [h]

end Shieldd.GnarkFormal.ChoiceFreeZMod
