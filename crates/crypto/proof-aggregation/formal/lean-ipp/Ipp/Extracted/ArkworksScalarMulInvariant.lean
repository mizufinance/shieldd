import Ipp.Extracted.ArkworksScalarMul
import Ipp.Extracted.ArkworksG1Mathlib
import Ipp.Extracted.ArkworksG2Mathlib

/-!
S3-28 part 2: field-independent scalar-loop invariants and the curve-specific
executed-step boundary. Bit schedules are MSB first and recursion is fuelled.
-/

namespace Ipp.Extracted.ArkworksScalarMul

open Ipp.Bls12377

local instance : Fact baseModulus.Prime := ⟨arithmeticFacts.basePrime⟩
local instance : Fact (∀ x : Fq, x ^ 2 ≠ (-5) + 0 * x) :=
  ⟨by intro x; simpa using arithmeticFacts.fq2Nonresidue x⟩
local instance : g1Curve.IsElliptic := g1_isElliptic
local instance : g2Curve.IsElliptic := g2_isElliptic

/-- The natural-number contribution of one scalar bit. -/
def bitNat (bit : Bool) : Nat := if bit then 1 else 0

/-- The MSB-first value of at most `fuel` bits. -/
def msbValue : Nat → List Bool → Nat
  | 0, _ => 0
  | _ + 1, [] => 0
  | fuel + 1, bit :: bits =>
      bitNat bit * 2 ^ (min fuel bits.length) + msbValue fuel bits

/-- Process at most `fuel` MSB-first double-and-add bits. -/
def runBits {G : Type} [AddMonoid G] : Nat → List Bool → G → G → G
  | 0, _, _, accumulator => accumulator
  | _ + 1, [], _, accumulator => accumulator
  | fuel + 1, bit :: bits, base, accumulator =>
      runBits fuel bits base
        (accumulator + accumulator + if bit then base else 0)

/-- A fuelled MSB-first loop scales the initial accumulator and adds the prefix. -/
theorem runBits_invariant {G : Type} [AddCommMonoid G]
    (fuel : Nat) (bits : List Bool) (base accumulator : G) :
    runBits fuel bits base accumulator =
      (2 ^ min fuel bits.length) • accumulator + msbValue fuel bits • base := by
  induction fuel generalizing bits accumulator with
  | zero => simp [runBits, msbValue]
  | succ fuel ih =>
      cases bits with
      | nil => simp [runBits, msbValue]
      | cons bit bits =>
          rw [runBits, ih]
          simp only [List.length_cons, Nat.succ_min_succ]
          cases bit <;>
            simp [msbValue, bitNat, pow_succ, add_nsmul,
              mul_nsmul, two_nsmul,
              add_assoc, add_left_comm, add_comm]

/-- Starting at identity yields exactly the represented MSB-first prefix. -/
theorem runBits_zero {G : Type} [AddCommMonoid G]
    (fuel : Nat) (bits : List Bool) (base : G) :
    runBits fuel bits base 0 = msbValue fuel bits • base := by
  rw [runBits_invariant]
  simp

/-- Fuel zero executes no iterations, including for scalar zero. -/
@[simp] theorem runBits_no_fuel {G : Type} [AddMonoid G]
    (bits : List Bool) (base accumulator : G) :
    runBits 0 bits base accumulator = accumulator := rfl

/-- An empty or fully suppressed bit schedule preserves the accumulator. -/
@[simp] theorem runBits_empty {G : Type} [AddMonoid G]
    (fuel : Nat) (base accumulator : G) :
    runBits fuel [] base accumulator = accumulator := by
  cases fuel <;> rfl

/-- Leading zero suppression does not change the full fuelled result. -/
theorem runBits_suppress_leading_false {G : Type} [AddMonoid G]
    (bits : List Bool) (base : G) :
    runBits (bits.length + 1) (false :: bits) base 0 =
      runBits bits.length bits base 0 := by
  simp [runBits]

/-- A full 253-bit Fr schedule has the standard scalar-action result. -/
theorem runBits_253 {G : Type} [AddCommMonoid G]
    (bits : List Bool) (hlen : bits.length = 253) (base : G) :
    runBits 253 bits base 0 = msbValue 253 bits • base := by
  simpa [hlen] using runBits_zero bits.length bits base

/-- A paired bit contributes independently to the two GLV magnitudes. -/
def pairNat (pair : Bool × Bool) : Nat × Nat :=
  (bitNat pair.1, bitNat pair.2)

/-- The two MSB-first values of at most `fuel` paired bits. -/
def jointValue : Nat → List (Bool × Bool) → Nat × Nat
  | 0, _ => (0, 0)
  | _ + 1, [] => (0, 0)
  | fuel + 1, pair :: pairs =>
      let tail := jointValue fuel pairs
      (bitNat pair.1 * 2 ^ (min fuel pairs.length) + tail.1,
       bitNat pair.2 * 2 ^ (min fuel pairs.length) + tail.2)

