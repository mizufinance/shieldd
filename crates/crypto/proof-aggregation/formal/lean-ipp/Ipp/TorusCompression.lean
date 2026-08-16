import Ipp.Bls12377Gt

/-!
Algebraic soundness of the quadratic-torus encoding used by SnarkPack v2.

The implementation views Fq12 as `K[w] / (w² - γ)` for `K = Fq6`. A
norm-one value `a + bw` is represented by `(1 + a) / b`; field zero is
reserved for the multiplicative identity. The exceptional value `-1` cannot
occur in the odd-order target subgroup.
-/

namespace Ipp.TorusCompression

variable {K : Type*} [Field K]

/-- Coefficients of `a + bw` in a quadratic extension with `w² = γ`. -/
structure Point where
  a : K
  b : K
deriving DecidableEq

omit [Field K] in
theorem point_ext {p q : Point (K := K)}
    (ha : p.a = q.a) (hb : p.b = q.b) : p = q := by
  cases p
  cases q
  simp_all

def norm (γ : K) (p : Point (K := K)) : K := p.a ^ 2 - γ * p.b ^ 2

def IsNormOne (γ : K) (p : Point (K := K)) : Prop := norm γ p = 1

def identity : Point (K := K) := ⟨1, 0⟩

def negIdentity : Point (K := K) := ⟨-1, 0⟩

/-- A sufficient condition for `K[w] / (w² - γ)` to be quadratic. -/
def IsNonSquare (γ : K) : Prop := ∀ x : K, x ^ 2 ≠ γ

def compress (p : Point (K := K)) : K := (1 + p.a) / p.b

def decompress (γ g : K) : Point (K := K) :=
  ⟨(g ^ 2 + γ) / (g ^ 2 - γ), 2 * g / (g ^ 2 - γ)⟩

theorem nonsquare_ne_zero {γ : K} (hγ : IsNonSquare γ) : γ ≠ 0 := by
  intro h
  have := hγ 0
  simp [h] at this

theorem decompress_denominator_ne_zero {γ g : K} (hγ : IsNonSquare γ) :
    g ^ 2 - γ ≠ 0 := by
  intro h
  apply hγ g
  exact sub_eq_zero.mp h

/-- Every decoded coordinate lies on the norm-one torus. -/
theorem decompress_isNormOne {γ g : K} (hγ : IsNonSquare γ) :
    IsNormOne γ (decompress γ g) := by
  have hden := decompress_denominator_ne_zero (g := g) hγ
  unfold IsNormOne norm decompress
  dsimp
  field_simp
  ring

/-- Encoding recovers every nonzero decoded coordinate. -/
theorem compress_decompress {γ g : K} (hγ : IsNonSquare γ)
    (hchar : (2 : K) ≠ 0) (hg : g ≠ 0) :
    compress (decompress γ g) = g := by
  have hden := decompress_denominator_ne_zero (g := g) hγ
  unfold compress decompress
  dsimp
  field_simp [hchar]
  ring

private theorem one_add_ne_zero {γ : K} {p : Point (K := K)}
    (hγ : IsNonSquare γ) (hp : IsNormOne γ p) (hb : p.b ≠ 0) :
    1 + p.a ≠ 0 := by
  intro ha
  have hγ0 := nonsquare_ne_zero hγ
  have hpa : p.a = -1 := by
    calc
      p.a = (1 + p.a) - 1 := by ring
      _ = 0 - 1 := by rw [ha]
      _ = -1 := by ring
  unfold IsNormOne norm at hp
  rw [hpa] at hp
  have : γ * p.b ^ 2 = 0 := by
    calc
      γ * p.b ^ 2 = 1 - ((-1 : K) ^ 2 - γ * p.b ^ 2) := by ring
      _ = 1 - 1 := by rw [hp]
      _ = 0 := by ring
  rcases mul_eq_zero.mp this with h | h
  · exact hγ0 h
  · exact hb (sq_eq_zero_iff.mp h)

private theorem compressed_denominator_formula {γ : K}
    {p : Point (K := K)} (hp : IsNormOne γ p) (hb : p.b ≠ 0) :
    compress p ^ 2 - γ = 2 * (1 + p.a) / p.b ^ 2 := by
  unfold compress
  unfold IsNormOne norm at hp
  calc
    ((1 + p.a) / p.b) ^ 2 - γ =
        ((1 + p.a) ^ 2 - γ * p.b ^ 2) / p.b ^ 2 := by
      field_simp [hb]
    _ = (2 * (1 + p.a) +
          (p.a ^ 2 - γ * p.b ^ 2 - 1)) / p.b ^ 2 := by
      congr 1
      ring
    _ = 2 * (1 + p.a) / p.b ^ 2 := by rw [hp]; ring

private theorem compressed_numerator_formula {γ : K}
    {p : Point (K := K)} (hp : IsNormOne γ p) (hb : p.b ≠ 0) :
    compress p ^ 2 + γ = 2 * p.a * (1 + p.a) / p.b ^ 2 := by
  unfold compress
  unfold IsNormOne norm at hp
  calc
    ((1 + p.a) / p.b) ^ 2 + γ =
        ((1 + p.a) ^ 2 + γ * p.b ^ 2) / p.b ^ 2 := by
      field_simp [hb]
    _ = (2 * p.a * (1 + p.a) -
          (p.a ^ 2 - γ * p.b ^ 2 - 1)) / p.b ^ 2 := by
      congr 1
      ring
    _ = 2 * p.a * (1 + p.a) / p.b ^ 2 := by rw [hp]; ring

