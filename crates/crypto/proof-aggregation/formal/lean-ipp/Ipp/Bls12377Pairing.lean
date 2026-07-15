import Ipp.Bls12377

/-!
Executable optimal-ate model for ark-bls12-377 0.5.0. The tower and line
formulas are concrete; implementation conformance and bilinearity are separate.
-/

namespace Ipp.Bls12377

structure Fq6Model where
  c0 : Fq2
  c1 : Fq2
  c2 : Fq2

structure Fq12Model where
  c0 : Fq6Model
  c1 : Fq6Model

def fq2Zero : Fq2 := ⟨0, 0⟩
def fq2One : Fq2 := ⟨1, 0⟩
def fq2U : Fq2 := ⟨0, 1⟩
def fq2OfFq (x : Fq) : Fq2 := ⟨x, 0⟩

def fq6Zero : Fq6Model := ⟨fq2Zero, fq2Zero, fq2Zero⟩
def fq6One : Fq6Model := ⟨fq2One, fq2Zero, fq2Zero⟩

def fq6Add (a b : Fq6Model) : Fq6Model :=
  ⟨a.c0 + b.c0, a.c1 + b.c1, a.c2 + b.c2⟩

/-- Multiplication modulo `v^3 - u`, the pinned arkworks Fq6 tower. -/
def fq6Mul (a b : Fq6Model) : Fq6Model :=
  ⟨a.c0 * b.c0 + fq2U * (a.c1 * b.c2 + a.c2 * b.c1),
    a.c0 * b.c1 + a.c1 * b.c0 + fq2U * (a.c2 * b.c2),
    a.c0 * b.c2 + a.c1 * b.c1 + a.c2 * b.c0⟩

def fq6MulByV (a : Fq6Model) : Fq6Model :=
  ⟨fq2U * a.c2, a.c0, a.c1⟩

def fq12One : Fq12Model := ⟨fq6One, fq6Zero⟩

/-- Multiplication modulo `w^2 - v`, the pinned arkworks Fq12 tower. -/
def fq12Mul (a b : Fq12Model) : Fq12Model :=
  ⟨fq6Add (fq6Mul a.c0 b.c0) (fq6MulByV (fq6Mul a.c1 b.c1)),
    fq6Add (fq6Mul a.c0 b.c1) (fq6Mul a.c1 b.c0)⟩

def fq12Square (a : Fq12Model) : Fq12Model := fq12Mul a a

instance : One Fq12Model := ⟨fq12One⟩
instance : Mul Fq12Model := ⟨fq12Mul⟩

/-- Executable square-and-multiply exponentiation. -/
def fq12Pow (a : Fq12Model) (n : Nat) : Fq12Model := npowBinRec n a

structure EllCoeff where
  c0 : Fq2
  c1 : Fq2
  c2 : Fq2

structure G2HomProjective where
  x : Fq2
  y : Fq2
  z : Fq2

def twoInv : Fq := (((baseModulus + 1) / 2 : Nat) : Fq)

def fq2MulFq (a : Fq2) (b : Fq) : Fq2 := a * fq2OfFq b

/-- Homogeneous doubling and D-twist line coefficients from ePrint 2013/722. -/
def doubleLine (r : G2HomProjective) : G2HomProjective × EllCoeff :=
  let a := fq2MulFq (r.x * r.y) twoInv
  let b := r.y ^ 2
  let c := r.z ^ 2
  let e := g2TwistB * (c + c + c)
  let f := e + e + e
  let g := fq2MulFq (b + f) twoInv
  let h := (r.y + r.z) ^ 2 - (b + c)
  let i := e - b
  let j := r.x ^ 2
  let e2 := e ^ 2
  (⟨a * (b - f), g ^ 2 - (e2 + e2 + e2), b * h⟩,
    ⟨-h, j + j + j, i⟩)

/-- Homogeneous mixed addition and D-twist line coefficients from ePrint 2013/722. -/
def addLine (r : G2HomProjective) (q : AffineRep Fq2) :
    G2HomProjective × EllCoeff :=
  let theta := r.y - q.y * r.z
  let lambda := r.x - q.x * r.z
  let c := theta ^ 2
  let d := lambda ^ 2
  let e := lambda * d
  let f := r.z * c
  let g := r.x * d
  let h := e + f - (g + g)
  let j := theta * q.x - lambda * q.y
  (⟨lambda * h, theta * (g - h) - e * r.y, r.z * e⟩,
    ⟨lambda, -theta, j⟩)

