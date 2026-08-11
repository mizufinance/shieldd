import ShielddGnarkFormal.Extracted.DecafEncodeToCurve
import ShielddGnarkFormal.CanonicalFqBitsBridge
import ShielddGnarkFormal.ChoiceFreeBinary
import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.CompressToFieldBridge
import ShielddGnarkFormal.EdwardsCompleteness
import ShielddGnarkFormal.Protocol.Common
import ProvenZk.Lemmas
import ProvenZk.Ext.Vector

set_option maxRecDepth 100000
set_option maxHeartbeats 4000000
set_option linter.unusedSectionVars false
set_option linter.unnecessarySeqFocus false

/-!
Semantic bridge for the hint-free `EncodeToCurve` extraction mirror.

The mirror exposes the sqrt-ratio witness as ordinary witness inputs and uses
the proven canonical-bits ladder for the sign normalization bit.
-/

namespace Shieldd.GnarkFormal.Extracted.DecafEncodeToCurve

open Bool (toZMod)
open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

variable [Fact (Nat.Prime Order)]

instance : Fact (Nat.Prime Shieldd.GnarkFormal.Extracted.CanonicalFqBits.Order) := ‹_›
instance : Fact (Nat.Prime Shieldd.GnarkFormal.Extracted.DecafEdwardsAdd.Order) := ‹_›
instance : Fact (Nat.Prime Shieldd.GnarkFormal.Extracted.DecafCompressToField.Order) := ‹_›

section ChoiceFreeSemanticDefinitions

def zetaNat : ℕ :=
  2841681278031794617739547238867782961338435681360110683443920362658525667816

def aNat : ℕ :=
  8444461749428370424248824938781546531375899335154063827935233455917409239040

def dNat : ℕ := 3021

def zeta : F := (zetaNat : F)
def a : F := (aNat : F)
def d : F := (dNat : F)

def OnCurve (x y : F) : Prop :=
  -(x * x) + y * y = 1 + d * (x * x) * (y * y)

def selectF (b i1 i2 : F) : F := i2 - b * (i2 - i1)

def u (r : F) : F := zeta * (r * r)
def dMinusA : F := d - a
def aMinusTwoD : F := a - 2 * d
def num (r : F) : F := (u r + 1) * aMinusTwoD
def den (r : F) : F := (d * u r - dMinusA) * (dMinusA * u r - d)
def sqrtDen (r : F) : F := num r * den r

def rawTwiddle (input wasSquare : F) : F := selectF wasSquare 1 input
def rawSign (wasSquare : F) : F := selectF wasSquare 1 (-1)
def rawIsri (input wasSquare invSqrt : F) : F := invSqrt * rawTwiddle input wasSquare
def rawT (input wasSquare invSqrt : F) : F := rawIsri input wasSquare invSqrt * num input

def rawYDen (input wasSquare invSqrt t : F) : F :=
  (-rawSign wasSquare) * rawIsri input wasSquare invSqrt * t *
      (u input - 1) * (aMinusTwoD * aMinusTwoD) - 1

def SqrtRatioCase (input wasSquare invSqrt : F) : Prop :=
  (wasSquare = 1 ∧ sqrtDen input ≠ 0 ∧ invSqrt * invSqrt * sqrtDen input = 1) ∨
  (wasSquare = 0 ∧ sqrtDen input = 0 ∧ invSqrt = 0) ∨
  (wasSquare = 0 ∧ sqrtDen input ≠ 0 ∧ invSqrt * invSqrt * sqrtDen input = zeta)

def NormalizeT (wasSquare t signedT : F) : Prop :=
  ∃ (x : List.Vector Bool 253) (z : F),
    Gates.to_binary t 253 (x.map toZMod) ∧
    (Fin.ofBitsLE x).val < Order ∧
    Gates.is_zero ((x.map toZMod)[0] - wasSquare) z ∧
    Gates.select z (-t) t signedT

def PreSem (input wasSquare invSqrt t yDen : F) : Prop :=
  SqrtRatioCase input wasSquare invSqrt ∧
  t = rawT input wasSquare invSqrt ∧
  yDen = rawYDen input wasSquare invSqrt t

def PostSem (wasSquare t yDen outX outY : F) : Prop :=
  ∃ signedT,
    NormalizeT wasSquare t signedT ∧
    ((1 + a * (signedT * signedT)) ≠ 0 ∧
      outX * (1 + a * (signedT * signedT)) = 2 * signedT) ∧
    (yDen ≠ 0 ∧ outY * yDen = 1 - a * (signedT * signedT)) ∧
    OnCurve outX outY

def Relation (input outX outY : F) : Prop :=
  ∃ wasSquare invSqrt t yDen,
    PreSem input wasSquare invSqrt t yDen ∧
    PostSem wasSquare t yDen outX outY

end ChoiceFreeSemanticDefinitions

