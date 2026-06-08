# AssetRegistryGap (Option B) — Part 1 results & hand-off

Status of the proof-friendly comparator redesign (Step 5, Option B). Part 1 (the
judgement-heavy work) is implemented and measured; this doc hands off the
remaining ACL2 authoring (1D) and the bounded Part 2 cleanup.

## What is done (Part 1, verified)

- **1A — `CanonicalFqBits253`** ([tools/gnark/internal/compliance/canonical_fq_bits.go](../../../../../tools/gnark/internal/compliance/canonical_fq_bits.go)):
  decomposes one operand into 253 little-endian bits and emits the Kestrel
  `make-range-check-constraints` shapes for `c = p-1, n = 253` (87 boolean
  a-constraints, 166 zero-bit a-constraints `(1-pi_{i+1}-a_i)·a_i=0`, 86 bitand
  pi-constraints `pi_{i+1}·a_i=pi_i`, `pi_252:=a_252`, zero-bit pi aliasing) plus
  a packing constraint. No `api.ToBinary`/`MustBeLessOrEqCst`.
- **1B — `lexLess253` + `AssetRegistryGap`** (same file): MSB ladder reusing the
  materialized bits; fused comparator decomposes leaf/id/next **once each**.
- **1C — measured GO**: `gadget-imt-gap` 6074 → `AssetRegistryGap` **5568**
  (**−506, −8.33%**). Satisfiability + rejection smoke passes. Tests:
  [tools/gnark/internal/circuits/assetgap_measure_test.go](../../../../../tools/gnark/internal/circuits/assetgap_measure_test.go)
  (`TestAssetRegistryGapConstraintDelta`, `TestAssetRegistryGapSatisfiable`).
- **Export substrate wired**: `gnarkctl` compiles/exports the new gadgets.
  ```
  go run ./cmd/gnarkctl export-r1cs --circuit gadget-canonical-fq-bits \
      --format axe-lisp --out <path>     # 506-constraint single-operand book
  go run ./cmd/gnarkctl export-r1cs --circuit gadget-asset-registry-gap \
      --format axe-lisp --out <path>     # 5568-constraint fused book
  ```

## The exact shape mapping (read this before writing 1D)

The single-operand export (`CanonicalFqBitsGadget`, 506 constraints) maps to the
Kestrel constructor `(make-range-check-constraints avars pivars (1- p) 253)` (340
constraints) as follows. Verified against the generated book.

- **Wires:** `bit_i = INTERNAL-(2+i)` (LSB `bit_0 = INTERNAL-2`, MSB
  `bit_252 = INTERNAL-254`). Packing is constraint 0:
  `1 · (Σ 2^i·INTERNAL-(2+i)) = In`.
- **pi-products** appear next: e.g. constraint 1 is
  `INTERNAL-254 · INTERNAL-251 = INTERNAL-255` = `a_252 · a_249 = pi_249` — correct
  because `c`'s bits below the MSB are `0,0,1,…` (first 1-bit at index 249), so
  the zeros at 251,250 alias `pi := a_252` and the first emitted pi-constraint is
  at i=249. The whole π-ladder is faithful to `make-range-check-pi-constraints-aux`.
- **Two structural deltas from the constructor, both benign:**
  1. **Identity-wire doubling.** gnark compiles every `AssertIsEqual(Mul(a,b),c)`
     to TWO constraints (a product wire `a·b=out` + an `out=c` equality); it never
     folds to a single `a·b=c`. So the 166 zero-bit a-constraints each double:
     `506 = 1 pack + 87 boolean + 166·2 + 86 pi`. The 166 extra are trivial `out=0`
     equalities the Axe rewriter folds automatically. (The 87 `AssertIsBoolean`
     and the 86 pi-products — output wire *consumed*, not asserted-zero — stay 1
     each.)
  2. **Block order.** gnark emits `pack, pi-constraints, a-constraints`; the
     constructor is `(append a-constraints pi-constraints)`. A permutation, handled
     by `r1cs-constraints-holdp-of-append` reasoning, not an algebraic difference.
- **Net:** after identity-wire folding + reordering, the lifted slice IS the
  constructor shape. Instantiate `make-range-check-constraints-correct`
  (range-check.lisp:2268, **certified**) with `avars = (INTERNAL-2 … INTERNAL-254)`,
  `c = (1- p)`, `n = 253` → `packbv ≤ p-1`. No STP, no encoding-equivalence proof.
  Risk is "identity-wire normalization," not "different encoding."

