/-
GAP-10 framing for the canonical 576-byte BLS12-377 Fq12 encoding.

Arkworks writes twelve consecutive 48-byte little-endian base-field values in
tower order. This module lifts GAP-01's exact field decoder to that byte list.
-/
import Ipp.CanonicalGtDecode

namespace Ipp.CanonicalGtDecode

open Ipp.CanonicalWire

set_option maxHeartbeats 800000

/-- Right-nested canonical base-field components. -/
def Components : Nat → Type
  | 0 => PUnit
  | n + 1 => FqValue × Components n

/-- The `i`th consecutive 48-byte component. -/
def componentBytes (bytes : List UInt8) (i : Nat) : List UInt8 :=
  (bytes.drop (48 * i)).take 48

/-- Decode exactly `n` consecutive canonical base-field components. -/
def decodeComponents : (n : Nat) → List UInt8 → Option (Components n)
  | 0, bytes => if bytes = [] then some PUnit.unit else none
  | n + 1, bytes => do
      let head ← decodeFqList (bytes.take 48)
      let tail ← decodeComponents n (bytes.drop 48)
      pure (head, tail)

theorem decodeComponents_exact_length {n : Nat} {bytes : List UInt8}
    {value : Components n} (h : decodeComponents n bytes = some value) :
    bytes.length = 48 * n := by
  induction n generalizing bytes with
  | zero =>
      simp only [decodeComponents] at h
      split at h
      · rename_i hempty
        simp [hempty]
      · simp at h
  | succ n ih =>
      simp only [decodeComponents] at h
      cases hhead : decodeFqList (bytes.take 48) with
      | none => simp [hhead] at h
      | some head =>
          cases htail : decodeComponents n (bytes.drop 48) with
          | none => simp [hhead, htail] at h
          | some tail =>
              have htake := decodeFqList_exact_consumption hhead
              have hdrop := ih htail
              simp only [List.length_take] at htake
              simp only [List.length_drop] at hdrop
              omega

theorem decodeComponents_injective {n : Nat} {xs ys : List UInt8}
    {value : Components n}
    (hx : decodeComponents n xs = some value)
    (hy : decodeComponents n ys = some value) :
    xs = ys := by
  induction n generalizing xs ys with
  | zero =>
      simp only [decodeComponents] at hx hy
      split at hx
      · rename_i hxempty
        split at hy
        · rename_i hyempty
          simp [hxempty, hyempty]
        · simp at hy
      · simp at hx
  | succ n ih =>
      simp only [decodeComponents] at hx hy
      cases hxhead : decodeFqList (xs.take 48) with
      | none => simp [hxhead] at hx
      | some xhead =>
          cases hxtail : decodeComponents n (xs.drop 48) with
          | none => simp [hxhead, hxtail] at hx
          | some xtail =>
              cases hyhead : decodeFqList (ys.take 48) with
              | none => simp [hyhead] at hy
              | some yhead =>
                  cases hytail : decodeComponents n (ys.drop 48) with
                  | none => simp [hyhead, hytail] at hy
                  | some ytail =>
                      simp [hxhead, hxtail] at hx
                      simp [hyhead, hytail] at hy
                      have hv : (xhead, xtail) = (yhead, ytail) :=
                        hx.trans hy.symm
                      have hheadValue : xhead = yhead := congrArg Prod.fst hv
                      have htailValue : xtail = ytail := congrArg Prod.snd hv
                      subst yhead
                      subst ytail
                      have htake : xs.take 48 = ys.take 48 :=
                        decodeFqList_injective hxhead hyhead
                      have hdrop : xs.drop 48 = ys.drop 48 := ih hxtail hytail
                      rw [← List.take_append_drop 48 xs,
                        ← List.take_append_drop 48 ys, htake, hdrop]

theorem decodeComponents_rejects_component {n : Nat} {bytes : List UInt8}
    (i : Nat) (hi : i < n)
    (hcomponent : decodeFqList (componentBytes bytes i) = none) :
    decodeComponents n bytes = none := by
  induction n generalizing bytes i with
  | zero => omega
  | succ n ih =>
      cases i with
      | zero =>
          unfold decodeComponents
          rw [show bytes.take 48 = componentBytes bytes 0 by
            simp [componentBytes], hcomponent]
          rfl
      | succ i =>
          have htailComponent :
              decodeFqList (componentBytes (bytes.drop 48) i) = none := by
            simpa [componentBytes, List.drop_drop, Nat.mul_succ,
              Nat.add_comm, Nat.add_left_comm, Nat.add_assoc] using hcomponent
          unfold decodeComponents
          rw [ih i (by omega) htailComponent]
          simp

