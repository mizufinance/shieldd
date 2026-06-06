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
| `gadget-poseidon2` | certified Axe lift smoke: first real round-constant square constraint implies `internal_5 = (domain + rc)^2`; semantic `Poseidon377(domain, in0, in1)` proof not proved | `POSEIDON2-LIFT-SMOKE` in [acl2/poseidon2-lift-smoke.lisp](acl2/poseidon2-lift-smoke.lisp) | [acl2/poseidon2-lift-smoke-artifact.txt](acl2/poseidon2-lift-smoke-artifact.txt) | Axe feasibility spike for `CIPHERTEXT-CORRECTNESS`, `NO-DOUBLE-SPEND` | `evidence` |
| `gadget-nullifier` | claimed nullifier equals `Poseidon377(nk, stateCommitment, position)` | — | — | `NO-DOUBLE-SPEND` | `evidence` |
| `gadget-field-less-than` | `OUT = (A < B ? 1 : 0)` over BLS12-377 Fr (single 253-bit `to_bits_le` comparator) | lift checkpoint only ([acl2/field-less-than-lift.lisp](acl2/field-less-than-lift.lisp)); semantic theorem not proved | — | `gadget-imt-gap`, `REGULATED-STATUS-SOUNDNESS` | `decomposed` |
| `gadget-imt-gap` | `Select(IsRegulated, exactMatch, inGap) == 1` comparator | — | — | `REGULATED-STATUS-SOUNDNESS` | `evidence` |

## Scope honesty

- `gadget-bool-select` proves the **routing primitive** (a satisfying R1CS
  assignment forces `Valid` to the spec-selected branch). It is the end-to-end
  certified anchor for the C3 methodology: a real `R1CS ⟹ spec` proof over the
  byte-for-byte gnark export (parity asserted by
  `TestBoolSelectAcl2ModelParity`). Booleanity of `Cond` is now derived from c0
  via the checked BLS12-377 scalar-field prime certificate; it is no longer a
  theorem hypothesis.
- `gadget-poseidon2` has a certified Axe/Kestrel sparse-R1CS lift smoke theorem
  over the actual 276-constraint gnark export. That theorem proves one
  non-vacuous first-round constraint consequence and validates the ingestion
  loop, but it does **not** prove the Poseidon permutation spec. `gadget-poseidon2`
  and `gadget-nullifier` reach `proved` only with a full Poseidon semantic proof
  against a Poseidon spec. Until then they are engine/Picus evidence, not
  semantic proofs.
- `gadget-field-less-than` is the isolated single 253-bit comparator (2531
  constraints; public `A`/`B`, witness `Out`) that `gadget-imt-gap` invokes
  twice. The axe-lisp export certifies and the Axe **lift** of the real
  2531-constraint R1CS succeeds, so the row is `decomposed` (ingestion validated),
  not `evidence`. The semantic `R1CS ⟹ spec` discharge is the open M3 obligation.
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
- No row here promotes a whole-circuit property. `REGULATED-STATUS-SOUNDNESS`
  stays `refined` even though it now cites a `proved` gadget, because the
  whole-circuit comparator wiring (16-deep Merkle path, full-field comparators)
  is outside the proved gadget's scope.

## Reproduction

`bash scripts/circuit-gadget-proof-check.sh` runs the parity/fidelity tests,
regenerates the checked-in Poseidon2 Axe Lisp export, certifies the ACL2/Axe
books with the parallel `acl2p` image, and checks the stamped artifacts. Heavy
prover work — it runs in the soundness-formal CI `provers` job, not on PRs.
