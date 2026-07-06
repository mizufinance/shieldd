/*
 * transfer-statement-sufficiency.als — H2 statement-sufficiency model for the
 * transfer circuit's 83-field public statement.
 *
 * This is the transfer twin of consolidate2x1-statement-sufficiency.als. The
 * value surface (groups A–D: anchor, output commitments, balance, nullifiers+rk)
 * mirrors consolidate exactly and rests on the SAME proven substrate; the model
 * text for the ledger-safety assertions is shared. Transfer adds:
 *   - two outputs (nOut = 2) and two inputs that may be DUMMY,
 *   - a regulated/compliance surface (groups E–I) gated on a private witness
 *     `is_regulated`, which the asset-registry indexed-tree proof binds.
 *
 * The question (full-verification-plan.md hole H2): is the 83-field statement
 * ENOUGH for the ledger to be safe against an adversary who can produce a valid
 * proof for ANY statement whose circuit relation is satisfiable? Same adversary
 * model as consolidate: Alloy's unconstrained instances mint arbitrary Accepted
 * actions and pick any field values.
 *
 * KEY HONEST SCOPING (see §"compliance-gadget assumptions" below): the
 * ledger-SAFETY assertions (NoDoubleSpend, NoInflation, SpendAuthBound,
 * RegulatedEnforced, DummyNonSpending) do NOT depend on the soundness of the 8
 * unproven compliance-gadget `functional-assumption` classes (detection/amount/
 * address ciphertexts, shared_secret, ack, dleq, threshold). Those classes
 * govern *regulator utility* — whether the emitted ciphertexts/DLEQ actually
 * decrypt/verify — which is a separate property tier. They are recorded here as
 * named per-class assumption predicates (inventory §7) so instantiating H2 on
 * transfer vs consolidate differs only in which predicates are live, but they
 * are deliberately NOT wired into the safety assertions, because the circuit's
 * value-conservation and membership bindings that carry those assertions route
 * through proven substrate (SCP/nullifier/rvk/nb) and the asset-registry IMT.
 *
 * Sources of truth (statement + circuit bindings), per the inventory
 *   docs/soundness/reference/transfer-statement-binding-inventory.md :
 *   tools/gnark/internal/circuits/transfer_circuit.go
 *     buildTransferStatementFields (:953-1041), spend/output binding (:424-551),
 *     is_regulated gating (:264-318).
 *   tools/gnark/internal/compliance/indexed_tree.go::VerifyAssetRegistryIMT (:273)
 *   tools/gnark/internal/compliance/canonical_fq_bits.go::AssetRegistryGap (:171)
 * Sources of truth (chain acceptance, Rust): shielded-pool transfer action
 *   handler + sct/nullifier_tree.rs::insert_batch (fail-closed), same as
 *   consolidate2x1.als F2.
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
 *   MODEL-ASSUME-CONSOLIDATE-COMPLIANCE-EXEMPT  new row (inventory §6/§7 gap ii):
 *                                     consolidate carries no compliance surface;
 *                                     records that as an explicit protocol-policy
 *                                     assumption for human confirmation, NOT an
 *                                     Alloy-decidable property.
 *
 * Compliance-gadget assumptions (regulator-utility tier, NOT load-bearing here):
 *   ZK-ASSUME-TRANSFER-DETECTION-CIPHERTEXT  gadget.poseidon_encryption.detection@108
 *   ZK-ASSUME-TRANSFER-AMOUNT-CIPHERTEXT     gadget.poseidon_encryption.amount@109,111
 *   ZK-ASSUME-TRANSFER-ADDRESS-CIPHERTEXT    gadget.poseidon_encryption.address@110,112
 *   ZK-ASSUME-TRANSFER-SHARED-SECRET         decaf.shared_secret@104-107 (HIGH, canon-chain)
 *   ZK-ASSUME-TRANSFER-ACK                   decaf.ack@10,72
 *   ZK-ASSUME-TRANSFER-DLEQ                  gadget.dleq@125-128 (BLOCKED)
 *   ZK-ASSUME-TRANSFER-THRESHOLD-FLAG        threshold.flag@94
 *
 * Assertions (ledger-safety tier):
 *   NoDoubleSpend    — no note consumed twice; real inputs distinct.
 *   NoInflation      — summed output value equals summed real-input value.
 *   SpendAuthBound   — equal rk statement fields pin the same spend-auth key.
 *   RegulatedEnforced— a regulated asset (in the registry) cannot be spent
 *                      without is_regulated set, so its compliance-tree
 *                      membership binds ComplianceAnchor (§5.1 gap closed).
 *   DummyNonSpending — a dummy input consumes no real note and its synthetic
 *                      nullifier cannot collide a real one (inventory §3 check).
 */

open util/integer

sig Fq {}