## 1D — ACL2 books (status: substrate + keystone + composition CERTIFIED)

The substrate is generated and checked into `acl2/generated/`
(`gadget-canonical-fq-bits-r1cs` 506 constraints, `gadget-asset-registry-gap-r1cs`
5568 constraints, plus the canonical bit-inputs helper) and all six new books
below certify under acl2p locally (homebrew ACL2 8.7) and are wired into
`scripts/circuit-gadget-proof-check.sh`. Full re-certification still runs in the
CI `provers` job; the heavy bridge step (#2 below) remains open.

1. **`canonical-fq-bits-lift.lisp`** — CERTIFIED (1.9s). Axe lift checkpoint:
   the real 506-constraint reducedness R1CS ingests/lifts into a DAG. Documents
   the three benign structural deltas from the constructor (identity-wire
   doubling, block reorder, boolean strategy).
2. **`canonical-fq-bits-proof.lisp`** — CERTIFIED. `canonical-fq-bits-reduced`
   instantiates Kestrel's certified keystone `make-range-check-constraints-correct`
   at our exact parameters (c = p-1, n = 253): any valuation satisfying the
   `(make-range-check-constraints avars pivars (1- p) 253)` constraints forces
   `packbv(bits) ≤ p-1` and `bit-listp`. Every ground side condition (leading-1 at
   bit 252, `unsigned-byte-p 253 (p-1)`, list lengths/distinctness) is discharged
   by ground evaluation; `(primep (1- p+1))` is taken as a hypothesis (the keystone
   requires it — supply the checked-in BLS12-377 primality lemma at the call site).
   **OPEN (the remaining heavy step):** bridge this constructor-level keystone to
   the gnark 506-slice — fold the 166 identity-wire equalities, reorder
   `pack/pi/a → (append a-constraints pi-constraints)`, and reconcile the boolean
   strategy (87 standalone boolean constraints + 166 zero-bit positions pinned
   boolean by the shape) so the lifted slice IS the constructor. The lift
   checkpoint (#1) and this keystone (#2) are the two ends; the bridge connects
   them.
3. **`lex-less-proof.lisp`** — NOT yet written. `lexLess253 = (if (< A B) 1 0)`
   over canonical reps; reuse the certified ladder bridge
   (`field-less-than-ladder-proof.lisp`, `fq-lt-bit-when-</-not-<` in
   `fq-compare.lisp`). The ladder body is byte-identical to the old `FieldLessThan`
   ladder, so this is largely a re-point.
4. **`asset-registry-gap-proof.lisp`** — CERTIFIED. The composition primitive over
   the real 5568-constraint gadget: `holdp(whole) ⇔ holdp` of the five blocks
   `reg[0,1) · leaf[1,507) · id[507,1013) · next[1013,1519) · tail[1519,5568)`
   (structural identity + `r1cs-constraints-holdp-of-append-5`; same idiom as
   `imt-gap-compose-smoke.lisp`). Block boundaries verified by the operand
   packing-constraint scan. Once #2's bridge + #3 land, the per-block lemmas
   (keystone × 3 + ladder × 2 + proved iszero/bool-select) feed this decomposition
   to conclude `AssetRegistryGap = 1` over canonical reps and promote
   `gadget-imt-gap` to **proved** (stamp artifact + `.sha256`).

## Part 2 — bounded mechanical cleanup (cheaper model)

Done-checks in the approved plan. Now-dead artifacts to delete once 1D lands:

- `FieldLessThan` (full-field) in `threshold.go:54` and `FieldLessThanGadget`
  (`gadgets_constraint.go`). **Keep** 128-bit `fieldLessThan` (`threshold.go:37`).
- `gadget-field-less-than` cases in `gnarkctl/main.go` (`compileCircuit` +
  `gadgetCircuit`) and the bit-input special-case if now unused.
- `ImtGapGadget` / `AssetMembershipValid` once `AssetRegistryGap` is the shipped
  comparator and `VerifyAssetRegistryIMT` (`indexed_tree.go:294`) calls it.
- Old ACL2 reducedness books superseded by the three above (the deferred
  `field-less-than` reducedness route).
- Regenerate `generated/gadget-imt-gap-r1cs.lisp` from `gadget-asset-registry-gap`
  (or rename to `gadget-asset-registry-gap-r1cs`), re-check
  `imt-gap-compose-smoke.lisp` block indices.
- Wire the three new books into `scripts/circuit-gadget-proof-check.sh`; run both
  gate scripts + gnark family/differential tests; confirm gadget→property
  firewall still blocks.
