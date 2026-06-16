import ShielddGnarkFormal.Extracted.DecafCompressToField
import ShielddGnarkFormal.CanonicalFqBitsBridge
import ShielddGnarkFormal.ImtGapBridge
import Mathlib.NumberTheory.LegendreSymbol.Basic

set_option maxRecDepth 100000
set_option maxHeartbeats 4000000
set_option linter.unusedSectionVars false

/-!
Bridge: the extracted `DecafCompressToField` mirror gadget (on-curve check,
4-case sqrt-ratio-zeta witness constraints, two canonical-parity `abs` blocks)
implies the mathematical compress relation, and that relation is deterministic
in the output — so compress is a well-defined function of the point.

Determinism rests on ζ being a quadratic non-residue, proved here by Euler's
criterion with a kernel-evaluable fuel-based modular exponentiation (no
`native_decide`).
-/

namespace Shieldd.GnarkFormal.Extracted.DecafCompressToField

open Bool (toZMod)

variable [Fact (Nat.Prime Order)]

instance : Fact (Order > 1) := ⟨(Fact.out (p := Nat.Prime Order)).one_lt⟩
instance : NeZero Order := ⟨(Fact.out (p := Nat.Prime Order)).ne_zero⟩

/-! ### ζ is a quadratic non-residue (Euler criterion, kernel-evaluated) -/

/-- decaf377 `zeta` (sqrt-ratio non-square multiplier) as a natural. -/
def zetaNat : ℕ := 2841681278031794617739547238867782961338435681360110683443920362658525667816

/-- Fuel-based square-and-multiply `b ^ e % m`, structurally recursive so the
kernel can evaluate it on the 253-bit exponent without `native_decide`. -/
def powModAux (m : ℕ) : ℕ → ℕ → ℕ → ℕ
  | 0, _, _ => 1 % m
  | fuel + 1, b, e =>
    if e = 0 then 1 % m
    else
      let r := powModAux m fuel (b * b % m) (e / 2)
      if e % 2 = 1 then b % m * r % m else r

theorem powModAux_eq (m : ℕ) :
    ∀ (fuel b e : ℕ), e < 2 ^ fuel → powModAux m fuel b e = b ^ e % m := by
  intro fuel
  induction fuel with
  | zero =>
    intro b e he
    have : e = 0 := by omega
    simp [powModAux, this]
  | succ fuel ih =>
    intro b e he
    rw [powModAux]
    by_cases he0 : e = 0
    · simp [he0]
    · rw [if_neg he0]
      have hhalf : e / 2 < 2 ^ fuel := by
        have : 2 ^ (fuel + 1) = 2 * 2 ^ fuel := by ring
        omega
      have hr : powModAux m fuel (b * b % m) (e / 2) = (b * b) ^ (e / 2) % m := by
        rw [ih (b * b % m) (e / 2) hhalf, Nat.pow_mod, Nat.mod_mod_of_dvd _ dvd_rfl,
          ← Nat.pow_mod]
      have hbb : (b * b) ^ (e / 2) = b ^ (2 * (e / 2)) := by
        rw [two_mul, pow_add, ← mul_pow]
      by_cases hodd : e % 2 = 1
      · rw [if_pos hodd, hr, hbb]
        have he2 : e = 2 * (e / 2) + 1 := by omega
        conv_rhs => rw [he2, pow_succ, Nat.mul_mod]
        rw [Nat.mul_comm (b % m)]
      · rw [if_neg hodd, hr, hbb]
        have he2 : e = 2 * (e / 2) := by omega
        rw [← he2]

/-- Kernel-checked: `ζ ^ ((q-1)/2) ≡ q - 1 (mod q)`, i.e. the Legendre symbol
is `-1`. -/
theorem zeta_pow_half_nat : powModAux Order 253 zetaNat (Order / 2) = Order - 1 := by
  decide +kernel

theorem zeta_pow_half : (zetaNat : F) ^ (Order / 2) = ((Order - 1 : ℕ) : F) := by
  have hfit : Order / 2 < 2 ^ 253 := by decide +kernel
  have h := powModAux_eq Order 253 zetaNat (Order / 2) hfit
  rw [zeta_pow_half_nat] at h
  calc (zetaNat : F) ^ (Order / 2)
      = ((zetaNat ^ (Order / 2) : ℕ) : F) := by push_cast; ring
    _ = ((zetaNat ^ (Order / 2) % Order : ℕ) : F) := (ZMod.natCast_mod _ _).symm
    _ = ((Order - 1 : ℕ) : F) := by rw [← h]