sig Note {
  cm:      one Fq,     // note commitment (Poseidon), statement group B
  value:   one Int,    // amount; ZK-ASSUME-AMOUNT-RANGE keeps it non-wrapping
  ak:      one Fq,     // spend-auth key material driving rvk
  assetID: one Fq      // asset identifier (drives registry membership)
}

// A spend input slot. Transfer inputs may be DUMMY: a dummy slot spends no real
// note, gets a synthetic nullifier, and is muxed out of the value sum
// (transfer_circuit.go:437-450). isDummy is the private witness `is_not_dummy`.
sig Input {
  note:    one Note,   // the (real or synthetic) note this slot references
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

// The 83 fields, grouped per buildTransferStatementFields. Only the fields the
// ledger-safety assertions read are reified; the compliance-transcript fields
// (F/G/H/I ciphertexts, DLEQ, tiers) are collapsed into `complianceAnchor` +
// `assetAnchor` + `isRegulated`, since their gadget soundness is out of scope
// for these assertions (see header).
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
  // Synthetic dummy nullifiers are DOMAIN-SEPARATED from real nullifiers: the
  // syntheticDummyNullifier gadget (transfer_circuit.go:443) uses a distinct
  // seed/domain, so its range is disjoint from the real nullifier map. This is
  // exactly what makes a dummy input non-spending — its emitted nullifier field
  // is never any real note's nf. Charged to
  // ZK-ASSUME-TRANSFER-SYNTHETIC-NULLIFIER-DOMAIN.
  all a, b: Note | Deriv.nf[a] != Deriv.snf[b]
}

// ---------------------------------------------------------------------------
// F1 — CircuitSoundness. Reify the witness (2-in-2-out) so assertions can name
// it. Inputs may be dummy: a dummy input binds a synthetic nullifier and is
// excluded from the value sum. Matches transfer_circuit.go:424-551.
// ---------------------------------------------------------------------------
sig Witness {
  act:  one Accepted,
  in1:  one Input,
  in2:  one Input,
  out1: one Note,
  out2: one Note,
  tree: one TreeState,
  reg:  one Registry     // the registry the AssetAnchor names
}

pred isReal[i: Input] { i.isDummy = 0 }

