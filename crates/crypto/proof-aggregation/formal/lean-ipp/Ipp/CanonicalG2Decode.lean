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

private theorem option_bind_eq_some {α β : Type} {o : Option α} {f : α → Option β} {b : β}
    (h : o.bind f = some b) : ∃ a, o = some a ∧ f a = some b := by
  cases o with
  | none => simp at h
  | some a => exact ⟨a, rfl, h⟩

private theorem option_map_eq_some {α β : Type} {o : Option α} {f : α → β} {b : β}
    (h : o.map f = some b) : ∃ a, o = some a ∧ f a = b := by
  cases o with
  | none => simp at h
  | some a => exact ⟨a, rfl, Option.some.inj h⟩

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

/-- In the canonical residue operation, an Fq2 value equals its negation only at zero. -/
theorem negFq2_eq_self_iff (a : Nat × Nat) : negFq2 a = a ↔ a = (0, 0) := by
  have negQ_eq_self (n : Nat) (h : negQ n = n) : n = 0 := by
    simp only [negQ] at h
    split at h
    · omega
    · rename_i hn
      have hqpos : 0 < fqModulus := by norm_num [fqModulus]
      have hmodlt : modQ n < fqModulus := by
        simpa [modQ] using Nat.mod_lt n hqpos
      have hnlt : n < fqModulus := by omega
      have hmod : modQ n = n := by simp [modQ, Nat.mod_eq_of_lt hnlt]
      rw [hmod] at h hn
      norm_num [fqModulus] at h
      omega
  rcases a with ⟨a0, a1⟩
  constructor
  · intro h
    have h0 : negQ a0 = a0 := congrArg Prod.fst h
    have h1 : negQ a1 = a1 := congrArg Prod.snd h
    simp [negQ_eq_self a0 h0, negQ_eq_self a1 h1]
  · intro h
    have h0 : a0 = 0 := congrArg Prod.fst h
    have h1 : a1 = 0 := congrArg Prod.snd h
    subst a0
    subst a1
    simp [negFq2, negQ, modQ]

/-- Arkworks Fq2 order: compare c1 first, then c0. -/
def fq2Less (a b : Nat × Nat) : Bool :=
  a.2 < b.2 || (a.2 = b.2 && a.1 < b.1)

/-- The concrete twist right-hand side `x^3 + (0, twistB1)`. -/
def curveRhs (x : Nat × Nat) : Nat × Nat :=
  let x3 := mulFq2 (squareFq2 x) x
  (x3.1, addQ x3.2 twistB1)

private def checkedRoot (a candidate : Nat × Nat) : Option (Nat × Nat) :=
  if squareFq2 candidate = a then some candidate else none

private noncomputable def rootFromDelta (a : Nat × Nat) (delta : Nat) :
    Option (Nat × Nat) := do
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
noncomputable def sqrtFq2 (a : Nat × Nat) : Option (Nat × Nat) :=
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

def asNats (x : Fq2Value) : Nat × Nat := (x.1.1, x.2.1)

def selectRoot (flag : Flags) (root : Nat × Nat) : Nat × Nat :=
  let other := negFq2 root
  let smaller := if fq2Less root other then root else other
  let larger := if fq2Less root other then other else root
  match flag with
  | .smallerRoot => smaller
  | .largerRoot => larger
  | .infinity => fq2Zero

noncomputable def decodeY (flag : Flags) (x : Fq2Value) : Option Fq2Value := do
  let root <- sqrtFq2 (curveRhs (asNats x))
  let y := selectRoot flag root
  if h0 : y.1 < fqModulus then
    if h1 : y.2 < fqModulus then
      some (⟨y.1, h0⟩, ⟨y.2, h1⟩)
    else none
  else none