def encodeSeg0 (Input WasSquare InvSqrt : F) (k : F → F → Prop) : Prop :=
    ∃gate_0, gate_0 = Gates.mul Input Input ∧
    ∃gate_1, gate_1 = Gates.mul (2841681278031794617739547238867782961338435681360110683443920362658525667816:F) gate_0 ∧
    ∃gate_2, gate_2 = Gates.sub (3021:F) (8444461749428370424248824938781546531375899335154063827935233455917409239040:F) ∧
    ∃gate_3, gate_3 = Gates.mul (3021:F) gate_1 ∧
    ∃gate_4, gate_4 = Gates.sub gate_3 gate_2 ∧
    ∃gate_5, gate_5 = Gates.mul gate_2 gate_1 ∧
    ∃gate_6, gate_6 = Gates.sub gate_5 (3021:F) ∧
    ∃gate_7, gate_7 = Gates.mul gate_4 gate_6 ∧
    ∃gate_8, gate_8 = Gates.add gate_1 (1:F) ∧
    ∃gate_9, gate_9 = Gates.mul (2:F) (3021:F) ∧
    ∃gate_10, gate_10 = Gates.sub (8444461749428370424248824938781546531375899335154063827935233455917409239040:F) gate_9 ∧
    ∃gate_11, gate_11 = Gates.mul gate_8 gate_10 ∧
    ∃gate_12, gate_12 = Gates.mul gate_11 gate_7 ∧
    Gates.is_bool WasSquare ∧
    ∃gate_14, Gates.is_zero gate_12 gate_14 ∧
    ∃gate_15, Gates.select gate_14 (1:F) gate_12 gate_15 ∧
    ∃gate_16, Gates.inv gate_15 gate_16 ∧
    ∃gate_17, gate_17 = Gates.mul InvSqrt InvSqrt ∧
    ∃gate_18, gate_18 = Gates.mul WasSquare gate_14 ∧
    Gates.eq gate_18 (0:F) ∧
    ∃gate_20, gate_20 = Gates.sub (1:F) WasSquare ∧
    ∃gate_21, gate_21 = Gates.sub (1:F) gate_14 ∧
    ∃gate_22, Gates.and gate_20 gate_14 gate_22 ∧
    ∃gate_23, Gates.and gate_20 gate_21 gate_23 ∧
    ∃gate_24, gate_24 = Gates.sub gate_17 gate_16 ∧
    ∃gate_25, gate_25 = Gates.mul WasSquare gate_24 ∧
    Gates.eq gate_25 (0:F) ∧
    ∃gate_27, gate_27 = Gates.mul gate_22 gate_17 ∧
    Gates.eq gate_27 (0:F) ∧
    ∃gate_29, gate_29 = Gates.mul (2841681278031794617739547238867782961338435681360110683443920362658525667816:F) gate_16 ∧
    ∃gate_30, gate_30 = Gates.sub gate_17 gate_29 ∧
    ∃gate_31, gate_31 = Gates.mul gate_23 gate_30 ∧
    Gates.eq gate_31 (0:F) ∧
    ∃gate_33, gate_33 = Gates.add WasSquare gate_22 ∧
    ∃gate_34, gate_34 = Gates.add gate_33 gate_23 ∧
    Gates.eq gate_34 (1:F) ∧
    ∃gate_36, Gates.select WasSquare (1:F) (-1:F) gate_36 ∧
    ∃gate_37, Gates.select WasSquare (1:F) Input gate_37 ∧
    ∃gate_38, gate_38 = Gates.mul InvSqrt gate_37 ∧
    ∃gate_39, gate_39 = Gates.mul gate_38 gate_11 ∧
    ∃gate_40, gate_40 = Gates.mul (2:F) (3021:F) ∧
    ∃gate_41, gate_41 = Gates.sub (8444461749428370424248824938781546531375899335154063827935233455917409239040:F) gate_40 ∧
    ∃gate_42, gate_42 = Gates.neg gate_36 ∧
    ∃gate_43, gate_43 = Gates.mul gate_42 gate_38 ∧
    ∃gate_44, gate_44 = Gates.mul gate_43 gate_39 ∧
    ∃gate_45, gate_45 = Gates.sub gate_1 (1:F) ∧
    ∃gate_46, gate_46 = Gates.mul gate_44 gate_45 ∧
    ∃gate_47, gate_47 = Gates.mul gate_41 gate_41 ∧
    ∃gate_48, gate_48 = Gates.mul gate_46 gate_47 ∧
    ∃gate_49, gate_49 = Gates.sub gate_48 (1:F) ∧
    k gate_39 gate_49

