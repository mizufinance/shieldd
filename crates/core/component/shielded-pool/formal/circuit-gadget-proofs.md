# Circuit Gadget Proofs (Phase C / Track C)

Gadget-scoped `R1CS ⟹ spec` theorems. This is the **only** ledger whose rows may
hold `proved`, and a `proved` row here is scoped to a single decomposed gadget —
it never promotes a whole-circuit property row in
[circuit-soundness-properties.md](circuit-soundness-properties.md). Property rows
may *cite* a gadget proof as one supporting input while staying
`refined`/`composed`.

Status model (gadget rows):

- `proved` — a checked-in, certified `R1CS ⟹ spec` theorem over the **actual**
  gnark-exported constraints (parity test ties the model to the compiled gadget),
  with a stamped proof artifact. Enforced by the gate.
- `evidence` — Picus under-constraint clean at gadget scope: necessary, not
  sufficient. Recorded in
  [circuit-constraint-report.txt](circuit-constraint-report.txt).
- `decomposed` — gadget isolated and exported, no theorem yet.
- `planned` — spec/obligation identified, gadget not yet decomposed.

| Gadget label | Spec proved | Theorem | Artifact | Cited by | Status |
| --- | --- | --- | --- | --- | --- |
| `gadget-bool-select` | `Valid = Select(Cond, IfTrue, IfFalse)`; `Cond` booleanity is derived from c0 over BLS12-377 Fr | `BOOL-SELECT-R1CS-IMPLIES-SPEC` and `COND-BOOLEAN-FROM-R1CS-C0` in [acl2/bool-select-proof.lisp](acl2/bool-select-proof.lisp) | [acl2/bool-select-proof-artifact.txt](acl2/bool-select-proof-artifact.txt) | `REGULATED-STATUS-SOUNDNESS` | `proved` |
| `gadget-iszero` | `OUT = 1` iff `IN = 0`, otherwise `OUT = 0`, over canonical BLS12-377 Fr residues | `ISZERO-R1CS-IMPLIES-SPEC` in [acl2/iszero-proof.lisp](acl2/iszero-proof.lisp) over the 3-constraint gnark export | [acl2/iszero-proof-artifact.txt](acl2/iszero-proof-artifact.txt) | `gadget-imt-gap`, `REGULATED-STATUS-SOUNDNESS` | `proved` |
| `gadget-poseidon2` | `OUT = Poseidon377(DOMAIN, IN0, IN1)` over the 276-constraint gnark export and generated R1CS-shaped spec | `verify-r1cs` in [acl2/poseidon2-proof.lisp](acl2/poseidon2-proof.lisp); generated spec in [acl2/generated/poseidon377-spec.lisp](acl2/generated/poseidon377-spec.lisp) certifies Go/Rust vectors | [acl2/poseidon2-proof-artifact.txt](acl2/poseidon2-proof-artifact.txt) | `CIPHERTEXT-CORRECTNESS`, `NO-DOUBLE-SPEND`, Merkle-path composition | `proved` |
| `gadget-nullifier` | `NULLIFIER = Poseidon377(nullifier-domain, NK, STATECOMMITMENT, POSITION)` over the 311-constraint gnark export | `verify-r1cs` in [acl2/nullifier-proof.lisp](acl2/nullifier-proof.lisp) | [acl2/nullifier-proof-artifact.txt](acl2/nullifier-proof-artifact.txt) | `NO-DOUBLE-SPEND` | `proved` |
| `gadget-field-less-than` | `OUT = (A < B ? 1 : 0)` over BLS12-377 Fr (single 253-bit `to_bits_le` comparator) | lift checkpoint plus certified pack/ladder/bridge checkpoints ([acl2/field-less-than-lift.lisp](acl2/field-less-than-lift.lisp), [acl2/field-less-than-pack-proof.lisp](acl2/field-less-than-pack-proof.lisp), [acl2/field-less-than-ladder-proof.lisp](acl2/field-less-than-ladder-proof.lisp), [acl2/field-less-than-proof.lisp](acl2/field-less-than-proof.lisp)); public-value semantic theorem not proved | [acl2/field-less-than-pack-proof-artifact.txt](acl2/field-less-than-pack-proof-artifact.txt), [acl2/field-less-than-ladder-proof-artifact.txt](acl2/field-less-than-ladder-proof-artifact.txt), [acl2/field-less-than-proof-artifact.txt](acl2/field-less-than-proof-artifact.txt) | `gadget-imt-gap`, `REGULATED-STATUS-SOUNDNESS` | `decomposed` |
| `gadget-imt-gap` | `Select(IsRegulated, exactMatch, inGap) == 1` comparator | — | — | `REGULATED-STATUS-SOUNDNESS` | `evidence` |

