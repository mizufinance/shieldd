# AssetRegistryGap — proof + cleanup hand-off

This closes Option B: write the three remaining ACL2 proofs, then retire the old
full-field `FieldLessThan` route. The proofs are the real work; the cleanup is
mechanical and pre-resolved here to exact edits.

**Why proofs are the bulk of this, not cleanup:** an ACL2 book either certifies
(green) or it doesn't (red) — that is the oracle. You don't need design taste;
you need to make the book certify. The substrate they build on is already
certified (see "Already done"). The cleanup tasks are deletions whose targets I
have already enumerated for you — your job there is the edit, not the search.

Rules: no redesign, no shims/aliases (CLAUDE.md). If a proof won't close after a
real effort, leave the book with its current honest checkpoint and report the
exact failing goal — do not fake `skip-proofs` or weaken the theorem statement.

---

## Already done (do not redo — these certify green today)

Verify with `bash scripts/circuit-gadget-proof-check.sh` (heavy `acl2p` closure
is CI-gated; locally these certify under homebrew ACL2 8.7):

- `generated/gadget-canonical-fq-bits-r1cs` (506) + `-bit-inputs` — substrate.
- `generated/gadget-asset-registry-gap-r1cs` (5568) — fused gadget substrate.
- `canonical-fq-bits-lift.lisp` — Axe lift of the real 506-slice into a DAG.
- `canonical-fq-bits-proof.lisp` — `canonical-fq-bits-reduced`: the keystone
  `make-range-check-constraints-correct` instantiated at c=p−1, n=253 over the
  **constructor** constraints → `packbv(bits) ≤ p−1`. (The bridge to the gnark
  slice is Proof Task A1 below — the theorem is over the constructor, not yet the
  compiled wires.)
- `asset-registry-gap-proof.lisp` — `asset-registry-gap-holdp-decomposition`:
  `holdp(whole 5568) ⇔ holdp` of blocks `reg[0,1)·leaf[1,507)·id[507,1013)·
  next[1013,1519)·tail[1519,5568)`. The composition primitive is certified; it
  is waiting for the per-block lemmas (Task A3 feeds them in).
- `lib/fq-compare.lisp` — the ladder bridge lemmas, already certified, including
  `fq-prefix-ladder-less-equals-fq-lt-bit-of-packbv-253` (line 711) and
  `fq-lt-bit-when-<` / `fq-lt-bit-when-not-<` (497, 502). **You will reuse these
  as-is in Task A2 — do not re-prove them.**

---

# PART A — Proofs (the work). No gate; substrate above is ready.

Each task is one book that must certify green. Order A1 → A2 → A3; A3 consumes A1
and A2.

## Task A1 — Bridge the keystone to the gnark slice (`canonical-fq-bits-proof.lisp`)

**Goal:** make `canonical-fq-bits-reduced` apply to the *compiled 506-constraint
slice* (`*GADGET-CANONICAL-FQ-BITS-constraints*`), not just the constructor
`(make-range-check-constraints avars pivars (1- p) 253)`. This is the hardest
task — it is a structural-normalization proof, not new math.

**The three deltas to discharge** (documented in `canonical-fq-bits-lift.lisp`
header — read it first; it is the certified lift checkpoint you build on):

1. **Identity-wire doubling.** gnark compiles each `AssertIsEqual(Mul(a,b),c)` to
   two constraints (`a*b=out`, then `out=c`); the 166 zero-bit a-constraints
   `(1−pi_{i+1}−a_i)*a_i=0` each double, so `506 = 1 pack + 87 boolean + 166*2 +
   86 pi`. The 166 extra `out=0` equalities must be folded away.
2. **Block order.** gnark emits `pack, pi-constraints, a-constraints`; the
   constructor is `(append a-constraints pi-constraints)`. Reconcile via
   `r1cs-constraints-holdp-of-append` reasoning (same idiom proved in
   `asset-registry-gap-proof.lisp` as `r1cs-constraints-holdp-of-append-5`).
