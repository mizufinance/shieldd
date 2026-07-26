/-
GAP-11B component serializers for the concrete BLS12-377 challenge domain.

The G1/G2 definitions are the arkworks uncompressed affine layout: x then y,
little endian, with the short-Weierstrass flag attached to y's last component.
Projective inputs are normalized through Mathlib's S3-29 target equivalence.
-/
import Ipp.Bls12377Subgroups
import Ipp.CanonicalDecode

namespace Ipp.CanonicalSerializers

open Ipp.Bls12377
open Ipp.CanonicalWire

noncomputable section

local instance : Fact baseModulus.Prime := ⟨arithmeticFacts.basePrime⟩
local instance : Fact (∀ x : Fq, x ^ 2 ≠ (-5) + 0 * x) :=
  ⟨by intro x; simpa using arithmeticFacts.fq2Nonresidue x⟩
local instance : NeZero scalarModulus := ⟨by norm_num [scalarModulus]⟩
local instance classicalPropDecidable (p : Prop) : Decidable p :=
  Classical.propDecidable p

set_option exponentiation.threshold 512 in
private theorem two_pow_377_lt_256_pow_48 :
    2 ^ 377 < (256 : Nat) ^ 48 := by
  norm_num

def serializeFr (x : Fr) : List UInt8 := encodeLE 32 x.val

def serializeFq (x : Fq) : List UInt8 := encodeLE 48 x.val

theorem serializeFr_length (x : Fr) : (serializeFr x).length = 32 := by
  simp [serializeFr, encodeLE_length]

theorem serializeFq_length (x : Fq) : (serializeFq x).length = 48 := by
  simp [serializeFq, encodeLE_length]

theorem serializeFr_injective : Function.Injective serializeFr := by
  intro x y h
  apply ZMod.val_injective
  have hdecode := congrArg decodeLE h
  have hx : x.val < 256 ^ 32 := by
    exact lt_trans x.val_lt (lt_trans scalarModulus_lt_two_pow_253 (by norm_num))
  have hy : y.val < 256 ^ 32 := by
    exact lt_trans y.val_lt (lt_trans scalarModulus_lt_two_pow_253 (by norm_num))
  simpa [serializeFr, decodeLE_encodeLE_of_lt 32 x.val hx,
    decodeLE_encodeLE_of_lt 32 y.val hy] using hdecode

theorem serializeFq_injective : Function.Injective serializeFq := by
  intro x y h
  apply ZMod.val_injective
  have hdecode := congrArg decodeLE h
  have hx : x.val < 256 ^ 48 := by
    exact lt_trans x.val_lt
      (lt_trans baseModulus_lt_two_pow_377 two_pow_377_lt_256_pow_48)
  have hy : y.val < 256 ^ 48 := by
    exact lt_trans y.val_lt
      (lt_trans baseModulus_lt_two_pow_377 two_pow_377_lt_256_pow_48)
  simpa [serializeFq, decodeLE_encodeLE_of_lt 48 x.val hx,
    decodeLE_encodeLE_of_lt 48 y.val hy] using hdecode

def flagPlace : Nat := 256 ^ 47

def infinityMask : Nat := 64

/-- Attach an arkworks SW flag to the final byte of a canonical Fq value. -/
def serializeFlaggedFq (x : Fq) (mask : Nat) : List UInt8 :=
  encodeLE 48 (x.val + mask * flagPlace)

private theorem fq_val_lt_two_flagPlace (x : Fq) :
    x.val < 2 * flagPlace := by
  have hx := x.val_lt
  have hq : baseModulus < 2 * flagPlace := by
    norm_num [baseModulus, flagPlace]
  omega

private theorem flagged_value_lt (x : Fq) (mask : Nat)
    (hmask : mask ≤ 128) :
    x.val + mask * flagPlace < 256 ^ 48 := by
  have hx := fq_val_lt_two_flagPlace x
  have hp : 0 < flagPlace := by norm_num [flagPlace]
  have hwidth : 256 ^ 48 = 256 * flagPlace := by
    norm_num [flagPlace]
  rw [hwidth]
  calc
    x.val + mask * flagPlace <
        2 * flagPlace + mask * flagPlace :=
      Nat.add_lt_add_right hx _
    _ = (mask + 2) * flagPlace := by ring
    _ ≤ 130 * flagPlace := Nat.mul_le_mul_right flagPlace (by omega)
    _ < 256 * flagPlace := Nat.mul_lt_mul_of_pos_right (by omega) hp

private theorem serializeFlaggedFq_value_eq {x y : Fq} {mx my : Nat}
    (hmx : mx ≤ 128) (hmy : my ≤ 128)
    (h : serializeFlaggedFq x mx = serializeFlaggedFq y my) :
    x.val + mx * flagPlace = y.val + my * flagPlace := by
  have hdecode := congrArg decodeLE h
  simpa [serializeFlaggedFq,
    decodeLE_encodeLE_of_lt 48 _ (flagged_value_lt x mx hmx),
    decodeLE_encodeLE_of_lt 48 _ (flagged_value_lt y my hmy)] using hdecode