/-- Process the GLV paired-bit schedule: double, then one choice-add. -/
def runJoint {G : Type} [AddMonoid G] :
    Nat → List (Bool × Bool) → G → G → G → G
  | 0, _, _, _, accumulator => accumulator
  | _ + 1, [], _, _, accumulator => accumulator
  | fuel + 1, pair :: pairs, b1, b2, accumulator =>
      let addend :=
        if pair.1 then (if pair.2 then b1 + b2 else b1)
        else (if pair.2 then b2 else 0)
      runJoint fuel pairs b1 b2 (accumulator + accumulator + addend)

/-- The joint loop represents the two decoded partial GLV magnitudes. -/
theorem runJoint_invariant {G : Type} [AddCommMonoid G]
    (fuel : Nat) (pairs : List (Bool × Bool)) (b1 b2 accumulator : G) :
    let value := jointValue fuel pairs
    runJoint fuel pairs b1 b2 accumulator =
      (2 ^ min fuel pairs.length) • accumulator + value.1 • b1 + value.2 • b2 := by
  induction fuel generalizing pairs accumulator with
  | zero => simp [runJoint, jointValue]
  | succ fuel ih =>
      cases pairs with
      | nil => simp [runJoint, jointValue]
      | cons pair pairs =>
          rcases pair with ⟨bit1, bit2⟩
          rw [runJoint, ih]
          simp only [List.length_cons, Nat.succ_min_succ]
          cases bit1 <;> cases bit2 <;>
            simp [jointValue, bitNat, pow_succ, add_nsmul,
              mul_nsmul, two_nsmul,
              add_assoc, add_left_comm, add_comm]

/-- The executed one-leading-`00` skip preserves both joint magnitudes. -/
theorem runJoint_skip_leading_false_false {G : Type} [AddMonoid G]
    (pairs : List (Bool × Bool)) (b1 b2 : G) :
    runJoint (pairs.length + 1) ((false, false) :: pairs) b1 b2 0 =
      runJoint pairs.length pairs b1 b2 0 := by
  simp [runJoint]

/-- Arkworks' 256-pair schedule with its leading `00` skip is a 255-step loop. -/
theorem runJoint_256_skip {G : Type} [AddCommMonoid G]
    (pairs : List (Bool × Bool)) (hlen : pairs.length = 255) (b1 b2 : G) :
    let value := jointValue 255 pairs
    runJoint 256 ((false, false) :: pairs) b1 b2 0 =
      value.1 • b1 + value.2 • b2 := by
  have hfuel : 256 = pairs.length + 1 := by omega
  rw [hfuel]
  rw [runJoint_skip_leading_false_false, runJoint_invariant]
  simp [hlen]

/--
The cited GLV eigenspace boundary. For BLS12-377 G1, arkworks 0.5.0 sets
`lambda = 8444461749428370424248824938781546531284005582649182570233710176290576793600`
and multiplies projective X by its configured endomorphism coefficient. This
predicate must only be supplied for prime-subgroup points; it is not asserted
for every on-curve point.
-/
def GlvEigenPrecondition {G : Type} [AddCommMonoid G]
    (inPrimeSubgroup : G → Prop) (phi : G → G) (lambda : Nat) : Prop :=
  ∀ point, inPrimeSubgroup point → phi point = lambda • point

/-- Substitute the cited eigenspace fact into the joint-loop result. -/
theorem runJoint_eigenvalue {G : Type} [AddCommMonoid G]
    (fuel : Nat) (pairs : List (Bool × Bool)) (base : G)
    (phi : G → G) (lambda : Nat) (hphi : phi base = lambda • base) :
    let value := jointValue fuel pairs
    runJoint fuel pairs base (phi base) 0 =
      (value.1 + value.2 * lambda) • base := by
  rw [runJoint_invariant, hphi]
  simp [add_nsmul, mul_nsmul, Nat.mul_comm]

/-- S2 adapter: the full 253-bit G2 schedule is ordinary scalar action. -/
theorem g2_scalar_action_adapter
    (bits : List Bool) (hlen : bits.length = 253)
    (base : Ipp.Extracted.ArkworksG2.G2AffinePoint) :
    runBits 253 bits base 0 = msbValue 253 bits • base :=
  runBits_253 bits hlen base

/-- S2 adapter: the exact G1 joint schedule computes its two scalar actions. -/
theorem g1_glv_joint_action_adapter
    (pairs : List (Bool × Bool)) (hlen : pairs.length = 255)
    (b1 b2 : Ipp.Extracted.ArkworksG1.G1AffinePoint) :
    let value := jointValue 255 pairs
    runJoint 256 ((false, false) :: pairs) b1 b2 0 =
      value.1 • b1 + value.2 • b2 :=
  runJoint_256_skip pairs hlen b1 b2

#print axioms runBits_invariant
#print axioms runBits_zero
#print axioms runBits_no_fuel
#print axioms runBits_empty
#print axioms runBits_suppress_leading_false
#print axioms runBits_253
#print axioms runJoint_invariant
#print axioms runJoint_skip_leading_false_false
#print axioms runJoint_256_skip
#print axioms GlvEigenPrecondition
#print axioms runJoint_eigenvalue
#print axioms g2_scalar_action_adapter
#print axioms g1_glv_joint_action_adapter

end Ipp.Extracted.ArkworksScalarMul
