/*
 * note_reshape2x1-statement-sufficiency.als — H2 statement-sufficiency model for
 * the note_reshape2x1 circuit's 7-field public statement.
 *
 * The question: the circuit proof establishes the
 * circuit constrains what it constrains; this model asks the layer-above
 * question — is the 7-field statement
 *   [anchor, output_commitment, balance_fq, null1, rk1, null2, rk2]
 * ENOUGH for the ledger to be safe against an adversary who can produce a valid
 * proof for ANY statement whose circuit relation is satisfiable? The adversary
 * is Alloy's unconstrained instances: it mints arbitrary Accepted actions, picks
 * any field values, and chooses which notes exist. We check that double-spend,
 * inflation, and spend-auth bypass stay unsatisfiable.
 *
 * This is design-level Alloy in the style of value-conservation.als /
 * nullifier-imt.als: field elements are abstract atoms, Poseidon/decaf
 * derivations are injective relations, and every abstraction is bound to a named
 * assumption-ledger row (crates/core/component/compliance/formal/assumption-ledger.md).
 *
 * Sources of truth (statement + circuit bindings): the deployed note_reshape2x1
 *   Statement.lean and generated coverage manifest, plus:
 *   tools/gnark/internal/circuits/note_reshape_circuit.go
 *     nullifiers, rk_compressed, output note commitment, net-balance commitment.
 * Sources of truth (chain acceptance, Rust):
 *   shielded-pool/src/component/action_handler/note_reshape.rs       anchor = context.anchor
 *   shielded-pool/src/component/action_handler/note_reshape.rs::execute
 *                                       check_nullifier_unspent loop, then nullify loop
 *   sct/src/component/tree.rs::check_claimed_anchor / check_nullifier_unspent / nullify
 *   sct/src/nullifier_tree.rs::insert_batch   (fail-closed on duplicate keys)
 *   app/src/action_handler/transaction/stateless.rs::valid_binding_signature
 *
 * Assumption-ledger rows this model rests on:
 *   ZK-ASSUME-IMT-LEAF-COMMIT       Poseidon commitment injective  -> nf/cm injective
 *   ZK-ASSUME-DECAF377-RVK          rvk output formula             -> rk well-defined
 *   ZK-ASSUME-DECAF377-NET-BALANCE  homomorphic balance commitment -> balance binds net
 *   ZK-ASSUME-AMOUNT-RANGE          amounts < 2^128, no field wrap -> Int arithmetic sound
 *   ZK-ASSUME-BINDING-SIG-DL        binding sig => zero net value  -> conservation (delegated
 *                                     to value-conservation.als BindingImpliesConservation)
 *   ZK-ASSUME-STATEMENT-DERIVATION-INJECTIVE  new row: statement nf/cm/rk are collision-free
 *   MODEL-ASSUME-BOUNDED-SCOPE      bounded model checking (scope 6 / 5-bit int)
 *
 * Assertions:
 *   NoDoubleSpend  — two distinct accepted actions never consume the same note,
 *                    and no single action consumes one note twice.
 *   NoInflation    — an accepted action's output value equals its input value.
 *   SpendAuthBound — equal rk statement fields force the same spending key ak,
 *                    so the sig checker's key is pinned by the statement.
 *
 * MODEL FIDELITY: the facts below are a HAND-WRITTEN
 * transcription of the circuit statement + Rust handler conjuncts — there is no
 * mechanical .als↔R1CS binding. Tracked as ledger row MODEL-ASSUME-ALLOY-FIDELITY
 * (assumption-ledger.md); mitigated by the file:symbol comments here, the
 * deployed Statement.lean/generated coverage manifest, and the
 * Rust↔Go seam test TestNoteReshape2x1StatementSeamMatchesShielddVectors.
 */

open util/integer

sig Fq {}

sig Note {
  cm:    one Fq,     // note commitment (Poseidon), public output_commitment field
  value: one Int,    // amount; ZK-ASSUME-AMOUNT-RANGE keeps it non-wrapping
  ak:    one Fq      // spend-auth key material driving rvk
}

sig TreeState {
  anchor: one Fq,
  leaves: set Note   // notes committed under this anchor
}

sig NoteReshapeStmt {         // the 7 hashed fields, production order (note_reshape_circuit.go:153)
  anchor:  one Fq,
  outCm:   one Fq,
  balance: one Fq,            // compressed net-balance commitment (blinded)
  null1:   one Fq,
  rk1:     one Fq,
  null2:   one Fq,
  rk2:     one Fq
}

