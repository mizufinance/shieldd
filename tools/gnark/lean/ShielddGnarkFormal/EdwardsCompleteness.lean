import ShielddGnarkFormal.EdwardsBridge
import ShielddGnarkFormal.CompressToFieldBridge
import ShielddGnarkFormal.PrimeCertificates.Decaf377

set_option maxRecDepth 100000
set_option maxHeartbeats 1000000
set_option linter.unusedSectionVars false

/-! Completeness layer for the gnark twisted-Edwards gadget (a = -1, d = 3021).

`d` is a quadratic non-residue and `a = -1` is a residue, so for on-curve
points the addition/doubling denominators `1 ± d·x₁x₂y₁y₂` never vanish.
This turns the relational `div_unchecked` specs of `EdwardsBridge` into the
functional `⁻¹` formulas used by the compose model, and gives on-curve closure
so scalar-mul ladders can induct.
-/

namespace Shieldd.GnarkFormal.EdwardsBridge

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod
open Shieldd.GnarkFormal.Extracted.DecafCompressToField (powModAux powModAux_eq)

open Shieldd.GnarkFormal.Extracted.DecafEdwardsAdd (Order)

/-! ### Fact-free kernel facts (literals must not capture the prime instance) -/

def dNat : ℕ := 3021

def aNat : ℕ := 8444461749428370424248824938781546531375899335154063827935233455917409239040

/-- Kernel-checked: `d ^ ((q-1)/2) ≡ q - 1 (mod q)`, Legendre symbol `-1`. -/
theorem d_pow_half_nat : powModAux Order 253 dNat (Order / 2) = Order - 1 := by
  decide +kernel

/-- A square root of -1 (exists since Order ≡ 1 mod 4). -/
def iLit : F := 880904806456922042258150504921383618666682042621506879489

theorem i_sq : iLit * iLit = -1 := by decide +kernel

theorem aNat_eq : aNat = Order - 1 := by decide +kernel

/-! ### Instance-dependent layer -/

variable [Fact (Nat.Prime Order)]

instance : Fact (Nat.Prime Shieldd.GnarkFormal.Extracted.DecafCompressToField.Order) := ‹_›
instance : NeZero Order := ⟨(Fact.out (p := Nat.Prime Order)).ne_zero⟩
instance : Fact (1 < Order) := ⟨(Fact.out (p := Nat.Prime Order)).one_lt⟩

theorem natLit_ne_zero (k : ℕ) (hk : k ≠ 0) (hlt : k < Order) : ((k : ℕ) : F) ≠ 0 := by
  intro h
  have hv : ((k : ℕ) : F).val = k := ZMod.val_natCast_of_lt hlt
  rw [h, ZMod.val_zero] at hv
  exact hk hv.symm

theorem d_natCast : d = ((dNat : ℕ) : F) := by
  simp only [d, dNat]; exact_mod_cast rfl

theorem a_natCast : a = ((aNat : ℕ) : F) := by
  simp only [a, aNat]; exact_mod_cast rfl

theorem d_ne_zero : d ≠ 0 := by
  rw [d_natCast]
  exact natLit_ne_zero dNat (by decide) (by decide +kernel)

theorem a_eq : a = -1 := by
  rw [a_natCast, aNat_eq]
  have h1 : (1 : ℕ) ≤ Order := Nat.one_le_iff_ne_zero.mpr (NeZero.ne Order)
  rw [Nat.cast_sub h1, ZMod.natCast_self, Nat.cast_one]
  ring

theorem d_pow_half : ((dNat : ℕ) : F) ^ (Order / 2) = ((Order - 1 : ℕ) : F) := by
  have hfit : Order / 2 < 2 ^ 253 := by decide +kernel
  have h := powModAux_eq Order 253 dNat (Order / 2) hfit
  rw [d_pow_half_nat] at h
  calc ((dNat : ℕ) : F) ^ (Order / 2)
      = ((dNat ^ (Order / 2) : ℕ) : F) := by push_cast; ring
    _ = ((dNat ^ (Order / 2) % Order : ℕ) : F) := (ZMod.natCast_mod _ _).symm
    _ = ((Order - 1 : ℕ) : F) := by rw [← h]

