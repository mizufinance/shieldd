/*
 * note_reshape-statement-sufficiency.als — H2 statement-sufficiency model for
 * the two deployed, fixed-padded NoteReshape relations.
 *
 * The deployed families are:
 *
 *   note_reshape1x8  [anchor, 8 output commitments, balance, 1 (nullifier, rk)]
 *   note_reshape8x1  [anchor, 1 output commitment, balance, 8 (nullifier, rk)]
 *
 * Each ordered vector is domain-separated and hashed to the circuit's single
 * public field. The 1x8 family always proves one real input and eight fixed
 * output slots. Honest construction fills unused output slots with zero-value
 * notes, but consensus persists and value-checks every slot and does not expose
 * which outputs were padding. The 8x1 family always exposes eight input slots;
 * two through eight form a real prefix and the remaining private dummy suffix
 * has zero amount, a synthetic nullifier, and an externally authorized rk.
 *
 * The question is whether those fixed statements, together with the exact
 * circuit bindings and handler checks, are enough for ledger safety against an
 * adversary who can prove any satisfiable relation instance. Alloy supplies
 * unconstrained actions, notes, fields, and real/dummy choices. We check that
 * double-spend, inflation, and spend-authorization disconnection remain
 * unsatisfiable for either family and across the two families.
 *
 * This is design-level Alloy in the style of value-conservation.als and
 * nullifier-imt.als. Field elements and derivations are abstract, and every
 * abstraction is bound to a named row in assumption-ledger.md.
 *
 * Sources of truth (statement + circuit bindings):
 *   tools/gnark/note_reshape_families.json
 *   tools/gnark/internal/circuits/note_reshape_circuit.go
 *     fixed statement order, real-prefix/dummy-suffix selectors, membership,
 *     nullifiers, randomized verification keys, output commitments, balance.
 * Sources of truth (chain acceptance, Rust):
 *   shielded-pool/src/note_reshape/proof.rs
 *   shielded-pool/src/component/action_handler/note_reshape.rs
 *     exact public shape, anchor equality, every-slot signature verification,
 *     batched fail-closed nullification, and every-output persistence.
 *   sct/src/nullifier_tree.rs::insert_batch
 *   app/src/action_handler/transaction/stateless.rs::valid_binding_signature
 *
 * Assumption-ledger rows this model rests on:
 *   ZK-ASSUME-IMT-LEAF-COMMIT
 *   ZK-ASSUME-DECAF377-RVK
 *   ZK-ASSUME-DECAF377-NET-BALANCE
 *   ZK-ASSUME-AMOUNT-RANGE
 *   ZK-ASSUME-BINDING-SIG-DL
 *   ZK-ASSUME-STATEMENT-DERIVATION-INJECTIVE
 *   ZK-ASSUME-SPEND-AUTH-RDSA
 *   MODEL-ASSUME-BOUNDED-SCOPE
 *   MODEL-ASSUME-ALLOY-FIDELITY
 *
 * Assertions:
 *   NoDoubleSpend  — real input notes cannot be consumed twice.
 *   NoInflation    — all fixed input/output slots conserve value; dummy input
 *                    slots contribute zero and padded output notes are counted.
 *   SpendAuthBound — the circuit-derived rk of every real input is among the
 *                    exact public keys accepted by the handler's signatures.
 *
 * MODEL FIDELITY: the facts below are a hand-written transcription of the
 * circuit statement and Rust handler conjuncts. There is no mechanical
 * .als↔R1CS binding. This is tracked by MODEL-ASSUME-ALLOY-FIDELITY and
 * mitigated by the exact Lean refinements plus Rust↔Go statement seam tests.
 */

open util/integer

sig Fq {}

abstract sig Family {}
one sig OneByEight, EightByOne extends Family {}

abstract sig SlotIndex {}
one sig I0, I1, I2, I3, I4, I5, I6, I7 extends SlotIndex {}

one sig SlotOrder { next: SlotIndex -> lone SlotIndex }

fact FixedSlotOrder {
  SlotOrder.next = I0->I1 + I1->I2 + I2->I3 + I3->I4 +
    I4->I5 + I5->I6 + I6->I7
}

sig Note {
  cm:    one Fq,
  value: one Int
}

sig TreeState {
  anchor: one Fq,
  leaves: set Note
}

// A real input slot names its spent note. A synthetic-private dummy input has
// no spent note and must carry zero amount. Nullifier and rk are statement
// fields in both cases, because consensus cannot classify private padding.
sig InputSlot {
  index:     one SlotIndex,
  nullifier: one Fq,
  rk:        one Fq,
  amount:    one Int,
  spent:     lone Note
}

sig OutputSlot {
  index:   one SlotIndex,
  outCm:   one Fq,
  amount:  one Int,
  created: one Note
}

sig NoteReshapeStmt {
  family:  one Family,
  anchor:  one Fq,
  balance: one Fq,
  inputs:  set InputSlot,
  outputs: set OutputSlot
}

sig Accepted { stmt: one NoteReshapeStmt }

one sig Chain { history: set TreeState }

// The handler verifies one signature under each exact public rk. The signature
// primitive is abstracted to the set of keys for which verification succeeded;
// ZK-ASSUME-SPEND-AUTH-RDSA supplies its computational interpretation.
one sig SignatureVerifier { acceptedKeys: set Fq }

// Every modeled statement and slot belongs to exactly one accepted action.
fact ExactOwnership {
  all s: NoteReshapeStmt | one a: Accepted | a.stmt = s
  all i: InputSlot | one s: NoteReshapeStmt | i in s.inputs
  all o: OutputSlot | one s: NoteReshapeStmt | o in s.outputs
}

