import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Extracted.QuadPath2
import ShielddGnarkFormal.Deployed.PrimeOrder

set_option maxRecDepth 100000
set_option maxHeartbeats 1000000

/-! Choice-free projection for normalized state-commitment-path providers.

The reviewed deployed projection remains stable for legacy consumers. This
module gives normalized providers the same recovery fold with every ring
operation elaborated through the constructive `ZMod` instances. -/

namespace Shieldd.GnarkFormal.Deployed.StateCommitmentPathChoiceFree

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod
open Shieldd.GnarkFormal.Extracted.QuadPath2 (F Order)

instance : Fact (Nat.Prime Order) := ⟨decaf377ScalarFieldPrime⟩

def tctLeafDomainLit : F :=
  (545001158149490383238005163525397553024965043366546261617421270984613353336 : F)

def children (cur s0 s1 s2 b0 b1 : F) : F × F × F × F :=
  let i0 := (1 - b0) * (1 - b1)
  let i1 := b0 * (1 - b1)
  let i2 := (1 - b0) * b1
  let i3 := b0 * b1
  let c0 := s0 - i0 * (s0 - cur)
  let c1' := s1 - i0 * (s1 - s0)
  let c1 := c1' - i1 * (c1' - cur)
  let c2' := s1 - b1 * (s1 - s2)
  let c2 := c2' - i2 * (c2' - cur)
  let c3 := s2 - i3 * (s2 - cur)
  (c0, c1, c2, c3)

def recoverStep (H4 : F → F → F → F → F → F)
    (domain cur s0 s1 s2 b0 b1 : F) : F :=
  let c := children cur s0 s1 s2 b0 b1
  H4 domain c.1 c.2.1 c.2.2.1 c.2.2.2

def recoverPrefix (H4 : F → F → F → F → F → F) (dom : Nat → F) (leaf : F)
    (s0 s1 s2 b0 b1 : Nat → F) : Nat → F
  | 0 => recoverStep H4 (dom 0) leaf (s0 0) (s1 0) (s2 0) (b0 0) (b1 0)
  | k + 1 => recoverStep H4 (dom (k + 1))
      (recoverPrefix H4 dom leaf s0 s1 s2 b0 b1 k)
      (s0 (k + 1)) (s1 (k + 1)) (s2 (k + 1))
      (b0 (k + 1)) (b1 (k + 1))

theorem recoverPrefix_zero (H4 : F → F → F → F → F → F)
    (dom : Nat → F) (leaf : F)
    (s0 s1 s2 b0 b1 : Nat → F) :
    recoverPrefix H4 dom leaf s0 s1 s2 b0 b1 0 =
      recoverStep H4 (dom 0) leaf (s0 0) (s1 0) (s2 0) (b0 0) (b1 0) := by
  rfl

theorem recoverPrefix_succ (H4 : F → F → F → F → F → F)
    (dom : Nat → F) (leaf : F)
    (s0 s1 s2 b0 b1 : Nat → F) (k : Nat) :
    recoverPrefix H4 dom leaf s0 s1 s2 b0 b1 (k + 1) =
      recoverStep H4 (dom (k + 1))
        (recoverPrefix H4 dom leaf s0 s1 s2 b0 b1 k)
        (s0 (k + 1)) (s1 (k + 1)) (s2 (k + 1))
        (b0 (k + 1)) (b1 (k + 1)) := by
  rfl

def recover24H (H4 : F → F → F → F → F → F) (dom : Nat → F) (leaf : F)
    (s0 s1 s2 b0 b1 : Nat → F) : F :=
  recoverPrefix H4 dom leaf s0 s1 s2 b0 b1 23

theorem recover24H_eq_prefix23 (H4 : F → F → F → F → F → F)
    (dom : Nat → F) (leaf : F)
    (s0 s1 s2 b0 b1 : Nat → F) :
    recover24H H4 dom leaf s0 s1 s2 b0 b1 =
      recoverPrefix H4 dom leaf s0 s1 s2 b0 b1 23 := by
  rfl

theorem recoverStep_eq (H4 : F → F → F → F → F → F)
    (dom cur s0 s1 s2 b0 b1 i0 i1 i2 i3 t0 t1 t2 t3 t4 t5 : F)
    (hi0 : (1 - b0) * (1 - b1) = i0) (hi1 : b0 * (1 - b1) = i1)
    (hi2 : b1 * (1 - b0) = i2) (hi3 : b0 * b1 = i3)
    (h0 : i0 * (cur - s0) = t0) (h1 : i0 * (s0 - s1) = t1)
    (h2 : i1 * (cur - s1 - t1) = t2) (h3 : b1 * (s2 - s1) = t3)
    (h4 : i2 * (cur - s1 - t3) = t4) (h5 : i3 * (cur - s2) = t5) :
    H4 dom (s0 + t0) (s1 + t1 + t2) (s1 + t3 + t4) (s2 + t5)
      = recoverStep H4 dom cur s0 s1 s2 b0 b1 := by
  unfold recoverStep children
  rw [← h2, ← h4, ← h0, ← h1, ← h3, ← h5, ← hi0, ← hi1, ← hi2, ← hi3]
  ring

end Shieldd.GnarkFormal.Deployed.StateCommitmentPathChoiceFree