/-- Tower-order identification of twelve components with canonical Fq12. -/
def componentsEquivFq12 : Components 12 ≃ Fq12Value where
  toFun x :=
    (((x.1, x.2.1), ((x.2.2.1, x.2.2.2.1),
      (x.2.2.2.2.1, x.2.2.2.2.2.1))),
     ((x.2.2.2.2.2.2.1, x.2.2.2.2.2.2.2.1),
      ((x.2.2.2.2.2.2.2.2.1, x.2.2.2.2.2.2.2.2.2.1),
       (x.2.2.2.2.2.2.2.2.2.2.1, x.2.2.2.2.2.2.2.2.2.2.2.1))))
  invFun x :=
    (x.1.1.1, (x.1.1.2,
      (x.1.2.1.1, (x.1.2.1.2, (x.1.2.2.1, (x.1.2.2.2,
      (x.2.1.1, (x.2.1.2,
      (x.2.2.1.1, (x.2.2.1.2, (x.2.2.2.1, (x.2.2.2.2, PUnit.unit))))))))))))
  left_inv x := by
    rcases x with
      ⟨x0, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, terminal⟩
    cases terminal
    rfl
  right_inv x := by
    rcases x with
      ⟨⟨⟨x0, x1⟩, ⟨⟨x2, x3⟩, ⟨x4, x5⟩⟩⟩,
       ⟨⟨x6, x7⟩, ⟨⟨x8, x9⟩, ⟨x10, x11⟩⟩⟩⟩
    rfl

/-- Exact canonical decoder for an uncompressed `PairingOutput` byte list. -/
def decode (bytes : List UInt8) : Option Fq12Value :=
  (decodeComponents 12 bytes).map componentsEquivFq12

theorem decode_exact_consumption {bytes : List UInt8} {value : Fq12Value}
    (h : decode bytes = some value) : bytes.length = 576 := by
  unfold decode at h
  cases hc : decodeComponents 12 bytes with
  | none => simp [hc] at h
  | some components =>
      have := decodeComponents_exact_length hc
      simpa using this

/-- Accepted canonical Fq12 byte lists have a unique representation. -/
theorem decode_injective {xs ys : List UInt8} {value : Fq12Value}
    (hx : decode xs = some value) (hy : decode ys = some value) :
    xs = ys := by
  unfold decode at hx hy
  cases hxc : decodeComponents 12 xs with
  | none => simp [hxc] at hx
  | some xc =>
      cases hyc : decodeComponents 12 ys with
      | none => simp [hyc] at hy
      | some yc =>
          simp [hxc] at hx
          simp [hyc] at hy
          have hcomponents : xc = yc :=
            componentsEquivFq12.injective (hx.trans hy.symm)
          subst yc
          exact decodeComponents_injective hxc hyc

theorem decode_rejects_wrong_length {bytes : List UInt8}
    (h : bytes.length ≠ 576) : decode bytes = none := by
  cases hdecode : decode bytes with
  | none => rfl
  | some value => exact (h (decode_exact_consumption hdecode)).elim

/-- Rejection of any one noncanonical base-field component rejects Fq12. -/
theorem decode_rejects_component {bytes : List UInt8} (i : Nat)
    (hi : i < 12)
    (hcomponent : decodeFqList (componentBytes bytes i) = none) :
    decode bytes = none := by
  unfold decode
  rw [decodeComponents_rejects_component i hi hcomponent]
  rfl

theorem componentBytes_length {bytes : List UInt8}
    (hlen : bytes.length = 576) (i : Nat) (hi : i < 12) :
    (componentBytes bytes i).length = 48 := by
  simp [componentBytes, List.length_take, List.length_drop, hlen]
  omega

/-- A component integer at least `q` is rejected as a noncanonical field value. -/
theorem decodeFqList_rejects_ge_modulus {xs : List UInt8}
    (hlen : xs.length = 48) (hvalue : fqModulus ≤ decodeLE xs) :
    decodeFqList xs = none := by
  unfold decodeFqList
  rw [dif_pos hlen]
  let wire : FqWire :=
    ⟨fun i => xs.get ⟨i, by omega⟩⟩
  change decodeFqCanonical wire = none
  apply decodeFqCanonical_rejects_noncanonical
  change fqModulus ≤ decodeLE (List.ofFn wire.bytes)
  have hlist : List.ofFn wire.bytes = xs := by
    simpa [wire, hlen] using (List.ofFn_getElem (xs := xs))
  rw [hlist]
  exact hvalue

/-- Any of the twelve components at least `q` rejects the complete Fq12. -/
theorem decode_rejects_noncanonical_field {bytes : List UInt8}
    (hlen : bytes.length = 576) (i : Nat) (hi : i < 12)
    (hvalue : fqModulus ≤ decodeLE (componentBytes bytes i)) :
    decode bytes = none := by
  apply decode_rejects_component i hi
  exact decodeFqList_rejects_ge_modulus (componentBytes_length hlen i hi) hvalue

#print axioms decode_exact_consumption
#print axioms decode_injective
#print axioms decode_rejects_wrong_length
#print axioms decode_rejects_noncanonical_field

end Ipp.CanonicalGtDecode