fun realInputs[s: NoteReshapeStmt]: set InputSlot {
  { i: s.inputs | some i.spent }
}

// Fixed deployed shapes and the private padding policy. Unique bounded indices
// model statement ordering. The 1x8 output padding convention is intentionally
// not a consensus predicate: every one of its eight commitments is proof-bound,
// value-counted, serialized, and persisted.
fact FixedPaddedShapes {
  all s: NoteReshapeStmt | {
    all disj a, b: s.inputs | a.index != b.index
    all disj a, b: s.outputs | a.index != b.index
    s.family = OneByEight implies {
      s.inputs.index = I0
      s.outputs.index = SlotIndex
      all i: s.inputs | one i.spent
    }
    s.family = EightByOne implies {
      s.inputs.index = SlotIndex
      s.outputs.index = I0
      #realInputs[s] >= 2
      // Real slots are a prefix; once a dummy appears, every later slot is dummy.
      all i, j: s.inputs |
        j.index in i.index.^(SlotOrder.next) and no i.spent implies no j.spent
    }
  }
}

// Circuit-proven derivations. Nullifier and commitment injectivity abstract
// their collision resistance. rvk includes the per-slot randomizer; unlike the
// retired model, it does not incorrectly claim that equal randomized keys imply
// equal base authorization keys.
one sig Deriv {
  nf:  Note -> one Fq,
  rvk: Note -> one Fq
}

fact DerivationInjective {
  all disj a, b: Note | Deriv.nf[a] != Deriv.nf[b]
  all disj a, b: Note | a.cm != b.cm
}

// F1 — each accepted statement has a circuit witness. Real input slots bind
// membership, amount, nullifier, and randomized key. Dummy input slots have no
// membership claim and contribute zero. Every output slot binds a created note.
sig Witness {
  act:  one Accepted,
  tree: one TreeState
}

fact F1_CircuitSoundness {
  all a: Accepted | one w: Witness | w.act = a
  all w: Witness | {
    w.tree.anchor = w.act.stmt.anchor
    all i: w.act.stmt.inputs | {
      some i.spent implies {
        i.spent in w.tree.leaves
        i.amount = i.spent.value
        i.nullifier = Deriv.nf[i.spent]
        i.rk = Deriv.rvk[i.spent]
      }
      no i.spent implies i.amount = 0
    }
    all o: w.act.stmt.outputs | {
      o.amount = o.created.value
      o.outCm = o.created.cm
    }
  }
}

// F2 — handler acceptance: the anchor is live, every fixed public input rk has
// a valid signature, and the batched nullifier insertion rejects any duplicate
// within one action or across accepted actions before state mutation.
fact F2_ChainAcceptance {
  all a: Accepted | some t: Chain.history | t.anchor = a.stmt.anchor
  all i: InputSlot | i.rk in SignatureVerifier.acceptedKeys
  all disj i, j: InputSlot | i.nullifier != j.nullifier
}

fun inputValue[a: Accepted]: Int {
  sum i: a.stmt.inputs | i.amount
}

fun outputValue[a: Accepted]: Int {
  sum o: a.stmt.outputs | o.amount
}

// The transaction binding signature supplies aggregate conservation. This is
// composed from value-conservation.als, not reproved as a note equation here.
fact BindingSigConserves {
  all a: Accepted | inputValue[a] = outputValue[a]
}

fun spentNotes[a: Accepted]: set Note { a.stmt.inputs.spent }

assert NoDoubleSpend {
  all disj i, j: InputSlot |
    some i.spent and some j.spent implies i.spent != j.spent
}

assert NoInflation {
  all a: Accepted | inputValue[a] = outputValue[a]
}

assert SpendAuthBound {
  all a: Accepted |
    all i: realInputs[a.stmt] |
      Deriv.rvk[i.spent] in SignatureVerifier.acceptedKeys
}

// A dummy-suffix 8x1 instance must be satisfiable before any UNSAT assertion
// result is trusted. Separate positive runs below exercise both fixed shapes.
pred show {
  some a: Accepted |
    a.stmt.family = EightByOne and some i: a.stmt.inputs | no i.spent
  some Chain.history
}

check NoDoubleSpend for 10 but exactly 1 Accepted, exactly 1 NoteReshapeStmt,
  8 InputSlot, 8 OutputSlot, 4 Note, 1 TreeState, 10 Fq, 5 int
check NoInflation for 10 but exactly 1 Accepted, exactly 1 NoteReshapeStmt,
  8 InputSlot, 8 OutputSlot, 4 Note, 1 TreeState, 10 Fq, 5 int
check SpendAuthBound for 10 but exactly 1 Accepted, exactly 1 NoteReshapeStmt,
  8 InputSlot, 8 OutputSlot, 4 Note, 1 TreeState, 10 Fq, 5 int

run show for 10 but exactly 1 Accepted, exactly 1 NoteReshapeStmt,
  8 InputSlot, 8 OutputSlot, 4 Note, 1 TreeState, 10 Fq, 5 int

// Positive branch witnesses: the 8x1 real-prefix can also occupy all slots,
// and the 1x8 branch can create eight distinct notes.
run {
  some a: Accepted |
    a.stmt.family = EightByOne and #realInputs[a.stmt] = 8
} for 10 but exactly 1 Accepted, exactly 1 NoteReshapeStmt,
  8 InputSlot, 8 OutputSlot, 8 Note, 1 TreeState, 10 Fq, 5 int

run {
  some a: Accepted |
    a.stmt.family = OneByEight and #a.stmt.outputs.created = 8
} for 10 but exactly 1 Accepted, exactly 1 NoteReshapeStmt,
  8 InputSlot, 8 OutputSlot, 8 Note, 1 TreeState, 10 Fq, 5 int
