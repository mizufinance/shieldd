# C3-Full Execution Plan (post-spike) — drive M3→M6 to done

This is the **execution** worklist for codex. The decision gates are already
resolved (see the 2026-06-06 Spike decisions in
[circuit-gadget-proofs.md](circuit-gadget-proofs.md) and the Spike 4 block in
[toolchain.toml](toolchain.toml)). Nothing here waits on a design choice — every
step has a named approach and a precise theorem. Work top to bottom; M3/M4 are
independent and may interleave.

## What the spikes settled (do not re-litigate)

| Blocker | Settled approach | Validated by |
|---|---|---|
| M3 comparator | Obligation **splits**: Path A (range-check verbatim) for reducedness + Path B (standalone induction) for the `A<B` dual ladder. Path C and portable-bvlt monolith are dead. | orientation diff |
| M4 Poseidon | **Open `poseidon377-pow17`** in the rewrite stage; folded spec spreads into the 5-mul R1CS chain. Bridge-`defthm` is fallback only. | `pow17-chain-collapses` certified |
| M5 composition | **No PFCS DSL exists** in the pinned books. Compose via R1CS **`append` idiom**: `r1cs-constraints-holdp-of-append` + per-gadget `iff` theorems. | `asset-membership-compose-wiring` certified |
| M6 Lean | Extractor v3 pins gnark 0.9.2; repo is 0.14.0 → **vendor-fork + port** required (or documented degrade). | go.mod recon |

## Standing rules (unchanged)

- A `proved` row needs a checked-in **certified** artifact + a stamp the gate
  verifies. Gadget `proved` rows may stand alone; **property** `proved` rows
  additionally need a whole-circuit artifact (M5).
- Heavy prover work is **CI-only** (`provers` job in
  [soundness-formal.yml](../../../../.github/workflows/soundness-formal.yml)).
  State explicitly which steps were certified locally vs left CI-pending.
- Use **`acl2p`** (`/opt/homebrew/bin/acl2p`); cert with
  `<books>/build/cert.pl --acl2 /opt/homebrew/bin/acl2p <book>`. No `timeout(1)`.
- Never idle: if a step blocks, record the precise residual at the honest status
  and move to the next independent unit. Do not retry a spike-killed route.

---

## M3 — FieldLessThan semantic discharge

Goal: `gadget-field-less-than` row `decomposed → proved`, theorem
`OUT = (if (< A B) 1 0)` over the real 2531-constraint R1CS.

New file: `acl2/field-less-than-proof.lisp` (the lift file stays a `local`
checkpoint). Support lemmas land in `acl2/lib/fq-compare.lisp`.

### Step M3.1 — Path A: reducedness per operand (range-check reuse)

`ToBinary(x,253)` emits, per operand, a `MustBeLessOrEqCst(bits, p-1)`
compare-to-constant ladder. Kestrel
`kestrel/crypto/r1cs/sparse/gadgets/range-check.lisp` theorem
`make-range-check-constraints-correct` already proves
`(<= (packbv n 1 (lookup-eq-lst (reverse-list avars) val)) c)` for a constant `c`.

1. `include-book` range-check (it certifies in-distribution).
2. Identify the two reducedness sub-constraint blocks in
   `*GADGET-FIELD-LESS-THAN-constraints*` (the `pi`/carry wires for each operand
   — these are the INTERNAL wires *outside* the two 253-bit bit-input runs
   INTERNAL-4..256 and INTERNAL-343..595).
3. Instantiate `make-range-check-constraints-correct` with `c = p-1`,
   `avars` = each operand's 253 bit wires. Adapter: gnark bit arrays are
   LSB-indexed; Kestrel `packbv` is MSB-first, so pass `(reverse-list avars)`.
4. Result lemmas: `A-reduced` / `B-reduced` giving
   `(unsigned-byte-p 253 (packbv 253 1 (reverse A-bits)))` and `< p`. These supply
   the `unsigned-byte-p 253` hypotheses Path B needs.