/-- d = 3021 is not a square in F, using the checked half-power residue and
the choice-free Fermat theorem from the field's Lucas certificate. -/
theorem d_not_square : ¬ IsSquare d := by
  rw [d_natCast]
  rintro ⟨x, hx⟩
  have hne : ((dNat : ℕ) : F) ≠ 0 := by
    rw [← d_natCast]; exact d_ne_zero
  have hxne : x ≠ 0 := by
    intro hzero
    apply hne
    rw [hx, hzero, zero_mul]
  have hsquarePow : ((dNat : ℕ) : F) ^ (Order / 2) = 1 := by
    calc
      ((dNat : ℕ) : F) ^ (Order / 2)
          = (x * x) ^ (Order / 2) := by rw [hx]
      _ = x ^ (Order / 2 + Order / 2) := by rw [mul_pow, ← pow_add]
      _ = x ^ (Order - 1) := by congr 1 <;> decide +kernel
      _ = 1 := by
        simpa only [Order, PrimeCertificates.Decaf377.fieldOrder] using
          PrimeCertificates.Decaf377.fermat x hxne
  have h1 : ((Order - 1 : ℕ) : F) = 1 := d_pow_half.symm.trans hsquarePow
  have hlt : Order - 1 < Order := by
    have := (Fact.out (p := Nat.Prime Order)).pos
    omega
  have hv : ((Order - 1 : ℕ) : F).val = Order - 1 := ZMod.val_natCast_of_lt hlt
  rw [h1, ZMod.val_one] at hv
  exact absurd hv (by decide +kernel)

theorem two_ne_zero' : (2 : F) ≠ 0 := by
  rw [← Nat.cast_ofNat (R := F) (n := 2)]
  exact natLit_ne_zero 2 (by decide) (by decide +kernel)

theorem i_ne_zero : iLit ≠ 0 := by
  rw [iLit]
  exact natLit_ne_zero
    880904806456922042258150504921383618666682042621506879489
    (by decide) (by decide +kernel)

/-! ### On-curve predicate and completeness core -/

section ChoiceFreeOnCurve

local instance (priority := 2000) : CommRing F := ZMod.commRing _
local instance (priority := 3000) : Add F := (ZMod.commRing _).toAdd
local instance (priority := 3000) : Mul F := (ZMod.commRing _).toMul
local instance (priority := 3000) : NatCast F := (ZMod.commRing _).toNatCast
local instance (priority := 3000) : One F := (ZMod.commRing _).toOne
local instance (priority := 3000) : Neg F := (ZMod.commRing _).toNeg

def onCurve (p : Point) : Prop :=
  -(p.x * p.x) + p.y * p.y = 1 + d * (p.x * p.x) * (p.y * p.y)

end ChoiceFreeOnCurve