/-- The sparse Fq12 value at coefficient positions 0, 3, and 4. -/
def sparse034 (c0 c3 c4 : Fq2) : Fq12Model :=
  ⟨⟨c0, fq2Zero, fq2Zero⟩, ⟨c3, c4, fq2Zero⟩⟩

/-- Evaluate a D-twist line at a G1 affine representative. -/
def evalLine (coeff : EllCoeff) (p : AffineRep Fq) : Fq12Model :=
  if p.infinity then fq12One
  else sparse034 (coeff.c0 * fq2OfFq p.y) (coeff.c1 * fq2OfFq p.x) coeff.c2

structure MillerState where
  r : G2HomProjective
  f : Fq12Model

def millerStep (p : AffineRep Fq) (q : AffineRep Fq2)
    (state : MillerState) (bit : Bool) : MillerState :=
  let doubled := doubleLine state.r
  let f := fq12Mul (fq12Square state.f) (evalLine doubled.2 p)
  if bit then
    let added := addLine doubled.1 q
    ⟨added.1, fq12Mul f (evalLine added.2 p)⟩
  else ⟨doubled.1, f⟩

/-- Exact positive-x optimal-ate Miller schedule used by arkworks 0.5.0. -/
def millerLoop (p : AffineRep Fq) (q : AffineRep Fq2) : Fq12Model :=
  if p.infinity || q.infinity then fq12One
  else
    (ateLoopBits.foldl (millerStep p q)
      ⟨⟨q.x, q.y, fq2One⟩, fq12One⟩).f

/-- Canonical final exponentiation; optimized chains refine this specification. -/
def finalExponentiate (f : Fq12Model) : Fq12Model := fq12Pow f finalExponent

/-- Executable optimal-ate specification. Bilinearity is not asserted here. -/
def publishedAtePairing (p : AffineRep Fq) (q : AffineRep Fq2) : Fq12Model :=
  finalExponentiate (millerLoop p q)

theorem millerLoop_infinity_left (x y : Fq) (q : AffineRep Fq2) :
    millerLoop ⟨true, x, y⟩ q = fq12One := by
  simp [millerLoop]

theorem millerLoop_infinity_right (p : AffineRep Fq) (x y : Fq2) :
    millerLoop p ⟨true, x, y⟩ = fq12One := by
  simp [millerLoop]

theorem publishedAtePairing_split (p : AffineRep Fq) (q : AffineRep Fq2) :
    publishedAtePairing p q = finalExponentiate (millerLoop p q) := rfl

theorem finalExponentiate_eq_pow (f : Fq12Model) :
    finalExponentiate f = fq12Pow f ((baseModulus ^ 12 - 1) / scalarModulus) := rfl

noncomputable def affineRepOfPoint {F : Type} [Field F]
    {W : WeierstrassCurve F} : W.toAffine.Point → AffineRep F
  | 0 => ⟨true, 0, 0⟩
  | .some x y _ => ⟨false, x, y⟩

noncomputable def pairingOnMathlibPoints (p : G1) (q : G2) :
    Fq12Model := by
  letI : Fact baseModulus.Prime := ⟨arithmeticFacts.basePrime⟩
  letI : Fact (∀ x : Fq, x ^ 2 ≠ (-5) + 0 * x) :=
    ⟨by intro x; simpa using arithmeticFacts.fq2Nonresidue x⟩
  exact publishedAtePairing
    (affineRepOfPoint p.toAffineLift) (affineRepOfPoint q.toAffineLift)

/--
Cited mathematics row (ePrint 2012/232 and 2013/722): the pinned optimal-ate
pseudocode on the reviewed BLS12-377 prime-order subgroups is bilinear and
non-degenerate. Mathlib lacks the divisor/pairing theory needed to prove it.
-/
def PublishedPairingBilinearNondegenerate : Prop := by
  letI : Fact baseModulus.Prime := ⟨arithmeticFacts.basePrime⟩
  letI : Fact (∀ x : Fq, x ^ 2 ≠ (-5) + 0 * x) :=
    ⟨by intro x; simpa using arithmeticFacts.fq2Nonresidue x⟩
  exact
    (∀ p₁ p₂ q, pairingOnMathlibPoints (p₁ + p₂) q =
      fq12Mul (pairingOnMathlibPoints p₁ q) (pairingOnMathlibPoints p₂ q)) ∧
    (∀ p q₁ q₂, pairingOnMathlibPoints p (q₁ + q₂) =
      fq12Mul (pairingOnMathlibPoints p q₁) (pairingOnMathlibPoints p q₂)) ∧
    ∃ p q, pairingOnMathlibPoints p q ≠ fq12One

end Ipp.Bls12377