sig Accepted { stmt: one NoteReshapeStmt }   // an action accepted on-chain

one sig Chain {
  history: set TreeState      // valid historical anchors (check_claimed_anchor)
}

// ---------------------------------------------------------------------------
// Circuit-proven derivations, abstracted to injective relations.
// Injectivity models Poseidon/decaf collision resistance and is charged to
// ZK-ASSUME-STATEMENT-DERIVATION-INJECTIVE (nf/cm collision-free, rk injective
// in ak), which cites ZK-ASSUME-IMT-LEAF-COMMIT + ZK-ASSUME-DECAF377-RVK.
// ---------------------------------------------------------------------------
one sig Deriv {
  nf: Note -> one Fq,   // nullifier of a spent note (nullifier segs)
  rk: Fq   -> one Fq    // randomized verification key of an ak (rvk segs 13/31)
}

fact DerivationInjective {
  all disj a, b: Note | Deriv.nf[a] != Deriv.nf[b]   // ZK-ASSUME-STATEMENT-DERIVATION-INJECTIVE
  all disj a, b: Note | a.cm != b.cm                 // note-commitment collision resistance
  // rvk injective in ak: distinct keys map to distinct rk (same rk <=> same key).
  // Restricted to keys actually used by notes to keep the solver tractable.
  all disj a, b: Note | a.ak != b.ak implies Deriv.rk[a.ak] != Deriv.rk[b.ak]
}

// ---------------------------------------------------------------------------
// F1 — CircuitSoundness. An accepted statement has a circuit witness: the proof
// establishes EXISTENCE of in-notes / out-note with these bound properties, not
// their identity. The witness is reified (spec §4) so assertions can name it.
// NOTE (Q1): F1 deliberately does NOT assert in1 != in2 — the circuit does not
// force distinct leaves (no AssertIsDifferent; validate_shape checks counts
// only, note_reshape/proof.rs::validate_shape). Distinctness is supplied by F2's
// fail-closed nullifier set, not by the circuit.
// ---------------------------------------------------------------------------
sig Witness {
  act:  one Accepted,
  in1:  one Note,
  in2:  one Note,
  out:  one Note,
  tree: one TreeState
}

fact F1_CircuitSoundness {
  all a: Accepted | one w: Witness | w.act = a          // each acceptance has one witness
  all w: Witness | let s = w.act.stmt {
    w.tree.anchor = s.anchor                            // anchor is the tree's (segs 11/29 Merkle)
    w.in1 in w.tree.leaves                              // Merkle membership of input 1
    w.in2 in w.tree.leaves                              // Merkle membership of input 2
    s.null1 = Deriv.nf[w.in1]                           // null1 binds input 1 (nullifier segs)
    s.null2 = Deriv.nf[w.in2]                           // null2 binds input 2
    s.rk1 = Deriv.rk[w.in1.ak]                          // rk1 binds input-1 spend-auth key
    s.rk2 = Deriv.rk[w.in2.ak]                          // rk2 binds input-2 spend-auth key
    s.outCm = w.out.cm                                  // outCm binds the output note
    // Q2: seg52 proves the HOMOMORPHIC net-balance commitment relation
    // (ZK-ASSUME-DECAF377-NET-BALANCE), NOT an in-circuit out.value = v1+v2 note
    // equation. The amounts enter only through the blinded balance commitment
    // (note_reshape_circuit.go:129-143). Value conservation (net = 0) is carried
    // by the tx-level binding signature, modeled in BindingSigConserves below.
  }
}

// ---------------------------------------------------------------------------
// F2 — ChainAcceptance. The Rust action handler's checks, each cited. Only
// conjuncts actually enforced in Rust are modeled (spec §3): a conjunct absent
// from the handler is left out so its assertion can fail if it matters.
// ---------------------------------------------------------------------------
fact F2_ChainAcceptance {
  all a: Accepted | {
    // anchor validity: note_reshape.rs uses context.anchor; stateful check
    // check_claimed_anchor (sct/tree.rs::check_claimed_anchor) requires it be a
    // historical root.
    some t: Chain.history | t.anchor = a.stmt.anchor
  }
  // Fail-closed nullifier set (sct/nullifier_tree.rs::insert_batch):
  //  * within a batch, duplicate keys error (:274-278);
  //  * against existing state, an already-present key errors (:287-295).
  // note_reshape.rs::execute checks all inputs unspent (loop 1), then nullifies
  // each input as a separate single-element batch (loop 2) against a write-through
  // state, rolling the whole action back atomically if any insert fails. Net
  // effect across ALL accepted actions AND within one action: no nullifier value
  // is ever recorded twice. This is the ONLY thing forcing null1 != null2 (Q1);
  // there is no circuit or handler distinctness check.
  all disj a, b: Accepted | {
    a.stmt.null1 != b.stmt.null1
    a.stmt.null1 != b.stmt.null2
    a.stmt.null2 != b.stmt.null1
    a.stmt.null2 != b.stmt.null2
  }
  all a: Accepted | a.stmt.null1 != a.stmt.null2   // second sequential insert would fail
}

