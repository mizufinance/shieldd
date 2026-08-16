import Ipp.CanonicalGtBytes

/-!
Strict canonical byte decoding for one SnarkPack torus-v2 Fq6 coordinate.
The wire is exactly the first six-component half of the established Arkworks
Fq12 tower order, with the same canonical base-field decoder at every limb.
-/

namespace Ipp.TorusCoordinateSerialization

open Ipp.CanonicalGtDecode
open Ipp.CanonicalWire

/-- Tower-order identification of six base-field components with Fq6. -/
def componentsEquivFq6 : Components 6 ≃ Fq6Value where
  toFun x :=
    ((x.1, x.2.1),
      ((x.2.2.1, x.2.2.2.1), (x.2.2.2.2.1, x.2.2.2.2.2.1)))
  invFun x :=
    (x.1.1, (x.1.2,
      (x.2.1.1, (x.2.1.2, (x.2.2.1, (x.2.2.2, PUnit.unit))))))
  left_inv x := by
    rcases x with ⟨x0, x1, x2, x3, x4, x5, terminal⟩
    cases terminal
    rfl
  right_inv x := by
    rcases x with ⟨⟨x0, x1⟩, ⟨⟨x2, x3⟩, ⟨x4, x5⟩⟩⟩
    rfl

/-- Exact canonical decoder for one compressed torus coordinate. -/
def decode (bytes : List UInt8) : Option Fq6Value :=
  (decodeComponents 6 bytes).map componentsEquivFq6

theorem decode_exact_consumption {bytes : List UInt8} {value : Fq6Value}
    (h : decode bytes = some value) :
    bytes.length = 288 := by
  unfold decode at h
  cases hc : decodeComponents 6 bytes with
  | none => simp [hc] at h
  | some components =>
      have := decodeComponents_exact_length hc
      simpa using this

/-- Accepted coordinate bytes are unique for a fixed field value. -/
theorem decode_injective {xs ys : List UInt8} {value : Fq6Value}
    (hx : decode xs = some value) (hy : decode ys = some value) :
    xs = ys := by
  unfold decode at hx hy
  cases hxc : decodeComponents 6 xs with
  | none => simp [hxc] at hx
  | some xc =>
      cases hyc : decodeComponents 6 ys with
      | none => simp [hyc] at hy
      | some yc =>
          simp [hxc] at hx
          simp [hyc] at hy
          have : xc = yc := componentsEquivFq6.injective (hx.trans hy.symm)
          subst yc
          exact decodeComponents_injective hxc hyc

theorem decode_rejects_wrong_length {bytes : List UInt8}
    (h : bytes.length ≠ 288) :
    decode bytes = none := by
  cases hdecode : decode bytes with
  | none => rfl
  | some value => exact (h (decode_exact_consumption hdecode)).elim

/-- A noncanonical base-field value in any of the six limbs rejects the
complete coordinate. -/
theorem decode_rejects_noncanonical_field {bytes : List UInt8}
    (hlen : bytes.length = 288) (i : Nat) (hi : i < 6)
    (hvalue : fqModulus ≤ decodeLE (componentBytes bytes i)) :
    decode bytes = none := by
  unfold decode
  rw [decodeComponents_rejects_component i hi]
  · rfl
  · apply decodeFqList_rejects_ge_modulus
    · simp [componentBytes, List.length_take, List.length_drop, hlen]
      omega
    · exact hvalue

#print axioms decode_exact_consumption
#print axioms decode_injective
#print axioms decode_rejects_wrong_length
#print axioms decode_rejects_noncanonical_field

end Ipp.TorusCoordinateSerialization
