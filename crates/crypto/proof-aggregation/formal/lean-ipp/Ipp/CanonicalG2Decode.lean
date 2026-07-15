/-
GAP-03A: canonical BLS12-377 G2 compressed-wire decoding.

Pinned sources are ark-ff 0.5.0 `fields/models/{fp/mod.rs,
quadratic_extension.rs}`, ark-ec 0.5.0
`models/short_weierstrass/{mod.rs,affine.rs,serialization_flags.rs}`, and
ark-bls12-377 0.5.0 `fields/fq2.rs` plus `curves/g2.rs`.

`QuadExtField::serialize_with_flags` writes c0 followed by c1. Each Fp384
component is little-endian, and the flags are attached to c1, so they occupy
bits 6 and 7 of byte 95. `00` selects the smaller Fq2 root, `10` the larger
root, `01` is infinity, and `11` is rejected. Fq2 ordering compares c1 first
and c0 second, using the canonical integer order of each Fq component.

As in GAP-02A, this strict wire specification accepts only the serializer's
unique infinity form: zero c0 and c1 with only bit 6 set. Generic arkworks
compressed deserialization itself discards a canonical nonzero x carrying the
infinity flag; the stricter convention is intentional.
-/
import Ipp.CanonicalG1Decode

namespace Ipp.CanonicalG2Decode

open Ipp.Bls12377
open Ipp.CanonicalWire

set_option maxHeartbeats 800000

def compressedBytes : Nat := 96
def componentBytes : Nat := 48
def infinityMask : Nat := 0x40
def largerRootMask : Nat := 0x80

def twistB1 : Nat :=
  155198655607781456406391640216936120121836107652948796323930557600032281009004493664981332883744016074664192874906

/-- The three legal arkworks short-Weierstrass compressed flag patterns. -/
inductive Flags where
  | smallerRoot
  | infinity
  | largerRoot
  deriving DecidableEq, Repr

/-- Decode bits 7 and 6 of c1's final little-endian byte; `11` is illegal. -/
def decodeFlags (last : UInt8) : Option Flags :=
  match last.toNat / 64 with
  | 0 => some .smallerRoot
  | 1 => some .infinity
  | 2 => some .largerRoot
  | _ => none

/-- Remove only the two flag bits from the exact Fq2 encoding. -/
def clearFlags (xs : List UInt8) : List UInt8 :=
  xs.take 95 ++ [UInt8.ofNat ((xs.getD 95 0).toNat % 64)]

/-- Decode arkworks' c0-then-c1 Fq2 byte layout componentwise. -/
def decodeFq2List (xs : List UInt8) : Option Fq2Value := do
  if xs.length = compressedBytes then pure () else none
  let c0 <- decodeFqList (xs.take componentBytes)
  let c1 <- decodeFqList (xs.drop componentBytes)
  pure (c0, c1)

private def modQ (n : Nat) : Nat := n % fqModulus
private def addQ (a b : Nat) : Nat := modQ (a + b)
private def subQ (a b : Nat) : Nat := modQ (a + fqModulus - modQ b)
private def mulQ (a b : Nat) : Nat := modQ (a * b)
private def negQ (a : Nat) : Nat := if modQ a = 0 then 0 else fqModulus - modQ a

/-- Inversion in the concrete prime field; callers still verify their result. -/
private def invQ (a : Nat) : Nat :=
  Ipp.CanonicalG1Decode.powMod a (fqModulus - 2) fqModulus

private def invTwo : Nat := (fqModulus + 1) / 2
private def fq2Zero : Nat × Nat := (0, 0)

/-- Fq2 multiplication for `c0 + c1*u`, where `u^2 = -5`. -/
def mulFq2 (a b : Nat × Nat) : Nat × Nat :=
  (subQ (mulQ a.1 b.1) (mulQ 5 (mulQ a.2 b.2)),
    addQ (mulQ a.1 b.2) (mulQ a.2 b.1))

def squareFq2 (a : Nat × Nat) : Nat × Nat := mulFq2 a a

def negFq2 (a : Nat × Nat) : Nat × Nat := (negQ a.1, negQ a.2)

/-- Arkworks Fq2 order: compare c1 first, then c0. -/
def fq2Less (a b : Nat × Nat) : Bool :=
  a.2 < b.2 || (a.2 = b.2 && a.1 < b.1)

/-- The concrete twist right-hand side `x^3 + (0, twistB1)`. -/
def curveRhs (x : Nat × Nat) : Nat × Nat :=
  let x3 := mulFq2 (squareFq2 x) x
  (x3.1, addQ x3.2 twistB1)

private def checkedRoot (a candidate : Nat × Nat) : Option (Nat × Nat) :=
  if squareFq2 candidate = a then some candidate else none

private def rootFromDelta (a : Nat × Nat) (delta : Nat) : Option (Nat × Nat) := do
  let c0 <- Ipp.CanonicalG1Decode.sqrtFq delta
  if c0 = 0 then none
  let c1 := mulQ a.2 (mulQ invTwo (invQ c0))
  checkedRoot a (c0, c1)

/--
Bounded square root in the concrete Fq2. This is arkworks' complex method
specialized to `u^2 = -5`: take a base-field square root of the norm, then try
`(a.c0 + sqrt(norm))/2`, falling back to `(a.c0 - sqrt(norm))/2`. Every
returned candidate is checked by an Fq2 square, independently of the internal
Tonelli-Shanks representative inherited from GAP-02A.
-/
def sqrtFq2 (a : Nat × Nat) : Option (Nat × Nat) :=
  if a = fq2Zero then some fq2Zero
  else if a.2 = 0 then
    match Ipp.CanonicalG1Decode.sqrtFq a.1 with
    | some root => checkedRoot a (root, 0)
    | none =>
        let divided := mulQ a.1 (invQ (fqModulus - 5))
        match Ipp.CanonicalG1Decode.sqrtFq divided with
        | some root => checkedRoot a (0, root)
        | none => none
  else do
    let norm := addQ (mulQ a.1 a.1) (mulQ 5 (mulQ a.2 a.2))
    let alpha <- Ipp.CanonicalG1Decode.sqrtFq norm
    let first := mulQ (addQ a.1 alpha) invTwo
    match rootFromDelta a first with
    | some root => some root
    | none => rootFromDelta a (mulQ (subQ a.1 alpha) invTwo)