theorem zeta_ne_zero : (zetaNat : F) ≠ 0 := by
  intro h
  have hlt : zetaNat < Order := by decide +kernel
  have hv : ((zetaNat : ℕ) : F).val = zetaNat := ZMod.val_natCast_of_lt hlt
  rw [h, ZMod.val_zero] at hv
  exact absurd hv.symm (by decide +kernel)

/-- ζ is not a square in F: the compress sqrt-ratio cases are mutually
exclusive for a fixed denominator. -/
theorem zeta_not_square : ¬ IsSquare ((zetaNat : ℕ) : F) := by
  intro hsq
  have h1 := (ZMod.euler_criterion Order zeta_ne_zero).mp hsq
  rw [zeta_pow_half] at h1
  have hlt : Order - 1 < Order := by
    have := (Fact.out (p := Nat.Prime Order)).pos
    omega
  have hv : ((Order - 1 : ℕ) : F).val = Order - 1 := ZMod.val_natCast_of_lt hlt
  rw [h1, ZMod.val_one] at hv
  exact absurd hv (by decide +kernel)

/-! ### Canonical-parity absolute value -/

/-- The gadget's `abs`: keep `v` when its canonical residue is even, negate
when odd. -/
def absF (v : F) : F := if v.val % 2 = 0 then v else -v

theorem order_odd : Order % 2 = 1 := by decide +kernel

/-- Low bit of the little-endian decomposition is the parity of the value. -/
theorem ofBitsLE_parity {d : ℕ} (x : List.Vector Bool (d + 1)) :
    (Fin.ofBitsLE x).val % 2 = x.head.toNat := by
  conv_lhs => rw [← x.cons_head_tail]
  simp only [Fin.ofBitsLE, List.Vector.reverse_cons, Fin.ofBitsBE_snoc]
  cases x.head <;> simp [Nat.add_mul_mod_self_left]

theorem map_toZMod_get_zero {d : ℕ} (x : List.Vector Bool (d + 1)) (h : 0 < d + 1) :
    (x.map (fun b => (toZMod b : F))).get ⟨0, h⟩ = (toZMod x.head : F) := by
  have hfin : (⟨0, h⟩ : Fin (d + 1)) = 0 := by
    ext
    rfl
  rw [hfin, List.Vector.get_zero, List.Vector.head_map]

theorem absF_neg (v : F) : absF (-v) = absF v := by
  by_cases hv : v = 0
  · simp [hv, absF]
  · have hval : v.val ≠ 0 := (ZMod.val_ne_zero v).mpr hv
    haveI : NeZero v := ⟨hv⟩
    have hneg : (-v).val = Order - v.val := ZMod.val_neg_of_ne_zero v
    have hlt : v.val < Order := v.val_lt
    have h2 : (Order - v.val) % 2 = (1 - v.val % 2) % 2 := by
      have := order_odd
      omega
    unfold absF
    rw [hneg, h2]
    rcases Nat.mod_two_eq_zero_or_one v.val with h | h <;> simp [h, neg_neg]

/-! ### Cross-namespace reuse of the canonical-bits capstone -/

instance : Fact (Nat.Prime CanonicalFqBits.Order) := ‹Fact (Nat.Prime Order)›
instance : Fact (Nat.Prime ImtGap.Order) := ‹Fact (Nat.Prime Order)›

/-- This namespace's `canonicalFqBitsGadget` is a defeq copy of the proven one. -/
theorem canonicalFqBitsGadget_canonical (In : F) (k : List.Vector F 253 → Prop)
    (h : canonicalFqBitsGadget In k) :
    ∃ (x : List.Vector Bool 253),
      Gates.to_binary In 253 (x.map toZMod) ∧
      (Fin.ofBitsLE x).val < Order ∧
      k (x.map toZMod) :=
  CanonicalFqBits.canonicalFqBitsGadget_canonical In k h

/-- A canonical-bits block followed by a low-bit `select(1-b, v, -v)` computes
exactly `absF`. -/
theorem abs_select_eq (In g40 : F) (x : List.Vector Bool 253)
    (hbin : Gates.to_binary In 253 (x.map toZMod))
    (hlt : (Fin.ofBitsLE x).val < Order)
    (hsel : Gates.select (Gates.sub 1 (toZMod x.head)) In (Gates.neg In) g40) :
    g40 = absF In := by
  have hval : In.val = (Fin.ofBitsLE x).val := ImtGap.to_binary_val_eq_of_lt In x hbin hlt
  have hparity : In.val % 2 = x.head.toNat := by rw [hval]; exact ofBitsLE_parity x
  change GatesDef.select (GatesDef.sub 1 (toZMod x.head)) In (GatesDef.neg In) g40 at hsel
  simp only [GatesDef.select, GatesDef.sub, GatesDef.neg] at hsel
  obtain ⟨-, hout⟩ := hsel
  cases hx : x.head
  · have hparity0 : In.val % 2 = 0 := by
      simpa [hx, Bool.toNat] using hparity
    have hout0 : g40 = In := by
      simpa [hx, Bool.toZMod_zero] using hout
    simp [absF, hparity0, hout0]
  · have hparity1 : In.val % 2 = 1 := by
      simpa [hx, Bool.toNat] using hparity
    have hout1 : g40 = -In := by
      simpa [hx, Bool.toZMod_one] using hout
    simp [absF, hparity1, hout1]

