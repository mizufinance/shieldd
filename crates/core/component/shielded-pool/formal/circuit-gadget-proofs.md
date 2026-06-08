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
| `gadget-imt-gap` | `Select(IsRegulated, exactMatch, inGap) == 1`, where `inGap` is the product of the embedded `leaf<id` and `id<next` lexLess ladders, over the 5568-constraint AssetRegistryGap export | `verify-r1cs` in [acl2/asset-registry-gap-output.lisp](acl2/asset-registry-gap-output.lisp) | [acl2/asset-registry-gap-output-artifact.txt](acl2/asset-registry-gap-output-artifact.txt) | `REGULATED-STATUS-SOUNDNESS` | `proved` |

## Scope honesty

- `gadget-bool-select` proves the **routing primitive** (a satisfying R1CS
  assignment forces `Valid` to the spec-selected branch). It is the end-to-end
  certified anchor for the C3 methodology: a real `R1CS ⟹ spec` proof over the
  byte-for-byte gnark export (parity asserted by
  `TestBoolSelectAcl2ModelParity`). Booleanity of `Cond` is now derived from c0
  via the checked BLS12-377 scalar-field prime certificate; it is no longer a
  theorem hypothesis.
- `gadget-iszero` proves the exact-match primitive used inside AssetRegistryGap:
  the three gnark constraints force `Out` to 1 exactly for zero input and to 0
  for nonzero input. The proof is a base-ACL2 field argument over the generated
  R1CS shape; it remains gadget-scoped and does not compose the full IMT gap by
  itself.
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
- **AssetRegistryGap (Option B) measured — GO (2026-06-08).** The proof-friendly
  redesign is implemented in gnark
  ([tools/gnark/internal/compliance/canonical_fq_bits.go](../../../../../tools/gnark/internal/compliance/canonical_fq_bits.go)):
  `canonicalFqBits253` decomposes each operand once and emits the **exact**
  Kestrel `make-range-check-constraints` shapes for `c = p-1, n = 253` (87
  boolean a-constraints + 166 zero-bit a-constraints `(1-pi_{i+1}-a_i)·a_i=0` +
  86 bitand pi-constraints `pi_{i+1}·a_i=pi_i`, with `pi_252:=a_252` and zero-bit
  pi aliasing), plus one packing constraint; `lexLess253` reuses those bits in
  the certified MSB ladder; `AssetRegistryGap` fuses exact-match + two
  comparisons + gap-mul + select with **three** decompositions instead of four.
  - **Constraint delta: 6074 → 5568 = −506 (−8.33%).** The shipped
    `gadget-imt-gap` label now maps to the 5568-constraint AssetRegistryGap
    export; `TestAssetRegistryGapConstraintShape` pins the current count.
  - **Satisfiability/soundness smoke:** `TestAssetRegistryGapSatisfiable` accepts
    the unregulated gap (`leaf<id<next`) and regulated exact-match, and rejects
    id-outside-gap and regulated non-match.
  - **Proof-work win:** reducedness closes by instantiating
    `make-range-check-constraints-correct` (range-check.lisp:2268, certified) per
    operand, and the final output predicate closes with the nullifier-style
    named-rewrite + final-`verify-r1cs` recipe. The ACL2 gate certifies this
    locally with `acl2p`; Lean remains CI-gated when `lake` is absent locally.
  - **1A shape finding — Kestrel-shaped *modulo trivial identity folding*, not
    byte-identical.** The Kestrel `make-range-check-constraints` constructor for
    `c = p-1, n = 253` is **340** R1CS constraints (87 boolean a-constraints for
    the 1-bits + 166 zero-bit a-constraints `(1-pi_{i+1}-a_i)·a_i=0` + 86 bitand
    pi-constraints `pi_{i+1}·a_i=pi_i`). The exported `CanonicalFqBitsGadget`
    slice is **506** (measured), because gnark compiles every
    `AssertIsEqual(Mul(a,b), c)` to **two** constraints — a product wire
    `a·b=out` plus an `out=c` identity equality — and never folds it to a single
    `a·b=c` (confirmed by micro-test). The 87 `AssertIsBoolean` 1-bit constraints
    and the 86 pi-products (whose output wire is *consumed*, not asserted-zero)
    stay 1 each; only the 166 zero-bit constraints double. So
    `506 = 1 pack + 87 + 166·2 + 86`. The 166 extra are trivial `out=0` identity
    equalities the Axe rewriter folds automatically. **Consequence for 1D:** the
    ACL2 book does NOT get a literal `(equal lifted (make-range-check-constraints
    …))`; it lifts the 506-slice, folds the identity equalities (rewriter), and
    the *normalized* form is the Kestrel constructor shape, against which
    `make-range-check-constraints-correct` instantiates. This is strictly easier
    than the original `MustBeLessOrEqCst` adapter (which differed *algebraically*,
    252 optimized constraints) — here the only delta is folding `x=0` wires. Risk
    downgraded from "encoding-equivalence proof" to "identity-wire normalization."
  - **1D progress — substrate + keystone + composition CERTIFIED (2026-06-08,
    acl2p homebrew 8.7).** Six new books certify locally and are
    wired into `circuit-gadget-proof-check.sh`:
    `generated/gadget-canonical-fq-bits-r1cs` (506) + its bit-inputs +
    `generated/gadget-imt-gap-r1cs` (5568) ingest;
    `canonical-fq-bits-lift` lifts the 506-slice under Axe (1.9s);
    **`canonical-fq-bits-proof`** proves `canonical-fq-bits-reduced` —
    instantiates the certified keystone `make-range-check-constraints-correct` at
    `c = p-1, n = 253` so satisfying the constructor constraints forces
    `packbv(bits) ≤ p-1` (every ground side condition discharged by evaluation;
    `primep` taken as a hypothesis); **`asset-registry-gap-proof`** proves the
    5-way `holdp` block decomposition `reg·leaf·id·next·tail` over the real 5568
    gadget (boundaries `[0,1)·[1,507)·[507,1013)·[1013,1519)·[1519,5568)` verified
    by the operand packing scan).
  - **1E output closure CERTIFIED (2026-06-08, acl2p homebrew 8.7).**
    [acl2/asset-registry-gap-output.lisp](acl2/asset-registry-gap-output.lisp)
    follows the nullifier recipe: named ACL2 ladder-chain rewrites collapse the
    two embedded lexLess blocks (`leaf<id` and `id<next`), named algebra rewrites
    collapse the final `inGap`/Select/output constraints, and one final
    `verify-r1cs` over the real 5568-constraint `AssetRegistryGap` export proves
    the gadget output predicate. The stamped artifact is
    [acl2/asset-registry-gap-output-artifact.txt](acl2/asset-registry-gap-output-artifact.txt).