def encodeSeg1 (WasSquare T YDen OutX OutY : F) : Prop :=
    canonicalFqBitsGadget T fun gate_50 =>
    ∃gate_51, gate_51 = Gates.sub gate_50[0] WasSquare ∧
    ∃gate_52, Gates.is_zero gate_51 gate_52 ∧
    ∃gate_53, gate_53 = Gates.neg T ∧
    ∃gate_54, Gates.select gate_52 gate_53 T gate_54 ∧
    ∃gate_55, gate_55 = Gates.mul gate_54 gate_54 ∧
    ∃gate_56, gate_56 = Gates.mul (2:F) gate_54 ∧
    ∃gate_57, gate_57 = Gates.mul (8444461749428370424248824938781546531375899335154063827935233455917409239040:F) gate_55 ∧
    ∃gate_58, gate_58 = Gates.add (1:F) gate_57 ∧
    ∃gate_59, gate_59 = Gates.mul (8444461749428370424248824938781546531375899335154063827935233455917409239040:F) gate_55 ∧
    ∃gate_60, gate_60 = Gates.sub (1:F) gate_59 ∧
    ∃gate_61, Gates.inv gate_58 gate_61 ∧
    ∃gate_62, gate_62 = Gates.mul gate_56 gate_61 ∧
    ∃gate_63, Gates.inv YDen gate_63 ∧
    ∃gate_64, gate_64 = Gates.mul gate_60 gate_63 ∧
    ∃gate_65, gate_65 = Gates.mul gate_62 gate_62 ∧
    ∃gate_66, gate_66 = Gates.mul gate_64 gate_64 ∧
    ∃gate_67, gate_67 = Gates.sub gate_66 gate_65 ∧
    ∃gate_68, gate_68 = Gates.mul (3021:F) gate_65 ∧
    ∃gate_69, gate_69 = Gates.mul gate_68 gate_66 ∧
    ∃gate_70, gate_70 = Gates.add (1:F) gate_69 ∧
    Gates.eq gate_67 gate_70 ∧
    Gates.eq gate_62 OutX ∧
    Gates.eq gate_64 OutY ∧
    True

theorem circuit_eq (Input WasSquare InvSqrt OutX OutY : F) :
    circuit Input WasSquare InvSqrt OutX OutY ↔
      encodeSeg0 Input WasSquare InvSqrt
        (fun T YDen => encodeSeg1 WasSquare T YDen OutX OutY) := by
  unfold circuit encodeSeg0 encodeSeg1
  simp (config := { maxSteps := 1000000 }) only [Gates, GatesGnark9, GatesGnark8,
    GatesDef.eq]

theorem canonical_value {In : F} {k : List.Vector F 253 → Prop}
    (h : canonicalFqBitsGadget In k) :
    ∃ (x : List.Vector Bool 253),
      Gates.to_binary In 253 (x.map toZMod) ∧
      (Fin.ofBitsLE x).val < Order ∧
      k (x.map toZMod) := by
  have h' : Shieldd.GnarkFormal.Extracted.CanonicalFqBits.canonicalFqBitsGadget In k := h
  exact Shieldd.GnarkFormal.Extracted.CanonicalFqBits.canonicalFqBitsGadget_canonical In k h'

private theorem is_zero_cases (a out : F) (h : Gates.is_zero a out) :
    (a ≠ 0 ∧ out = 0) ∨ (a = 0 ∧ out = 1) := h

private theorem is_bool_cases (x : F) (h : Gates.is_bool x) : x = 0 ∨ x = 1 := by
  rw [Gates, GatesGnark9, GatesGnark8] at h
  dsimp [GatesDef.is_bool] at h
  rcases mul_eq_zero.mp h with h1 | h0
  · right; linear_combination -h1
  · left; exact h0

private theorem sqrt_zeta_case_mul (s inv den zeta : F)
    (hs : s * s = zeta * inv) (hinv : inv * den = 1) :
    s * s * den = zeta := by
  rw [hs]
  calc
    (zeta * inv) * den = zeta * (inv * den) := by ring
    _ = zeta := by rw [hinv, mul_one]