set_option maxHeartbeats 100000 in
theorem decodeY_data {flag : Flags} {x y : Fq2Value}
    (h : decodeY flag x = some y) :
    ∃ root, sqrtFq2 (curveRhs (asNats x)) = some root ∧
      selectRoot flag root = asNats y := by
  change (sqrtFq2 (curveRhs (asNats x))).bind _ = some y at h
  obtain ⟨root, hs, h⟩ := option_bind_eq_some h
  by_cases h0 : (selectRoot flag root).1 < fqModulus
  · by_cases h1 : (selectRoot flag root).2 < fqModulus
    · simp [h0, h1] at h
      subst y
      exact ⟨root, hs, rfl⟩
    · simp [h0, h1] at h
  · simp [h0] at h

/--
Pure exact-input G2 decoder. It consumes exactly 96 bytes, decodes c0 then c1
with GAP-01's canonical Fq decoder, reads flags from byte 95, requires the
unique zero-x infinity encoding, and otherwise solves `y^2 = x^3 + b'` before
selecting the root by arkworks' c1-major Fq2 lexicographic order.
-/
noncomputable def decodeFiniteExact (xs : List UInt8) :
    Option (Fq2Value × Fq2Value) := do
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

set_option maxHeartbeats 100000 in
theorem decodeFiniteExact_data {xs : List UInt8} {px py : Fq2Value}
    (h : decodeFiniteExact xs = some (px, py)) :
    ∃ last flags,
      xs[95]? = some last ∧ decodeFlags last = some flags ∧
      decodeFq2List (clearFlags xs) = some px ∧ decodeY flags px = some py ∧
      flags ≠ .infinity := by
  change (xs[95]?).bind _ = some (px, py) at h
  obtain ⟨last, hlast, h⟩ := option_bind_eq_some h
  obtain ⟨flags, hflags, h⟩ := option_bind_eq_some h
  cases flags with
  | infinity => simp at h
  | smallerRoot =>
      obtain ⟨x, hx, h⟩ := option_bind_eq_some h
      obtain ⟨y, hy, h⟩ := option_bind_eq_some h
      have hp := Option.some.inj h
      have hpx : x = px := congrArg Prod.fst hp
      have hpy : y = py := congrArg Prod.snd hp
      subst x
      subst y
      exact ⟨last, .smallerRoot, hlast, hflags, hx, hy, by decide⟩
  | largerRoot =>
      obtain ⟨x, hx, h⟩ := option_bind_eq_some h
      obtain ⟨y, hy, h⟩ := option_bind_eq_some h
      have hp := Option.some.inj h
      have hpx : x = px := congrArg Prod.fst hp
      have hpy : y = py := congrArg Prod.snd hp
      subst x
      subst y
      exact ⟨last, .largerRoot, hlast, hflags, hx, hy, by decide⟩

noncomputable def decode (xs : List UInt8) : Option Point :=
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

theorem decode_finite_exact {xs : List UInt8} {px py : Fq2Value}
    (h : decode xs = some (.finite px py)) : decodeFiniteExact xs = some (px, py) := by
  have hlen := decode_exact_consumption h
  have hne : xs ≠ infinityEncoding := by
    intro heq
    subst xs
    simp [decode, infinityPoint] at h
  rw [decode, if_neg hne, if_pos hlen] at h
  obtain ⟨p, hp, heq⟩ := option_map_eq_some h
  rcases p with ⟨x, y⟩
  simp at heq
  rcases heq with ⟨rfl, rfl⟩
  exact hp

example : decodeFlags (UInt8.ofNat 0xc0) = none := by decide

/-- Root order is c1-major, with c0 used only to break a c1 tie. -/
example : fq2Less (fqModulus - 1, 1) (0, 2) = true := by decide
example : selectRoot .smallerRoot (1, 0) = (1, 0) := by decide
example : selectRoot .largerRoot (1, 0) = (fqModulus - 1, 0) := by decide

#print axioms decode_infinity_unique
#print axioms decode_exact_consumption

end Ipp.CanonicalG2Decode
