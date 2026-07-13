/-
GAP-04: canonical PairingOutput wire decoding.
This stage decodes Fq12 only; target-subgroup membership is a later check.
-/
import Ipp.CanonicalDecode

namespace Ipp.CanonicalWire

abbrev PairingOutputValue := Fq12Value

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