3. **Boolean strategy.** Only the 87 one-bit positions carry a standalone
   `b*(b−1)=0`; the 166 zero-bit positions are pinned boolean as a *consequence*
   of the range-check shape (the keystone's `bit-listp` conclusion). Do not add
   per-bit boolean constraints for the 166.

**Approach:** prove a `holdp`-equivalence lemma — satisfying the lifted 506-slice
implies satisfying `(make-range-check-constraints *cfb-avars* *cfb-pivars* *fq-c*
253)` over the same valuation — by folding the identity wires and permuting
blocks (structural, via `holdp-of-append`, not Axe). Then chain it with the
existing `canonical-fq-bits-reduced` to land `packbv ≤ p−1` on the real slice.
Keep the wire map from the lift checkpoint: `bit_i = INTERNAL-(2+i)`, packing is
constraint 0.

**Green/red gate:** `canonical-fq-bits-proof.lisp` certifies AND its top theorem
quantifies over `*GADGET-CANONICAL-FQ-BITS-constraints*` (the slice), not the
constructor. If you can only close the constructor-level version (today's state),
that is not progress on A1 — say so.

## Task A2 — `lex-less-proof.lisp` (new book, re-point of the certified ladder)

**Goal:** prove each `lexLess253` sub-block inside the AssetRegistryGap `tail`
equals `(if (< A B) 1 0)` over canonical reps. The ladder body is byte-identical
to the old `field-less-than-ladder-proof.lisp` — this is a re-point, not new math.

**Template:** copy `field-less-than-ladder-proof.lisp` verbatim, then change:
- `include-book` the asset-registry-gap substrate instead of field-less-than:
  `generated/gadget-asset-registry-gap-r1cs` (+ its bit-inputs helper if present).
- Re-point the constraint slice. The two ladders live in `tail` =
  `(nthcdr 1519 *GADGET-ASSET-REGISTRY-GAP-constraints*)`. `lexLess253(leaf,id)`
  and `lexLess253(id,next)` are two consecutive ladder runs in `tail`. Find their
  exact start/length by the same packing-constraint scan that fixed the block
  boundaries (the `:c` operand scan named in `asset-registry-gap-proof.lisp`);
  `nthcdr`/`take` them out the way the old book does `(nthcdr 1012 ...)`.
- Re-point the two bit-input wire lists to the **already-materialized**
  decomposition wires (leaf bits, id bits, next bits) — `lexLess253` consumes the
  CanonicalFqBits253 outputs, it does NOT decompose again. The wire ranges come
  from the leaf/id/next blocks (`bit_i = INTERNAL-(2+i)` within each operand's
  decomposition; map via the wire manifest at the top of the substrate book).
- Keep the `verify-r1cs` form, `:tactic`, `:global-rules`, `:rule-lists`,
  `:var-ordering` identical — they are the proved ladder recipe.

Then bridge to `<` with the **existing** `fq-compare.lisp` lemmas
(`fq-prefix-ladder-less-equals-fq-lt-bit-of-packbv-253`, `fq-lt-bit-when-<`,
`fq-lt-bit-when-not-<`). Do not re-prove them.

**Green/red gate:** `lex-less-proof.lisp` certifies; its conclusion is
`OUT_lex = (if (< A B) 1 0)` (via `fq-lt-bit`) for both ladders over canonical reps.

## Task A3 — Assemble the whole-gadget semantic theorem (`asset-registry-gap-proof.lisp`)

**Goal:** extend the existing certified `asset-registry-gap-holdp-decomposition`
into the full statement: a satisfying valuation forces `AssetRegistryGap output =
1 ⇔ (isRegulated ? id==leaf : leaf<id<next)` over canonical reps — promoting
`gadget-imt-gap` to **proved**.

**Approach (all inputs now exist):** feed the five block lemmas into the
certified `holdp`-decomposition:
- `reg[0,1)`: isRegulated booleanity (trivial, ground).
- `leaf/id/next`: A1's slice-level `canonical-fq-bits-reduced` (operand = packed
  bits over canonical residues), one instance per block.
- `tail`: A2's two `lexLess253 = (if (< · ·) 1 0)` lemmas + the **already-proved**
  `gadget-iszero` (exact match) and `gadget-bool-select` (the `Select`) lemmas.
- Combine: `isInGap = gtLow*ltHigh`, `output = Select(isRegulated, exactMatch,
  isInGap)` — algebra over bits the block lemmas already established.

**Green/red gate:** `asset-registry-gap-proof.lisp` certifies the whole-gadget
semantic theorem (not just the holdp split). This is the gate that unblocks all
of Part B.

---

# PART B — Cleanup (mechanical). GATE: A1, A2, A3 all certify green.

Do not start Part B until all three Part A books certify. Until then the shipped
circuit's old route is the proved one and must stay. Each task below has exact
targets (I did the search) and a binary done-check.

## B1 — Rewire the shipped circuit to `AssetRegistryGap`

`AssetRegistryGap` has identical semantics to `AssetMembershipValid`
(`isRegulated.select(exactMatch, inGap)`), decompose-once. Signature:
[canonical_fq_bits.go:142](../../../../../tools/gnark/internal/compliance/canonical_fq_bits.go#L142).

In [indexed_tree.go:294](../../../../../tools/gnark/internal/compliance/indexed_tree.go#L294)
(`VerifyAssetRegistryIMT`), replace the `AssetMembershipValid(api, noteAssetID,
isRegulated, indexedLeaf.Value, indexedLeaf.NextValue)` call with
`AssetRegistryGap(api, noteAssetID, isRegulated, indexedLeaf.Value,
indexedLeaf.NextValue)`. Confirm arg order against the signature — map by name.

Done-check: `go build ./...` green; `go test ./internal/circuits/
./internal/compliance/` green; the differential/metamorphic suite (`go test
./...`) green — Rust↔Go parity holds, Rust unchanged. If parity breaks, STOP.

## B2 — Delete the dead full-field comparator (Go)

Exact targets (I enumerated every caller; all four are in the old route and all
are removed by B1–B3, so after B1 these become dead):

1. `func FieldLessThan` — [threshold.go:54](../../../../../tools/gnark/internal/compliance/threshold.go#L54).
   **KEEP** lowercase 128-bit `fieldLessThan` ([threshold.go:37](../../../../../tools/gnark/internal/compliance/threshold.go#L37)),
   used at `threshold.go:75`. Different function — do not touch it.
2. `AssetMembershipValid` — [indexed_tree.go:305](../../../../../tools/gnark/internal/compliance/indexed_tree.go#L305)
   (callers at lines 313–314 use `FieldLessThan`; both go with this function).
3. `ImtGapGadget` — [gadgets_constraint.go:58-86](../../../../../tools/gnark/internal/circuits/gadgets_constraint.go#L58).
4. `FieldLessThanGadget` — [gadgets_constraint.go:88-105](../../../../../tools/gnark/internal/circuits/gadgets_constraint.go#L88)
   (its body calls `FieldLessThan` at line 103).
5. Tests referencing the deleted symbols: the `FieldLessThan` direct call in
   `internal/circuits/indexed_tree_test.go:83` and
   `TestAxeExportFidelityFieldLessThan` in
   `internal/circuits/gadgets_axe_fidelity_test.go:66` — delete those test cases.

Do B3 (gnarkctl) together with this — the `gadget-imt-gap` gnarkctl cases
reference `ImtGapGadget`.

Done-check: `go build ./... && go vet ./...` green; `grep -rn
"FieldLessThan\b\|AssetMembershipValid\|ImtGapGadget\|FieldLessThanGadget"
tools/gnark` returns only the kept lowercase `fieldLessThan`.

## B3 — Drop dead `gnarkctl` export cases

In [main.go](../../../../../tools/gnark/cmd/gnarkctl/main.go):
- Remove the `gadget-field-less-than` cases: line ~198 (`gadgetCircuit`) and
  ~620 (`compileCircuit`), and the bit-input special-case at line ~118.
- Point the `gadget-imt-gap` cases (line ~196 and ~617) at
  `AssetRegistryGapGadget` instead of `ImtGapGadget`; remove the now-redundant
  separate `gadget-asset-registry-gap` cases (lines ~202, ~626) so one label
  (`gadget-imt-gap`) maps to one circuit.

Done-check: `go build ./cmd/gnarkctl` green; `go run ./cmd/gnarkctl export-r1cs
--circuit gadget-imt-gap --format axe-lisp --out /tmp/x.lisp` succeeds; `grep -n
"gadget-field-less-than\|gadget-asset-registry-gap" main.go` returns nothing.

## B4 — Delete obsolete ACL2 books (old reducedness route)

Delete from `crates/core/component/shielded-pool/formal/acl2/`:
- `field-less-than-proof.*` + `field-less-than-proof-artifact.txt{,.sha256}`
- `field-less-than-lift.*` (superseded by `canonical-fq-bits-lift`)
- `generated/gadget-field-less-than-r1cs.*` and
  `generated/gadget-field-less-than-bit-inputs.*`

**KEEP** `field-less-than-ladder-proof.lisp`, `field-less-than-pack-proof.lisp`,
`field-less-than-ladder2-proof.*`, and `lib/fq-compare.lisp` — `lex-less-proof`
(A2) was templated from them and `fq-compare` carries the bridge lemmas A2/A3
use. (If A2 ended up fully self-contained and no book `include-book`s the ladder
proofs, they may also go — but only if `grep -rn "field-less-than-ladder\|
field-less-than-pack" formal/acl2` shows no remaining `include-book`.)

Done-check: `grep -rn "field-less-than-proof\|field-less-than-lift"
crates/core/component/shielded-pool/formal` returns only doc/history mentions, no
`include-book` or gate reference.

## B5 — Reconcile the generated `imt-gap` export book

The shipped `gadget-imt-gap` is now `AssetRegistryGap` (5568), but
`generated/gadget-imt-gap-r1cs.lisp` is the stale 6074 export and
`generated/gadget-asset-registry-gap-r1cs.lisp` (5568) is correct. Pick the
`gadget-imt-gap` label (matches gate/docs/ledger): regenerate
`generated/gadget-imt-gap-r1cs.lisp` from the rewired gnarkctl export, then delete
`generated/gadget-asset-registry-gap-r1cs.*` and update the two books that
`include-book` it (`asset-registry-gap-proof.lisp`, and A1/A2 if they reference
it) to `gadget-imt-gap-r1cs`. Re-check `imt-gap-compose-smoke.lisp` block indices
against `reg[0,1)·leaf[1,507)·id[507,1013)·next[1013,1519)·tail[1519,5568)`.

Done-check: the gate's own stale-export `diff -u` step passes against a fresh
gnarkctl export; `imt-gap-compose-smoke` and `asset-registry-gap-proof` certify
under the renamed book.

## B6 — Wire the gate, remove dead lines

In [scripts/circuit-gadget-proof-check.sh](../../../../../scripts/circuit-gadget-proof-check.sh):
- Add `certify_with_cert_pl lex-less-proof` near the other canonical-fq-bits /
  asset-registry-gap lines (~315–320).
- Remove dead `field-less-than` lines: deleted-book `FIELD_LESS_THAN_*` vars
  (24–27 — keep ladder/pack vars), the `gadget-field-less-than`
  regenerate/diff block (~242–257), and `certify_with_cert_pl
  generated/gadget-field-less-than-*` (~293–294).
- Adjust the `gadget-imt-gap` regenerate/diff + `certify_with_cert_pl
  generated/gadget-imt-gap-r1cs` for the B5 rename.
- Update the trailing summary `echo` (~338).

Done-check: `bash -n scripts/circuit-gadget-proof-check.sh` passes; the book list
matches files on disk (`lex-less-proof` present, no deleted book referenced).

## B7 — Full validation, report verbatim

```bash
cd /Users/antoinecyr/Documents/Source/penumbra
bash scripts/circuit-gadget-proof-check.sh        # say which closure ran local vs CI
bash scripts/check-soundness-invariants.sh
cd tools/gnark && go build ./... && go test ./...
```

Done-check: gate scripts green (or locally-green + CI-gated certs named as
not-run-locally); gnark suite green; the gadget→property firewall still BLOCKS
whole-circuit property-row promotion (soundness-invariants must still fail
closed).

## B8 — Ledger + memory

- Flip the `gadget-imt-gap` row to **proved** in
  [circuit-gadget-proofs.md](circuit-gadget-proofs.md) with honest local-vs-CI
  notes + `.sha256` stamps.
- Mark Part 2 complete in [ASSET-REGISTRY-GAP-HANDOFF.md](ASSET-REGISTRY-GAP-HANDOFF.md).
- Update memory `asset-registry-gap-keystone.md`: bridge + lex-less + whole-gadget
  closed, old route deleted, `gadget-imt-gap` proved.

## Do-not-touch

- 128-bit `fieldLessThan` ([threshold.go:37](../../../../../tools/gnark/internal/compliance/threshold.go#L37)) + caller `threshold.go:75`.
- Rust `crates/core/component/compliance/src/r1cs.rs` (independent prover, intentionally unchanged).
- Any vendored `kestrel/.../range-check` or `make-range-check-*` book.
- `lib/fq-compare.lisp` and the kept ladder/pack books unless B4's grep proves them unreferenced.
