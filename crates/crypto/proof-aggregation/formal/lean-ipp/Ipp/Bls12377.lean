import Mathlib.Algebra.QuadraticAlgebra.Basic
import Mathlib.Algebra.Field.ZMod
import Mathlib.AlgebraicGeometry.EllipticCurve.Jacobian.Point
import Mathlib.AlgebraicGeometry.EllipticCurve.Projective.Point

/-!
BLS12-377 arithmetic and pairing foundations pinned to ark-bls12-377 0.5.0.
Large-prime certificates remain explicit inputs; no arithmetic fact is assumed.
-/

namespace Ipp.Bls12377

def baseModulus : Nat :=
  258664426012969094010652733694893533536393512754914660539884262666720468348340822774968888139573360124440321458177

def scalarModulus : Nat :=
  8444461749428370424248824938781546531375899335154063827935233455917409239041

def ateLoopParameter : Nat := 0x8508c00000000001

theorem scalarModulus_eq_parameter :
    scalarModulus = ateLoopParameter ^ 4 - ateLoopParameter ^ 2 + 1 := by
  norm_num [scalarModulus, ateLoopParameter]

theorem baseModulus_eq_parameter :
    baseModulus =
      ((ateLoopParameter - 1) ^ 2 * scalarModulus) / 3 + ateLoopParameter := by
  norm_num [baseModulus, scalarModulus, ateLoopParameter]

theorem scalarModulus_lt_two_pow_253 : scalarModulus < 2 ^ 253 := by
  norm_num [scalarModulus]

theorem two_pow_252_le_scalarModulus : 2 ^ 252 ≤ scalarModulus := by
  norm_num [scalarModulus]

set_option exponentiation.threshold 400 in
theorem baseModulus_lt_two_pow_377 : baseModulus < 2 ^ 377 := by
  decide

set_option exponentiation.threshold 400 in
theorem two_pow_376_le_baseModulus : 2 ^ 376 ≤ baseModulus := by
  decide

def baseMontgomeryRadix : Nat := 2 ^ 384
def scalarMontgomeryRadix : Nat := 2 ^ 256

theorem scalarModulus_lt_montgomeryRadix :
    scalarModulus < scalarMontgomeryRadix := by
  norm_num [scalarModulus, scalarMontgomeryRadix]

/-- Exact certificate goals required before treating the pinned rings as fields. -/
structure ArithmeticFacts : Prop where
  basePrime : baseModulus.Prime
  scalarPrime : scalarModulus.Prime
  fq2Nonresidue : ∀ x : ZMod baseModulus, x ^ 2 ≠ -5

abbrev Fq := ZMod baseModulus
abbrev Fr := ZMod scalarModulus
abbrev Fq2 := QuadraticAlgebra Fq (-5) 0

theorem fq_char : ringChar Fq = baseModulus := by
  exact ringChar.eq Fq baseModulus

theorem fr_char : ringChar Fr = scalarModulus := by
  exact ringChar.eq Fr scalarModulus

theorem fq_natCast_eq_zero_iff (n : Nat) : (n : Fq) = 0 ↔ baseModulus ∣ n := by
  exact ZMod.natCast_eq_zero_iff n baseModulus

theorem fr_natCast_eq_zero_iff (n : Nat) : (n : Fr) = 0 ↔ scalarModulus ∣ n := by
  exact ZMod.natCast_eq_zero_iff n scalarModulus

theorem fq_field_available (facts : ArithmeticFacts) : Nonempty (Field Fq) := by
  letI : Fact baseModulus.Prime := ⟨facts.basePrime⟩
  exact ⟨inferInstance⟩

theorem fr_field_available (facts : ArithmeticFacts) : Nonempty (Field Fr) := by
  letI : Fact scalarModulus.Prime := ⟨facts.scalarPrime⟩
  exact ⟨inferInstance⟩