/-- Decoding inverts encoding for every non-exceptional norm-one point. -/
theorem decompress_compress {γ : K} {p : Point (K := K)}
    (hγ : IsNonSquare γ) (hchar : (2 : K) ≠ 0)
    (hp : IsNormOne γ p) (hb : p.b ≠ 0) :
    decompress γ (compress p) = p := by
  have ha := one_add_ne_zero hγ hp hb
  have hdenFormula := compressed_denominator_formula hp hb
  have hnumFormula := compressed_numerator_formula hp hb
  unfold decompress
  apply point_ext <;> dsimp
  · rw [hnumFormula, hdenFormula]
    field_simp [hb, ha, hchar]
  · rw [hdenFormula]
    unfold compress
    field_simp [hb, ha, hchar]

/-- A norm-one point with zero second coefficient is exactly `1` or `-1`. -/
theorem zero_second_coordinate_cases {γ : K} {p : Point (K := K)}
    (hp : IsNormOne γ p) (hb : p.b = 0) :
    p = identity ∨ p = negIdentity := by
  unfold IsNormOne norm at hp
  rw [hb] at hp
  simp only [pow_two, mul_zero, sub_zero] at hp
  have hfactor : (p.a - 1) * (p.a + 1) = 0 := by
    calc
      (p.a - 1) * (p.a + 1) = p.a * p.a - 1 := by ring
      _ = 0 := sub_eq_zero.mpr hp
  rcases mul_eq_zero.mp hfactor with h | h
  · left
    apply point_ext
    · exact sub_eq_zero.mp h
    · simpa [identity] using hb
  · right
    have ha : p.a = -1 := by
      calc
        p.a = (p.a + 1) - 1 := by ring
        _ = 0 - 1 := by rw [h]
        _ = -1 := by ring
    apply point_ext
    · exact ha
    · simpa [negIdentity] using hb

/-- In a field of characteristic other than two, `-1` has no odd order. -/
theorem neg_one_not_odd_torsion {r : ℕ} (hr : Odd r)
    (hchar : (2 : K) ≠ 0) : (-1 : K) ^ r ≠ 1 := by
  have hneg : (-1 : K) ≠ 1 := by
    intro h
    apply hchar
    calc
      (2 : K) = 1 - (-1) := by ring
      _ = 1 - 1 := by rw [h]
      _ = 0 := by ring
  obtain ⟨k, rfl⟩ := hr
  simpa [pow_succ] using hneg

/-- The zero sentinel uniquely represents identity on an odd-order subgroup. -/
theorem zero_sentinel_sound {γ : K} {p : Point (K := K)} {r : ℕ}
    (hp : IsNormOne γ p) (hb : p.b = 0) (hr : Odd r)
    (hchar : (2 : K) ≠ 0) (htorsion : p.a ^ r = 1) :
    p = identity := by
  rcases zero_second_coordinate_cases hp hb with h | h
  · exact h
  · subst p
    exfalso
    exact neg_one_not_odd_torsion hr hchar htorsion

/-- Nonzero coordinates decode injectively. -/
theorem decompress_injective_on_nonzero {γ : K} (hγ : IsNonSquare γ)
    (hchar : (2 : K) ≠ 0) {g h : K} (hg : g ≠ 0) (hh : h ≠ 0)
    (heq : decompress γ g = decompress γ h) : g = h := by
  rw [← compress_decompress hγ hchar hg,
    ← compress_decompress hγ hchar hh, heq]

/-! ### Concrete BLS12-377 instantiation -/

open Ipp.Bls12377

local instance : Fact baseModulus.Prime := ⟨arithmeticFacts.basePrime⟩
local instance : Fact (∀ x : Fq, x ^ 2 ≠ (-5) + 0 * x) :=
  ⟨by intro x; simpa using arithmeticFacts.fq2Nonresidue x⟩

/-- The exact tower constant used by the Rust codec satisfies the generic premise. -/
theorem bls12377_fq6V_nonsquare :
    IsNonSquare (K := Fq6Canonical) fq6V :=
  fq6V_not_square

theorem bls12377_fq6_two_ne_zero : (2 : Fq6Canonical) ≠ 0 := by
  have hbase : (2 : Fq) ≠ 0 := by
    change ((2 : Nat) : Fq) ≠ 0
    intro hz
    have hd := (fq_natCast_eq_zero_iff 2).mp hz
    norm_num [baseModulus] at hd
  intro h
  have hmap : algebraMap Fq Fq6Canonical (2 : Fq) =
      algebraMap Fq Fq6Canonical (0 : Fq) := by
    simpa only [map_ofNat, map_zero] using h
  exact hbase ((algebraMap Fq Fq6Canonical).injective hmap)

theorem bls12377_scalarModulus_odd : Odd scalarModulus := by
  refine ⟨scalarModulus / 2, ?_⟩
  norm_num [scalarModulus]

/-- The sentinel theorem instantiated at the exact Fq6 tower and GT order. -/
theorem bls12377_zero_sentinel_sound {p : Point (K := Fq6Canonical)}
    (hp : IsNormOne fq6V p) (hb : p.b = 0)
    (htorsion : p.a ^ scalarModulus = 1) :
    p = identity :=
  zero_sentinel_sound hp hb bls12377_scalarModulus_odd
    bls12377_fq6_two_ne_zero htorsion

#print axioms decompress_isNormOne
#print axioms compress_decompress
#print axioms decompress_compress
#print axioms zero_second_coordinate_cases
#print axioms neg_one_not_odd_torsion
#print axioms zero_sentinel_sound
#print axioms decompress_injective_on_nonzero
#print axioms bls12377_fq6V_nonsquare
#print axioms bls12377_zero_sentinel_sound

end Ipp.TorusCompression