### Step M3.2 — Path B: two-witness MSB ladder induction

range-check is value-vs-constant only; the `A<B` ladder
([threshold.go:35-52](../../../../tools/gnark/internal/compliance/threshold.go#L35))
is two-witness. Prove standalone in `fq-compare.lisp`:

```
(defthm ladder-equals-bvlt            ; by induction on the 253 MSB->LSB steps
  (implies (and (bit-listp a-bits) (bit-listp b-bits)
                (equal (len a-bits) 253) (equal (len b-bits) 253))
           (equal <ladder isLess wire over a-bits,b-bits>
                  (bvlt 253 (packbv 253 1 a-bits) (packbv 253 1 b-bits)))))
```

Induction invariant: `prefixEqual=1 ⟹ the compared prefixes are equal`; at the
first differing bit (scanning MSB→LSB) `isLess` latches `(< ai bi)` and
`prefixEqual` zeroes, so later steps cannot change `isLess`. The carry-select
`isLess = isLess + (1-isLess)*lessAtI` (idempotent OR) is the step lemma. Then
chain to integer `<` with the already-proved
`bvlt-when-unsigned-byte-p-253` (uses M3.1's `unsigned-byte-p 253`).

### Step M3.3 — verify-r1cs assembly

In `field-less-than-proof.lisp`:

```
(verify-r1cs
  *GADGET-FIELD-LESS-THAN-constraints*
  '(equal OUT (if (< A B) 1 0))            ; A,B recomposed from bit runs
  *GADGET-FIELD-LESS-THAN-prime*
  :bit-inputs *GADGET-FIELD-LESS-THAN-bit-inputs*          ; the 506 wires
  :global-rules (fq-compare-global-rules)
  :rule-lists (list (append (fq-compare-recomposition-rules)  ; recompose packbv
                            <range-check reducedness rules>)   ; Path A
                    (append (fq-compare-ordering-rules)        ; Path B
                            '(ladder-equals-bvlt
                              bvlt-when-unsigned-byte-p-253))))
  :package "R1CS")
```

Keep the `lift-r1cs` form in `field-less-than-lift.lisp` as a `local` debug
checkpoint. Do **not** enable internal `bitp`-derivation (spike-killed).

### Step M3.4 — stamp + ledger + gate

- Produce `acl2/field-less-than-proof-artifact.txt` + `.sha256` (mirror
  `bool-select-proof-artifact.txt`; embed `proof_source_sha256:` of the `.lisp`).
- Wire the book + `check_artifact_stamp` into
  [circuit-gadget-proof-check.sh](../../../../scripts/circuit-gadget-proof-check.sh)
  (it currently certifies field-less-than but does not stamp it — add the stamp).
- Promote `gadget-field-less-than` `decomposed → proved`; scope note: semantic
  comparator over recomposed integers proved; whole-circuit wiring still excluded.
- Negative test: tamper the stamp, confirm `check-soundness-invariants.sh` fails,
  restore.

### Step M3.5 — compose `gadget-imt-gap` (append idiom)

Use the Spike-3 idiom (`asset-membership-compose-wiring` is the proven template).
The node constraint list = `append` of [IsZero, FieldLessThan×2, Mul, bool-select].

1. Prove the IsZero gadget `iff` characterization (small; exactMatch bit) — new
   gadget row `gadget-iszero` if not present.
2. Compose: `r1cs-constraints-holdp-of-append` distributes; substitute each
   gadget's `iff` (M3 comparator proved, M1 select proved, IsZero proved); reuse
   the `asset-membership-compose-wiring` logic to land
   `select(isRegulated, isExactMatch, isInGap) == 1` ⟺ gap/exact spec
   (`AssetMembershipValid`,
   [indexed_tree.go:305](../../../../tools/gnark/internal/compliance/indexed_tree.go#L305)).
3. New `proved` row `gadget-imt-gap`; stamp; `REGULATED-STATUS-SOUNDNESS` cites it
   but stays `refined` until M5.

---

## M4 — Poseidon-377 permutation + nullifier

Goal: `gadget-poseidon2` `evidence → proved` (`claimed_out = Poseidon377(domain,
in0, in1)`), then `gadget-nullifier` `decomposed → proved`.

### Step M4.1 — open pow17, scale to all 11 S-boxes

The spec book `acl2/generated/poseidon377-spec.lisp` already certifies vectors
(do not regenerate logic; only re-run the generator if the export changes). In
the `verify-r1cs` for `gadget-poseidon2` over the 276-constraint export:

1. Add `poseidon377-pow17` (the opener) to the rewrite stage running over the
   R1CS-shaped spec body `poseidon377-hash2-r1cs-axe`, plus the `pfield::mul` /
   `pfield::add` normalization rules already in the spec book. The folded pow17
   spreads into the 5-mul chain matching the R1CS wires (validated on one chain by
   `pow17-chain-collapses`).
2. Scale: the same opener applies to all 8 full-round + 31 partial-round S-boxes.
   The S-box input linear exprs `rN-aM` already match the gnark MDS-compressed
   wire layout because `writePoseidonR1CSAxeHashFunction`
   ([poseidon_acl2.go:450](../../../../tools/gnark/cmd/gnarkctl/poseidon_acl2.go#L450))
   generated them to mirror it.
3. **Fallback** (only if opening pow17 destabilizes linear-expr normalization at
   full scale): add a per-chain bridge `defthm` of the `pow17-chain-collapses`
   shape as a `verify-r1cs` hint. The single-chain proof suggests the opener
   alone suffices — try it first, escalate only on a real blow-up.

### Step M4.2 — nullifier composition

`gadget-nullifier` = `Poseidon377(nk, stateCommitment, position)`. Compose via the
append idiom: the 311-constraint nullifier R1CS = the Poseidon permutation block
(M4.1 lemma) + the fixed nullifier-domain binding. Substitute the M4.1 Poseidon
`iff` and discharge the domain constant. Promote both rows; stamp each;
`NO-DOUBLE-SPEND` / `CIPHERTEXT-CORRECTNESS` cite them, stay `composed` until M5.

---

## M5 — Whole-circuit composition (promotes property rows)

Goal: first whole-circuit artifacts; property rows `refined/composed → proved`.

### Step M5.1 — Merkle path (append idiom up the quad-tree)

`verify_quad_path`
([r1cs.rs:29](../../../../crates/core/component/compliance/src/r1cs.rs#L29)) is 16
levels. Each level = one Poseidon block + a level-equality. Compose by `append`:
prove one level with the M4.1 Poseidon lemma (the Spike-3 one-level Merkle smoke
is the template), then induct/iterate up 16 levels. The constraint list of the
full path is the `append` of the 16 level blocks; `r1cs-constraints-holdp-of-append`
gives the conjunction.

### Step M5.2 — whole-circuit property theorems

- `REGULATED-STATUS-SOUNDNESS` = Merkle path (M5.1) ∘ imt-gap (M3.5), composed by
  `append` over the full circuit's exported R1CS.
- `NO-DOUBLE-SPEND` = state-commitment path ∘ nullifier (M4.2).
- Decompose+prove remaining named gadgets as composition needs them: balance
  commitment for `BALANCE-CONSERVATION`; encryption/DLEQ for
  `CIPHERTEXT-CORRECTNESS`.

### Step M5.3 — whole-circuit artifact + gate (contract is pinned)

Per the Spike-3 gate contract: artifact named
`acl2/<property>-whole-circuit-artifact.txt`, cited **verbatim** in the property
row's `soundness-handoff.md` Evidence field, with a `.sha256` stamp, and
containing the literal string `whole-circuit`
(`check_whole_circuit_artifact`,
[check-soundness-invariants.sh:169](../../../../scripts/check-soundness-invariants.sh#L169)).
Extend the gate so a `proved` **property** row requires this artifact (it already
enforces the firewall — confirm it fires). Only with the artifact does a property
row move to `proved`. Any composition the engine cannot close stays `refined`
with the precise residual — no overclaim. Partial M5 is acceptable if honest.

---

## M6 — Lean second engine (finish line)

Goal: source-level Lean proof of the high-value properties (comparator, nullifier,
whole-circuit `REGULATED-STATUS-SOUNDNESS` / `NO-DOUBLE-SPEND`) as an independent
TCB, cross-checked against the Axe chain.

### Step M6.1 — vendor-fork the extractor to gnark 0.14

Spike 4 established: `reilabs/gnark-lean-extractor/v3` pins gnark v0.9.2; repo is
v0.14.0 — direct `go get` is not viable.

1. Vendor the extractor under `tools/gnark/vendor/gnark-lean-extractor/` (or a
   replace-directive fork).
2. Port its gnark frontend-internals calls to 0.14: the `CircuitToLean`,
   `AbsDefine`, `Concretize` entry points hook `frontend.Builder` /
   constraint-system internals that changed across 0.9→0.14. Port the builder
   shim only — not the whole library.
3. Pin the resolved revision in [toolchain.toml](toolchain.toml)
   (`gnark_lean_extractor`), replacing the `vendor-fork-required` marker.

### Step M6.2 — emit, then prove

1. Refactor the smallest soundness gadget (`bool-select`, already Axe-proved) to
   the extractor's `AbsDefine`/`Concretize` shape; run `CircuitToLean` to emit a
   Lean `Prop`. Confirm `lake build` in [tools/gnark/lean/](../../../../tools/gnark/lean/)
   accepts it alongside the existing spec.
2. Replace the `opaque` Poseidon axioms in
   `tools/gnark/lean/ShielddGnarkFormal/Specs.lean` with the extracted models;
   port the shared spec of record (comparator `<`, gap predicate, nullifier =
   `Poseidon377(...)`, whole-circuit assertions) and prove the extracted `Prop`
   implies it with `proven-zk`. Add `proven-zk` to `lakefile.lean` +
   `lake-manifest.json`; pin in toolchain.toml.
3. Extend the gate + `circuit-gadget-proof-check.sh` to certify Lean proofs
   (`lake build` already runs there) and stamp Lean artifacts mirroring the Axe
   path. A property row records **both** engine artifacts; `proved` requires the
   Axe whole-circuit artifact, with Lean cited as independent corroboration (and
   the only proof tying the *source* circuit, not just compiled R1CS, to spec).

### Step M6.3 — reconcile

Any Axe-vs-Lean disagreement is itself a finding (DSL vs compiled R1CS diverge,
or a spec mis-transcribed) — resolve before trusting either. If effort must be
cut, degrade to "comparator + whole-circuit only" (Spike-4 documented fallback)
without losing the Axe-proved core.

---

## Sequencing

1. **M3** (Steps M3.1–M3.4) and **M4.1** in parallel — independent.
2. **M3.5 imt-gap** after M3 proved; **M4.2 nullifier** after M4.1.
3. **M5** after M3.5 + M4.2 (consumes both gadget lemmas via append).
4. **M6** can begin at M6.1 anytime (independent toolchain work); M6.2 proofs
   want the Axe specs to exist to cross-check, so land them after M5 specs.

## Verification (end-to-end)

1. `bash scripts/circuit-gadget-proof-check.sh` certifies every gadget proof
   (bool-select, field-less-than, imt-gap, poseidon2, nullifier) + Lean `lake
   build`; stamps match. Report run-locally vs CI-pending.
2. Each Axe-lift fidelity test passes; Poseidon spec still reproduces vectors.
3. `bash scripts/check-soundness-invariants.sh` — gadget `proved` rows and any M5
   `proved` property rows resolve to stamped artifacts; tampered stamp fails.
4. `gofmt -l tools/gnark` clean; `go test ./internal/...` green; `git diff --check`.
5. State explicitly which milestones were certified locally vs CI-pending.