theorem fq2_field_available (facts : ArithmeticFacts) : Nonempty (Field Fq2) := by
  letI : Fact baseModulus.Prime := ⟨facts.basePrime⟩
  letI : Fact (∀ x : Fq, x ^ 2 ≠ (-5) + 0 * x) :=
    ⟨by intro x; simpa using facts.fq2Nonresidue x⟩
  exact ⟨inferInstance⟩

def g1Curve : WeierstrassCurve Fq := ⟨0, 0, 0, 0, 1⟩

def g2TwistB : Fq2 :=
  ⟨0,
    155198655607781456406391640216936120121836107652948796323930557600032281009004493664981332883744016074664192874906⟩

def g2Curve : WeierstrassCurve Fq2 := ⟨0, 0, 0, 0, g2TwistB⟩

theorem g1_discriminant : g1Curve.Δ = -432 := by
  norm_num [g1Curve, WeierstrassCurve.Δ, WeierstrassCurve.b₂,
    WeierstrassCurve.b₄, WeierstrassCurve.b₆, WeierstrassCurve.b₈]

theorem g2_discriminant :
    g2Curve.Δ = -432 * g2TwistB ^ 2 := by
  simp [g2Curve, WeierstrassCurve.Δ, WeierstrassCurve.b₂,
    WeierstrassCurve.b₄, WeierstrassCurve.b₆, WeierstrassCurve.b₈]
  ring

theorem g1_isElliptic (facts : ArithmeticFacts) : g1Curve.IsElliptic := by
  letI : Fact baseModulus.Prime := ⟨facts.basePrime⟩
  rw [WeierstrassCurve.isElliptic_iff, g1_discriminant]
  exact isUnit_iff_ne_zero.mpr (by
    have h : (432 : Fq) ≠ 0 := by
      change ((432 : Nat) : Fq) ≠ 0
      intro hz
      have hd := (fq_natCast_eq_zero_iff 432).mp hz
      norm_num [baseModulus] at hd
    simpa using h)

theorem g2_isElliptic (facts : ArithmeticFacts) : g2Curve.IsElliptic := by
  letI : Fact baseModulus.Prime := ⟨facts.basePrime⟩
  letI : Fact (∀ x : Fq, x ^ 2 ≠ (-5) + 0 * x) :=
    ⟨by intro x; simpa using facts.fq2Nonresidue x⟩
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

def g1Cofactor : Nat := 30631250834960419227450344600217059328

def g2Cofactor : Nat :=
  7923214915284317143930293550643874566881017850177945424769256759165301436616933228209277966774092486467289478618404761412630691835764674559376407658497

theorem g1Cofactor_eq_parameter :
    g1Cofactor = (ateLoopParameter - 1) ^ 2 / 3 := by
  norm_num [g1Cofactor, ateLoopParameter]

def inPrimeSubgroup {G : Type} [AddCommGroup G] (point : G) : Prop :=
  scalarModulus • point = 0

section Curves

abbrev G1 := g1Curve.toJacobian.Point
abbrev G2 := g2Curve.toJacobian.Point

theorem g1_group_available (arithmetic : ArithmeticFacts) :
    Nonempty (AddCommGroup G1) := by
  letI : Fact baseModulus.Prime := ⟨arithmetic.basePrime⟩
  exact ⟨inferInstance⟩

theorem g2_group_available (arithmetic : ArithmeticFacts) :
    Nonempty (AddCommGroup G2) := by
  letI : Fact baseModulus.Prime := ⟨arithmetic.basePrime⟩
  letI : Fact (∀ x : Fq, x ^ 2 ≠ (-5) + 0 * x) :=
    ⟨by intro x; simpa using arithmetic.fq2Nonresidue x⟩
  exact ⟨inferInstance⟩

theorem g1_elliptic_available (arithmetic : ArithmeticFacts) :
    g1Curve.IsElliptic := g1_isElliptic arithmetic

theorem g2_elliptic_available (arithmetic : ArithmeticFacts) :
    g2Curve.IsElliptic := g2_isElliptic arithmetic