// ---------------------------------------------------------------------------
// Conservation is an ASSUMPTION here, not an in-circuit note equation. The
// tx-level binding signature forces the summed value commitment into the
// zero-value subspace; value-conservation.als proves BindingImpliesConservation
// from ZK-ASSUME-BINDING-SIG-DL + ZK-ASSUME-INDEP-VALUE-GENERATORS. We compose
// that result into the NoteReshape context: an accepted action's net input-minus
// -output value is zero. (Delegated — this model does not re-prove the binding
// signature; it records the dependency so NoInflation's meaning is explicit.)
// ---------------------------------------------------------------------------
fact BindingSigConserves {
  all w: Witness |
    minus[plus[w.in1.value, w.in2.value], w.out.value] = 0
}

// ---------------------------------------------------------------------------
// Reified accessors over the witness.
// ---------------------------------------------------------------------------
// F1 gives exactly one Witness per Accepted, so `a.~act` is that witness;
// expressing the accessors as relational joins (not existential comprehensions)
// keeps the checks fast.
fun spentNotes[a: Accepted]: set Note { a.~act.in1 + a.~act.in2 }
fun akIn1[a: Accepted]: Fq { a.~act.in1.ak }

// ---------------------------------------------------------------------------
// Assertions — the adversary is every unconstrained instance.
// ---------------------------------------------------------------------------

// Two distinct accepted actions never consume the same note, and no single
// action consumes one note twice (spentNotes[a] would then be a singleton but
// its two nullifiers would collide, blocked by F2). Bridges statement nullifier
// fields to note identity via injective nf.
assert NoDoubleSpend {
  all disj a, b: Accepted | no (spentNotes[a] & spentNotes[b])
  all a: Accepted | a.~act.in1 != a.~act.in2
}

// An accepted action's output value equals its input value (no inflation).
// Carried by BindingSigConserves (ZK-ASSUME-BINDING-SIG-DL); this check confirms
// the delegated conservation composes with the statement bindings without
// contradiction.
assert NoInflation {
  all w: Witness | w.out.value = plus[w.in1.value, w.in2.value]
}

// Equal rk statement fields pin the same spending key the signature checker
// sees: rk is injective in ak (ZK-ASSUME-DECAF377-RVK), so two accepted actions
// sharing rk1 must share the underlying input-1 ak.
assert SpendAuthBound {
  all disj a, b: Accepted |
    a.stmt.rk1 = b.stmt.rk1 implies akIn1[a] = akIn1[b]
}

check NoDoubleSpend for 5 but 3 Accepted, 6 Note, 2 TreeState, 12 Fq, 4 int
check NoInflation   for 5 but 3 Accepted, 6 Note, 2 TreeState, 12 Fq, 4 int
check SpendAuthBound for 5 but 3 Accepted, 6 Note, 2 TreeState, 12 Fq, 4 int

// ---------------------------------------------------------------------------
// Non-vacuity (hard rule, E[r] incident): confirm the modeled world is
// satisfiable BEFORE trusting any check. The gate requires `run show` SAT.
// ---------------------------------------------------------------------------
pred show {
  some Accepted
  some disj a, b: Accepted | a != b     // at least two distinct actions exist
  some Chain.history
}

run show for 5 but 3 Accepted, 6 Note, 2 TreeState, 12 Fq, 4 int

// Extra positive runs (adversary freedom is realized): an action whose two
// inputs are distinct notes, and a two-action world — both must be satisfiable.
run { some w: Witness | w.in1 != w.in2 } for 5 but 3 Accepted, 6 Note, 2 TreeState, 12 Fq, 4 int
run { #Accepted = 2 } for 5 but 3 Accepted, 6 Note, 2 TreeState, 12 Fq, 4 int
