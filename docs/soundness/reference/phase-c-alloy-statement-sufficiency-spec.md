# Phase C spec — consolidate2x1 statement-sufficiency Alloy model (H2)

**Status:** frontier design, ready for executor implementation.
**Deliverable:** `crates/core/component/compliance/formal/alloy/consolidate2x1-statement-sufficiency.als`
plus a stamped artifact + ledger rows (Section 6).
**Inputs:** `docs/soundness/reference/consolidate2x1-statement-binding-inventory.md`
(the 7-field trace and its 5 candidate gaps), the existing Alloy idiom in
`crates/core/component/compliance/formal/alloy/value-conservation.als` /
`nullifier-imt.als`.

## 1. The question this model answers

Layers L2–L4 prove the circuit constrains what it constrains. H2 asks the
layer-above question: **is the 7-field statement enough** for the ledger to be
safe against an adversary who can produce a valid proof for *any* statement
whose circuit relation is satisfiable? Concretely: model the chain's
consolidate2x1 acceptance rule, give the adversary exactly the freedom the
statement leaves open (the inventory's candidate gaps), and check that
double-spend, inflation, and spend-auth bypass are still unsatisfiable.

This is design-level Alloy in the style of `value-conservation.als`: field
elements abstracted to atoms, hashes to injective relations, with every
abstraction bound to a ledger assumption ID.

## 2. Signatures

```alloy
sig Fq {}                      // field element, abstract atom
sig Note {
  cm:    one Fq,               // note commitment
  value: one Int,
  ak:    one Fq                // spend-auth key material
}
sig TreeState {
  anchor: one Fq,
  leaves: set Note             // notes committed under this anchor
}
sig ConsolidateStmt {           // the 7 hashed fields, production order
  anchor:  one Fq,
  outCm:   one Fq,
  balance: one Fq,             // compressed net-balance commitment
  null1:   one Fq,
  rk1:     one Fq,
  null2:   one Fq,
  rk2:     one Fq
}
sig Accepted { stmt: one ConsolidateStmt }   // action accepted on-chain
one sig Chain {
  history: set TreeState,      // valid historical anchors
  seen:    set Fq              // spent nullifier set
}
```

`Int` for values (Alloy integers, small scope) mirrors `value-conservation.als`.

## 3. Facts — what a valid proof guarantees

Each fact is a Lean-proven binding from the inventory; **cite the inventory row
in a comment on each fact**. The witness objects are existentially quantified —
that is the crucial modeling decision: the circuit proves *existence* of
in-notes/out-note with these properties, not their identity.

```alloy
// F1 (capstone: specAll) — an accepted statement has a circuit witness.
fact CircuitSoundness {
  all a: Accepted | some n1, n2: Note, out: Note, t: TreeState | {
    t.anchor = a.stmt.anchor
    n1 in t.leaves and n2 in t.leaves          // Merkle membership (segs 11/29)
    n1 != n2                                    // distinct-leaf check — see §5 Q1
    a.stmt.null1 = nf[n1] and a.stmt.null2 = nf[n2]   // nullifier segs
    a.stmt.rk1 = rk[n1.ak] and a.stmt.rk2 = rk[n2.ak] // rvk segs 13/31
    a.stmt.outCm = out.cm                       // note-commitment segs
    out.value = n1.value.plus[n2.value]         // net-balance seg 52 — see §5 Q2
  }
}
// nf, rk are injective functions Fq->Fq / notes->Fq:
fun nf[n: Note]: Fq { ... }   // model as injective relation + fact
fun rk[k: Fq]: Fq { ... }
```

Injectivity of `nf`/`rk`/`cm` abstracts Poseidon/decaf collision resistance —
each injectivity fact carries the matching ledger ID
(`CC-ASSUME-POSEIDON-COLLISION`-class rows; check the ledger for exact IDs and
add one if the Poseidon-collision assumption is not yet a named row — that is
itself an H2 finding).

```alloy
// F2 — chain acceptance rule (action_handler, Rust side).
fact ChainAcceptance {
  all a: Accepted | {
    some t: Chain.history | t.anchor = a.stmt.anchor  // anchor check
    a.stmt.null1 !in Chain.seen                       // freshness
    a.stmt.null2 !in Chain.seen
    a.stmt.null1 != a.stmt.null2                      // in-tx distinctness — see §5 Q1
  }
}
```

Verify each conjunct against the actual Rust handler
(`crates/core/component/shielded-pool/src/component/action_handler/…`) and cite
`file:symbol` in comments. **If a conjunct is not actually checked in Rust, do
not model it — leave it out and it becomes a finding when the assertion fails.**

## 4. Adversary and assertions

The adversary controls everything not pinned by F1/F2: it may mint arbitrary
`Accepted` atoms, choose any statement field values, and pick which notes exist.
No extra adversary machinery is needed — Alloy's unconstrained instances *are*
the adversary.

```alloy
assert NoDoubleSpend {
  // two distinct accepted actions never consume the same note
  all disj a, b: Accepted |
    no (spentBy[a] & spentBy[b])   // spentBy = the {n1,n2} witnesses; reify
                                   // the witness via a helper sig (see note)
}
assert NoInflation {
  // total accepted output value = total consumed input value
  all a: Accepted | outValue[a] = inValue[a]
}
assert SpendAuthBound {
  // rk fields uniquely determine the spending keys the sig checker sees
  all disj a, b: Accepted | a.stmt.rk1 = b.stmt.rk1 implies akOf[a,1] = akOf[b,1]
}
```

Modeling note: Alloy cannot name the existential witness of a `fact` inside an
`assert`. Reify the witness: replace the existential in F1 with a `Witness` sig
(`sig Witness { act: one Accepted, in1, in2, out: one Note, tree: one TreeState }`)
plus a `fact` that every `Accepted` has exactly one `Witness` satisfying the F1
body. This keeps facts and assertions in the same vocabulary.

Scopes: `check NoDoubleSpend for 6 but 4 Accepted, 8 Note, 3 TreeState` (and the
same for the others). Alloy scope-6 is enough for these combinatorial gaps —
every historical statement-level bug in this class shows at ≤3 actions.

## 5. Deliberate stress points — encode the inventory's candidate gaps

For each of the inventory's 5 candidate gaps, the model must give the adversary
that freedom, not idealize it away. Two are decisive; verify both directions:

- **Q1 — same-note double spend inside one action.** Does the circuit actually
  force `n1 != n2` (distinct Merkle leaves / distinct nullifiers)? Check the
  Lean specs: if in-circuit distinctness is only `null1 != null2` via injective
  `nf`, model exactly that and delete the `n1 != n2` conjunct from F1. If
  NOTHING forces distinctness, expect `NoDoubleSpend` to produce a
  counterexample where one note is consumed twice by a single action but only
  one nullifier is recorded — if so that is a REAL FINDING; file it as a
  `ZK-FIND-*` row, do not patch the model to hide it.
- **Q2 — balance binding.** `balance` is a *commitment* (blinded). If value
  conservation relies on the commitment being binding, model `balance` as NOT
  determining `out.value` and let seg52's proven relation (`out.value =
  v1 + v2`, which IS in-circuit per the Phase D range/parity work) carry
  `NoInflation` alone. If `NoInflation` then fails in the model, the in-circuit
  conservation is not what we think — check the seg52 spec before believing
  either outcome.
- The remaining gaps (uncompressed point, shared divgen/asset-id, domain
  separator) get one line each: either a fact marked with the assumption ID
  that closes them, or a comment explaining why they are out of scope for the
  ledger-safety assertions.

**Vacuity discipline (hard rule, from the E[r] incident): before any `check`,
run positive `run` commands** — `run { some Accepted } for 6`, `run { some
disj a,b: Accepted } for 6` — and confirm instances exist. A model whose facts
are unsatisfiable proves nothing; the artifact must record the instance runs.

## 6. Artifact + ledger wiring (follow the existing Alloy pattern exactly)

1. Run all `check`/`run` commands; capture output to
   `crates/core/component/compliance/formal/alloy-consolidate2x1-statement-artifact.txt`
   in the same format as `alloy-value-conservation-artifact.txt`; stamp with
   `.sha256`.
2. Assumption ledger: any new idealization (Poseidon injectivity, etc.) gets an
   `assumed` row with Postcondition + removal path, mirrored in the handoff.
3. Handoff row `ZK-PROP-C2X1-STATEMENT-SUFFICIENT`, kind `property`, status
   `proved-symbolic`, Evidence citing the stamped artifact AND at least one
   assumption ID (the gate enforces both).
4. Scope anchor in `circuit-soundness-scope.txt`.
5. `scripts/check-soundness-invariants.sh` green before commit.

## 7. What would make this a hand-back

- Q1 or Q2 produces a counterexample (finding, not a modeling bug) — file the
  `ZK-FIND-*` row, log it, hand back for human review before any fix.
- A F2 conjunct you cannot find in the Rust handler.
- Any fact whose positive `run` is unsatisfiable after one honest debugging
  pass.