/-- A decoded affine value with infinity structurally distinct from finite points. -/
inductive Point where
  | infinity
  | finite (x y : Fq2Value)
  deriving DecidableEq, Repr

def infinityEncoding : List UInt8 :=
  List.replicate 95 0 ++ [UInt8.ofNat infinityMask]

def infinityPoint : Point := .infinity

private def asNats (x : Fq2Value) : Nat × Nat := (x.1.1, x.2.1)

def selectRoot (flag : Flags) (root : Nat × Nat) : Nat × Nat :=
  let other := negFq2 root
  let smaller := if fq2Less root other then root else other
  let larger := if fq2Less root other then other else root
  match flag with
  | .smallerRoot => smaller
  | .largerRoot => larger
  | .infinity => fq2Zero

def decodeY (flag : Flags) (x : Fq2Value) : Option Fq2Value := do
  let root <- sqrtFq2 (curveRhs (asNats x))
  let y := selectRoot flag root
  if h0 : y.1 < fqModulus then
    if h1 : y.2 < fqModulus then
      some (⟨y.1, h0⟩, ⟨y.2, h1⟩)
    else none
  else none

/--
Pure exact-input G2 decoder. It consumes exactly 96 bytes, decodes c0 then c1
with GAP-01's canonical Fq decoder, reads flags from byte 95, requires the
unique zero-x infinity encoding, and otherwise solves `y^2 = x^3 + b'` before
selecting the root by arkworks' c1-major Fq2 lexicographic order.
-/
private def decodeFiniteExact (xs : List UInt8) : Option (Fq2Value × Fq2Value) := do
  let last <- xs[95]?
  let flags <- decodeFlags last
  match flags with
  | .infinity => none
  | .smallerRoot => do
      let x <- decodeFq2List (clearFlags xs)
      let y <- decodeY .smallerRoot x
      some (x, y)
  | .largerRoot => do
      let x <- decodeFq2List (clearFlags xs)
      let y <- decodeY .largerRoot x
      some (x, y)

def decode (xs : List UInt8) : Option Point :=
  if xs = infinityEncoding then some infinityPoint
  else if xs.length = compressedBytes then
    (decodeFiniteExact xs).map fun p => .finite p.1 p.2
  else none

private theorem finiteMap_ne_infinity (o : Option (Fq2Value × Fq2Value)) :
    (o.map fun p => Point.finite p.1 p.2) ≠ some infinityPoint := by
  cases o <;> simp [infinityPoint]

/-- The exact byte string accepted as the point at infinity is unique. -/
theorem decode_infinity_unique {xs : List UInt8}
    (h : decode xs = some infinityPoint) : xs = infinityEncoding := by
  by_cases hi : xs = infinityEncoding
  · exact hi
  · rw [decode, if_neg hi] at h
    split at h
    · exact (finiteMap_ne_infinity (decodeFiniteExact xs) h).elim
    · simp at h

theorem decode_exact_consumption {xs : List UInt8} {p : Point}
    (h : decode xs = some p) : xs.length = compressedBytes := by
  by_cases hi : xs = infinityEncoding
  · subst xs
    simp [infinityEncoding, compressedBytes]
  · rw [decode, if_neg hi] at h
    split at h
    · assumption
    · simp at h

private def encodeFq2 (c0 c1 : Nat) : List UInt8 :=
  encodeLE componentBytes c0 ++ encodeLE componentBytes c1

private def withLast (xs : List UInt8) (last : Nat) : List UInt8 :=
  xs.take 95 ++ [UInt8.ofNat last]

private def withC0Last (xs : List UInt8) (last : Nat) : List UInt8 :=
  xs.take 47 ++ [UInt8.ofNat last] ++ xs.drop 48

example : decodeFlags (UInt8.ofNat 0xc0) = none := by decide
example : decode [] = none := by decide
example : decode (List.replicate 97 0) = none := by decide

/-- Bit 5 is spare in either 377-bit component and is rejected canonically. -/
example : decode (withC0Last (encodeFq2 0 0) 0x20) = none := by decide
example : decode (withLast (encodeFq2 0 0) 0x20) = none := by decide

/-- Both flag bits set is the contradictory/illegal arkworks pattern. -/
example : decode (withLast (encodeFq2 0 0) 0xc0) = none := by decide

/-- Each Fq2 component has its own canonical `value < q` bound. -/
example : decode (encodeFq2 fqModulus 0) = none := by decide
example : decode (encodeFq2 0 fqModulus) = none := by decide

example : decode infinityEncoding = some infinityPoint := by decide

/-- Infinity requires both x components to be zero. -/
example : decode (withLast (encodeFq2 1 0) infinityMask) = none := by decide
example : decode (withLast (encodeFq2 0 1) infinityMask) = none := by decide

/-- Root order is c1-major, with c0 used only to break a c1 tie. -/
example : fq2Less (fqModulus - 1, 1) (0, 2) = true := by decide
example : selectRoot .smallerRoot (1, 0) = (1, 0) := by decide
example : selectRoot .largerRoot (1, 0) = (fqModulus - 1, 0) := by decide

#print axioms decode_infinity_unique
#print axioms decode_exact_consumption

end Ipp.CanonicalG2Decode