## Scope honesty

- `gadget-bool-select` proves the **routing primitive** (a satisfying R1CS
  assignment forces `Valid` to the spec-selected branch). It is the end-to-end
  certified anchor for the C3 methodology: a real `R1CS ⟹ spec` proof over the
  byte-for-byte gnark export (parity asserted by
  `TestBoolSelectAcl2ModelParity`). Booleanity of `Cond` is now derived from c0
  via the checked BLS12-377 scalar-field prime certificate; it is no longer a
  theorem hypothesis.
- `gadget-iszero` proves the exact-match primitive used inside
  `AssetMembershipValid`: the three gnark constraints force `Out` to 1 exactly
  for zero input and to 0 for nonzero input. The proof is a base-ACL2 field
  argument over the generated R1CS shape; it remains gadget-scoped and does not
  compose the full IMT gap by itself.
- `gadget-poseidon2` now has a certified semantic `verify-r1cs` theorem over the
  actual 276-constraint gnark export. The proof opens the generated
  `poseidon377-hash2-r1cs-axe` spec, rewrites each folded `poseidon377-pow17`
  S-box through the 5-mul R1CS chain, and normalizes gnark's signed field
  coefficients. The generated Poseidon377 spec still certifies the existing Rust
  vector plus generated hash2/hash3 Go-native vectors, so the proved R1CS-shaped
  spec stays tied to the reference export.
- `gadget-nullifier` now has a certified semantic `verify-r1cs` theorem over the
  actual 311-constraint gnark export. The proof composes with the Poseidon377
  hash3 R1CS-shaped spec at the fixed nullifier domain; the only specialization
  is the domain S-box that gnark precomputes into constants before emitting the
  nullifier R1CS. This remains a gadget-scoped theorem and promotes no
  whole-circuit property row by itself.
