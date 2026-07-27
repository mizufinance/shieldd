/-
GAP-01: canonical BLS12-377 base-field wire decoding.
Extension values are decoded componentwise; no field operations are modeled.
-/
import Ipp.CanonicalWire

namespace Ipp.CanonicalWire

set_option maxHeartbeats 800000

/-- BLS12-377 base-field modulus used by ark-bls12-377 0.5.0. -/
def fqModulus : Nat :=
  258664426012969094010652733694893533536393512754914660539884262666720468348340822774968888139573360124440321458177

abbrev FqValue := {n : Nat // n < fqModulus}

abbrev Fq2Value := FqValue × FqValue
abbrev Fq6Value := Fq2Value × (Fq2Value × Fq2Value)
abbrev Fq12Value := Fq6Value × Fq6Value

/-- Little-endian unsigned integer represented by a byte list. -/
def decodeLE : List UInt8 → Nat
  | [] => 0
  | b :: bs => b.toNat + 256 * decodeLE bs

/-- Exactly `width` little-endian bytes, truncating modulo `256^width`. -/
def encodeLE : Nat → Nat → List UInt8
  | 0, _ => []
  | width + 1, n => UInt8.ofNat n :: encodeLE width (n / 256)

theorem encodeLE_length (width n : Nat) :
    (encodeLE width n).length = width := by
  induction width generalizing n with
  | zero => rfl
  | succ width ih => simp [encodeLE, ih]

private theorem toNat_ofNat (n : Nat) : (UInt8.ofNat n).toNat = n % 256 := by
  change (BitVec.ofNat 8 n).toNat = n % 256
  rw [BitVec.toNat_ofNat]

theorem decodeLE_encodeLE_mod (width n : Nat) :
    decodeLE (encodeLE width n) = n % 256 ^ width := by
  induction width generalizing n with
  | zero =>
      change 0 = n % 1
      exact (Nat.mod_one n).symm
  | succ width ih =>
      simp only [encodeLE, decodeLE, toNat_ofNat, ih]
      rw [Nat.pow_succ, Nat.mul_comm (256 ^ width) 256]
      rw [Nat.mod_mul]

/-- Bounded integers survive an exact-width encode/decode round trip. -/
theorem decodeLE_encodeLE_of_lt (width n : Nat) (h : n < 256 ^ width) :
    decodeLE (encodeLE width n) = n := by
  rw [decodeLE_encodeLE_mod, Nat.mod_eq_of_lt h]

private theorem ofNat_add_mul (b : UInt8) (n : Nat) :
    UInt8.ofNat (b.toNat + 256 * n) = b := by
  rw [UInt8.eq_iff_toBitVec_eq]
  apply BitVec.eq_of_toNat_eq
  change (BitVec.ofNat 8 (b.toNat + 256 * n)).toNat = b.toNat
  rw [BitVec.toNat_ofNat]
  change (b.toNat + 256 * n) % 256 = b.toNat
  rw [Nat.add_mul_mod_self_left]
  exact Nat.mod_eq_of_lt (by simpa using b.toNat_lt)

private theorem add_mul_div (b : UInt8) (n : Nat) :
    (b.toNat + 256 * n) / 256 = n := by
  rw [Nat.add_mul_div_left]
  · simp [Nat.div_eq_of_lt b.toNat_lt]
  · decide

/-- Fixed-width encoding is a left inverse of little-endian decoding. -/
theorem encodeLE_decodeLE (xs : List UInt8) :
    encodeLE xs.length (decodeLE xs) = xs := by
  induction xs with
  | nil => rfl
  | cons b bs ih =>
      simp only [encodeLE, decodeLE]
      rw [ofNat_add_mul, add_mul_div, ih]

theorem decodeLE_injective_of_length {xs ys : List UInt8}
    (hlen : xs.length = ys.length) (hdecode : decodeLE xs = decodeLE ys) :
    xs = ys := by
  rw [← encodeLE_decodeLE xs, ← encodeLE_decodeLE ys, hlen, hdecode]

def FqWire.value (w : FqWire) : Nat := decodeLE (List.ofFn w.bytes)

/-- The pinned base-field decoder accepts exactly integers below `q`. -/
def decodeFqCanonical (w : FqWire) : Option FqValue :=
  if h : w.value < fqModulus then some ⟨w.value, h⟩ else none

theorem decodeFqCanonical_eq_some_iff (w : FqWire) (x : FqValue) :
    decodeFqCanonical w = some x ↔ w.value = x.1 := by
  by_cases h : w.value < fqModulus
  · simp [decodeFqCanonical, h, Subtype.ext_iff]
  · simp only [decodeFqCanonical, dif_neg h, reduceCtorEq, false_iff]
    intro heq
    apply h
    simpa [heq] using x.2

theorem FqWire.ext_value {x y : FqWire} (h : x.value = y.value) : x = y := by
  cases x with
  | mk xb =>
      cases y with
      | mk yb =>
          have hlist : List.ofFn xb = List.ofFn yb :=
            decodeLE_injective_of_length (by simp) h
          have hbytes : xb = yb := List.ofFn_injective hlist
          cases hbytes
          rfl

/-- Accepted canonical Fq bytes have a unique representation. -/
theorem decodeFqCanonical_injective {x y : FqWire} {v : FqValue}
    (hx : decodeFqCanonical x = some v)
    (hy : decodeFqCanonical y = some v) : x = y := by
  apply FqWire.ext_value
  exact (decodeFqCanonical_eq_some_iff x v).mp hx |>.trans
    ((decodeFqCanonical_eq_some_iff y v).mp hy).symm

theorem decodeFqCanonical_rejects_noncanonical (w : FqWire)
    (h : fqModulus ≤ w.value) : decodeFqCanonical w = none := by
  simp [decodeFqCanonical, Nat.not_lt_of_ge h]

set_option exponentiation.threshold 512 in
theorem fqModulus_lt_two_pow_377 : fqModulus < 2 ^ 377 := by decide

theorem decodeFqCanonical_rejects_spare_bits (w : FqWire)
    (h : 2 ^ 377 ≤ w.value) : decodeFqCanonical w = none := by
  apply decodeFqCanonical_rejects_noncanonical
  exact le_trans (Nat.le_of_lt fqModulus_lt_two_pow_377) h

def decodeFqList (xs : List UInt8) : Option FqValue :=
  if h : xs.length = 48 then
    decodeFqCanonical ⟨fun i => xs.get ⟨i, by simpa [h] using i.isLt⟩⟩
  else none

theorem decodeFqList_rejects_wrong_length (xs : List UInt8)
    (h : xs.length ≠ 48) : decodeFqList xs = none := by
  simp [decodeFqList, h]

theorem decodeFqList_exact_consumption {xs : List UInt8} {x : FqValue}
    (h : decodeFqList xs = some x) : xs.length = 48 := by
  by_contra hlen
  rw [decodeFqList_rejects_wrong_length xs hlen] at h
  contradiction

/-- Accepted canonical Fq byte lists have a unique representation. -/
theorem decodeFqList_injective {xs ys : List UInt8} {v : FqValue}
    (hx : decodeFqList xs = some v) (hy : decodeFqList ys = some v) : xs = ys := by
  have hxl : xs.length = 48 := decodeFqList_exact_consumption hx
  have hyl : ys.length = 48 := decodeFqList_exact_consumption hy
  rw [decodeFqList, dif_pos hxl] at hx
  rw [decodeFqList, dif_pos hyl] at hy
  have hw := decodeFqCanonical_injective hx hy
  have hbytes := congrArg FqWire.bytes hw
  apply List.ext_get
  · exact hxl.trans hyl.symm
  · intro n hnx hny
    exact congrFun hbytes ⟨n, by omega⟩

private def decodePair {A B X Y : Type} (da : A → Option X) (db : B → Option Y)
    (p : A × B) : Option (X × Y) := do
  let x ← da p.1
  let y ← db p.2
  pure (x, y)

private theorem decodePair_injective {A B X Y : Type}
    (da : A → Option X) (db : B → Option Y)
    (ha : ∀ {a a' x}, da a = some x → da a' = some x → a = a')
    (hb : ∀ {b b' y}, db b = some y → db b' = some y → b = b')
    {p q : A × B} {v : X × Y}
    (hp : decodePair da db p = some v)
    (hq : decodePair da db q = some v) : p = q := by
  rcases p with ⟨a, b⟩
  rcases q with ⟨a', b'⟩
  cases hax : da a with
  | none => simp [decodePair, hax] at hp
  | some x =>
      cases hby : db b with
      | none => simp [decodePair, hax, hby] at hp
      | some y =>
          cases hax' : da a' with
          | none => simp [decodePair, hax'] at hq
          | some x' =>
              cases hby' : db b' with
              | none => simp [decodePair, hax', hby'] at hq
              | some y' =>
                  simp [decodePair, hax, hby] at hp
                  simp [decodePair, hax', hby'] at hq
                  cases hp
                  cases hq
                  exact Prod.ext (ha hax hax') (hb hby hby')

def decodeFq2Canonical (w : Fq2Wire) : Option Fq2Value :=
  decodePair decodeFqCanonical decodeFqCanonical (w.c0, w.c1)

def decodeFq6Canonical (w : Fq6Wire) : Option Fq6Value :=
  decodePair decodeFq2Canonical
    (decodePair decodeFq2Canonical decodeFq2Canonical) (w.c0, (w.c1, w.c2))

def decodeFq12Canonical (w : Fq12Wire) : Option Fq12Value :=
  decodePair decodeFq6Canonical decodeFq6Canonical (w.c0, w.c1)

theorem decodeFq2Canonical_injective {x y : Fq2Wire} {v : Fq2Value}
    (hx : decodeFq2Canonical x = some v)
    (hy : decodeFq2Canonical y = some v) : x = y := by
  have hall := decodePair_injective decodeFqCanonical decodeFqCanonical
    (fun h h' => decodeFqCanonical_injective h h')
    (fun h h' => decodeFqCanonical_injective h h') hx hy
  cases x
  cases y
  cases hall
  rfl

theorem decodeFq6Canonical_injective {x y : Fq6Wire} {v : Fq6Value}
    (hx : decodeFq6Canonical x = some v)
    (hy : decodeFq6Canonical y = some v) : x = y := by
  have htail : ∀ {a a' value},
      decodePair decodeFq2Canonical decodeFq2Canonical a = some value →
      decodePair decodeFq2Canonical decodeFq2Canonical a' = some value → a = a' :=
    fun h h' => decodePair_injective decodeFq2Canonical decodeFq2Canonical
      (fun h h' => decodeFq2Canonical_injective h h')
      (fun h h' => decodeFq2Canonical_injective h h') h h'
  have hall := decodePair_injective decodeFq2Canonical
    (decodePair decodeFq2Canonical decodeFq2Canonical)
    (fun h h' => decodeFq2Canonical_injective h h') htail hx hy
  cases x
  cases y
  cases hall
  rfl

theorem decodeFq12Canonical_injective {x y : Fq12Wire} {v : Fq12Value}
    (hx : decodeFq12Canonical x = some v)
    (hy : decodeFq12Canonical y = some v) : x = y := by
  have hall := decodePair_injective decodeFq6Canonical decodeFq6Canonical
    (fun h h' => decodeFq6Canonical_injective h h')
    (fun h h' => decodeFq6Canonical_injective h h') hx hy
  cases x
  cases y
  cases hall
  rfl

end Ipp.CanonicalWire
