/-
GAP-02A: canonical BLS12-377 G1 compressed-wire decoding.

Pinned sources are ark-ff 0.5.0 `fields/models/fp/mod.rs` and
`const_helpers.rs`, plus ark-ec 0.5.0 `models/short_weierstrass/{mod.rs,
affine.rs,serialization_flags.rs}`. `Fp384` writes little-endian bytes, so the
flags occupy bits 6 and 7 of byte 47 (the last byte), not the first byte.
`00` selects the smaller integer root, `10` the larger root, `01` is infinity,
and `11` is rejected. The five unused coordinate bits in byte 47 remain part
of the integer and therefore fail the canonical `x < q` check when nonzero.

Arkworks' generic compressed `CanonicalDeserialize` discards a canonical
nonzero `x` carrying the infinity flag. This wire specification deliberately
requires the serializer's unique infinity form, zero `x` with only bit 6 set,
as required by GAP-02A (and as checked by arkworks `from_random_bytes`).
-/
import Ipp.Bls12377
import Ipp.CanonicalDecode

namespace Ipp.CanonicalG1Decode

open Ipp.Bls12377
open Ipp.CanonicalWire

set_option maxHeartbeats 800000

def compressedBytes : Nat := 48
def infinityMask : Nat := 0x40
def largerRootMask : Nat := 0x80
def coordinateMask : Nat := 0x3f

/-- The three legal arkworks short-Weierstrass compressed flag patterns. -/
inductive Flags where
  | smallerRoot
  | infinity
  | largerRoot
  deriving DecidableEq, Repr

/-- Decode bits 7 and 6 of the final little-endian byte; `11` is illegal. -/
def decodeFlags (last : UInt8) : Option Flags :=
  match last.toNat / 64 with
  | 0 => some .smallerRoot
  | 1 => some .infinity
  | 2 => some .largerRoot
  | _ => none

/-- Remove only the two flag bits from an exact compressed field encoding. -/
def clearFlags (xs : List UInt8) : List UInt8 :=
  xs.take 47 ++ [UInt8.ofNat ((xs.getD 47 0).toNat % 64)]

/-- Binary modular exponentiation, used by the concrete square-root routine. -/
def powMod (base exponent modulus : Nat) : Nat :=
  if h : exponent = 0 then 1 % modulus
  else
    let half := powMod base (exponent / 2) modulus
    let square := (half * half) % modulus
    if exponent % 2 = 0 then square else (square * (base % modulus)) % modulus
termination_by exponent
decreasing_by omega

def twoAdicity : Nat := 46
def oddPart : Nat :=
  3675842578061421676390135839012792950148785745837396071634149488243117337281387659330802195819009059
def quadraticNonresidue : Nat := 5

private def findRootIndex (t modulus : Nat) : Nat → Nat → Option Nat
  | _, 0 => none
  | i, fuel + 1 =>
      if powMod t (2 ^ i) modulus = 1 then some i
      else findRootIndex t modulus (i + 1) fuel

private def tonelliLoop (modulus : Nat) : Nat → Nat → Nat → Nat → Nat → Option Nat
  | 0, _, _, _, _ => none
  | fuel + 1, m, c, t, r =>
      if t = 1 then some r
      else do
        let i ← findRootIndex t modulus 0 m
        if i < m then
          let b := powMod c (2 ^ (m - i - 1)) modulus
          let b2 := (b * b) % modulus
          tonelliLoop modulus fuel i b2 ((t * b2) % modulus) ((r * b) % modulus)
        else none

/--
Concrete Tonelli-Shanks for BLS12-377 Fq. The pinned modulus satisfies
`q - 1 = oddPart * 2^46`, and 5 is a quadratic nonresidue. The final equation
check makes failure closed independently of the internal root representative.
-/
def sqrtFq (a : Nat) : Option Nat :=
  let q := fqModulus
  if a = 0 then some 0
  else if a = 1 then some 1
  else do
    let r := powMod a ((oddPart + 1) / 2) q
    let t := powMod a oddPart q
    let c := powMod quadraticNonresidue oddPart q
    let y ← tonelliLoop q (twoAdicity + 1) twoAdicity c t r
    if (y * y) % q = a % q then some y else none

/-- A decoded affine value; infinity has canonical coordinates `(0, 0)`. -/
structure Point where
  infinity : Bool
  x : FqValue
  y : FqValue
  deriving DecidableEq, Repr

def zeroFq : FqValue := ⟨0, by simp [fqModulus]⟩

def infinityEncoding : List UInt8 :=
  List.replicate 47 0 ++ [UInt8.ofNat infinityMask]

def infinityPoint : Point := ⟨true, zeroFq, zeroFq⟩