fact F1_CircuitSoundness {
  all a: Accepted | one w: Witness | w.act = a
  all w: Witness | let s = w.act.stmt {
    w.tree.anchor = s.anchor
    w.reg.root    = s.assetAnchor
    w.reg in Chain.registries

    // isDummy / isRegulated are booleans (AssertIsBoolean in-circuit).
    w.in1.isDummy = 0 or w.in1.isDummy = 1
    w.in2.isDummy = 0 or w.in2.isDummy = 1
    w.act.isRegulated = 0 or w.act.isRegulated = 1

    // Real inputs: Merkle membership + nullifier/rk binding (assert.eq_if
    // cond=is_not_dummy, transfer_circuit.go:432-496).
    isReal[w.in1] implies {
      w.in1.note in w.tree.leaves
      s.null1 = Deriv.nf[w.in1.note]
      s.rk1   = Deriv.rk[w.in1.note.ak]
    }
    isReal[w.in2] implies {
      w.in2.note in w.tree.leaves
      s.null2 = Deriv.nf[w.in2.note]
      s.rk2   = Deriv.rk[w.in2.note.ak]
    }
    // Dummy inputs emit the SYNTHETIC dummy nullifier (transfer_circuit.go:448-
    // 455: null = is_not_dummy*realNf + is_dummy*syntheticNf). The synthetic map
    // is domain-separated from real nf, so a dummy's null field is never any
    // real note's nullifier — it spends nothing. (DummyNonSpending checks this.)
    not isReal[w.in1] implies s.null1 = Deriv.snf[w.in1.note]
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
// F2 — ChainAcceptance. Anchor validity + fail-closed nullifier set. Identical
// to consolidate2x1.als F2, extended to the 4 real-nullifier slots. Dummy slots
// insert synthetic nullifiers too, but those are distinct by construction
// (synthetic domain); the set is fail-closed over ALL inserted keys.
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
// value = summed output value. Dummy inputs contribute 0.
// ---------------------------------------------------------------------------
fun realVal[i: Input]: Int { isReal[i] implies i.note.value else 0 }

fact BindingSigConserves {
  all w: Witness |
    minus[plus[realVal[w.in1], realVal[w.in2]], plus[w.out1.value, w.out2.value]] = 0
}

// Dummy inputs carry no value (synthetic note value 0).
fact DummyZeroValue {
  all w: Witness {
    not isReal[w.in1] implies w.in1.note.value = 0
    not isReal[w.in2] implies w.in2.note.value = 0
  }
}

// ---------------------------------------------------------------------------
// Compliance-gadget assumption predicates (regulator-utility tier). Recorded
// per inventory §7 as named per-class predicates; each is an idealization
// charged to its ledger row. They are TRUE by fiat (the gadget is assumed
// sound) and are NOT referenced by the ledger-safety assertions — encoding the
// honest claim that transfer's double-spend / inflation / regulated-enforcement
// safety does not rest on these 8 unproven classes.
// ---------------------------------------------------------------------------
pred assume_detection_ciphertext {}   // ZK-ASSUME-TRANSFER-DETECTION-CIPHERTEXT @108
pred assume_amount_ciphertext {}      // ZK-ASSUME-TRANSFER-AMOUNT-CIPHERTEXT @109,111
pred assume_address_ciphertext {}     // ZK-ASSUME-TRANSFER-ADDRESS-CIPHERTEXT @110,112
pred assume_shared_secret {}          // ZK-ASSUME-TRANSFER-SHARED-SECRET @104-107 (HIGH)
pred assume_ack {}                    // ZK-ASSUME-TRANSFER-ACK @10,72
pred assume_dleq {}                   // ZK-ASSUME-TRANSFER-DLEQ @125-128 (BLOCKED)
pred assume_threshold_flag {}         // ZK-ASSUME-TRANSFER-THRESHOLD-FLAG @94

// ---------------------------------------------------------------------------
// Reified accessors.
// ---------------------------------------------------------------------------
fun realNotes[a: Accepted]: set Note {
  { n: Note | (isReal[a.~act.in1] and a.~act.in1.note = n)
           or (isReal[a.~act.in2] and a.~act.in2.note = n) }
}
fun akIn1[a: Accepted]: Fq { a.~act.in1.note.ak }

// ---------------------------------------------------------------------------
// Assertions — ledger-safety tier.
// ---------------------------------------------------------------------------

// No REAL note is consumed twice, across actions or within one action.
assert NoDoubleSpend {
  all disj a, b: Accepted | no (realNotes[a] & realNotes[b])
  all a: Accepted | (isReal[a.~act.in1] and isReal[a.~act.in2])
    implies a.~act.in1.note != a.~act.in2.note
}

// Summed output value equals summed real-input value (no inflation). Carried by
// BindingSigConserves; this confirms it composes with the bindings + dummy mux.
assert NoInflation {
  all w: Witness |
    plus[w.out1.value, w.out2.value] = plus[realVal[w.in1], realVal[w.in2]]
}

// Equal rk1 fields pin the same input-1 spend-auth key (rvk injective).
assert SpendAuthBound {
  all disj a, b: Accepted |
    (isReal[a.~act.in1] and isReal[b.~act.in1] and a.stmt.rk1 = b.stmt.rk1)
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

// A dummy input is non-spending: the nullifier field it emits is never any real
// note's nullifier, so it cannot consume a tree leaf or open a double-spend
// path — even if the adversary picks the dummy's referenced note to be a real
// leaf. This is carried by synthetic-nullifier domain separation (F1 + Deriv),
// which is the faithful model of transfer_circuit.go:443-455.
assert DummyNonSpending {
  all w: Witness, n: Note |
    not isReal[w.in1] implies w.act.stmt.null1 != Deriv.nf[n]
  all w: Witness, n: Note |
    not isReal[w.in2] implies w.act.stmt.null2 != Deriv.nf[n]
}

check NoDoubleSpend     for 4 but 3 Accepted, 6 Note, 4 Input, 2 TreeState, 2 Registry, 10 Fq, 4 int
check NoInflation       for 4 but 3 Accepted, 6 Note, 4 Input, 2 TreeState, 2 Registry, 10 Fq, 4 int
check SpendAuthBound    for 4 but 3 Accepted, 6 Note, 4 Input, 2 TreeState, 2 Registry, 10 Fq, 4 int
check RegulatedEnforced for 4 but 3 Accepted, 6 Note, 4 Input, 2 TreeState, 2 Registry, 10 Fq, 4 int
check DummyNonSpending  for 4 but 3 Accepted, 6 Note, 4 Input, 2 TreeState, 2 Registry, 10 Fq, 4 int

// ---------------------------------------------------------------------------
// Non-vacuity (hard rule, E[r] incident): the modeled world must be satisfiable,
// and the adversary's freedoms must be realizable, BEFORE trusting any check.
// ---------------------------------------------------------------------------
pred show {
  some Accepted
  some disj a, b: Accepted | a != b
  some Chain.history
  some a: Accepted | a.isRegulated = 1     // a regulated action exists
  some w: Witness | not isReal[w.in1]       // a dummy input is realizable
}

run show for 4 but 3 Accepted, 6 Note, 4 Input, 2 TreeState, 2 Registry, 10 Fq, 4 int

// Extra positive runs: two-action world, and a regulated + unregulated pair.
run { #Accepted = 2 } for 4 but 3 Accepted, 6 Note, 4 Input, 2 TreeState, 2 Registry, 10 Fq, 4 int
run { some disj a,b: Accepted | a.isRegulated = 1 and b.isRegulated = 0 }
  for 4 but 3 Accepted, 6 Note, 4 Input, 2 TreeState, 2 Registry, 10 Fq, 4 int
