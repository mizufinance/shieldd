/*
 * transfer-statement-sufficiency.als — H2 statement-sufficiency model for the
 * Transfer V16 circuit's 41-field public statement.
 *
 * This is the transfer twin of note_reshape-statement-sufficiency.als. The
 * value surface (groups A–D: anchor, output commitments, balance, nullifiers+rk)
 * mirrors NoteReshape structurally, but this hand-written model is not an exact
 * refinement proof for Transfer's R1CS. Transfer adds:
 *   - two outputs, one required input, and one optional dummy-capable input,
 *   - a regulated/compliance surface gated on a private witness
 *     `is_regulated`, which the asset-registry indexed-tree proof binds.
 *
 * The question: is the 41-field statement
 * ENOUGH for the ledger to be safe against an adversary who can produce a valid
 * proof for ANY statement whose circuit relation is satisfiable? Same adversary
 * model as NoteReshape: Alloy's unconstrained instances mint arbitrary Accepted
 * actions and pick any field values.
 *
 * KEY HONEST SCOPING: the
 * ledger-SAFETY assertions (NoDoubleSpend, NoInflation, SpendAuthBound,
 * RegulatedEnforced, DummyNonSpending) do NOT establish the soundness of the
 * compliance encryption, shared-secret, acknowledgement, metadata, or
 * threshold gadgets. Those gadgets govern *regulator utility* — whether the
 * emitted ciphertexts decrypt consistently under the selected keys — which is
 * a separate property tier. Transfer V16 has an exact Lean refinement for that
 * compiled relation. This Alloy model remains a hand-written bounded analysis
 * of ledger-safety composition and is not the source of that certification.
 *
 * Sources of truth (statement + circuit bindings):
 *   tools/gnark/internal/circuits/transfer_circuit.go
 *   tools/gnark/internal/abi/statement_fields.go
 *   tools/gnark/internal/compliance/indexed_tree.go::VerifyAssetRegistryIMT
 *   tools/gnark/internal/compliance/canonical_fq_bits.go::AssetRegistryGap
 * Sources of truth (chain acceptance, Rust): shielded-pool transfer action
 *   handler + sct/nullifier_tree.rs::insert_batch (fail-closed), same as
 *   note_reshape-statement-sufficiency.als F2.
 *
 * Assumption-ledger rows this model rests on:
 *   ZK-ASSUME-IMT-LEAF-COMMIT       Poseidon leaf commit injective (nf/cm + asset registry)
 *   ZK-ASSUME-DECAF377-RVK          rvk output formula -> rk well-defined
 *   ZK-ASSUME-DECAF377-NET-BALANCE  homomorphic balance commitment binds net
 *   ZK-ASSUME-AMOUNT-RANGE          amounts < 2^128, no field wrap
 *   ZK-ASSUME-BINDING-SIG-DL        binding sig => zero net value (value-conservation.als)
 *   ZK-ASSUME-STATEMENT-DERIVATION-INJECTIVE  nf/cm/rk collision-free
 *   ZK-ASSUME-ASSET-REGISTRY-GAP    new row: sorted-unique indexed tree => the
 *                                     exact-match/gap select pins is_regulated to
 *                                     actual registry membership
 *   MODEL-ASSUME-BOUNDED-SCOPE      bounded model checking (scope 6 / 5-bit int)
 *   MODEL-ASSUME-NOTE-RESHAPE-COMPLIANCE-EXEMPT  discharged protocol-policy row:
 *                                     NoteReshape carries no compliance surface
 *                                     because it is a same-owner reshape and cannot
 *                                     create a cross-owner output (owner decision
 *                                     2026-07-08; not an Alloy-decidable property).
 *
 * Assertions (ledger-safety tier):
 *   NoDoubleSpend    — no note consumed twice; real inputs distinct.
 *   NoInflation      — summed output value equals summed real-input value.
 *   SpendAuthBound   — equal rk statement fields pin the same spend-auth key.
 *   RegulatedEnforced— a regulated asset (in the registry) cannot be spent
 *                      without is_regulated set, so its compliance-tree
 *                      membership binds ComplianceAnchor (§5.1 gap closed).
 *   DummyNonSpending — a dummy input consumes no real note and, under the
 *                      explicit cross-domain Poseidon collision-resistance
 *                      idealization, its synthetic nullifier does not collide
 *                      with a real one (modeled below).
 *
 * MODEL FIDELITY: the facts below are a HAND-WRITTEN
 * transcription of the circuit statement + Rust handler conjuncts — there is no
 * mechanical .als↔R1CS binding. Tracked as ledger row MODEL-ASSUME-ALLOY-FIDELITY
 * (assumption-ledger.md); mitigated by the file:symbol comments here, the
 * exact V16 Lean theorem/coverage roots and the Rust↔Go seam test
 * TestRustGoStatementFieldDifferential. It is useful bounded analysis, not
 * deployed-circuit certification.
 */