theorem encodeSeg0_semantic (Input WasSquare InvSqrt : F) (k : F → F → Prop)
    (h : encodeSeg0 Input WasSquare InvSqrt k) :
    ∃ T YDen, PreSem Input WasSquare InvSqrt T YDen ∧ k T YDen := by
  unfold encodeSeg0 at h
  obtain ⟨g0, hg0, g1, hg1, g2, hg2, g3, hg3, g4, hg4, g5, hg5, g6, hg6,
    g7, hg7, g8, hg8, g9, hg9, g10, hg10, g11, hg11, g12, hg12, hwsb,
    g14, hg14, g15, hg15, g16, hg16, g17, hg17, g18, hg18, h18z,
    g20, hg20, g21, hg21, g22, hg22, g23, hg23, g24, hg24, g25, hg25, h25z,
    g27, hg27, h27z, g29, hg29, g30, hg30, g31, hg31, h31z, g33, hg33,
    g34, hg34, h34, g36, hg36, g37, hg37, g38, hg38, g39, hg39, g40, hg40,
    g41, hg41, g42, hg42, g43, hg43, g44, hg44, g45, hg45, g46, hg46,
    g47, hg47, g48, hg48, g49, hg49, hk⟩ := h
  simp only [Gates, GatesGnark9, GatesGnark8, GatesDef.mul, GatesDef.add,
    GatesDef.sub, GatesDef.neg, GatesDef.eq] at *
  simp only [GatesDef.select, GatesDef.inv, GatesDef.and] at *
  obtain ⟨-, h15⟩ := hg15
  obtain ⟨-, hinv⟩ := hg16
  obtain ⟨-, -, h22⟩ := hg22
  obtain ⟨-, -, h23⟩ := hg23
  obtain ⟨-, h36⟩ := hg36
  obtain ⟨-, h37⟩ := hg37
  subst hg0 hg1 hg2 hg3 hg4 hg5 hg6 hg7 hg8 hg9 hg10 hg11 hg12 hg17 hg18
  subst hg20 hg21 hg24 hg25 hg27 hg29 hg30 hg31 hg33 hg34
  subst hg38 hg39 hg40 hg41 hg42 hg43 hg44 hg45 hg46 hg47 hg48 hg49
  have hsCase : SqrtRatioCase Input WasSquare InvSqrt := by
    unfold SqrtRatioCase sqrtDen den num u aMinusTwoD dMinusA d a zeta zetaNat aNat dNat
    rcases is_zero_cases _ _ hg14 with ⟨hdne, h14⟩ | ⟨hdz, h14⟩
    · subst h14
      rw [h15] at hinv
      simp only [zero_mul, sub_zero] at hinv
      rcases is_bool_cases _ hwsb with hb | hb
      · right; right
        refine ⟨hb, hdne, ?_⟩
        have h23' : g23 = 1 := by rw [h23, hb]; ring
        rw [h23', one_mul, sub_eq_zero] at h31z
        exact sqrt_zeta_case_mul InvSqrt g16
          (((2841681278031794617739547238867782961338435681360110683443920362658525667816 *
              (Input * Input) + 1) *
              (8444461749428370424248824938781546531375899335154063827935233455917409239040 -
                2 * 3021)) *
            ((3021 * (2841681278031794617739547238867782961338435681360110683443920362658525667816 *
                (Input * Input)) -
                (3021 - 8444461749428370424248824938781546531375899335154063827935233455917409239040)) *
              ((3021 - 8444461749428370424248824938781546531375899335154063827935233455917409239040) *
                  (2841681278031794617739547238867782961338435681360110683443920362658525667816 *
                    (Input * Input)) -
                3021)))
          2841681278031794617739547238867782961338435681360110683443920362658525667816 h31z hinv
      · left
        refine ⟨hb, hdne, ?_⟩
        rw [hb, one_mul, sub_eq_zero] at h25z
        rw [h25z]
        exact hinv
    · right; left
      subst h14
      refine ⟨?_, hdz, ?_⟩
      · rcases is_bool_cases _ hwsb with hb | hb
        · exact hb
        · exfalso
          rw [hb, one_mul] at h18z
          exact one_ne_zero h18z
      · rcases is_bool_cases _ hwsb with hb | hb
        · have h22' : g22 = 1 := by rw [h22, hb]; ring
          rw [h22', one_mul] at h27z
          exact mul_self_eq_zero.mp h27z
        · exfalso
          rw [hb, one_mul] at h18z
          exact one_ne_zero h18z
  refine ⟨_, _, ?_, hk⟩
  refine ⟨hsCase, ?_, ?_⟩
  · simp only [rawT, rawIsri, rawTwiddle, selectF, num, u, aMinusTwoD, a, d,
      zeta, zetaNat, aNat, dNat]
    rw [← h37]
    ring
  · simp only [rawYDen, rawSign, rawIsri, rawTwiddle, selectF, num, u,
      aMinusTwoD, a, d, zeta, zetaNat, aNat, dNat]
    rw [← h36, ← h37]
    ring

theorem encodeSeg1_semantic (WasSquare T YDen OutX OutY : F)
    (h : encodeSeg1 WasSquare T YDen OutX OutY) :
    PostSem WasSquare T YDen OutX OutY := by
  unfold encodeSeg1 at h
  obtain ⟨x, hbin, hlt, hk⟩ := canonical_value h
  obtain ⟨g51, hg51, g52, hg52, g53, hg53, g54, hg54, g55, hg55, g56, hg56,
    g57, hg57, g58, hg58, g59, hg59, g60, hg60, g61, hg61, g62, hg62, g63,
    hg63, g64, hg64, g65, hg65, g66, hg66, g67, hg67, g68, hg68, g69, hg69,
    g70, hg70, hcurve, houtX, houtY, -⟩ := hk
  simp only [Gates, GatesGnark9, GatesGnark8, GatesDef.mul, GatesDef.add,
    GatesDef.sub, GatesDef.neg, GatesDef.eq] at *
  simp only [GatesDef.inv] at *
  subst hg51 hg53 hg55 hg56 hg57 hg58 hg59 hg60 hg62 hg64 hg65 hg66 hg67 hg68
  subst hg69 hg70
  obtain ⟨hxden_ne, hxinv⟩ := hg61
  obtain ⟨hyden_ne, hyinv⟩ := hg63
  refine ⟨g54, ?_, ?_, ?_, ?_⟩
  · exact ⟨x, g52, hbin, hlt, hg52, by simpa using hg54⟩
  · refine ⟨?_, ?_⟩
    · simpa [a, aNat] using hxden_ne
    · calc
        OutX * (1 + a * (g54 * g54))
            = ((2 * g54) * g61) * (1 + a * (g54 * g54)) := by
              rw [← houtX]
        _ = 2 * g54 * (g61 * (1 + a * (g54 * g54))) := by ring
        _ = 2 * g54 := by
          rw [show g61 * (1 + a * (g54 * g54)) = 1 by simpa [a, aNat] using hxinv]
          ring
  · refine ⟨hyden_ne, ?_⟩
    calc
      OutY * YDen =
          ((1 -
            8444461749428370424248824938781546531375899335154063827935233455917409239040 *
              (g54 * g54)) * g63) * YDen := by
          rw [← houtY]
      _ = (1 - a * (g54 * g54)) * (g63 * YDen) := by
        simp only [a, aNat]
        ring
      _ = 1 - a * (g54 * g54) := by
        rw [hyinv]
        ring
  · show OnCurve OutX OutY
    unfold OnCurve d dNat
    rw [← houtX, ← houtY]
    linear_combination hcurve

theorem encodeSeg1_onCurve (WasSquare T YDen OutX OutY : F)
    (h : encodeSeg1 WasSquare T YDen OutX OutY) :
    OnCurve OutX OutY := by
  rcases encodeSeg1_semantic WasSquare T YDen OutX OutY h with
    ⟨_, _, _, _, hon⟩
  exact hon

theorem circuit_sound (Input WasSquare InvSqrt OutX OutY : F)
    (h : circuit Input WasSquare InvSqrt OutX OutY) :
    Relation Input OutX OutY := by
  rw [circuit_eq] at h
  obtain ⟨T, YDen, hpre, htail⟩ := encodeSeg0_semantic Input WasSquare InvSqrt
    (fun T YDen => encodeSeg1 WasSquare T YDen OutX OutY) h
  exact ⟨WasSquare, InvSqrt, T, YDen, hpre,
    encodeSeg1_semantic WasSquare T YDen OutX OutY htail⟩

theorem circuit_onCurve (Input WasSquare InvSqrt OutX OutY : F)
    (h : circuit Input WasSquare InvSqrt OutX OutY) :
    OnCurve OutX OutY := by
  rw [circuit_eq] at h
  obtain ⟨T, YDen, -, htail⟩ := encodeSeg0_semantic Input WasSquare InvSqrt
    (fun T YDen => encodeSeg1 WasSquare T YDen OutX OutY) h
  exact encodeSeg1_onCurve WasSquare T YDen OutX OutY htail

/-! ### Determinism of the encode-to-curve relation

The decaf377 map-to-curve is a function of its input. The extracted relation
witnesses (`wasSquare`, `invSqrt`, `t`, `yDen`, and the sign-normalization bits)
are not free: `wasSquare` is pinned by whether `sqrtDen input` is a square,
`invSqrt²` by the sqrt-ratio constraint, and the output sign by the canonical
parity bit. We prove the output point `(outX, outY)` is uniquely determined by
`input`, upgrading the noncomputable `encodeToCurve` choice to a function. -/

/-- ζ is a quadratic non-residue, reused from the compress bridge (same field,
defeq `Order`). -/
theorem zeta_not_square : ¬ IsSquare zeta :=
  Shieldd.GnarkFormal.Extracted.DecafCompressToField.zeta_not_square

theorem order_odd : Order % 2 = 1 := by decide +kernel

/-- Canonical-parity representative: the element of `{v, -v}` with even `val`. -/
def absF (v : F) : F := if v.val % 2 = 0 then v else -v

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

theorem ofBitsLE_parity {d : ℕ} (x : List.Vector Bool (d + 1)) :
    (Fin.ofBitsLE x).val % 2 = x.head.toNat := by
  conv_lhs => rw [← x.cons_head_tail]
  simp only [Fin.ofBitsLE, List.Vector.reverse_cons,
    Shieldd.GnarkFormal.ChoiceFreeBinary.ofBitsBE_snoc_val]
  cases x.head <;> simp [Nat.add_mul_mod_self_left]

/-- Canonical bits recover the input's canonical `ZMod` representative. -/
theorem to_binary_val_eq_of_lt (In : F) (x : List.Vector Bool 253)
    (hbin : Gates.to_binary In 253 (x.map toZMod))
    (hlt : (Fin.ofBitsLE x).val < Order) :
    In.val = (Fin.ofBitsLE x).val := by
  have hrec : recover_binary_zmod' (x.map (Bool.toZMod (N := Order))) = In := hbin.1
  rw [Shieldd.GnarkFormal.ChoiceFreeBinary.recover_binary_map_toZMod_eq_ofBitsLE] at hrec
  rw [← hrec]
  exact ZMod.val_natCast_of_lt hlt

/-- The sqrt-ratio case pins `wasSquare`: mismatched witnesses would make ζ a
square. -/
theorem sqrtCase_wasSquare_unique {input ws1 inv1 ws2 inv2 : F}
    (h1 : SqrtRatioCase input ws1 inv1) (h2 : SqrtRatioCase input ws2 inv2) :
    ws1 = ws2 := by
  rcases h1 with ⟨hw1, hd1, he1⟩ | ⟨hw1, hd1, he1⟩ | ⟨hw1, hd1, he1⟩ <;>
    rcases h2 with ⟨hw2, hd2, he2⟩ | ⟨hw2, hd2, he2⟩ | ⟨hw2, hd2, he2⟩
  · rw [hw1, hw2]                       -- (A,A)
  · exact absurd hd2 hd1                -- (A,B): sd≠0 vs sd=0
  · -- (A,C): he1 = 1, he2 = ζ ⇒ ζ square
    exfalso
    apply zeta_not_square
    have hinv1 : inv1 ≠ 0 := by rintro rfl; simp at he1
    refine ⟨inv2 * inv1⁻¹, ?_⟩
    field_simp
    linear_combination (-(inv1 * inv1)) * he2 + (inv2 * inv2) * he1
  · exact absurd hd1 hd2                -- (B,A): sd=0 vs sd≠0
  · rw [hw1, hw2]                       -- (B,B)
  · rw [hw1, hw2]                       -- (B,C): both ws = 0
  · -- (C,A): he1 = ζ, he2 = 1 ⇒ ζ square
    exfalso
    apply zeta_not_square
    have hinv2 : inv2 ≠ 0 := by rintro rfl; simp at he2
    refine ⟨inv1 * inv2⁻¹, ?_⟩
    field_simp
    linear_combination (-(inv2 * inv2)) * he1 + (inv1 * inv1) * he2
  · exact absurd hd2 hd1                -- (C,B): sd≠0 vs sd=0
  · rw [hw1, hw2]                       -- (C,C)

/-- Given equal `wasSquare`, the squared `t` and `yDen` are determined by
`input`. -/
theorem preSem_unique {input ws inv1 t1 yd1 inv2 t2 yd2 : F}
    (h1 : PreSem input ws inv1 t1 yd1) (h2 : PreSem input ws inv2 t2 yd2) :
    t1 * t1 = t2 * t2 ∧ yd1 = yd2 := by
  obtain ⟨hc1, ht1, hy1⟩ := h1
  obtain ⟨hc2, ht2, hy2⟩ := h2
  have hinvSq : inv1 * inv1 = inv2 * inv2 := by
    rcases hc1 with ⟨hw1, hd1, he1⟩ | ⟨hw1, hd1, he1⟩ | ⟨hw1, hd1, he1⟩ <;>
      rcases hc2 with ⟨hw2, hd2, he2⟩ | ⟨hw2, hd2, he2⟩ | ⟨hw2, hd2, he2⟩
    · exact mul_right_cancel₀ hd1 (by rw [he1, he2])
    · rw [hw1] at hw2; exact absurd hw2 one_ne_zero
    · rw [hw1] at hw2; exact absurd hw2 one_ne_zero
    · rw [hw2] at hw1; exact absurd hw1 one_ne_zero
    · rw [he1, he2]
    · exact absurd hd1 hd2
    · rw [hw2] at hw1; exact absurd hw1 one_ne_zero
    · exact absurd hd2 hd1
    · exact mul_right_cancel₀ hd1 (by rw [he1, he2])
  have hT : ∀ inv : F, rawT input ws inv * rawT input ws inv
      = (inv * inv) *
          ((rawTwiddle input ws * num input) * (rawTwiddle input ws * num input)) := by
    intro inv; simp only [rawT, rawIsri]; ring
  have hY : ∀ inv : F, rawYDen input ws inv (rawT input ws inv)
      = -(rawSign ws) *
          ((inv * inv) * (rawTwiddle input ws * rawTwiddle input ws) * num input)
          * (u input - 1) * (aMinusTwoD * aMinusTwoD) - 1 := by
    intro inv; simp only [rawYDen, rawIsri, rawT]; ring
  refine ⟨?_, ?_⟩
  · rw [ht1, ht2, hT, hT, hinvSq]
  · rw [hy1, hy2, ht1, ht2, hY, hY, hinvSq]

/-- The canonical low bit of `(x.map toZMod)` is the boolean head. -/
theorem map_toZMod_getElem_zero (x : List.Vector Bool 253) :
    (x.map toZMod)[0] = (toZMod x.head : F) := by
  rw [List.Vector.getElem_map]
  congr 1
  show x.get ⟨0, by decide⟩ = x.head
  rw [← List.Vector.get_zero x]
  rfl

/-- Sign normalization computes `±absF t` keyed by `wasSquare`. -/
theorem normalizeT_absF {ws t s : F} (hb : ws = 0 ∨ ws = 1)
    (h : NormalizeT ws t s) :
    s = (if ws = 1 then absF t else -absF t) := by
  obtain ⟨x, z, hbin, hlt, hz, hsel⟩ := h
  have hval : t.val = (Fin.ofBitsLE x).val := to_binary_val_eq_of_lt t x hbin hlt
  have hparity : t.val % 2 = x.head.toNat := by rw [hval]; exact ofBitsLE_parity x
  rw [map_toZMod_getElem_zero] at hz
  rw [Gates, GatesGnark9, GatesGnark8] at hsel
  dsimp [GatesDef.select] at hsel
  obtain ⟨-, hs⟩ := hsel
  have hsz : s = t - z * (t - -t) := hs
  -- z = 0 gives s = t, z = 1 gives s = -t
  have hzt : z = 0 → s = t := fun hz0 => by rw [hz0] at hsz; linear_combination hsz
  have hznt : z = 1 → s = -t := fun hz1 => by rw [hz1] at hsz; linear_combination hsz
  cases hx : x.head <;> rcases hb with rfl | rfl <;>
    simp only [hx, Bool.toZMod_zero, Bool.toZMod_one, sub_zero] at hz
  · -- head = false, ws = 0: a = 0 ⇒ z = 1 ⇒ s = -t; absF t = t
    have hp : t.val % 2 = 0 := by rw [hparity, hx]; rfl
    rcases is_zero_cases _ _ hz with ⟨ha, _⟩ | ⟨_, hz1⟩
    · exact absurd rfl ha
    · rw [hznt hz1]; simp [absF, hp]
  · -- head = false, ws = 1: a = 0 - 1 ≠ 0 ⇒ z = 0 ⇒ s = t; absF t = t
    have hp : t.val % 2 = 0 := by rw [hparity, hx]; rfl
    rcases is_zero_cases _ _ hz with ⟨_, hz0⟩ | ⟨ha, _⟩
    · rw [hzt hz0]; simp [absF, hp]
    · exact absurd ha (fun h => one_ne_zero (by linear_combination -h))
  · -- head = true, ws = 0: a = 1 ≠ 0 ⇒ z = 0 ⇒ s = t; absF t = -t
    have hp : t.val % 2 = 1 := by rw [hparity, hx]; rfl
    rcases is_zero_cases _ _ hz with ⟨_, hz0⟩ | ⟨ha, _⟩
    · rw [hzt hz0]; simp [absF, hp]
    · exact absurd ha one_ne_zero
  · -- head = true, ws = 1: a = 1 - 1 = 0 ⇒ z = 1 ⇒ s = -t; absF t = -t
    have hp : t.val % 2 = 1 := by rw [hparity, hx]; rfl
    rcases is_zero_cases _ _ hz with ⟨ha, _⟩ | ⟨_, hz1⟩
    · exact absurd (sub_self 1) ha
    · rw [hznt hz1]; simp [absF, hp]

/-! ### Independent protocol projection -/

/-- Backend sign normalization implies the protocol's canonical-parity rule. -/
theorem normalizeT_protocol {wasSquare t signedT : F}
    (hBoolean : wasSquare = 0 ∨ wasSquare = 1)
    (h : NormalizeT wasSquare t signedT) :
    Protocol.Common.EncodeToCurve.normalize
      wasSquare t signedT := by
  have hzero : (0 : F) ≠ 1 := zero_ne_one
  rw [normalizeT_absF hBoolean h]
  rcases hBoolean with rfl | rfl <;>
    rcases Nat.mod_two_eq_zero_or_one t.val with hParity | hParity <;>
    simp [
      Protocol.Common.EncodeToCurve.normalize,
      absF, hParity, Nat.testBit_zero, hzero
    ]

/--
The exact extracted encode witness satisfies the independent protocol
relation. This projection retains the witness instead of collapsing it into
the noncomputable chosen encode point.
-/
theorem relation_to_protocol {input outX outY : F}
    (h : Relation input outX outY) :
    Protocol.Common.EncodeToCurve.relation
      input ⟨outX, outY⟩ := by
  set_option maxRecDepth 1000000 in
  rcases h with
    ⟨wasSquare, inverseSqrt, t, yDenominator,
      ⟨hSqrt, hT, hYDenominator⟩,
      signedT, hNormalize, hX, hY, hCurve⟩
  have hBoolean : wasSquare = 0 ∨ wasSquare = 1 := by
    rcases hSqrt with h | h | h
    · exact Or.inr h.1
    · exact Or.inl h.1
    · exact Or.inl h.1
  have hzeta :
      Extracted.DecafEncodeToCurve.zeta =
        Protocol.Common.EncodeToCurve.zeta := by
    rfl
  have ha :
      Extracted.DecafEncodeToCurve.a =
        Protocol.Common.EncodeToCurve.a := by
    change (((Order - 1 : Nat) : Nat) : F) = -1
    decide
  have hd :
      Extracted.DecafEncodeToCurve.d =
        Protocol.Common.EncodeToCurve.d := by
    rfl
  have hdCurve :
      Extracted.DecafEncodeToCurve.d =
        Protocol.Common.Decaf.curveD := by
    simpa only [Protocol.Common.EncodeToCurve.d] using hd
  have hu :
      u input = Protocol.Common.EncodeToCurve.u input := by
    unfold u Protocol.Common.EncodeToCurve.u
    rw [hzeta]
    ring
  have hnum :
      num input = Protocol.Common.EncodeToCurve.numerator input := by
    unfold num aMinusTwoD Protocol.Common.EncodeToCurve.numerator
    rw [hu, ha, hd]
  have hden :
      den input = Protocol.Common.EncodeToCurve.denominator input := by
    unfold den dMinusA Protocol.Common.EncodeToCurve.denominator
    rw [hu, ha, hd]
  have hsqrtDen :
      sqrtDen input =
        Protocol.Common.EncodeToCurve.sqrtDenominator input := by
    unfold sqrtDen Protocol.Common.EncodeToCurve.sqrtDenominator
    rw [hnum, hden]
  have hselect (selector whenTrue whenFalse : F) :
      selectF selector whenTrue whenFalse =
        Protocol.Common.EncodeToCurve.selectF
          selector whenTrue whenFalse := by
    rfl
  have hrawTwiddle :
      rawTwiddle input wasSquare =
        Protocol.Common.EncodeToCurve.rawTwiddle
          input wasSquare := by
    unfold rawTwiddle Protocol.Common.EncodeToCurve.rawTwiddle
    rw [hselect]
  have hrawSign :
      rawSign wasSquare =
        Protocol.Common.EncodeToCurve.rawSign wasSquare := by
    unfold rawSign Protocol.Common.EncodeToCurve.rawSign
    rw [hselect]
  have hrawIsri :
      rawIsri input wasSquare inverseSqrt =
        Protocol.Common.EncodeToCurve.rawIsri
          input wasSquare inverseSqrt := by
    unfold rawIsri Protocol.Common.EncodeToCurve.rawIsri
    rw [hrawTwiddle]
  have hrawT :
      rawT input wasSquare inverseSqrt =
        Protocol.Common.EncodeToCurve.rawT
          input wasSquare inverseSqrt := by
    unfold rawT Protocol.Common.EncodeToCurve.rawT
    rw [hrawIsri, hnum]
  have hrawYDen :
      rawYDen input wasSquare inverseSqrt t =
        Protocol.Common.EncodeToCurve.rawYDenominator
          input wasSquare inverseSqrt t := by
    unfold rawYDen aMinusTwoD
      Protocol.Common.EncodeToCurve.rawYDenominator
    rw [hrawSign, hrawIsri, hu, ha, hd]
  refine
    ⟨wasSquare, inverseSqrt, t, yDenominator, signedT,
      ?_, ?_, ?_, normalizeT_protocol hBoolean hNormalize,
      ?_, ?_, ?_, ?_, ?_⟩
  · simpa only [
      Protocol.Common.EncodeToCurve.sqrtRatioCase,
      SqrtRatioCase, hsqrtDen, hzeta
    ] using hSqrt
  · rw [← hrawT]
    exact hT
  · rw [← hrawYDen]
    exact hYDenominator
  · rw [← ha]
    simpa only [mul_assoc] using hX.1
  · rw [← ha]
    simpa only [mul_assoc] using hX.2
  · exact hY.1
  · rw [← ha]
    simpa only [mul_assoc] using hY.2
  · unfold Protocol.Common.Decaf.onCurve
    rw [← hdCurve]
    unfold OnCurve at hCurve
    linear_combination hCurve

/-- Sign-normalized `t` is determined by `input` (independent of the `invSqrt`
sign): equal squares give equal `signedT`. -/
theorem normalizeT_unique {ws t1 s1 t2 s2 : F} (hb : ws = 0 ∨ ws = 1)
    (h1 : NormalizeT ws t1 s1) (h2 : NormalizeT ws t2 s2)
    (hsq : t1 * t1 = t2 * t2) : s1 = s2 := by
  have habs : absF t1 = absF t2 := by
    have : t2 = t1 ∨ t2 = -t1 := by
      have hfac : (t1 - t2) * (t1 + t2) = 0 := by linear_combination hsq
      rcases mul_eq_zero.mp hfac with h | h
      · left; exact (sub_eq_zero.mp h).symm
      · right; linear_combination h
    rcases this with rfl | rfl
    · rfl
    · rw [absF_neg]
  rw [normalizeT_absF hb h1, normalizeT_absF hb h2, habs]

/-- The encode relation has a unique output: it is a function of `input`. -/
theorem relation_unique {input ox1 oy1 ox2 oy2 : F}
    (h1 : Relation input ox1 oy1) (h2 : Relation input ox2 oy2) :
    ox1 = ox2 ∧ oy1 = oy2 := by
  obtain ⟨ws1, inv1, t1, yd1, hpre1, hpost1⟩ := h1
  obtain ⟨ws2, inv2, t2, yd2, hpre2, hpost2⟩ := h2
  -- wasSquare boolean and equal
  have hbool1 : ws1 = 0 ∨ ws1 = 1 := by
    rcases hpre1.1 with ⟨h, _⟩ | ⟨h, _⟩ | ⟨h, _⟩ <;> simp [h]
  have hwseq : ws1 = ws2 := sqrtCase_wasSquare_unique hpre1.1 hpre2.1
  subst hwseq
  -- t² and yDen determined
  obtain ⟨htsq, hyd⟩ := preSem_unique hpre1 hpre2
  -- unpack PostSem
  obtain ⟨sT1, hN1, ⟨hxd1, hxe1⟩, ⟨hyd1, hye1⟩, -⟩ := hpost1
  obtain ⟨sT2, hN2, ⟨hxd2, hxe2⟩, ⟨hyd2, hye2⟩, -⟩ := hpost2
  have hseq : sT1 = sT2 := normalizeT_unique hbool1 hN1 hN2 htsq
  subst hseq
  constructor
  · -- outX determined: ox·(1+a sT²) = 2 sT, denom ≠ 0
    have h1' : ox1 * (1 + a * (sT1 * sT1)) = ox2 * (1 + a * (sT1 * sT1)) := by
      rw [hxe1, hxe2]
    exact mul_right_cancel₀ hxd1 h1'
  · -- outY determined: oy·yDen = 1 - a sT², yDen equal and ≠ 0
    rw [← hyd] at hye2 hyd2
    have h1' : oy1 * yd1 = oy2 * yd1 := by rw [hye1, hye2]
    exact mul_right_cancel₀ hyd1 h1'

end Shieldd.GnarkFormal.Extracted.DecafEncodeToCurve
