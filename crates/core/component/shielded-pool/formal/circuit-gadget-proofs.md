# Circuit Gadget Proofs (Phase C / Track C)

Gadget-scoped `R1CS ⟹ spec` theorems. This is the only ledger whose rows may
hold `proved`. A gadget proof never promotes a whole-circuit property row in
[circuit-soundness-properties.md](circuit-soundness-properties.md).

Status model:

- `proved` — a certified theorem over the current gnark-exported constraints,
  with parity coverage and a stamped proof artifact.
- `evidence` — gadget-scope under-constraint evidence only.
- `decomposed` — isolated and exported, but no current certified theorem.
- `planned` — obligation identified, not yet decomposed.

| Gadget label | Spec proved | Theorem | Artifact | Cited by | Status |
| --- | --- | --- | --- | --- | --- |
| `gadget-bool-select` | `Valid = Select(Cond, IfTrue, IfFalse)` with `Cond` boolean | `BOOL-SELECT-R1CS-IMPLIES-SPEC` and `COND-BOOLEAN-FROM-R1CS-C0` in [acl2/bool-select-proof.lisp](acl2/bool-select-proof.lisp) | [acl2/bool-select-proof-artifact.txt](acl2/bool-select-proof-artifact.txt) | `REGULATED-STATUS-SOUNDNESS` | `proved` |
| `gadget-iszero` | `OUT = 1` iff `IN = 0` over canonical BLS12-377 Fr residues | `ISZERO-R1CS-IMPLIES-SPEC` in [acl2/iszero-proof.lisp](acl2/iszero-proof.lisp) | [acl2/iszero-proof-artifact.txt](acl2/iszero-proof-artifact.txt) | exact-match gadgets | `proved` |
| `gadget-poseidon2` | `OUT = Poseidon377(DOMAIN, IN0, IN1)` over the 276-row export | `verify-r1cs` in [acl2/poseidon2-proof.lisp](acl2/poseidon2-proof.lisp) | [acl2/poseidon2-proof-artifact.txt](acl2/poseidon2-proof-artifact.txt) | ciphertext and Merkle composition | `proved` |
| `gadget-poseidon-hash4` | `OUT = Poseidon377(DOMAIN, IN0, IN1, IN2, IN3)` over the 356-row export | `verify-r1cs` in [acl2/hash4-proof.lisp](acl2/hash4-proof.lisp) | [acl2/hash4-proof-artifact.txt](acl2/hash4-proof-artifact.txt) | quad Merkle paths | `proved` |
| `gadget-nullifier` | `NULLIFIER = Poseidon377(nullifier-domain, NK, STATECOMMITMENT, POSITION)` over the 311-row export | `verify-r1cs` in [acl2/nullifier-proof.lisp](acl2/nullifier-proof.lisp) | [acl2/nullifier-proof-artifact.txt](acl2/nullifier-proof-artifact.txt) | `NO-DOUBLE-SPEND` | `proved` |
| `gadget-imt-gap` | `Select(IsRegulated, exactMatch, leaf < id ∧ id < next) = 1` | — | — | `REGULATED-STATUS-SOUNDNESS` | `decomposed` |

## Scope honesty

- The proved rows above are gadget-local. Whole-circuit wiring, Merkle depth,
  statement binding, and cross-gadget composition remain separate obligations.
- `gadget-imt-gap` is currently 3,544 constraints: three native full-width
  `ToBinary` blocks, exact match, two shared-bit comparisons, and the final
  select. Its exact Lean provider reconstructs canonical decompositions from
  the backend modulus-comparison rows; extractor-level `ToBinary` semantics
  alone are not accepted as a reducedness proof.
- The former ACL2 AssetRegistryGap chain was retired in July 2026. It certified
  a 5,568-row export whose operand decompositions and comparator ladders no
  longer match either the previous 5,296-row circuit or the current 3,544-row
  circuit. Its standalone 506-row “canonical bits” export also differed from
  gnark's native 506-row relation (507 versus 341 total wires). Equal row counts
  were not parity. Keeping those books or their stamp as deployed evidence
  would overclaim the current circuit.
- The production `gadget-canonical-fq-bits` probe remains the explicit
  source-level 1,090-row helper used by the extractor bridges for other Decaf
  gadgets. AssetRegistryGap's native decomposition is private to that gadget;
  the two targets are intentionally not aliased.

## Composition

ACL2 gadget composition uses the R1CS constraint-list `append` idiom and
`r1cs-constraints-holdp-of-append`. A whole-circuit claim still requires its own
current artifact cited by the authoritative property and assumption ledgers.

## Reproduction

`bash scripts/circuit-gadget-proof-check.sh` runs parity/fidelity tests,
regenerates the checked-in active ACL2 exports, certifies the active books, and
checks their proof-artifact stamps. AssetRegistryGap is excluded until a proof
over the current 3,544-row relation is certified.
