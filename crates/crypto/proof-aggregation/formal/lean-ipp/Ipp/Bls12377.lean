import Ipp.Bls12377Core
import Ipp.Bls12377Certificates

/-!
Concrete BLS12-377 arithmetic and pairing foundations.
The certificate theorems are the only premises used to construct the facts.
-/

namespace Ipp.Bls12377

/-- The checked arithmetic facts for the pinned BLS12-377 parameters. -/
def arithmeticFacts : ArithmeticFacts :=
  { basePrime := Ipp.Bls12377Certificates.Certificate.baseModulus_prime
    scalarPrime := Ipp.Bls12377Certificates.Certificate.scalarModulus_prime
    fq2Nonresidue := Ipp.Bls12377Certificates.fq2Nonresidue }

theorem fq_field_available : Nonempty (Field Fq) := by
  letI : Fact baseModulus.Prime := ⟨arithmeticFacts.basePrime⟩
  exact ⟨inferInstance⟩

theorem fr_field_available : Nonempty (Field Fr) := by
  letI : Fact scalarModulus.Prime := ⟨arithmeticFacts.scalarPrime⟩
  exact ⟨inferInstance⟩

theorem fq2_field_available : Nonempty (Field Fq2) := by
  letI : Fact baseModulus.Prime := ⟨arithmeticFacts.basePrime⟩
  letI : Fact (∀ x : Fq, x ^ 2 ≠ (-5) + 0 * x) :=
    ⟨by intro x; simpa using arithmeticFacts.fq2Nonresidue x⟩
  exact ⟨inferInstance⟩

theorem g1_isElliptic : g1Curve.IsElliptic := by
  letI : Fact baseModulus.Prime := ⟨arithmeticFacts.basePrime⟩
  rw [WeierstrassCurve.isElliptic_iff, g1_discriminant]
  exact isUnit_iff_ne_zero.mpr (by
    have h : (432 : Fq) ≠ 0 := by
      change ((432 : Nat) : Fq) ≠ 0
      intro hz
      have hd := (fq_natCast_eq_zero_iff 432).mp hz
      norm_num [baseModulus] at hd
    simpa using h)

theorem g2_isElliptic : g2Curve.IsElliptic := by
  letI : Fact baseModulus.Prime := ⟨arithmeticFacts.basePrime⟩
  letI : Fact (∀ x : Fq, x ^ 2 ≠ (-5) + 0 * x) :=
    ⟨by intro x; simpa using arithmeticFacts.fq2Nonresidue x⟩
  rw [WeierstrassCurve.isElliptic_iff, g2_discriminant]
  apply isUnit_iff_ne_zero.mpr
  apply mul_ne_zero
  · have h : (432 : Fq2) ≠ 0 := by
      intro hz
      have hc0 : (432 : Fq) = 0 := congrArg QuadraticAlgebra.re hz
      change ((432 : Nat) : Fq) = 0 at hc0
      have hd := (fq_natCast_eq_zero_iff 432).mp hc0
      norm_num [baseModulus] at hd
    simpa using h
  · exact pow_ne_zero _ (by
      intro h
      have hi : g2TwistB.im = 0 := congrArg QuadraticAlgebra.im h
      have hc :
          (155198655607781456406391640216936120121836107652948796323930557600032281009004493664981332883744016074664192874906 : Fq) ≠ 0 := by
        change ((155198655607781456406391640216936120121836107652948796323930557600032281009004493664981332883744016074664192874906 : Nat) : Fq) ≠ 0
        intro hz
        have hd := (fq_natCast_eq_zero_iff
          155198655607781456406391640216936120121836107652948796323930557600032281009004493664981332883744016074664192874906).mp hz
        norm_num [baseModulus] at hd
      exact hc (by simpa [g2TwistB] using hi))

section Curves

abbrev G1 := g1Curve.toJacobian.Point
abbrev G2 := g2Curve.toJacobian.Point

theorem g1_group_available :
    Nonempty (AddCommGroup G1) := by
  letI : Fact baseModulus.Prime := ⟨arithmeticFacts.basePrime⟩
  exact ⟨inferInstance⟩

theorem g2_group_available :
    Nonempty (AddCommGroup G2) := by
  letI : Fact baseModulus.Prime := ⟨arithmeticFacts.basePrime⟩
  letI : Fact (∀ x : Fq, x ^ 2 ≠ (-5) + 0 * x) :=
    ⟨by intro x; simpa using arithmeticFacts.fq2Nonresidue x⟩
  exact ⟨inferInstance⟩

theorem g1_elliptic_available :
    g1Curve.IsElliptic := g1_isElliptic

theorem g2_elliptic_available :
    g2Curve.IsElliptic := g2_isElliptic

end Curves

end Ipp.Bls12377