open util/integer

sig Fq {}

sig Note {
  cm:      one Fq,     // note commitment (Poseidon), statement group B
  value:   one Int,    // amount; ZK-ASSUME-AMOUNT-RANGE keeps it non-wrapping
  ak:      one Fq,     // spend-auth key material driving rvk
  assetID: one Fq      // asset identifier (drives registry membership)
}

sig RequiredInput {
  note: one Note
}

// Only the second slot is optional. A dummy optional slot spends no real note,
// gets a synthetic nullifier, and is muxed out of the value sum.
sig OptionalInput {
  note:    one Note,   // the real or synthetic note this slot references
  isDummy: one Int     // 1 => dummy slot
}

sig TreeState {
  anchor: one Fq,
  leaves: set Note
}

// The asset registry is an indexed Merkle tree; we abstract it to the SET of
// asset IDs it registers as regulated, keyed by its root (AssetAnchor). Sorted-
// unique-key + gap-proof soundness (VerifyAssetRegistryIMT + AssetRegistryGap)
// is charged to ZK-ASSUME-ASSET-REGISTRY-GAP.
sig Registry {
  root:      one Fq,   // AssetAnchor (statement group E)
  regulated: set Fq    // asset IDs present as exact-match leaves
}

// The 41 V16 fields, grouped per buildTransferStatementFields. Only the fields
// the ledger-safety assertions read are reified; detection/tier ciphertexts and
// factored metadata are collapsed into `complianceAnchor` + `assetAnchor` +
// `isRegulated`, since their exact gadget soundness is proved in Lean and is
// out of scope for these Alloy assertions (see header).
sig TransferStmt {
  anchor:           one Fq,     // A
  outCm1:           one Fq,     // B (nOut = 2)
  outCm2:           one Fq,     // B
  balance:          one Fq,     // C  blinded net-balance commitment
  null1:            one Fq,     // D
  rk1:              one Fq,     // D
  null2:            one Fq,     // D
  rk2:              one Fq,     // D
  assetAnchor:      one Fq,     // E  asset-registry root
  complianceAnchor: one Fq      // E  sender/recipient compliance-tree root
}

sig Accepted {
  stmt:        one TransferStmt,
  isRegulated: one Int          // private witness bound by the registry proof
}

one sig Chain {
  history:  set TreeState,
  registries: set Registry      // valid asset-registry roots
}

// ---------------------------------------------------------------------------
// Circuit-proven derivations, abstracted to injective relations
// (ZK-ASSUME-STATEMENT-DERIVATION-INJECTIVE).
// ---------------------------------------------------------------------------
one sig Deriv {
  nf:  Note -> one Fq,  // REAL nullifier of a note (gadget.nullifier, :430)
  snf: Note -> one Fq,  // SYNTHETIC dummy nullifier (syntheticDummyNullifier, :443)
  rk:  Fq   -> one Fq    // randomized verification key of an ak
}

fact DerivationInjective {
  all disj a, b: Note | Deriv.nf[a] != Deriv.nf[b]
  all disj a, b: Note | a.cm != b.cm
  all disj a, b: Note | a.ak != b.ak implies Deriv.rk[a.ak] != Deriv.rk[b.ak]
  // This fact IDEALIZES cross-domain collision resistance; domain separation
  // alone does not make two finite hash ranges mathematically disjoint. The
  // deployed syntheticDummyNullifier gadget uses a distinct domain, so finding
  // an equality here is assumed computationally infeasible. Charged to
  // ZK-ASSUME-SYNTHETIC-NULLIFIER-CROSS-DOMAIN-CR.
  all a, b: Note | Deriv.nf[a] != Deriv.snf[b]
}