/-- Bernstein–Lange completeness: for on-curve points, `d·x₁x₂y₁y₂ ≠ ±1`. -/
theorem completeness_core (x1 y1 x2 y2 ε : F)
    (h1 : -(x1 * x1) + y1 * y1 = 1 + d * (x1 * x1) * (y1 * y1))
    (h2 : -(x2 * x2) + y2 * y2 = 1 + d * (x2 * x2) * (y2 * y2))
    (hε : ε = 1 ∨ ε = -1)
    (heq : d * x1 * x2 * y1 * y2 = ε) : False := by
  have hε2 : ε * ε = 1 := by rcases hε with h | h <;> subst h <;> ring
  have hεne : ε ≠ 0 := by
    intro h
    rw [h, mul_zero] at hε2
    exact natLit_ne_zero 1 (by decide) (by decide +kernel) hε2.symm
  have hx1 : x1 ≠ 0 := by rintro rfl; apply hεne; rw [← heq]; ring
  have hy1 : y1 ≠ 0 := by rintro rfl; apply hεne; rw [← heq]; ring
  have hx2 : x2 ≠ 0 := by rintro rfl; apply hεne; rw [← heq]; ring
  have hy2 : y2 ≠ 0 := by rintro rfl; apply hεne; rw [← heq]; ring
  -- Polynomial certificates (verified offline with sympy):
  have hA : (iLit * x1 + ε * y1) * (iLit * x1 + ε * y1)
      = d * ((x1 * y1) * (x1 * y1)) * ((y2 + iLit * x2) * (y2 + iLit * x2)) := by
    linear_combination (-(x2 - y2) * (x2 + y2) - d * x2 ^ 2 * y2 ^ 2) * h1
      + (x1 ^ 2 - y1 ^ 2 + 1) * h2
      + (-2 * iLit * x1 * y1 - (d * x1 * x2 * y1 * y2 + ε)) * heq
      + (y1 ^ 2 - 1) * hε2
      + (-(x1 ^ 2) * (d * x2 ^ 2 * y1 ^ 2 - 1)) * i_sq
  have hB : (iLit * x1 - ε * y1) * (iLit * x1 - ε * y1)
      = d * ((x1 * y1) * (x1 * y1)) * ((y2 - iLit * x2) * (y2 - iLit * x2)) := by
    linear_combination (-(x2 - y2) * (x2 + y2) - d * x2 ^ 2 * y2 ^ 2) * h1
      + (x1 ^ 2 - y1 ^ 2 + 1) * h2
      + (2 * iLit * x1 * y1 - (d * x1 * x2 * y1 * y2 + ε)) * heq
      + (y1 ^ 2 - 1) * hε2
      + (-(x1 ^ 2) * (d * x2 ^ 2 * y1 ^ 2 - 1)) * i_sq
  by_cases hcase : y2 + iLit * x2 = 0
  · -- then y2 - iLit·x2 ≠ 0 (else x2 = 0), use identity B
    have hcase2 : y2 - iLit * x2 ≠ 0 := by
      intro h0
      apply hx2
      have hx2z : (2 * iLit) * x2 = 0 := by linear_combination hcase - h0
      rcases ChoiceFreeZMod.eq_zero_or_eq_zero_of_mul_eq_zero Order hx2z with h | h
      · exact absurd h (ChoiceFreeZMod.mul_ne_zero Order two_ne_zero' i_ne_zero)
      · exact h
    let numerator := iLit * x1 - ε * y1
    let denominator := (x1 * y1) * (y2 - iLit * x2)
    let reciprocal := ZMod.inv Order denominator
    have hdenominator : denominator ≠ 0 :=
      ChoiceFreeZMod.mul_ne_zero Order
        (ChoiceFreeZMod.mul_ne_zero Order hx1 hy1) hcase2
    have hsquare :
        numerator * numerator = d * (denominator * denominator) := by
      dsimp only [numerator, denominator]
      linear_combination hB
    have hcancel : denominator * reciprocal = 1 := by
      exact ChoiceFreeZMod.mul_inv_cancel Order denominator hdenominator
    apply d_not_square
    refine ⟨numerator * reciprocal, ?_⟩
    calc
      d = d * 1 := (mul_one d).symm
      _ = d * ((denominator * reciprocal) *
          (denominator * reciprocal)) := by rw [hcancel, one_mul]
      _ = (d * (denominator * denominator)) *
          (reciprocal * reciprocal) := by ring
      _ = (numerator * numerator) *
          (reciprocal * reciprocal) := by rw [hsquare]
      _ = (numerator * reciprocal) *
          (numerator * reciprocal) := by ring
  ·
    let numerator := iLit * x1 + ε * y1
    let denominator := (x1 * y1) * (y2 + iLit * x2)
    let reciprocal := ZMod.inv Order denominator
    have hdenominator : denominator ≠ 0 :=
      ChoiceFreeZMod.mul_ne_zero Order
        (ChoiceFreeZMod.mul_ne_zero Order hx1 hy1) hcase
    have hsquare :
        numerator * numerator = d * (denominator * denominator) := by
      dsimp only [numerator, denominator]
      linear_combination hA
    have hcancel : denominator * reciprocal = 1 := by
      exact ChoiceFreeZMod.mul_inv_cancel Order denominator hdenominator
    apply d_not_square
    refine ⟨numerator * reciprocal, ?_⟩
    calc
      d = d * 1 := (mul_one d).symm
      _ = d * ((denominator * reciprocal) *
          (denominator * reciprocal)) := by rw [hcancel, one_mul]
      _ = (d * (denominator * denominator)) *
          (reciprocal * reciprocal) := by ring
      _ = (numerator * numerator) *
          (reciprocal * reciprocal) := by rw [hsquare]
      _ = (numerator * reciprocal) *
          (numerator * reciprocal) := by ring

/-! ### Denominator non-vanishing -/

theorem add_den_plus_ne (p q : Point) (hp : onCurve p) (hq : onCurve q) :
    1 + d * (q.y * p.x) * (q.x * p.y) ≠ 0 := by
  intro h
  exact completeness_core p.x p.y q.x q.y (-1) hp hq (Or.inr rfl)
    (by linear_combination h)

theorem add_den_minus_ne (p q : Point) (hp : onCurve p) (hq : onCurve q) :
    1 - d * (q.y * p.x) * (q.x * p.y) ≠ 0 := by
  intro h
  exact completeness_core p.x p.y q.x q.y 1 hp hq (Or.inl rfl)
    (by linear_combination -h)

/-! ### Functional formulas (the ⁻¹ forms used by the compose model) -/

section ChoiceFreeFunctionalDefinitions

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

/-- gnark twisted-Edwards addition, functional form. -/
def addF (p q : Point) : Point :=
  let v0 := q.y * p.x
  let v1 := q.x * p.y
  let v2 := d * v0 * v1
  let u := (p.y + p.x) * (q.x + q.y)
  ⟨(v0 + v1) * (1 + v2)⁻¹, (-v0 - v1 + u) * (1 - v2)⁻¹⟩

/-- gnark twisted-Edwards doubling, functional form. -/
def doubleF (p : Point) : Point :=
  let u := p.x * p.y
  let v := p.x * p.x
  let w := p.y * p.y
  ⟨(2 * u) * (w - v)⁻¹, (w + v) * (2 - (w - v))⁻¹⟩

end ChoiceFreeFunctionalDefinitions

section ChoiceFreeSpecFunctionalBridges

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem addSpec_eq (p q out : Point) (hp : onCurve p) (hq : onCurve q)
    (h : addSpec p q out) : out = addF p q := by
  have hdp := add_den_plus_ne p q hp hq
  have hdm := add_den_minus_ne p q hp hq
  have ha := a_eq
  simp only [addSpec, GatesDef.div_unchecked] at h
  obtain ⟨hx, hy⟩ := h
  rcases hx with ⟨hb1, hx⟩ | ⟨_, hb1, _⟩
  · rcases hy with ⟨hb2, hy⟩ | ⟨_, hb2, _⟩
    · have hx' : out.x * (1 + d * (q.y * p.x) * (q.x * p.y))
          = q.y * p.x + q.x * p.y := by
        linear_combination hx
      have hy' : out.y * (1 - d * (q.y * p.x) * (q.x * p.y))
          = -(q.y * p.x) - q.x * p.y + (p.y + p.x) * (q.x + q.y) := by
        linear_combination hy + (q.y * p.x - p.x * (q.x + q.y)) * ha
      have ex : out.x = (q.y * p.x + q.x * p.y)
          * (1 + d * (q.y * p.x) * (q.x * p.y))⁻¹ :=
        (ChoiceFreeZMod.eq_mul_inv_iff_mul_eq Order hdp).mpr hx'
      have ey : out.y = (-(q.y * p.x) - q.x * p.y + (p.y + p.x) * (q.x + q.y))
          * (1 - d * (q.y * p.x) * (q.x * p.y))⁻¹ :=
        (ChoiceFreeZMod.eq_mul_inv_iff_mul_eq Order hdm).mpr hy'
      have hsplit : out = ⟨out.x, out.y⟩ := rfl
      rw [hsplit, ex, ey]
      rfl
    · exact absurd hb2 hdm
  · exact absurd hb1 hdp

theorem doubleSpec_eq (p out : Point) (hp : onCurve p)
    (h : doubleSpec p out) : out = doubleF p := by
  have hself := add_den_plus_ne p p hp hp
  have hselfm := add_den_minus_ne p p hp hp
  have ha := a_eq
  have hp' : -(p.x * p.x) + p.y * p.y = 1 + d * (p.x * p.x) * (p.y * p.y) := hp
  have hd1 : p.y * p.y + p.x * p.x * a ≠ 0 := by
    intro h0
    apply hself
    linear_combination -hp' + h0 - p.x * p.x * ha
  have hd2 : 2 - (p.y * p.y + p.x * p.x * a) ≠ 0 := by
    intro h0
    apply hselfm
    linear_combination hp' + h0 + p.x * p.x * ha
  have hd1' : p.y * p.y - p.x * p.x ≠ 0 := by
    intro h0
    apply hd1
    linear_combination h0 + p.x * p.x * ha
  have hd2' : 2 - (p.y * p.y - p.x * p.x) ≠ 0 := by
    intro h0
    apply hd2
    linear_combination h0 - p.x * p.x * ha
  simp only [doubleSpec, GatesDef.div_unchecked] at h
  obtain ⟨hx, hy⟩ := h
  rcases hx with ⟨hb1, hx⟩ | ⟨_, hb1, _⟩
  · rcases hy with ⟨hb2, hy⟩ | ⟨_, hb2, _⟩
    · have hx' : out.x * (p.y * p.y - p.x * p.x) = 2 * (p.x * p.y) := by
        linear_combination hx - out.x * p.x * p.x * ha
      have hy' : out.y * (2 - (p.y * p.y - p.x * p.x)) = p.y * p.y + p.x * p.x := by
        linear_combination hy + (out.y - 1) * p.x * p.x * ha
      have ex : out.x = (2 * (p.x * p.y)) * (p.y * p.y - p.x * p.x)⁻¹ :=
        (ChoiceFreeZMod.eq_mul_inv_iff_mul_eq Order hd1').mpr hx'
      have ey : out.y = (p.y * p.y + p.x * p.x)
          * (2 - (p.y * p.y - p.x * p.x))⁻¹ :=
        (ChoiceFreeZMod.eq_mul_inv_iff_mul_eq Order hd2').mpr hy'
      have hsplit : out = ⟨out.x, out.y⟩ := rfl
      rw [hsplit, ex, ey]
      rfl
    · exact absurd hb2 hd2
  · exact absurd hb1 hd1

end ChoiceFreeSpecFunctionalBridges

/-! ### On-curve closure -/

def negF (p : Point) : Point := ⟨-p.x, p.y⟩

theorem negSpec_eq (p out : Point) (h : negSpec p out) : out = negF p := by
  obtain ⟨hx, hy⟩ := h
  have hsplit : out = ⟨out.x, out.y⟩ := rfl
  rw [hsplit, hx, hy]
  rfl

theorem identity_onCurve : onCurve ⟨0, 1⟩ := by
  simp only [onCurve]
  ring

theorem neg_onCurve (p : Point) (hp : onCurve p) : onCurve (negF p) := by
  have hp' : -(p.x * p.x) + p.y * p.y = 1 + d * (p.x * p.x) * (p.y * p.y) := hp
  show -(-p.x * -p.x) + p.y * p.y = 1 + d * (-p.x * -p.x) * (p.y * p.y)
  linear_combination hp'

/-- Polynomial heart of `add_onCurve` (certificate verified offline). -/
private theorem closure_key (x1 y1 x2 y2 X Y : F)
    (h1 : -(x1 * x1) + y1 * y1 = 1 + d * (x1 * x1) * (y1 * y1))
    (h2 : -(x2 * x2) + y2 * y2 = 1 + d * (x2 * x2) * (y2 * y2))
    (hT1 : 1 + d * (y2 * x1) * (x2 * y1) ≠ 0)
    (hT2 : 1 - d * (y2 * x1) * (x2 * y1) ≠ 0)
    (e1 : X * (1 + d * (y2 * x1) * (x2 * y1)) = y2 * x1 + x2 * y1)
    (e2 : Y * (1 - d * (y2 * x1) * (x2 * y1))
        = -(y2 * x1) - x2 * y1 + (y1 + x1) * (x2 + y2)) :
    -(X * X) + Y * Y = 1 + d * (X * X) * (Y * Y) := by
  have key : (-(X * X) + Y * Y - 1 - d * (X * X) * (Y * Y))
      * ((1 + d * (y2 * x1) * (x2 * y1)) * (1 + d * (y2 * x1) * (x2 * y1))
        * ((1 - d * (y2 * x1) * (x2 * y1)) * (1 - d * (y2 * x1) * (x2 * y1))))
      = 0 := by
    linear_combination
      (d ^ 3 * x1 ^ 2 * x2 ^ 4 * y1 ^ 2 * y2 ^ 4 - d ^ 2 * x1 ^ 2 * x2 ^ 4 * y2 ^ 4
        + d ^ 2 * x2 ^ 4 * y1 ^ 2 * y2 ^ 4 - d ^ 2 * x2 ^ 4 * y2 ^ 4
        - d * x1 ^ 2 * x2 ^ 4 * y2 ^ 2 + d * x1 ^ 2 * x2 ^ 2 * y2 ^ 4
        + d * x2 ^ 4 * y1 ^ 2 * y2 ^ 2 - 2 * d * x2 ^ 4 * y2 ^ 4
        - d * x2 ^ 2 * y1 ^ 2 * y2 ^ 4 - 2 * d * x2 ^ 2 * y2 ^ 2
        - 2 * x2 ^ 4 * y2 ^ 2 + x2 ^ 4 + 2 * x2 ^ 2 * y2 ^ 4
        - 4 * x2 ^ 2 * y2 ^ 2 + y2 ^ 4) * h1
      + (d * x1 ^ 4 * x2 ^ 2 * y2 ^ 2 + 2 * d * x1 ^ 2 * x2 ^ 2 * y2 ^ 2
        + d * x2 ^ 2 * y1 ^ 4 * y2 ^ 2 - 2 * d * x2 ^ 2 * y1 ^ 2 * y2 ^ 2
        + d * x2 ^ 2 * y2 ^ 2 + 2 * x1 ^ 2 * x2 ^ 2 * y2 ^ 2 - x1 ^ 2 * x2 ^ 2
        + x1 ^ 2 * y2 ^ 2 - 2 * x2 ^ 2 * y1 ^ 2 * y2 ^ 2 + x2 ^ 2 * y1 ^ 2
        + 2 * x2 ^ 2 * y2 ^ 2 - x2 ^ 2 - y1 ^ 2 * y2 ^ 2 + y2 ^ 2 + 1) * h2
      + ((-((1 - d * (y2 * x1) * (x2 * y1)) * (1 - d * (y2 * x1) * (x2 * y1)))
          - d * (-(y2 * x1) - x2 * y1 + (y1 + x1) * (x2 + y2))
          * (-(y2 * x1) - x2 * y1 + (y1 + x1) * (x2 + y2)))
          * (X * (1 + d * (y2 * x1) * (x2 * y1)) + (y2 * x1 + x2 * y1))) * e1
      + (((1 + d * (y2 * x1) * (x2 * y1)) * (1 + d * (y2 * x1) * (x2 * y1))
          - d * (X * (1 + d * (y2 * x1) * (x2 * y1)))
          * (X * (1 + d * (y2 * x1) * (x2 * y1))))
          * (Y * (1 - d * (y2 * x1) * (x2 * y1))
            + (-(y2 * x1) - x2 * y1 + (y1 + x1) * (x2 + y2)))) * e2
  rcases ChoiceFreeZMod.eq_zero_or_eq_zero_of_mul_eq_zero Order key with h | h
  · linear_combination h
  · exact absurd h
      (ChoiceFreeZMod.mul_ne_zero Order
        (ChoiceFreeZMod.mul_ne_zero Order hT1 hT1)
        (ChoiceFreeZMod.mul_ne_zero Order hT2 hT2))

theorem add_onCurve (p q : Point) (hp : onCurve p) (hq : onCurve q) :
    onCurve (addF p q) := by
  have hp' : -(p.x * p.x) + p.y * p.y = 1 + d * (p.x * p.x) * (p.y * p.y) := hp
  have hq' : -(q.x * q.x) + q.y * q.y = 1 + d * (q.x * q.x) * (q.y * q.y) := hq
  have hT1 := add_den_plus_ne p q hp hq
  have hT2 := add_den_minus_ne p q hp hq
  refine closure_key p.x p.y q.x q.y _ _ hp' hq' hT1 hT2 ?_ ?_
  · simp only [addF]
    rw [mul_assoc,
      ChoiceFreeZMod.inv_mul_cancel Order
        (1 + d * (q.y * p.x) * (q.x * p.y)) hT1,
      mul_one]
  · simp only [addF]
    rw [mul_assoc,
      ChoiceFreeZMod.inv_mul_cancel Order
        (1 - d * (q.y * p.x) * (q.x * p.y)) hT2,
      mul_one]

theorem double_eq_addF_self (p : Point) (hp : onCurve p) : doubleF p = addF p p := by
  have hp' : -(p.x * p.x) + p.y * p.y = 1 + d * (p.x * p.x) * (p.y * p.y) := hp
  have hden2 : 2 - (p.y * p.y - p.x * p.x) = 1 - d * (p.y * p.x) * (p.x * p.y) := by
    linear_combination -hp'
  have hden : p.y * p.y - p.x * p.x = 1 + d * (p.y * p.x) * (p.x * p.y) := by
    linear_combination hp'
  simp only [doubleF, addF]
  rw [hden2, hden]
  simp only [Point.mk.injEq]
  constructor <;> ring

theorem double_onCurve (p : Point) (hp : onCurve p) : onCurve (doubleF p) := by
  have hp' : -(p.x * p.x) + p.y * p.y =
      1 + d * (p.x * p.x) * (p.y * p.y) := hp
  have hT1 := add_den_plus_ne p p hp hp
  have hT2 := add_den_minus_ne p p hp hp
  have hden : p.y * p.y - p.x * p.x =
      1 + d * (p.y * p.x) * (p.x * p.y) := by
    linear_combination hp'
  have hden2 : 2 - (p.y * p.y - p.x * p.x) =
      1 - d * (p.y * p.x) * (p.x * p.y) := by
    linear_combination -hp'
  have hdenNe : p.y * p.y - p.x * p.x ≠ 0 := by
    rw [hden]
    exact hT1
  have hden2Ne : 2 - (p.y * p.y - p.x * p.x) ≠ 0 := by
    rw [hden2]
    exact hT2
  refine closure_key p.x p.y p.x p.y (doubleF p).x (doubleF p).y
    hp' hp' hT1 hT2 ?_ ?_
  · simp only [doubleF]
    rw [← hden, mul_assoc,
      ChoiceFreeZMod.inv_mul_cancel Order
        (p.y * p.y - p.x * p.x) hdenNe,
      mul_one]
    ring
  · simp only [doubleF]
    rw [← hden2, mul_assoc,
      ChoiceFreeZMod.inv_mul_cancel Order
        (2 - (p.y * p.y - p.x * p.x)) hden2Ne,
      mul_one]
    ring

section ChoiceFreeCrossRatio

attribute [-instance] ZMod.instField ZMod.instIsDomain
local instance choiceFreeCrossRatioCommRing : CommRing F := ZMod.commRing _
local instance choiceFreeCrossRatioNoZeroDivisors : NoZeroDivisors F :=
  ChoiceFreeZMod.noZeroDivisors Order

/-- Over `F`, the decaf cross-ratio `p.x*q.y = q.x*p.y` together with both points
on-curve forces `q` to be either `p` itself or its 2-torsion shift `(-p.x, -p.y)`.
The remaining line-through-origin intersections would require `√d`, impossible
since `d` is a non-square (`d_not_square`). No subgroup hypothesis is used. -/
theorem crossRatio_pins_to_two_torsion (p q : Point)
    (hp : onCurve p) (hq : onCurve q) (hcr : p.x * q.y = q.x * p.y) :
    q = p ∨ q = ⟨-p.x, -p.y⟩ := by
  obtain ⟨px, py⟩ := p
  obtain ⟨qx, qy⟩ := q
  simp only [onCurve] at hp hq
  simp only [Point.mk.injEq]
  by_cases hpx : px = 0
  · subst hpx
    have hpy2 : py * py = 1 := by linear_combination hp
    have hpy_ne : py ≠ 0 := fun h => by simp [h] at hpy2
    have hqx : qx = 0 := by
      have h0 : qx * py = 0 := by linear_combination -hcr
      exact (mul_eq_zero.mp h0).resolve_right hpy_ne
    subst hqx
    have hqy2 : qy * qy = 1 := by linear_combination hq
    have hfac : (qy - py) * (qy + py) = 0 := by linear_combination hqy2 - hpy2
    rcases mul_eq_zero.mp hfac with h | h
    · left; exact ⟨rfl, by linear_combination h⟩
    · right; exact ⟨by ring, by linear_combination h⟩
  · -- px ≠ 0: write q = λ·p and use that d is a non-square.
    set lam := qx * px⁻¹ with hlam
    have hqx_eq : qx = lam * px := by
      rw [hlam]
      calc
        qx = qx * 1 := (mul_one qx).symm
        _ = qx * (px⁻¹ * px) := by
          rw [ChoiceFreeZMod.inv_mul_cancel Order px hpx]
        _ = (qx * px⁻¹) * px := (mul_assoc qx px⁻¹ px).symm
    have hqy_eq : qy = lam * py := by
      have : px * qy = lam * px * py := by rw [hcr, hqx_eq]
      have hcancel : qy = lam * py := by
        apply mul_left_cancel₀ hpx; rw [this]; ring
      exact hcancel
    rw [hqx_eq, hqy_eq] at hq
    have hfactor :
        (lam * lam - 1) * (1 - d * (px * px) * (py * py) * (lam * lam)) = 0 := by
      linear_combination hq - lam * lam * hp
    rcases mul_eq_zero.mp hfactor with h | h
    · -- λ² = 1 ⟹ λ = 1 or λ = -1
      have h2 : (lam - 1) * (lam + 1) = 0 := by linear_combination h
      rcases mul_eq_zero.mp h2 with h1 | h1
      · left
        have : lam = 1 := by linear_combination h1
        exact ⟨by rw [hqx_eq, this]; ring, by rw [hqy_eq, this]; ring⟩
      · right
        have : lam = -1 := by linear_combination h1
        exact ⟨by rw [hqx_eq, this]; ring, by rw [hqy_eq, this]; ring⟩
    · -- d·(px·py·λ)² = 1 ⟹ d is a square, contradiction
      exfalso
      have hprod : d * ((px * py * lam) * (px * py * lam)) = 1 := by
        linear_combination -h
      have hne : px * py * lam ≠ 0 := by
        intro h0; rw [h0] at hprod; simp at hprod
      apply d_not_square
      let z := px * py * lam
      have hzInv : z * z⁻¹ = 1 :=
        ChoiceFreeZMod.mul_inv_cancel Order z (by simpa [z] using hne)
      have hpair : (z * z) * (z⁻¹ * z⁻¹) = 1 := by
        calc
          (z * z) * (z⁻¹ * z⁻¹) = (z * z⁻¹) * (z * z⁻¹) := by ring
          _ = 1 := by rw [hzInv, one_mul]
      refine ⟨z⁻¹, ?_⟩
      calc
        d = d * 1 := (mul_one d).symm
        _ = d * ((z * z) * (z⁻¹ * z⁻¹)) := by rw [hpair]
        _ = (d * (z * z)) * (z⁻¹ * z⁻¹) := by ring
        _ = z⁻¹ * z⁻¹ := by rw [show d * (z * z) = 1 by simpa [z] using hprod, one_mul]

end ChoiceFreeCrossRatio
