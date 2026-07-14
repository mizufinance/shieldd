import Mathlib.Algebra.QuadraticAlgebra.Basic
import Mathlib.Algebra.Field.ZMod
import Mathlib.AlgebraicGeometry.EllipticCurve.Jacobian.Point

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

/- The two fields above turn these exact discriminant formulas into instances. -/
structure CurveFacts : Prop where
  g1Elliptic : g1Curve.IsElliptic
  g2Elliptic : g2Curve.IsElliptic

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

structure AteOps (G1 G2 GT : Type) where
  one : GT
  square : GT → GT
  mul : GT → GT → GT
  doubleLine : G2 → G1 → G2 × GT
  addLine : G2 → G2 → G1 → G2 × GT

/-- Bits below the leading bit, consumed most-significant first. -/
def ateLoopBits : List Bool :=
  (List.range 63).reverse.map ateLoopParameter.testBit

theorem ateLoopBits_length : ateLoopBits.length = 63 := by
  simp [ateLoopBits]

theorem ateLoopParameter_top_bit : ateLoopParameter.testBit 63 = true := by
  norm_num [ateLoopParameter, Nat.testBit, Nat.shiftRight_eq_div_pow]

theorem ateLoopParameter_lt_two_pow_64 : ateLoopParameter < 2 ^ 64 := by
  norm_num [ateLoopParameter]

def millerLoop {G1 G2 GT : Type} (ops : AteOps G1 G2 GT)
    (p : G1) (q : G2) : G2 × GT :=
  ateLoopBits.foldl (fun state bit =>
    let doubled := ops.doubleLine state.1 p
    let f := ops.mul (ops.square state.2) doubled.2
    if bit then
      let added := ops.addLine doubled.1 q p
      (added.1, ops.mul f added.2)
    else (doubled.1, f)) (q, ops.one)

def finalExponent : Nat := (baseModulus ^ 12 - 1) / scalarModulus

/-- S3-P00's executable split. Bilinearity is deliberately not asserted here. -/
def publishedAtePairing {G1 G2 GT : Type} (ops : AteOps G1 G2 GT)
    (finalExponentiate : GT → GT) (p : G1) (q : G2) : GT :=
  finalExponentiate (millerLoop ops p q).2

end Ipp.Bls12377