def g1Larger (y : Fq) : Prop := (-y).val < y.val

def g1SignMask (y : Fq) : Nat := if g1Larger y then 128 else 0

def g2Larger (y : Fq2) : Prop :=
  (-y).im.val < y.im.val ∨
    ((-y).im.val = y.im.val ∧ (-y).re.val < y.re.val)

def g2SignMask (y : Fq2) : Nat := if g2Larger y then 128 else 0

theorem g1SignMask_le (y : Fq) : g1SignMask y ≤ 128 := by
  unfold g1SignMask
  split <;> omega

theorem g2SignMask_le (y : Fq2) : g2SignMask y ≤ 128 := by
  unfold g2SignMask
  split <;> omega

def serializeFq2 (x : Fq2) : List UInt8 :=
  serializeFq x.re ++ serializeFq x.im

def serializeFlaggedFq2 (x : Fq2) (mask : Nat) : List UInt8 :=
  serializeFq x.re ++ serializeFlaggedFq x.im mask

theorem serializeFq2_length (x : Fq2) : (serializeFq2 x).length = 96 := by
  simp [serializeFq2, serializeFq_length]

theorem serializeFlaggedFq2_length (x : Fq2) (mask : Nat) :
    (serializeFlaggedFq2 x mask).length = 96 := by
  simp [serializeFlaggedFq2, serializeFq_length, serializeFlaggedFq,
    encodeLE_length]

theorem serializeFq2_injective : Function.Injective serializeFq2 := by
  intro x y h
  have hparts := List.append_inj h (by simp [serializeFq_length])
  apply QuadraticAlgebra.ext
  · exact serializeFq_injective hparts.1
  · exact serializeFq_injective hparts.2

private theorem serializeFlaggedFq2_value_eq {x y : Fq2} {mx my : Nat}
    (hmx : mx ≤ 128) (hmy : my ≤ 128)
    (h : serializeFlaggedFq2 x mx = serializeFlaggedFq2 y my) :
    x.re = y.re ∧
    x.im.val + mx * flagPlace = y.im.val + my * flagPlace := by
  have hparts := List.append_inj h (by simp [serializeFq_length])
  exact ⟨serializeFq_injective hparts.1,
    serializeFlaggedFq_value_eq hmx hmy hparts.2⟩

def serializeG1Affine : g1Curve.toAffine.Point → List UInt8
  | .zero =>
      serializeFq 0 ++ serializeFlaggedFq 0 infinityMask
  | .some x y _ =>
      serializeFq x ++ serializeFlaggedFq y (g1SignMask y)

def serializeG2Affine : g2Curve.toAffine.Point → List UInt8
  | .zero =>
      serializeFq2 0 ++ serializeFlaggedFq2 0
        infinityMask
  | .some x y _ =>
      serializeFq2 x ++ serializeFlaggedFq2 y (g2SignMask y)

theorem serializeG1Affine_length (p : g1Curve.toAffine.Point) :
    (serializeG1Affine p).length = 96 := by
  cases p <;>
    simp [serializeG1Affine, serializeFq_length, serializeFlaggedFq,
      encodeLE_length]

theorem serializeG2Affine_length (p : g2Curve.toAffine.Point) :
    (serializeG2Affine p).length = 192 := by
  cases p <;>
    simp [serializeG2Affine, serializeFq2_length,
      serializeFlaggedFq2_length]