// ---------------------------------------------------------------------------
// F1 — CircuitSoundness. Reify the witness (2-in-2-out) so assertions can name
// it. Input 1 is required. Input 2 may be dummy; a dummy binds a synthetic
// nullifier and is excluded from the value sum.
// ---------------------------------------------------------------------------
sig Witness {
  act:  one Accepted,
  in1:  one RequiredInput,
  in2:  one OptionalInput,
  out1: one Note,
  out2: one Note,
  tree: one TreeState,
  reg:  one Registry     // the registry the AssetAnchor names
}

pred isReal[i: OptionalInput] { i.isDummy = 0 }

fact F1_CircuitSoundness {
  all a: Accepted | one w: Witness | w.act = a
  all w: Witness | let s = w.act.stmt {
    w.tree.anchor = s.anchor
    w.reg.root    = s.assetAnchor
    w.reg in Chain.registries

    // The optional-slot flag and isRegulated are boolean in-circuit.
    w.in2.isDummy = 0 or w.in2.isDummy = 1
    w.act.isRegulated = 0 or w.act.isRegulated = 1

    // The required input always binds membership, nullifier, and rk.
    w.in1.note in w.tree.leaves
    s.null1 = Deriv.nf[w.in1.note]
    s.rk1   = Deriv.rk[w.in1.note.ak]

    // The optional real input has the same bindings.
    isReal[w.in2] implies {
      w.in2.note in w.tree.leaves
      s.null2 = Deriv.nf[w.in2.note]
      s.rk2   = Deriv.rk[w.in2.note.ak]
    }
    // A dummy optional input emits a domain-separated synthetic nullifier.
    not isReal[w.in2] implies s.null2 = Deriv.snf[w.in2.note]

    // Output commitments bind the two output notes (gadget.note_commitment).
    s.outCm1 = w.out1.cm
    s.outCm2 = w.out2.cm

    // --- Asset registry / is_regulated binding (the §5.1 gap) --------------
    // VerifyAssetRegistryIMT asserts AssetRegistryGap == 1, i.e.
    //   Select(isRegulated, isExactMatch, isInGap) == 1.
    // With sorted-unique keys (ZK-ASSUME-ASSET-REGISTRY-GAP): isRegulated=1
    // forces exact membership; isRegulated=0 forces a valid non-membership gap
    // proof. Either way is_regulated is PINNED to actual registry membership.
    (w.act.isRegulated = 1) iff (w.in1.note.assetID in w.reg.regulated)
  }
}

// ---------------------------------------------------------------------------
// F1c — ComplianceEnforced. When is_regulated, the sender compliance root is
// asserted equal to ComplianceAnchor (assert.eq_if cond=is_regulated,
// transfer_circuit.go:317-318). We model the postcondition: a regulated action
// carries a compliance binding (some membership witness the regulator relies on).
// Abstracted; charged to ZK-ASSUME-IMT-LEAF-COMMIT (compliance-tree membership).
// ---------------------------------------------------------------------------
sig ComplianceBinding { subject: one Accepted }

fact F1c_ComplianceEnforced {
  all a: Accepted | (a.isRegulated = 1) implies (one c: ComplianceBinding | c.subject = a)
  all c: ComplianceBinding | c.subject.isRegulated = 1
}

// ---------------------------------------------------------------------------
// F2 — ChainAcceptance. Anchor validity + a fail-closed nullifier set over the
// required and optional statement slots. A dummy optional slot inserts a
// synthetic nullifier; its separation from real nullifiers is the explicit
// computational idealization in DerivationInjective.
// ---------------------------------------------------------------------------
fact F2_ChainAcceptance {
  all a: Accepted | some t: Chain.history | t.anchor = a.stmt.anchor

  // No nullifier value recorded twice, across and within actions.
  all disj a, b: Accepted {
    a.stmt.null1 != b.stmt.null1
    a.stmt.null1 != b.stmt.null2
    a.stmt.null2 != b.stmt.null1
    a.stmt.null2 != b.stmt.null2
  }
  all a: Accepted | a.stmt.null1 != a.stmt.null2
}

// ---------------------------------------------------------------------------
// Conservation — ASSUMPTION (ZK-ASSUME-BINDING-SIG-DL, delegated to
// value-conservation.als). The tx binding signature forces summed real-input
// value = summed output value. The optional dummy contributes 0.
// ---------------------------------------------------------------------------
fun optionalVal[i: OptionalInput]: Int { isReal[i] implies i.note.value else 0 }

fact BindingSigConserves {
  all w: Witness |
    minus[plus[w.in1.note.value, optionalVal[w.in2]], plus[w.out1.value, w.out2.value]] = 0
}