- `gadget-field-less-than` is the isolated single 253-bit comparator (3035
  constraints; public `A`/`B`, witness `Out`) that `gadget-imt-gap` invokes
  twice. The axe-lisp export certifies, the Axe **lift** of the real
  3035-constraint R1CS succeeds.  Certified checkpoints now cover the exact
  `ToBinary` recomposition terms for both public operands, the comparator suffix
  beginning at constraint 1012 proving that `OUT` equals the prefix-equality MSB
  ladder over the two generated 253-bit operand runs, and a composed bridge from
  assumed `packbv` equalities plus bit-list hypotheses to integer `<`. The row
  remains `decomposed`, not `proved`, because the generated reducedness ladders
  are not yet connected to the final public-value theorem
  `OUT = (A < B ? 1 : 0)` without those assumptions.
  Findings that scope it (recorded so the next pass does not re-derive them):
  the gnark `to_bits_le` comparator must be proved via the Kestrel `:bit-inputs`
  workflow — declare the **506** boolean-constrained decomposition wires
  (INTERNAL-4..256 = `A`'s bits, INTERNAL-343..595 = `B`'s bits; each forced
  boolean by its own `X*(1-X)=0` constraint, the bool-select-c0 shape) as bit
  inputs, then prove recomposition (`packbv` of the bits = `A`,`B`) and ladder
  ordering (= integer `<`). Deriving `bitp` of the witness bits *inside*
  `verify-r1cs` does not fire — that is not the tool's idiom. The reusable lemma
  base for this field is the AleoVM BLS12-377 Axe support (`bitp-of-mul`,
  boolean-alt-rules, fe-listp-fast), reconstructed from portable Kestrel
  `prime-fields/bv-rules` + `kestrel/bv` bvcat/bvlt books (the AleoVM book itself
  is not pre-certified and drags in SHA-3/keccak deps, so it is a template, not an
  include). This is range-check.lisp-scale staged rule-list work.
  2026-06-06 checkpoint: the bit-input set is now generated by
  `gnarkctl extract-bit-inputs` from the checked-in Axe Lisp export and certifies
  as `acl2/generated/gadget-field-less-than-bit-inputs.lisp`; it deterministically
  returns exactly the two 253-wire runs above.  The portable support book
  `acl2/lib/fq-compare.lisp` certifies under `acl2p` and includes the BLS12-377
  prime certificate, boolean/recomposition rules, full `bvlt-of-bvcat` rules, and
  Axe `<`-to-`bvlt` introduction rules.  A semantic `verify-r1cs` attempt with
  that generated bit-input manifest reduced the real 2531-constraint R1CS to the
  expected 506-bit obligation but failed to prove the generated gnark
  reducedness-check plus MSB-first dual-ladder theorem.  The missing lemma is
  now precise: the actual FieldLessThan R1CS, including `ToBinary`'s
  `MustBeLessOrEqCst` reducedness constraints for both operands, must be bridged
  to `packbv`/`bvlt` and then to canonical integer `<`.  A Go regression
  (`TestFieldLessThanRejectsNonCanonicalBinaryAlias`) confirms the reducedness
  constraints reject the malicious `value + modulus` bit-decomposition alias, so
  this is a proof-rule/theorem gap, not a known circuit counterexample.
  **Spike 1 decision (2026-06-06) — path settled, obligation splits in two.**
  Orientation diff of the gnark ladder ([threshold.go:35-52](../../../../tools/gnark/internal/compliance/threshold.go#L35))
  against Kestrel `range-check.lisp`
  (`kestrel/crypto/r1cs/sparse/gadgets/range-check.lisp`, theorem
  `make-range-check-constraints-correct`): both are **MSB-first** (gnark
  `api.ToBinary` yields an LSB-indexed array `a = Σ aBits[i]·2^i`, the ladder
  *scans* `i = 252 … 0`; range-check packs `packbv n 1 (reverse-list avars)`,
  also MSB-first). **Orientation already matches, so Path C (re-orient the
  export) is ruled out** — re-shaping the decomposition cannot help. The
  obligation therefore splits, and each half takes a *different* path:
  - **Reducedness half → Path A (reuse range-check verbatim).**
    `make-range-check-constraints-correct` proves `packbv(value) ≤ c` for a
    **constant** `c`. gnark's `ToBinary(x, 253)` over the 253-bit Fr emits exactly
    that shape — a `MustBeLessOrEqCst(bits, modulus-1)` compare-to-constant ladder
    per operand — but the certified public theorem has not completed this lift.
    The adapter must combine gnark's up-front `ToBinary` boolean constraints with
    the reducedness pi/zero constraints: the pi ladder matches Kestrel's
    `make-range-check-pi-constraints`, while Kestrel's constructor also includes
    duplicate boolean constraints for `1` bits that gnark relies on the shared
    `ToBinary` bit constraints to provide. The orientation adapter remains the
    `reverse-list` between gnark's LSB-indexed bit array and Kestrel's MSB-first
    `packbv` input.
  - **Two-witness `A < B` half → Path B (standalone theorem).**
    range-check is value-vs-**constant** only; the comparator ladder is
    two-witness over `aBits[i]`,`bBits[i]`. The Go gadget now uses an explicit
    prefix-equality state machine: at the first differing MSB, `isLess` latches
    `1` exactly when `ai=0, bi=1`, and `prefixEqual` zeroes so later bits cannot
    change the result. `acl2/lib/fq-compare.lisp` proves
    `fq-prefix-ladder-less-equals-bit-list-lt-msb`, and
    `acl2/field-less-than-ladder-proof.lisp` certifies the generated R1CS suffix
    against that function. `acl2/field-less-than-pack-proof.lisp` certifies the
    exact generated `ToBinary` recomposition terms for `A` and `B`, and
    `acl2/field-less-than-proof.lisp` certifies the pure bridge from those
    packed operands plus the ladder theorem to integer `<`. The remaining gap is
    discharging the `packbv`/reducedness assumptions directly from the generated
    packing/reducedness constraints in one public theorem.
  `verify-r1cs` skeleton for codex: `:bit-inputs *GADGET-FIELD-LESS-THAN-bit-inputs*`
  (the 506 wires), `:global-rules fq-compare-global-rules`, staged
  `:rule-lists '( <Path-A reducedness/range-check rules> <Path-B ladder rules
  from fq-compare-ordering-rules + the new induction lemma> )`, spec
  `OUT = (if (< A B) 1 0)` with `A`,`B` recomposed via
  `fq-compare-recomposition-rules`. **Precise residual for codex:** discharge the
  range-check obligation-shape lift of each operand's `MustBeLessOrEqCst`
  sub-R1CS, then connect that reducedness fact with the certified exact-pack and
  ladder checkpoints in one public `OUT = (if (< A B) 1 0)` theorem. Path C and
  the exhausted portable-bvlt monolithic route are not to be retried. Row stays
  `decomposed`; no promotion.

  **Path A empirical findings (2026-06-07) — "verbatim reuse" refuted; STP is the
  one unexhausted lever.** Direct execution of Path A against the generated R1CS
  established the exact constraint layout and ran the decisive experiments:
  - *Layout (3035 constraints).* A-pack `0–253` (index 253 = the big
    recomposition), **A-reducedness `254–505`** (252 constraints), B-pack
    `506–759` (index 759 = big recomposition), **B-reducedness `760–1011`**,
    comparator ladder `1012–3034`. Each reducedness slice is genuinely gnark's
    `MustBeLessOrEqual`: a π running-product chain writing fresh wires
    `INTERNAL-257..342` (A) plus low-bit selection constraints
    `a_i·(1 − a_i − INTERNAL-342) = 0` (the final prefix-product wire gates the
    low bits). `p−1` is exactly 253 bits with a leading 1 — valid range-check
    constant.
  - *A2 (Kestrel constructor reuse) is ruled out, not just "adapter work".*
    `(make-range-check-constraints (internal-wire-range 4 256) <pivars> (1- p) 253)`
    computes to **339** constraints vs gnark's **252**. The encodings differ
    structurally: gnark shares `ToBinary` booleanity and allocates only the ~86
    *used* product wires, whereas Kestrel emits per-bit a-constraints + a
    pivar-renaming-alias scheme. So `make-range-check-constraints-correct` cannot
    be instantiated by list/permutation equality; reuse would require a full
    semantic-equivalence proof between two different encodings (its own large
    proof).
  - *A1 by rewriting is ruled out.* `verify-r1cs` on the lifted A-reducedness
    slice with spec `(<= (packbv 253 1 a-bits-msb) (1- p))`, tactic
    `(:rep :rewrite :subst)`, fails in ~0.4 s: the residual goal is a 421-literal
    conjunction (3907 `MUL`s) the rewriter cannot discharge — the bound needs
    genuine inductive/bitvector reasoning, not rewriting. This is the same wall as
    the exhausted portable-bvlt route.
  - *The unexhausted lever: the Axe `:stp` tactic.* `tactic-prover.lisp` exposes
    `:stp` (bit-vector SMT). A bounded `packbv ≤ p−1` over boolean inputs is
    exactly an STP/bit-blast goal and is Axe's intended tool for R1CS bound
    obligations. **Blocker: no STP binary is installed** (`stp` not on PATH;
    `STP_BIN`/`ACL2_STP` unset; toolchain.toml pins z3 but no STP). Closing
    reducedness now hinges on either installing STP and proving the two slice
    bounds with a `(... :stp)` tactic, or hand-proving the bound by an explicit
    induction over the π-wire recurrence (high effort; distinct from the exhausted
    bvlt reconstruction). Row stays `decomposed`; no promotion.
- No row here promotes a whole-circuit property. `REGULATED-STATUS-SOUNDNESS`
  stays `refined` even though it now cites a `proved` gadget, because the
  whole-circuit comparator wiring (16-deep Merkle path, full-field comparators)
  is outside the proved gadget's scope.
- **Spike 3 decision (2026-06-06) — composition mechanism settled (append idiom,
  not PFCS), validated on one node.** The pinned ACL2 distribution does **not**
  ship the general Kestrel PFCS framework (`kestrel/pfcs` absent; only a narrow
  `kestrel/air/model-0` variant). The composition mechanism is therefore the
  R1CS **constraint-list `append` idiom** the Kestrel gadgets dir already uses:
  the whole-circuit constraint list is the `append` of per-gadget sub-lists, and
  the upstream lemma `r1cs-constraints-holdp-of-append`
  (`kestrel/crypto/r1cs/sparse/r1cs.lisp`) gives
  `holdp(append G1 G2 …) = (and holdp(G1) holdp(G2) …)`. Each gadget contributes
  its standalone `iff` characterization (range-check style); composition conjoins
  them — locality holds without a PFCS DSL. Validated on the real `AssetMembershipValid`
  node ([indexed_tree.go:305](../../../../tools/gnark/internal/compliance/indexed_tree.go#L305)):
  book `compose-smoke.lisp`, theorem `asset-membership-compose-wiring` certifies
  under `acl2p`, composing the M1 `bool-select` (Select) + two `FieldLessThan`
  (assumed via Spike 1) + IsZero (assumed) + Mul into
  `out==1 ⟺ (regulated ∧ exact-match) ∨ (unregulated ∧ leaf<note<next)`. The
  16-deep Merkle path (`verify_quad_path`) composes by the **same** append idiom,
  one Poseidon block (Spike 2) per level. **For codex:** build whole-circuit rows
  by `append`-ing the gadget sub-R1CS lists and rewriting with each gadget's
  `iff` characterization + `r1cs-constraints-holdp-of-append`; swap the assumed
  comparator/Poseidon lemmas for the real Spike 1/2 outputs. **Whole-circuit gate
  contract** (`check_whole_circuit_artifact`,
  [check-soundness-invariants.sh:169](../../../../scripts/check-soundness-invariants.sh#L169)):
  the artifact must be named `acl2/*whole-circuit*-artifact.txt`, be cited
  verbatim in the property row's `soundness-handoff.md` Evidence field, carry a
  `.sha256` stamp, and contain the literal string `whole-circuit`. No
  `kestrel/pfcs` vendoring is required; if a future proof needs the PFCS DSL
  specifically, that is a separate toolchain addition. Rows unchanged; no
  promotion.
- **Spike 3 realized (2026-06-07) — append decomposition certified on the real
  exported `imt-gap` artifact.** The 2026-06-06 note above settled the mechanism
  in the abstract; this run validates it against the actual gnark export. The
  generated R1CS book [acl2/generated/gadget-imt-gap-r1cs.lisp](acl2/generated/gadget-imt-gap-r1cs.lisp)
  (4396 vars, **6074 constraints**) is now certified (its
  [.acl2](acl2/generated/gadget-imt-gap-r1cs.acl2) portcullis forces interpreted
  certification — the constraint literal overflows SBCL's `(signed-byte 19)` file
  compiler). Book [acl2/imt-gap-compose-smoke.lisp](acl2/imt-gap-compose-smoke.lisp)
  certifies under `acl2p` (cert.pl, ~0.4s, locally) with two theorems:
  `imt-gap-block-decomposition` (the constraint list **is** the `append` of four
  named gadget blocks, by ground computation) and `imt-gap-holdp-decomposition`
  (`holdp(whole) ⟺ holdp(front) ∧ holdp(comp1) ∧ holdp(comp2) ∧ holdp(back)` —
  the composition primitive). Block map, verified by var-occurrence scan against
  `AssetMembershipValid`:
  | Block | Indices | Gadget | Output wire | Backing row |
  |---|---|---|---|---|
  | front | `[0,3)` | isRegulated booleanity + IsZero | `INTERNAL-5` = `(id==leaf)` | `gadget-iszero` (**proved**) |
  | comp1 | `[3,3037)` | `FieldLessThan(leafValue, noteAssetID)` | `INTERNAL-2197` = `(leaf<id)` | `gadget-field-less-than` (**decomposed/deferred**) |
  | comp2 | `[3037,6071)` | `FieldLessThan(noteAssetID, nextValue)` | `INTERNAL-4391` = `(id<next)` | `gadget-field-less-than` (**decomposed/deferred**) |
  | back | `[6071,6074)` | `inGap = gtLow·ltHigh`; select; output `inGap + sel = 1` | — | `gadget-bool-select` (**proved**) |
  Each comparator embeds as **3034** constraints (one fewer than the 3035-constraint
  standalone gadget: the standalone public-`OUT` booleanity is the embedded
  comparator's output-wire booleanity at the block tail, e.g. idx 3036). **Remaining
  to close the imt-gap whole-circuit row:** swap the two assumed comparator block
  lemmas for the real `gadget-field-less-than` theorem (blocked on the deferred
  reducedness keystone) and instantiate the proved `gadget-iszero` /
  `gadget-bool-select` theorems on the front/back blocks; `imt-gap-holdp-decomposition`
  then feeds all four directly. No row promoted; `gadget-imt-gap` stays `evidence`.

## Reproduction

`bash scripts/circuit-gadget-proof-check.sh` runs the parity/fidelity tests,
regenerates the checked-in Poseidon2 Axe Lisp export, certifies the ACL2/Axe
books with the parallel `acl2p` image, and checks the stamped artifacts. Heavy
prover work — it runs in the soundness-formal CI `provers` job, not on PRs.
