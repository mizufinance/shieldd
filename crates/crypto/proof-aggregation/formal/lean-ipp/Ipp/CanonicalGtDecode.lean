/-
GAP-04: canonical PairingOutput wire decoding.
This stage decodes Fq12 only; target-subgroup membership is a later check.
-/
import Ipp.CanonicalDecode

namespace Ipp.CanonicalWire

abbrev PairingOutputValue := Fq12Value

/-- Canonical 48-byte little-endian encoding of a base-field value. -/
def encodeFqCanonical (x : FqValue) : FqWire where
  bytes i := (encodeLE 48 x.1).get ⟨i.1, by simp [encodeLE_length]⟩

theorem encodeFqCanonical_value (x : FqValue) :
    (encodeFqCanonical x).value = x.1 := by
  have hlist : List.ofFn (encodeFqCanonical x).bytes = encodeLE 48 x.1 := by
    simpa [encodeFqCanonical, encodeLE_length] using
      (List.ofFn_getElem (xs := encodeLE 48 x.1))
  rw [FqWire.value, hlist]
  apply decodeLE_encodeLE_of_lt
  exact lt_trans x.2 (lt_trans fqModulus_lt_two_pow_377 (by decide))

/-- Componentwise canonical encoding in arkworks tower order. -/
def encodeFq2Canonical (x : Fq2Value) : Fq2Wire where
  c0 := encodeFqCanonical x.1
  c1 := encodeFqCanonical x.2

/-- Componentwise canonical encoding in arkworks tower order. -/
def encodeFq6Canonical (x : Fq6Value) : Fq6Wire where
  c0 := encodeFq2Canonical x.1
  c1 := encodeFq2Canonical x.2.1
  c2 := encodeFq2Canonical x.2.2

/-- Canonical 576-byte Fq12 layout: c0 then c1, recursively componentwise. -/
def encodeFq12Canonical (x : Fq12Value) : Fq12Wire where
  c0 := encodeFq6Canonical x.1
  c1 := encodeFq6Canonical x.2

theorem decodeFq2Canonical_of_components {w : Fq2Wire} {x0 x1 : FqValue}
    (h0 : decodeFqCanonical w.c0 = some x0)
    (h1 : decodeFqCanonical w.c1 = some x1) :
    decodeFq2Canonical w = some (x0, x1) := by
  change (do let y0 ← decodeFqCanonical w.c0
             let y1 ← decodeFqCanonical w.c1
             pure (y0, y1)) = some (x0, x1)
  rw [h0, h1]
  rfl

theorem decodeFq2Canonical_none_c0 {w : Fq2Wire}
    (h0 : decodeFqCanonical w.c0 = none) : decodeFq2Canonical w = none := by
  change (do let y0 ← decodeFqCanonical w.c0
             let y1 ← decodeFqCanonical w.c1
             pure (y0, y1)) = none
  rw [h0]
  rfl

theorem decodeFq2Canonical_none_c1 {w : Fq2Wire} {x0 : FqValue}
    (h0 : decodeFqCanonical w.c0 = some x0)
    (h1 : decodeFqCanonical w.c1 = none) : decodeFq2Canonical w = none := by
  change (do let y0 ← decodeFqCanonical w.c0
             let y1 ← decodeFqCanonical w.c1
             pure (y0, y1)) = none
  rw [h0, h1]
  rfl

theorem decodeFq6Canonical_of_components {w : Fq6Wire} {x0 x1 x2 : Fq2Value}
    (h0 : decodeFq2Canonical w.c0 = some x0)
    (h1 : decodeFq2Canonical w.c1 = some x1)
    (h2 : decodeFq2Canonical w.c2 = some x2) :
    decodeFq6Canonical w = some (x0, (x1, x2)) := by
  change (do let y0 ← decodeFq2Canonical w.c0
             let tail ← (do let y1 ← decodeFq2Canonical w.c1
                              let y2 ← decodeFq2Canonical w.c2
                              pure (y1, y2))
             pure (y0, tail)) = some (x0, (x1, x2))
  rw [h0, h1, h2]
  rfl

theorem decodeFq6Canonical_none_c0 {w : Fq6Wire}
    (h0 : decodeFq2Canonical w.c0 = none) : decodeFq6Canonical w = none := by
  change (do let y0 ← decodeFq2Canonical w.c0
             let tail ← (do let y1 ← decodeFq2Canonical w.c1
                              let y2 ← decodeFq2Canonical w.c2
                              pure (y1, y2))
             pure (y0, tail)) = none
  rw [h0]
  rfl

theorem decodeFq6Canonical_none_c1 {w : Fq6Wire} {x0 : Fq2Value}
    (h0 : decodeFq2Canonical w.c0 = some x0)
    (h1 : decodeFq2Canonical w.c1 = none) : decodeFq6Canonical w = none := by
  change (do let y0 ← decodeFq2Canonical w.c0
             let tail ← (do let y1 ← decodeFq2Canonical w.c1
                              let y2 ← decodeFq2Canonical w.c2
                              pure (y1, y2))
             pure (y0, tail)) = none
  rw [h0, h1]
  rfl