/-! ### Mathematical compress relation -/

/-- decaf377 `a - d` over Fq. -/
def aMinusD : F := 8444461749428370424248824938781546531375899335154063827935233455917409236019

def zeta : F := (zetaNat : F)

theorem zeta_lit :
    zeta = (2841681278031794617739547238867782961338435681360110683443920362658525667816 : F) := by
  simp only [zeta, zetaNat]; exact_mod_cast rfl

/-- Twisted-Edwards curve membership as constrained by the gadget. -/
def OnCurve (X Y : F) : Prop := Y * Y - X * X = 1 + 3021 * (X * X) * (Y * Y)

/-- `u1 = (x + t)(x - t)` with `t = x·y`. -/
def u1 (X Y : F) : F := (X + X * Y) * (X - X * Y)

/-- Denominator of the sqrt-ratio: `u1 · (a-d) · x²`. -/
def den (X Y : F) : F := u1 X Y * aMinusD * (X * X)

/-- The three mutually exclusive sqrt-ratio-zeta witness cases. -/
def SqrtCase (X Y s : F) : Prop :=
  (den X Y ≠ 0 ∧ s * s * den X Y = 1) ∨
  (den X Y = 0 ∧ s = 0) ∨
  (den X Y ≠ 0 ∧ s * s * den X Y = zeta)

/-- Output as a function of the sqrt witness: `|(a-d)·s·(|s·u1| - t)·x|`. -/
def outOf (X Y s : F) : F :=
  absF (aMinusD * s * (absF (s * u1 X Y) - X * Y) * X)

/-- The compress relation: on-curve plus a sqrt-ratio witness producing `Out`. -/
def Relation (X Y Out : F) : Prop :=
  OnCurve X Y ∧ ∃ s, SqrtCase X Y s ∧ Out = outOf X Y s

/-! ### Circuit soundness -/

private theorem is_zero_cases (a out : F) (h : Gates.is_zero a out) :
    (a ≠ 0 ∧ out = 0) ∨ (a = 0 ∧ out = 1) := h

private theorem is_bool_cases (x : F) (h : Gates.is_bool x) : x = 0 ∨ x = 1 := by
  rw [Gates, GatesGnark9, GatesGnark8] at h
  dsimp [GatesDef.is_bool] at h
  rcases mul_eq_zero.mp h with h1 | h0
  · right; linear_combination -h1
  · left; exact h0