/-- The concrete G1 right-hand side `x^3 + 1`, evaluated modulo Fq. -/
def curveRhs (x : Nat) : Nat := ((x * x) % fqModulus * x + 1) % fqModulus

/-- Select the smaller or larger integer representative of the two Fq roots. -/
def selectRoot (flag : Flags) (root : Nat) : Nat :=
  let other := if root = 0 then 0 else fqModulus - root
  match flag with
  | .smallerRoot => min root other
  | .largerRoot => max root other
  | .infinity => 0

def decodeFinite (flag : Flags) (x : FqValue) : Option Point := do
  let root ← sqrtFq (curveRhs x.1)
  let y := selectRoot flag root
  if hy : y < fqModulus then some ⟨false, x, ⟨y, hy⟩⟩ else none

/--
Pure exact-input G1 decoder. Length 48 is checked before flag access; clearing
the flags is followed by GAP-01's canonical Fq decoder; infinity additionally
requires zero `x`; finite values require a square root of `x^3 + 1` and use
arkworks' integer-lexicographic root ordering.
-/
def decode (xs : List UInt8) : Option Point := do
  if xs.length = compressedBytes then pure () else none
  let last ← xs[47]?
  let flags ← decodeFlags last
  let x ← decodeFqList (clearFlags xs)
  match flags with
  | .infinity => if xs = infinityEncoding then some infinityPoint else none
  | .smallerRoot => decodeFinite .smallerRoot x
  | .largerRoot => decodeFinite .largerRoot x

theorem decodeFinite_not_infinity {flag : Flags} {x : FqValue} {p : Point}
    (h : decodeFinite flag x = some p) : p.infinity = false := by
  cases hs : sqrtFq (curveRhs x.1) with
  | none => simp [decodeFinite, hs] at h
  | some root =>
      by_cases hy : selectRoot flag root < fqModulus
      · simp [decodeFinite, hs, hy] at h
        subst p
        rfl
      · simp [decodeFinite, hs, hy] at h

/-- The exact byte string accepted as the point at infinity is unique. -/
theorem decode_infinity_unique {xs : List UInt8}
    (h : decode xs = some infinityPoint) : xs = infinityEncoding := by
  by_cases hlen : xs.length = compressedBytes
  · cases hlast : xs[47]? with
    | none => simp [decode, hlen, hlast] at h
    | some last =>
        cases hflags : decodeFlags last with
        | none => simp [decode, hlen, hlast, hflags] at h
        | some flags =>
            cases hx : decodeFqList (clearFlags xs) with
            | none => simp [decode, hlen, hlast, hx] at h
            | some x =>
                cases flags with
                | infinity => simpa [decode, hlen, hlast, hflags, hx] using h
                | smallerRoot =>
                    have hf := decodeFinite_not_infinity
                      (by simpa [decode, hlen, hlast, hflags, hx] using h)
                    simp [infinityPoint] at hf
                | largerRoot =>
                    have hf := decodeFinite_not_infinity
                      (by simpa [decode, hlen, hlast, hflags, hx] using h)
                    simp [infinityPoint] at hf
  · simp [decode, hlen] at h

theorem decode_exact_consumption {xs : List UInt8} {p : Point}
    (h : decode xs = some p) : xs.length = compressedBytes := by
  simp only [decode] at h
  split at h
  · assumption
  · simp at h

def withLast (xs : List UInt8) (last : Nat) : List UInt8 :=
  xs.take 47 ++ [UInt8.ofNat last]

example : decodeFlags (UInt8.ofNat 0xc0) = none := by decide
example : decode [] = none := by decide
example : decode (List.replicate 49 0) = none := by decide

/-- Bit 5 of byte 47 is a spare bit for this 377-bit field and is rejected. -/
example : decode (withLast (encodeLE 48 0) 0x20) = none := by decide

/-- Both flag bits set is the contradictory/illegal arkworks flag pattern. -/
example : decode (withLast (encodeLE 48 0) 0xc0) = none := by decide

example : decode infinityEncoding = some infinityPoint := by decide

/-- Infinity is accepted only with zero x, making its wire encoding unique. -/
example : decode (withLast (encodeLE 48 1) infinityMask) = none := by decide

/-- At x = 0, the roots of y^2 = 1 are selected by exact integer order. -/
example : (decode (encodeLE 48 0)).map (fun p => p.y.1) = some 1 := by decide
example : (decode (withLast (encodeLE 48 0) largerRootMask)).map (fun p => p.y.1) =
    some (fqModulus - 1) := by decide

#print axioms decode_infinity_unique
#print axioms decode_exact_consumption

end Ipp.CanonicalG1Decode
