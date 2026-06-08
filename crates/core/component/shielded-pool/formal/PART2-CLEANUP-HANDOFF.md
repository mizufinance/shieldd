# Part 2 — Mechanical cleanup hand-off (cheaper model)

This is the bounded, judgement-free execution plan for retiring the old full-field
`FieldLessThan` reducedness route once Option B's `AssetRegistryGap` is proved.
Every task is delete-or-rewire with an exact target and a binary done-check. Do
the tasks **in order**; each later task assumes the earlier ones landed.

Design is settled. Do not redesign, do not "improve" the gadget, do not add
shims/aliases. If a done-check fails, STOP and report verbatim — do not push
through (CLAUDE.md workflow rule).

---

## GATE — read first. Do not start until BOTH are true.

The shipped compliance circuit still routes through the **full-field**
`FieldLessThan`: `VerifyAssetRegistryIMT` → `AssetMembershipValid`
([indexed_tree.go:294](../../../../../tools/gnark/internal/compliance/indexed_tree.go#L294),
[:316-317](../../../../../tools/gnark/internal/compliance/indexed_tree.go#L316)).
`FieldLessThan` is therefore **live**, not dead. It only becomes dead after the
circuit is rewired to `AssetRegistryGap` (Task 1), and that rewire must not
happen until the new comparator is actually proved.

**Gate conditions (both required):**

1. `lex-less-proof.lisp` exists, is wired into the gate, and **certifies** under
   `acl2p` (or in the CI `provers` job). It proves `lexLess253 = (if (< A B) 1 0)`
   over canonical reps. NOT YET WRITTEN — strong-model work.
2. The **gnark-slice → constructor bridge** in `canonical-fq-bits-proof.lisp` is
   closed (identity-wire folding + block reorder + boolean-strategy reconcile),
   so the certified keystone applies to the real 506-slice. OPEN — strong-model work.

When both hold, `gadget-imt-gap` (now backed by `AssetRegistryGap`) can be
promoted to **proved** via `asset-registry-gap-proof.lisp` (already certified as
the composition primitive). Only then run the tasks below.

**If asked to start before the gate clears:** the only unblocked item is Task 0
(inventory verification). Everything else stays parked.

---

## Task 0 — Inventory verification (UNBLOCKED, safe anytime)

Confirm the starting state matches this doc before touching anything.

```bash
cd /Users/antoinecyr/Documents/Source/penumbra/tools/gnark
go build ./...                                  # must be green
grep -rn "FieldLessThan(" --include='*.go' .    # expect: AssetMembershipValid is the only caller
```

Done-check: `go build ./...` green; the only non-definition caller of capital-F
`FieldLessThan(` is `AssetMembershipValid` in `internal/compliance/indexed_tree.go`.
If anything else calls it, STOP and report — the deletion in Task 2 is unsafe.

---

## Task 1 — Rewire the shipped circuit to `AssetRegistryGap`

`AssetRegistryGap` already exists and has identical semantics to
`AssetMembershipValid` (`isRegulated.select(exactMatch, inGap)`), decomposing each
operand once. See [canonical_fq_bits.go:135-151](../../../../../tools/gnark/internal/compliance/canonical_fq_bits.go#L135).

Edit `VerifyAssetRegistryIMT` at
[indexed_tree.go:294](../../../../../tools/gnark/internal/compliance/indexed_tree.go#L294):
replace the `AssetMembershipValid(...)` call with
`AssetRegistryGap(api, noteAssetID, isRegulated, indexedLeaf.Value, indexedLeaf.NextValue)`.
Argument order differs — check the `AssetRegistryGap` signature at
[canonical_fq_bits.go:142](../../../../../tools/gnark/internal/compliance/canonical_fq_bits.go#L142)
and map by name, do not assume positional match.

Done-checks:
- `go build ./...` green.
- `go test ./internal/circuits/ ./internal/compliance/` green (satisfiability +
  rejection smoke for the IMT comparator still pass).
- Differential/metamorphic tests green (Rust↔Go parity; Rust unchanged):
  run the family/differential suite (`go test ./...` or the named differential
  test in `internal/circuits/`).

If parity breaks, STOP — this is a real finding, not a cleanup hiccup.

---

## Task 2 — Delete the dead full-field comparator (Go)

Only after Task 1 makes `FieldLessThan` unreferenced.

1. Delete `func FieldLessThan` at
   [threshold.go:54](../../../../../tools/gnark/internal/compliance/threshold.go#L54).
   **KEEP** the 128-bit `fieldLessThan` at
   [threshold.go:37](../../../../../tools/gnark/internal/compliance/threshold.go#L37)
   — it is used by `threshold.go:75` (threshold/transfer_encryption). Different
   function, lowercase, do not touch.
2. Delete `AssetMembershipValid` and `ImtGapGadget`
   ([indexed_tree.go:305](../../../../../tools/gnark/internal/compliance/indexed_tree.go#L305),
   [gadgets_constraint.go:58-86](../../../../../tools/gnark/internal/circuits/gadgets_constraint.go#L58))
   — both dead once Task 1 rewires the circuit and `gadget-imt-gap` is backed by
   `AssetRegistryGap`. **First** confirm `ImtGapGadget` has no remaining
   referents: `grep -rn "ImtGapGadget\|AssetMembershipValid" tools/gnark`. The
   `gnarkctl` `gadget-imt-gap` cases (main.go ~196, ~617) reference `ImtGapGadget`
   — see Task 3; do Task 3 first or together.
3. Delete `FieldLessThanGadget`
   ([gadgets_constraint.go:88-105](../../../../../tools/gnark/internal/circuits/gadgets_constraint.go#L88)).

Done-check: `go build ./...` and `go vet ./...` green; `grep -rn
"FieldLessThan\b\|AssetMembershipValid\|ImtGapGadget" tools/gnark` returns no Go
hits except the kept lowercase `fieldLessThan`.

---

## Task 3 — Drop dead `gnarkctl` export cases

In [main.go](../../../../../tools/gnark/cmd/gnarkctl/main.go):

- Remove the `gadget-field-less-than` cases in `gadgetCircuit` (line ~198) and
  `compileCircuit` (line ~620).
- Remove the `gadget-field-less-than` bit-input special-case at line ~118 if now
  unused (check: `grep -n "gadget-field-less-than" main.go` returns nothing after).
- **Decide the imt-gap export identity** (see Task 5): either keep the
  `gadget-imt-gap` label pointing at `AssetRegistryGapGadget`, or rename the label
  to `gadget-asset-registry-gap` everywhere. Pick ONE and apply consistently in
  the two `gadget-imt-gap` cases (line ~196, ~617). Recommended: keep the
  `gadget-imt-gap` label (the gate, docs, and ledger row all use that name) and
  point it at `AssetRegistryGapGadget`; drop the now-redundant separate
  `gadget-asset-registry-gap` case to avoid two labels for one circuit.

Done-check: `go build ./cmd/gnarkctl` green; `go run ./cmd/gnarkctl export-r1cs
--circuit gadget-imt-gap --format axe-lisp --out /tmp/x.lisp` succeeds; no
`gadget-field-less-than` string remains in `main.go`.

---

## Task 4 — Delete obsolete ACL2 books (old reducedness route)

These are superseded by the `canonical-fq-bits-*` / `asset-registry-gap-proof`
books. Delete from `crates/core/component/shielded-pool/formal/acl2/`:

- `field-less-than-proof.{lisp,cert,cert.out,fasl,port}` +
  `field-less-than-proof-artifact.txt{,.sha256}` — the deferred full-field
  reducedness proof, dead.
- `field-less-than-lift.{lisp,cert,cert.out,fasl,port}` — old full-field lift,
  superseded by `canonical-fq-bits-lift`.
- `generated/gadget-field-less-than-r1cs.*` and
  `generated/gadget-field-less-than-bit-inputs.*` — the dead gadget's export.

**KEEP (re-pointed, not deleted):** `field-less-than-ladder-proof.lisp` and
`field-less-than-pack-proof.lisp` plus `lib/fq-compare.lisp` — `lex-less-proof`
re-uses the certified ladder/pack bridge. Confirm with the strong-model author
which ladder books `lex-less-proof` depends on **before** deleting any
`field-less-than-ladder*` / `field-less-than-pack*` file. When in doubt, keep it
and report.

Done-check: nothing the gate script certifies references a deleted book (Task 5
removes the gate lines); `grep -rn "field-less-than-proof\|field-less-than-lift"
crates/core/component/shielded-pool/formal` returns only historical doc mentions.

---

## Task 5 — Reconcile the generated `imt-gap` export book

The shipped `gadget-imt-gap` is now `AssetRegistryGap` (5568 constraints), but
`generated/gadget-imt-gap-r1cs.lisp` is the old 6074-constraint export.
`generated/gadget-asset-registry-gap-r1cs.lisp` (5568) is the correct one.

Pick the identity chosen in Task 3 and make the generated book match:

- **If keeping the `gadget-imt-gap` label:** regenerate
  `generated/gadget-imt-gap-r1cs.lisp` from the `AssetRegistryGap`-backed export
  so it is byte-current with the shipped circuit; delete the now-redundant
  `generated/gadget-asset-registry-gap-r1cs.*` only if the gate no longer
  references it.
- **If renaming to `gadget-asset-registry-gap`:** delete the old
  `generated/gadget-imt-gap-r1cs.*` and update every gate/doc/book reference.

Either way, re-check `imt-gap-compose-smoke.lisp` block indices against the
boundaries recorded in [ASSET-REGISTRY-GAP-HANDOFF.md](ASSET-REGISTRY-GAP-HANDOFF.md)
(`reg[0,1)·leaf[1,507)·id[507,1013)·next[1013,1519)·tail[1519,5568)`). If indices
drifted, update the smoke book to the recorded boundaries (no new proof, just
index alignment).

Done-check: the regenerated/renamed book diffs clean against a fresh `gnarkctl`
export of the shipped circuit (the gate's own stale-export `diff -u` step passes);
`imt-gap-compose-smoke` certifies.

---

## Task 6 — Wire the gate, remove dead lines

In [scripts/circuit-gadget-proof-check.sh](../../../../../scripts/circuit-gadget-proof-check.sh):

- Add `certify_with_cert_pl lex-less-proof` adjacent to the other
  `canonical-fq-bits` / `asset-registry-gap` lines (~315-320).
- Remove the dead `field-less-than` lines: the `FIELD_LESS_THAN_*` vars (24-27 —
  only those whose books were deleted in Task 4; KEEP ladder/pack if retained),
  the `gadget-field-less-than` regenerate/diff block (~242-257), and
  `certify_with_cert_pl generated/gadget-field-less-than-*` (~293-294).
- Update the `gadget-imt-gap` regenerate/diff block + `certify_with_cert_pl
  generated/gadget-imt-gap-r1cs` to match the Task 5 identity decision.
- Update the trailing summary `echo` (~338) to drop the deleted-book wording.

Done-checks:
- `bash -n scripts/circuit-gadget-proof-check.sh` (syntax) passes.
- The script's book list reflects exactly the books on disk (no reference to a
  deleted book; `lex-less-proof` present).

---

## Task 7 — Full validation, report verbatim

Run and paste output as-is. State explicitly which ran locally vs CI.

```bash
cd /Users/antoinecyr/Documents/Source/penumbra
bash scripts/circuit-gadget-proof-check.sh         # heavy acl2p closure may be CI-gated; say so
bash scripts/check-soundness-invariants.sh
cd tools/gnark && go build ./... && go test ./...  # family + differential + compliance
```

Done-checks:
- Both gate scripts green (or: locally-runnable portion green + named CI-gated
  certifications listed honestly as not-run-locally).
- gnark suite green.
- The gadget→property firewall still BLOCKS whole-circuit property-row promotion
  (the soundness-invariants script enforces this; confirm it still fails closed).

---

## Final ledger update (after Task 7 green)

- Flip the `gadget-imt-gap` row to **proved** in
  [circuit-gadget-proofs.md](circuit-gadget-proofs.md) with honest local-vs-CI
  run notes and the `.sha256` artifact stamp.
- Note in [ASSET-REGISTRY-GAP-HANDOFF.md](ASSET-REGISTRY-GAP-HANDOFF.md) that
  Part 2 is complete and the old full-field route is deleted.
- Update memory `asset-registry-gap-keystone.md` to "bridge + lex-less closed,
  Part 2 cleanup done, gadget-imt-gap proved."

## Do-not-touch list

- 128-bit `fieldLessThan` ([threshold.go:37](../../../../../tools/gnark/internal/compliance/threshold.go#L37)) and its caller (`threshold.go:75`).
- Rust `crates/core/component/compliance/src/r1cs.rs` — the independent prover, intentionally unchanged.
- `lib/fq-compare.lisp`, `field-less-than-ladder-proof.lisp`, `field-less-than-pack-proof.lisp` unless the strong-model author confirms `lex-less-proof` no longer depends on them.
- Any `make-range-check-*` Kestrel book (vendored, certified upstream).