theorem serializeG1Affine_injective : Function.Injective serializeG1Affine := by
  intro p q h
  cases p with
  | zero =>
      cases q with
      | zero => rfl
      | some x y hy =>
          have hparts := List.append_inj h (by simp [serializeFq_length])
          have hvalue := serializeFlaggedFq_value_eq
            (x := (0 : Fq)) (y := y)
            (by norm_num [infinityMask])
            (g1SignMask_le y) hparts.2
          have hyBound := fq_val_lt_two_flagPlace y
          by_cases hs : g1Larger y
          · simp [g1SignMask, hs, infinityMask] at hvalue
            have hp : 0 < flagPlace := by norm_num [flagPlace]
            omega
          · simp [g1SignMask, hs, infinityMask] at hvalue
            have hp : 0 < flagPlace := by norm_num [flagPlace]
            omega
  | some x y hp =>
      cases q with
      | zero =>
          have hparts := List.append_inj h.symm (by simp [serializeFq_length])
          have hvalue := serializeFlaggedFq_value_eq
            (x := (0 : Fq)) (y := y)
            (by norm_num [infinityMask])
            (g1SignMask_le y) hparts.2
          have hyBound := fq_val_lt_two_flagPlace y
          by_cases hs : g1Larger y
          · simp [g1SignMask, hs, infinityMask] at hvalue
            have hplace : 0 < flagPlace := by norm_num [flagPlace]
            omega
          · simp [g1SignMask, hs, infinityMask] at hvalue
            have hplace : 0 < flagPlace := by norm_num [flagPlace]
            omega
      | some x' y' hq =>
          have hparts := List.append_inj h (by simp [serializeFq_length])
          have hx : x = x' := serializeFq_injective hparts.1
          have hvalue := serializeFlaggedFq_value_eq
            (g1SignMask_le y) (g1SignMask_le y') hparts.2
          have hyBound := fq_val_lt_two_flagPlace y
          have hyBound' := fq_val_lt_two_flagPlace y'
          have hyVal : y.val = y'.val := by
            by_cases hs : g1Larger y <;>
              by_cases hs' : g1Larger y' <;>
              simp [g1SignMask, hs, hs'] at hvalue <;> omega
          have hyEq : y = y' := by
            apply ZMod.val_injective
            exact hyVal
          subst x'
          subst y'
          rfl

theorem serializeG2Affine_injective : Function.Injective serializeG2Affine := by
  intro p q h
  cases p with
  | zero =>
      cases q with
      | zero => rfl
      | some x y hy =>
          have hparts := List.append_inj h (by simp [serializeFq2_length])
          have hvalue := serializeFlaggedFq2_value_eq
            (x := (0 : Fq2)) (y := y)
            (by norm_num [infinityMask])
            (g2SignMask_le y) hparts.2
          have hyBound := fq_val_lt_two_flagPlace y.im
          by_cases hs : g2Larger y
          · simp [g2SignMask, hs, infinityMask] at hvalue
            have hp : 0 < flagPlace := by norm_num [flagPlace]
            omega
          · simp [g2SignMask, hs, infinityMask] at hvalue
            have hp : 0 < flagPlace := by norm_num [flagPlace]
            omega
  | some x y hp =>
      cases q with
      | zero =>
          have hparts := List.append_inj h.symm (by simp [serializeFq2_length])
          have hvalue := serializeFlaggedFq2_value_eq
            (x := (0 : Fq2)) (y := y)
            (by norm_num [infinityMask])
            (g2SignMask_le y) hparts.2
          have hyBound := fq_val_lt_two_flagPlace y.im
          by_cases hs : g2Larger y
          · simp [g2SignMask, hs, infinityMask] at hvalue
            have hplace : 0 < flagPlace := by norm_num [flagPlace]
            omega
          · simp [g2SignMask, hs, infinityMask] at hvalue
            have hplace : 0 < flagPlace := by norm_num [flagPlace]
            omega
      | some x' y' hq =>
          have hparts := List.append_inj h (by simp [serializeFq2_length])
          have hx : x = x' := serializeFq2_injective hparts.1
          have hvalue := serializeFlaggedFq2_value_eq
            (g2SignMask_le y) (g2SignMask_le y') hparts.2
          have hyImBound := fq_val_lt_two_flagPlace y.im
          have hyImBound' := fq_val_lt_two_flagPlace y'.im
          have hyImVal : y.im.val = y'.im.val := by
            by_cases hs : g2Larger y <;>
              by_cases hs' : g2Larger y' <;>
              simp [g2SignMask, hs, hs'] at hvalue <;> omega
          have hyRe : y.re = y'.re := hvalue.1
          have hyIm : y.im = y'.im := by
            apply ZMod.val_injective
            exact hyImVal
          have hyEq : y = y' := QuadraticAlgebra.ext hyRe hyIm
          subst x'
          subst y'
          rfl

def serializeG1 (p : g1PrimeSubgroup) : List UInt8 :=
  serializeG1Affine p.1.toAffineLift

def serializeG2 (p : g2PrimeSubgroup) : List UInt8 :=
  serializeG2Affine p.1.toAffineLift

theorem serializeG1_length (p : g1PrimeSubgroup) :
    (serializeG1 p).length = 96 :=
  serializeG1Affine_length _

theorem serializeG2_length (p : g2PrimeSubgroup) :
    (serializeG2 p).length = 192 :=
  serializeG2Affine_length _

theorem serializeG1_injective : Function.Injective serializeG1 := by
  intro p q h
  apply Subtype.ext
  apply (WeierstrassCurve.Jacobian.Point.toAffineAddEquiv g1Curve).injective
  exact serializeG1Affine_injective h

theorem serializeG2_injective : Function.Injective serializeG2 := by
  intro p q h
  apply Subtype.ext
  apply (WeierstrassCurve.Jacobian.Point.toAffineAddEquiv g2Curve).injective
  exact serializeG2Affine_injective h

#print axioms serializeFr_injective
#print axioms serializeG1_injective
#print axioms serializeG2_injective

end
end Ipp.CanonicalSerializers