theorem decodeFq6Canonical_none_c2 {w : Fq6Wire} {x0 x1 : Fq2Value}
    (h0 : decodeFq2Canonical w.c0 = some x0)
    (h1 : decodeFq2Canonical w.c1 = some x1)
    (h2 : decodeFq2Canonical w.c2 = none) : decodeFq6Canonical w = none := by
  change (do let y0 ← decodeFq2Canonical w.c0
             let tail ← (do let y1 ← decodeFq2Canonical w.c1
                              let y2 ← decodeFq2Canonical w.c2
                              pure (y1, y2))
             pure (y0, tail)) = none
  rw [h0, h1, h2]
  rfl

theorem decodeFq12Canonical_of_components {w : Fq12Wire} {x0 x1 : Fq6Value}
    (h0 : decodeFq6Canonical w.c0 = some x0)
    (h1 : decodeFq6Canonical w.c1 = some x1) :
    decodeFq12Canonical w = some (x0, x1) := by
  change (do let y0 ← decodeFq6Canonical w.c0
             let y1 ← decodeFq6Canonical w.c1
             pure (y0, y1)) = some (x0, x1)
  rw [h0, h1]
  rfl

theorem decodeFq12Canonical_none_c0 {w : Fq12Wire}
    (h0 : decodeFq6Canonical w.c0 = none) : decodeFq12Canonical w = none := by
  change (do let y0 ← decodeFq6Canonical w.c0
             let y1 ← decodeFq6Canonical w.c1
             pure (y0, y1)) = none
  rw [h0]
  rfl

theorem decodeFq12Canonical_none_c1 {w : Fq12Wire} {x0 : Fq6Value}
    (h0 : decodeFq6Canonical w.c0 = some x0)
    (h1 : decodeFq6Canonical w.c1 = none) : decodeFq12Canonical w = none := by
  change (do let y0 ← decodeFq6Canonical w.c0
             let y1 ← decodeFq6Canonical w.c1
             pure (y0, y1)) = none
  rw [h0, h1]
  rfl

def decodePairingOutputCanonical (w : PairingOutputWire) : Option PairingOutputValue :=
  decodeFq12Canonical w.value

/-- Accepted PairingOutput bytes have a unique canonical Fq12 representation. -/
theorem decodePairingOutputCanonical_injective
    {x y : PairingOutputWire} {v : PairingOutputValue}
    (hx : decodePairingOutputCanonical x = some v)
    (hy : decodePairingOutputCanonical y = some v) : x = y := by
  cases x with
  | mk xv =>
      cases y with
      | mk yv =>
          have hvalue : xv = yv := decodeFq12Canonical_injective hx hy
          cases hvalue
          rfl

/-- Membership filtering is explicit and separate from canonical Fq12 decoding. -/
def decodePairingOutputChecked (member : PairingOutputValue → Bool)
    (w : PairingOutputWire) : Option PairingOutputValue := do
  let value ← decodePairingOutputCanonical w
  if member value then some value else none

theorem decodePairingOutputChecked_eq_some_iff
    (member : PairingOutputValue → Bool) (w : PairingOutputWire)
    (v : PairingOutputValue) :
    decodePairingOutputChecked member w = some v ↔
      decodePairingOutputCanonical w = some v ∧ member v = true := by
  unfold decodePairingOutputChecked
  cases hdecode : decodePairingOutputCanonical w with
  | none => simp [hdecode]
  | some value =>
      cases hmember : member value <;> simp [hmember]
      all_goals
        intro heq
        cases heq
        exact hmember

def canonicalDecoderFamily {G1 G2 : Type*}
    (decodeG1 : G1Wire → Option G1) (decodeG2 : G2Wire → Option G2) :
    DecoderFamily FqValue Fq2Value Fq6Value Fq12Value G1 G2 PairingOutputValue where
  decodeFq := decodeFqCanonical
  decodeFq2 := decodeFq2Canonical
  decodeFq6 := decodeFq6Canonical
  decodeFq12 := decodeFq12Canonical
  decodeG1 := decodeG1
  decodeG2 := decodeG2
  decodePairingOutput := decodePairingOutputCanonical

end Ipp.CanonicalWire

#print axioms Ipp.CanonicalWire.encodeFqCanonical_value
#print axioms Ipp.CanonicalWire.decodeFq2Canonical_of_components
#print axioms Ipp.CanonicalWire.decodeFq2Canonical_none_c0
#print axioms Ipp.CanonicalWire.decodeFq2Canonical_none_c1
#print axioms Ipp.CanonicalWire.decodeFq6Canonical_of_components
#print axioms Ipp.CanonicalWire.decodeFq6Canonical_none_c0
#print axioms Ipp.CanonicalWire.decodeFq6Canonical_none_c1
#print axioms Ipp.CanonicalWire.decodeFq6Canonical_none_c2
#print axioms Ipp.CanonicalWire.decodeFq12Canonical_of_components
#print axioms Ipp.CanonicalWire.decodeFq12Canonical_none_c0
#print axioms Ipp.CanonicalWire.decodeFq12Canonical_none_c1
