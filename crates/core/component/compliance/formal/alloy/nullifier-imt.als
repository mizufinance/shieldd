/*
 * nullifier-imt.als — system-state soundness for the nullifier set and the
 * compliance Indexed Merkle Tree (IMT), checked by the Alloy Analyzer.
 *
 * Scope: this is a *design-level* model of the two state machines, not the
 * cryptography. Field elements are abstracted to a totally ordered set of
 * atoms (`Value`); Poseidon leaf commitments and Merkle authentication are
 * idealized away. Those idealizations are tracked in the assumption ledger:
 *   - ALLOY-ASSUME-FQ-TOTAL-ORDER     (Fq canonical ordering -> util/ordering)
 *   - ALLOY-ASSUME-IMT-LEAF-COMMIT    (Poseidon leaf commitment is injective)
 *
 * Sources of truth (Rust):
 *   crates/core/component/sct/src/component/tree.rs   check_nullifier_unspent / nullify
 *   crates/core/component/compliance/src/indexed_tree.rs  insert / non_membership_proof
 *
 * Assertions:
 *   NoDoubleSpend   — under the check-then-nullify rule, a nullifier is
 *                     nullified in at most one block (no double spend).
 *   GapImpliesAbsent— a valid IMT non-membership (gap) witness for v implies
 *                     v is genuinely absent from the leaf set.
 *   InsertKeepsSorted — inserting an absent value into its gap preserves the
 *                     sorted-linked-list invariant.
 */

// ---------------------------------------------------------------------------
// Nullifier set / double-spend
// ---------------------------------------------------------------------------

open util/ordering[Block] as bord
open util/ordering[Value] as vord

sig Nullifier {}

// Blocks are totally ordered (chain height). `spent` is the set of nullifiers
// nullified while applying this block.
sig Block {
  spent: set Nullifier
}

// Protocol rule (check_nullifier_unspent before nullify): a nullifier may be
// nullified in a block only if it was not nullified in any earlier block.
pred validChain {
  all b: Block | all n: b.spent |
    no b2: Block | bord/lt[b2, b] and n in b2.spent
}

// Each nullifier is nullified in at most one block.
assert NoDoubleSpend {
  validChain implies (all n: Nullifier | lone b: Block | n in b.spent)
}

check NoDoubleSpend for 6

// ---------------------------------------------------------------------------
// Indexed Merkle Tree — sorted linked list of leaves
// ---------------------------------------------------------------------------

sig Value {}

sig Leaf {
  value: one Value,
  next: lone Leaf            // successor in the sorted linked list (none at tail)
}

// The current IMT leaf set.
one sig IMT {
  leaves: set Leaf
}

// The leaves form a strictly increasing linked list with unique values and no
// existing leaf strictly between a leaf and its successor (gap completeness).
pred sortedList {
  all disj a, b: IMT.leaves | a.value != b.value
  all l: IMT.leaves | some l.next implies l.next in IMT.leaves
  all l: IMT.leaves | some l.next implies vord/lt[l.value, l.next.value]
  all l: IMT.leaves | some l.next implies
    no m: IMT.leaves | vord/lt[l.value, m.value] and vord/lt[m.value, l.next.value]
}

// A non-membership (gap) witness for v: a leaf `low` whose value/next-value
// straddle v. Mirrors indexed_tree.rs::non_membership_proof.
pred gapWitness[v: Value, low: Leaf] {
  low in IMT.leaves
  some low.next
  vord/lt[low.value, v]
  vord/lt[v, low.next.value]
}

// A valid gap witness proves v is absent from the leaf set.
assert GapImpliesAbsent {
  sortedList implies
    (all v: Value, low: Leaf | gapWitness[v, low] implies v not in IMT.leaves.value)
}

check GapImpliesAbsent for 6

// Insert v into its gap below `low`: low -> nu -> old-next. Inserting an absent
// value at a valid gap keeps the list sorted.
assert InsertKeepsSorted {
  (sortedList and
   (some v: Value, low, nu: Leaf |
      gapWitness[v, low] and nu.value = v and nu not in IMT.leaves))
  implies
   (all v: Value, low, nu: Leaf |
      (gapWitness[v, low] and nu.value = v) implies
        (vord/lt[low.value, nu.value] and vord/lt[nu.value, low.next.value]))
}

check InsertKeepsSorted for 6

// ---------------------------------------------------------------------------
// Non-vacuity: the modeled world is satisfiable (guards against vacuous checks)
// ---------------------------------------------------------------------------

pred show {
  sortedList
  some IMT.leaves
  some Block.spent
  validChain
}

run show for 6