end Curves

structure AffineRep (F : Type) where
  infinity : Bool
  x : F
  y : F

def affineRepresents {F : Type} [Field F] (W : WeierstrassCurve F)
    (rep : AffineRep F) (point : W.toAffine.Point) : Prop :=
  if rep.infinity then point = 0
  else ∃ h : W.toAffine.Nonsingular rep.x rep.y,
    point = .some rep.x rep.y h

theorem affineRepresents_infinity {F : Type} [Field F]
    (W : WeierstrassCurve F) (x y : F) :
    affineRepresents W ⟨true, x, y⟩ 0 := by
  simp [affineRepresents]

theorem affineRepresents_finite {F : Type} [Field F]
    (W : WeierstrassCurve F) (x y : F) (h : W.toAffine.Nonsingular x y) :
    affineRepresents W ⟨false, x, y⟩ (.some x y h) := by
  exact ⟨h, rfl⟩

/-- A checked affine representation denotes at most one Mathlib point. -/
theorem affineRepresents_unique {F : Type} [Field F]
    (W : WeierstrassCurve F) (rep : AffineRep F) (p q : W.toAffine.Point)
    (hp : affineRepresents W rep p) (hq : affineRepresents W rep q) : p = q := by
  by_cases hInf : rep.infinity
  · simp [affineRepresents, hInf] at hp hq
    rw [hp, hq]
  · simp [affineRepresents, hInf] at hp hq
    obtain ⟨_, rfl⟩ := hp
    obtain ⟨_, hq⟩ := hq
    exact hq.symm

structure ProjectiveRep (F : Type) where
  x : F
  y : F
  z : F

structure JacobianRep (F : Type) where
  x : F
  y : F
  z : F

def projectiveCoords {F : Type} (rep : ProjectiveRep F) : Fin 3 → F :=
  ![rep.x, rep.y, rep.z]

def jacobianCoords {F : Type} (rep : JacobianRep F) : Fin 3 → F :=
  ![rep.x, rep.y, rep.z]

/-- A raw homogeneous representative denotes its canonical affine point. -/
def projectiveRepresents {F : Type} [Field F] (W : WeierstrassCurve F)
    (rep : ProjectiveRep F) (point : W.toAffine.Point) : Prop :=
  W.toProjective.Nonsingular (projectiveCoords rep) ∧
    WeierstrassCurve.Projective.Point.toAffine W (projectiveCoords rep) = point

/-- A raw Jacobian representative denotes its canonical affine point. -/
def jacobianRepresents {F : Type} [Field F] (W : WeierstrassCurve F)
    (rep : JacobianRep F) (point : W.toAffine.Point) : Prop :=
  W.toJacobian.Nonsingular (jacobianCoords rep) ∧
    WeierstrassCurve.Jacobian.Point.toAffine W (jacobianCoords rep) = point

def normalizeProjective {F : Type} [Field F] [DecidableEq F]
    (rep : ProjectiveRep F) : AffineRep F :=
  if rep.z = 0 then ⟨true, 0, 0⟩
  else ⟨false, rep.x / rep.z, rep.y / rep.z⟩

def normalizeJacobian {F : Type} [Field F] [DecidableEq F]
    (rep : JacobianRep F) : AffineRep F :=
  if rep.z = 0 then ⟨true, 0, 0⟩
  else ⟨false, rep.x / rep.z ^ 2, rep.y / rep.z ^ 3⟩

theorem projective_zero_z_represents_infinity {F : Type} [Field F]
    (W : WeierstrassCurve F) (rep : ProjectiveRep F)
    (h : W.toProjective.Nonsingular (projectiveCoords rep)) (hz : rep.z = 0) :
    projectiveRepresents W rep 0 := by
  refine ⟨h, ?_⟩
  apply WeierstrassCurve.Projective.Point.toAffine_of_Z_eq_zero
  simpa [projectiveCoords] using hz

