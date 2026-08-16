import Ipp.AggregateSerialization

/-!
Exact byte inventory for the SnarkPack torus-v2 proof wire.

The traversal, G1/G2 values, and vector frames are unchanged. Each of the
`4 + 8μ` target values changes from twelve base-field limbs (576 bytes) to one
canonical Fq6 coordinate (six base-field limbs, 288 bytes).
-/

namespace Ipp.TorusAggregateSerialization

open Ipp.AggregateSerialization

/-- Byte length obtained by replacing only GT leaves in the v1 traversal. -/
def serializedLength (p : AggregateProof) : Nat :=
  288 * p.gtElements.length +
    48 * p.g1Elements.length +
    96 * p.g2Elements.length +
    8 * (1 + 4 * p.rounds.length)

theorem serializedLength_exact (p : AggregateProof) :
    serializedLength p = 1688 + 2432 * p.rounds.length := by
  have inventory := p.component_inventory
  unfold serializedLength
  rw [inventory.1, inventory.2.1, inventory.2.2]
  ring

/-- The exact saving is 288 bytes for every target-group value. -/
theorem exact_saving (p : AggregateProof) :
    (serializeCompressed p).length - serializedLength p =
      288 * p.gtElements.length := by
  rw [serializeCompressed_length, serializedLength_exact,
    p.component_inventory.1]
  have h : 2840 + 4736 * p.rounds.length =
      (1688 + 2432 * p.rounds.length) +
        288 * (4 + 8 * p.rounds.length) := by
    ring
  rw [h]
  exact Nat.add_sub_cancel_left _ _

def wrappedLength (rounds : Nat) : Nat :=
  73 + (1688 + 2432 * rounds)

theorem wrappedLength_exact (rounds : Nat) :
    wrappedLength rounds = 1761 + 2432 * rounds := by
  unfold wrappedLength
  ring

/-- A 48-item aggregate has six rounds and occupies exactly 16,353 bytes. -/
theorem wrappedLength_count48 : wrappedLength 6 = 16353 := by
  decide

/-- Torus-v2 is strictly smaller for every well-shaped aggregate. -/
theorem strictly_smaller (p : AggregateProof) :
    serializedLength p < (serializeCompressed p).length := by
  rw [← Nat.sub_pos_iff_lt, exact_saving, p.component_inventory.1]
  positivity

#print axioms serializedLength_exact
#print axioms exact_saving
#print axioms wrappedLength_count48
#print axioms strictly_smaller

end Ipp.TorusAggregateSerialization