// A dummy optional input carries no value (synthetic note value 0).
fact DummyZeroValue {
  all w: Witness |
    not isReal[w.in2] implies w.in2.note.value = 0
}

// ---------------------------------------------------------------------------
// Reified accessors.
// ---------------------------------------------------------------------------
fun realNotes[a: Accepted]: set Note {
  { n: Note | a.~act.in1.note = n
           or (isReal[a.~act.in2] and a.~act.in2.note = n) }
}
fun akIn1[a: Accepted]: Fq { a.~act.in1.note.ak }

// ---------------------------------------------------------------------------
// Assertions — ledger-safety tier.
// ---------------------------------------------------------------------------

// No REAL note is consumed twice, across actions or within one action.
assert NoDoubleSpend {
  all disj a, b: Accepted | no (realNotes[a] & realNotes[b])
  all a: Accepted | isReal[a.~act.in2]
    implies a.~act.in1.note != a.~act.in2.note
}

// Summed output value equals summed real-input value (no inflation). Carried by
// BindingSigConserves; this confirms it composes with the bindings + dummy mux.
assert NoInflation {
  all w: Witness |
    plus[w.out1.value, w.out2.value] =
      plus[w.in1.note.value, optionalVal[w.in2]]
}

// Equal rk1 fields pin the same input-1 spend-auth key (rvk injective).
assert SpendAuthBound {
  all disj a, b: Accepted |
    a.stmt.rk1 = b.stmt.rk1
      implies akIn1[a] = akIn1[b]
}

// §5.1 gap: a regulated asset cannot be spent while skipping compliance. If the
// spent asset is in the registry, is_regulated is forced true (F1's iff), so a
// ComplianceBinding exists (F1c). A prover CANNOT flip is_regulated to false to
// dodge the compliance-tree membership while keeping the statement consistent.
assert RegulatedEnforced {
  all w: Witness |
    (w.in1.note.assetID in w.reg.regulated)
      implies (one c: ComplianceBinding | c.subject = w.act)
}

// A dummy optional input is non-spending under the modeled cross-domain
// collision-resistance idealization, even if its synthetic note record aliases
// a real leaf.
assert DummyNonSpending {
  all w: Witness, n: Note |
    not isReal[w.in2] implies w.act.stmt.null2 != Deriv.nf[n]
}

check NoDoubleSpend     for 4 but 3 Accepted, 6 Note, 3 RequiredInput, 3 OptionalInput, 2 TreeState, 2 Registry, 10 Fq, 4 int
check NoInflation       for 4 but 3 Accepted, 6 Note, 3 RequiredInput, 3 OptionalInput, 2 TreeState, 2 Registry, 10 Fq, 4 int
check SpendAuthBound    for 4 but 3 Accepted, 6 Note, 3 RequiredInput, 3 OptionalInput, 2 TreeState, 2 Registry, 10 Fq, 4 int
check RegulatedEnforced for 4 but 3 Accepted, 6 Note, 3 RequiredInput, 3 OptionalInput, 2 TreeState, 2 Registry, 10 Fq, 4 int
check DummyNonSpending  for 4 but 3 Accepted, 6 Note, 3 RequiredInput, 3 OptionalInput, 2 TreeState, 2 Registry, 10 Fq, 4 int

// ---------------------------------------------------------------------------
// Non-vacuity (hard rule, E[r] incident): the modeled world must be satisfiable,
// and the adversary's freedoms must be realizable, BEFORE trusting any check.
// ---------------------------------------------------------------------------
pred show {
  some Accepted
  some disj a, b: Accepted | a != b
  some Chain.history
  some a: Accepted | a.isRegulated = 1     // a regulated action exists
  some w: Witness | not isReal[w.in2]       // an optional dummy is realizable
}

run show for 4 but 3 Accepted, 6 Note, 3 RequiredInput, 3 OptionalInput, 2 TreeState, 2 Registry, 10 Fq, 4 int

// Extra positive runs: two-action world, and a regulated + unregulated pair.
run { #Accepted = 2 } for 4 but 3 Accepted, 6 Note, 3 RequiredInput, 3 OptionalInput, 2 TreeState, 2 Registry, 10 Fq, 4 int
run { some disj a,b: Accepted | a.isRegulated = 1 and b.isRegulated = 0 }
  for 4 but 3 Accepted, 6 Note, 3 RequiredInput, 3 OptionalInput, 2 TreeState, 2 Registry, 10 Fq, 4 int