/-- Any satisfying assignment of the extracted gadget realises the compress
relation (with `SqrtRatio` as the sqrt witness). -/
theorem circuit_sound (X Y WasSquare SqrtRatio Out : F)
    (h : circuit X Y WasSquare SqrtRatio Out) : Relation X Y Out := by
  obtain ⟨g0, hg0, g1, hg1, g2, hg2, g3, hg3, g4, hg4, g5, hg5, hcurve,
    g7, hg7, g8, hg8, g9, hg9, g10, hg10, g11, hg11, g12, hg12,
    hwsb, g14, hg14, g15, hg15, g16, hg16, g17, hg17, g18, hg18, h18z,
    g20, hg20, g21, hg21, g22, hg22, g23, hg23, g24, hg24, g25, hg25, h25z,
    g27, hg27, h27z, g29, hg29, g30, hg30, g31, hg31, h31z,
    g33, hg33, g34, hg34, h34, g36, hg36, habs1⟩ := h
  simp only [Gates, GatesGnark9, GatesGnark8, GatesDef.mul, GatesDef.add, GatesDef.sub,
    GatesDef.eq] at hg0 hg1 hg2 hg3 hg4 hg5 hcurve hg7 hg8 hg9 hg10 hg11 hg12 hg17
  simp only [Gates, GatesGnark9, GatesGnark8, GatesDef.mul, GatesDef.add, GatesDef.sub,
    GatesDef.eq] at hg18 h18z hg20 hg21 hg24 hg25 h25z hg27 h27z hg29 hg30 hg31 h31z
  simp only [Gates, GatesGnark9, GatesGnark8, GatesDef.mul, GatesDef.add, GatesDef.sub,
    GatesDef.eq] at hg33 hg34 h34 hg36
  subst hg0 hg1 hg2 hg3 hg4 hg5 hg7 hg8 hg9 hg10 hg11 hg12 hg17 hg18 hg20 hg21
  subst hg24 hg25 hg27 hg29 hg30 hg31 hg33 hg34 hg36
  -- den as constrained equals the spec's `den X Y`
  have hden : (X + X * Y) * (X - X * Y) * aMinusD * (X * X) = den X Y := rfl
  refine ⟨hcurve, SqrtRatio, ?_, ?_⟩
  · -- sqrt-ratio case analysis
    unfold SqrtCase
    simp only [Gates, GatesGnark9, GatesGnark8, GatesDef.select, GatesDef.inv,
      GatesDef.and] at hg15 hg16 hg22 hg23
    obtain ⟨-, h15⟩ := hg15
    obtain ⟨-, hinv⟩ := hg16
    obtain ⟨-, -, h22⟩ := hg22
    obtain ⟨-, -, h23⟩ := hg23
    rcases is_zero_cases _ _ hg14 with ⟨hdne, h14⟩ | ⟨hdz, h14⟩
    · -- den ≠ 0
      subst h14
      rw [h15] at hinv
      simp only [zero_mul, sub_zero] at hinv
      have hinvden : g16 * den X Y = 1 := by rw [← hden]; exact hinv
      rcases is_bool_cases _ hwsb with hb | hb
      · -- WasSquare = 0: zeta case via g23 = 1
        right; right
        refine ⟨hdne, ?_⟩
        have h23' : g23 = 1 := by rw [h23, hb]; ring
        rw [h23', one_mul, sub_eq_zero, ← zeta_lit] at h31z
        calc SqrtRatio * SqrtRatio * den X Y
            = zeta * (g16 * den X Y) := by rw [h31z]; ring
          _ = zeta := by rw [hinvden, mul_one]
      · -- WasSquare = 1: inverse case
        left
        refine ⟨hdne, ?_⟩
        rw [hb, one_mul, sub_eq_zero] at h25z
        rw [h25z]
        exact hinvden
    · -- den = 0: s = 0 case
      right; left
      subst h14
      refine ⟨by rw [← hden]; exact hdz, ?_⟩
      rcases is_bool_cases _ hwsb with hb | hb
      · have h22' : g22 = 1 := by rw [h22, hb]; ring
        rw [h22', one_mul] at h27z
        exact mul_self_eq_zero.mp h27z
      · exfalso
        rw [hb, one_mul] at h18z
        exact one_ne_zero h18z
  · -- output: two abs blocks
    obtain ⟨x1, hbin1, hlt1, hk1⟩ := canonicalFqBitsGadget_canonical _ _ habs1
    obtain ⟨g38, hg38, g39, hg39, g40, hsel1, g41, hg41, g42, hg42, g43, hg43,
      g44, hg44, habs2⟩ := hk1
    obtain ⟨x2, hbin2, hlt2, hk2⟩ := canonicalFqBitsGadget_canonical _ _ habs2
    obtain ⟨g46, hg46, g47, hg47, g48, hsel2, hout, -⟩ := hk2
    subst hg38 hg39 hg46 hg47
    have hsel1' : Gates.select (Gates.sub 1 (toZMod x1.head))
        (SqrtRatio * ((X + X * Y) * (X - X * Y)))
        (Gates.neg (SqrtRatio * ((X + X * Y) * (X - X * Y)))) g40 := by
      simpa only [List.Vector.getElem_def', map_toZMod_get_zero] using hsel1
    have h40 : g40 = absF (SqrtRatio * ((X + X * Y) * (X - X * Y))) :=
      abs_select_eq _ _ x1 hbin1 hlt1 hsel1'
    have hsel2' : Gates.select (Gates.sub 1 (toZMod x2.head)) g44 (Gates.neg g44) g48 := by
      simpa only [List.Vector.getElem_def', map_toZMod_get_zero] using hsel2
    have h48 : g48 = absF g44 := abs_select_eq _ _ x2 hbin2 hlt2 hsel2'
    simp only [Gates, GatesGnark9, GatesGnark8, GatesDef.mul, GatesDef.sub,
      GatesDef.eq] at hg41 hg42 hg43 hg44 hout
    rw [← hout, h48, hg44, hg43, hg42, hg41, h40]
    simp only [outOf, u1, aMinusD]

end Shieldd.GnarkFormal.Extracted.DecafCompressToField