theorem jacobian_zero_z_represents_infinity {F : Type} [Field F]
    (W : WeierstrassCurve F) (rep : JacobianRep F)
    (h : W.toJacobian.Nonsingular (jacobianCoords rep)) (hz : rep.z = 0) :
    jacobianRepresents W rep 0 := by
  refine ⟨h, ?_⟩
  apply WeierstrassCurve.Jacobian.Point.toAffine_of_Z_eq_zero
  simpa [jacobianCoords] using hz

theorem normalizeProjective_represents {F : Type} [Field F] [DecidableEq F]
    (W : WeierstrassCurve F) (rep : ProjectiveRep F)
    (h : W.toProjective.Nonsingular (projectiveCoords rep)) :
    affineRepresents W (normalizeProjective rep)
      (WeierstrassCurve.Projective.Point.toAffine W (projectiveCoords rep)) := by
  by_cases hz : rep.z = 0
  · rw [WeierstrassCurve.Projective.Point.toAffine_of_Z_eq_zero
      (by simpa [projectiveCoords] using hz)]
    simp [normalizeProjective, hz, affineRepresents]
  · rw [WeierstrassCurve.Projective.Point.toAffine_of_Z_ne_zero h
      (by simpa [projectiveCoords] using hz)]
    simpa [normalizeProjective, hz, projectiveCoords] using
      (affineRepresents_finite W _ _ _)

theorem normalizeJacobian_represents {F : Type} [Field F] [DecidableEq F]
    (W : WeierstrassCurve F) (rep : JacobianRep F)
    (h : W.toJacobian.Nonsingular (jacobianCoords rep)) :
    affineRepresents W (normalizeJacobian rep)
      (WeierstrassCurve.Jacobian.Point.toAffine W (jacobianCoords rep)) := by
  by_cases hz : rep.z = 0
  · rw [WeierstrassCurve.Jacobian.Point.toAffine_of_Z_eq_zero
      (by simpa [jacobianCoords] using hz)]
    simp [normalizeJacobian, hz, affineRepresents]
  · rw [WeierstrassCurve.Jacobian.Point.toAffine_of_Z_ne_zero h
      (by simpa [jacobianCoords] using hz)]
    simpa [normalizeJacobian, hz, jacobianCoords] using
      (affineRepresents_finite W _ _ _)

structure MontgomeryRep where
  value : Nat

def montgomeryDecode (modulus radix : Nat) (rep : MontgomeryRep) : ZMod modulus :=
  (rep.value : ZMod modulus) * (radix : ZMod modulus)⁻¹

def montgomeryRepresents (modulus radix : Nat) (rep : MontgomeryRep)
    (value : ZMod modulus) : Prop :=
  rep.value < modulus ∧ montgomeryDecode modulus radix rep = value

theorem montgomeryRepresents_unique (modulus radix : Nat) (rep : MontgomeryRep)
    (x y : ZMod modulus) (hx : montgomeryRepresents modulus radix rep x)
    (hy : montgomeryRepresents modulus radix rep y) : x = y := by
  exact hx.2.symm.trans hy.2

/-- Bits below the leading bit, consumed most-significant first. -/
def ateLoopBits : List Bool :=
  (List.range 63).reverse.map ateLoopParameter.testBit

theorem ateLoopBits_length : ateLoopBits.length = 63 := by
  simp [ateLoopBits]

theorem ateLoopBits_true_count : ateLoopBits.count true = 6 := by
  decide

theorem ateLoopParameter_top_bit : ateLoopParameter.testBit 63 = true := by
  norm_num [ateLoopParameter, Nat.testBit, Nat.shiftRight_eq_div_pow]

theorem ateLoopParameter_lt_two_pow_64 : ateLoopParameter < 2 ^ 64 := by
  norm_num [ateLoopParameter]

def finalExponent : Nat := (baseModulus ^ 12 - 1) / scalarModulus

end Ipp.Bls12377