- No row here promotes a whole-circuit property. `REGULATED-STATUS-SOUNDNESS`
  stays `refined` even though it now cites a `proved` gadget, because the
  16-deep Merkle path and whole-circuit wiring are outside the proved gadget's
  scope.
- **Spike 3 decision (2026-06-06) — composition mechanism settled (append idiom,
  not PFCS).** The pinned ACL2 distribution does **not** ship the general Kestrel
  PFCS framework (`kestrel/pfcs` absent; only a narrow `kestrel/air/model-0`
  variant). The composition mechanism is therefore the R1CS **constraint-list
  `append` idiom** the Kestrel gadgets dir already uses: the whole-circuit
  constraint list is the `append` of per-gadget sub-lists, and the upstream lemma
  `r1cs-constraints-holdp-of-append`
  (`kestrel/crypto/r1cs/sparse/r1cs.lisp`) gives
  `holdp(append G1 G2 ...) = (and holdp(G1) holdp(G2) ...)`. Each gadget
  contributes its standalone characterization; composition conjoins them, so
  locality holds without a PFCS DSL. **Whole-circuit gate contract**
  (`check_whole_circuit_artifact`,
  [check-soundness-invariants.sh:169](../../../../scripts/check-soundness-invariants.sh#L169)):
  the artifact must be named `acl2/*whole-circuit*-artifact.txt`, be cited
  verbatim in the property row's `soundness-handoff.md` Evidence field, carry a
  `.sha256` stamp, and contain the literal string `whole-circuit`. No
  `kestrel/pfcs` vendoring is required; if a future proof needs the PFCS DSL
  specifically, that is a separate toolchain addition. Rows unchanged; no
  promotion.
- **Spike 3 realized (2026-06-08) — append decomposition certified on the
  shipped `gadget-imt-gap` export.** The generated R1CS book
  [acl2/generated/gadget-imt-gap-r1cs.lisp](acl2/generated/gadget-imt-gap-r1cs.lisp)
  now carries the 5568-constraint AssetRegistryGap export under the shipped label.
  Book [acl2/imt-gap-compose-smoke.lisp](acl2/imt-gap-compose-smoke.lisp)
  certifies the five-block append decomposition:
  `reg[0,1) · leaf[1,507) · id[507,1013) · next[1013,1519) · tail[1519,5568)`.

## Reproduction

`bash scripts/circuit-gadget-proof-check.sh` runs the parity/fidelity tests,
regenerates the checked-in Poseidon2 Axe Lisp export, certifies the ACL2/Axe
books with the parallel `acl2p` image, and checks the stamped artifacts. Heavy
prover work — it runs in the soundness-formal CI `provers` job, not on PRs.
