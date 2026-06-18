# Assumption / Axiom / Conclusion Review — DLEQ + ZK circuits

Tier-3 manual review (2026-06-18). One binding table per layer: every mechanized
**conclusion** (with its exact theorem name and kernel-axiom status), every
**axiom / admit / assume** it rests on, and the **model-vs-deployed gap**. It is
the full DLEQ + ZK-circuit assumption audit; it cross-checks the
[assumption ledger](../../../crates/core/component/compliance/formal/assumption-ledger.md)
and the [circuit soundness properties](../../../crates/core/component/shielded-pool/formal/circuit-soundness-properties.md)
rather than restating them.

Method: source-level enumeration of `axiom` / `sorry` / `admit` (grep, no rebuild)
plus the recorded `#print axioms` results in the stamped whole-circuit artifacts.
Heavy Lean rebuilds were **not** re-run (memory-bounded; see the playbook).

## 1. Conclusions (what is actually proved)

| Conclusion (exact name) | Source | Establishes | Kernel-axiom status |
| --- | --- | --- | --- |
| `transfer_circuit_sound` | `tools/gnark/lean/ShielddGnarkFormal/Transfer.lean` | A satisfying transfer R1CS implies the full functional statement: spend/output notes, nullifiers, state/asset paths, ACK, DLEQ, compliance ciphertexts, regulated branch, net balance, and statement hash. | **axiom-clean** `{propext, Classical.choice, Quot.sound}` (recorded in `transfer-whole-circuit-lean-artifact.txt`) |
| `consolidate2x1_circuit_sound` | `ShielddGnarkFormal/Consolidate2x1.lean` | Same bar for the note-reshape circuit. | **axiom-clean** `{propext, Classical.choice, Quot.sound}` |
| `dleq_fs_knowledge_soundness` | `crates/core/component/compliance/formal/lean-dleq/Dleq/FiatShamir.lean:82` | Fiat-Shamir knowledge soundness of the DLEQ Σ-protocol in the ROM; forking bound `1/2^250`. | depends on **one** declared axiom `q_prime` + the standard trio |
| `dleq_fs_knowledge_soundness_strong` | `lean-dleq/Dleq/FiatShamir.lean:124` | Statement-binding specialization: RO message `BoundMsg = (meta,g,ack,epk,spt)`. | same |

All `*_circuit_sound` bridges (`decaf377_*_sound`, `dleq_sound`, `ack_sound`,
`PoseidonEncryptionBridge.*`, …) are **proved Lean theorems**, not kernel axioms —
they compose into the two axiom-clean circuit conclusions.

## 2. Axioms / admits / sorries — complete enumeration

- **gnark circuit Lean** (`tools/gnark/lean/ShielddGnarkFormal*`): **no** `axiom`,
  `sorry`, or `admit`. The only kernel axioms are Lean's standard trio
  (`propext`, `Classical.choice`, `Quot.sound`), which `Quot.sound` is required for
  any `Quotient`/decaf377-coset reasoning. The single textual `axiom` hit is a
  comment in `Decaf377Assumptions.lean`, not a declaration.
- **Lean DLEQ** (`lean-dleq`, non-`.lake`): exactly **one** declared axiom —
  `Dleq/Group.lean:31  axiom q_prime : Nat.Prime q`. No `sorry`/`admit`. This axiom
  *is* ledger row `CC-ASSUME-DECAF377-PRIME-ORDER-GROUP`. This Lean/VCVio
  development is the single canonical DLEQ mechanization in the repo.

## 3. Residual assumptions the DLEQ conclusion rests on (irreducible base)

These are not removable without a different cryptographic assumption; they are the
documented base of `dleq_fs_knowledge_soundness`:

| Ledger ID | Nature | Why irreducible / status |
| --- | --- | --- |
| `CC-ASSUME-POSEIDON-RO` | ROM idealization of `poseidon377::hash_7` as a programmable RO | Standard FS base; removal = standard-model/indifferentiability sponge argument. Not a kernel axiom — it is the VCVio oracle *structure* the theorem quantifies over. |
| `CC-ASSUME-DECAF377-PRIME-ORDER-GROUP` (= Lean `q_prime`) | decaf377 modeled as abstract prime-order group of order `q` | DLEQ soundness needs only group structure; `(c−c')` invertible mod prime `q`. Removal = compose decaf377 group-law gadget proofs. |
| `CC-ASSUME-CHALLENGE-TRUNCATION-NEGL` | 250-bit truncation modeled as uniform `Fin (2^250)` | True error ≤ ~1.07×`1/2^250` (≈2^-249.9, ≤0.1-bit loss) |
| `CC-ASSUME-DLEQ-FS-NONMALLEABLE` | simulation-soundness / non-malleability vs adversarial statements | Cited (FKMV) not mechanized; strong-FS hashes the full statement, so Frozen-Heart is structurally excluded. This is what Tamarin `ProofSound` imports. |

## 4. Layer-consistency check (no silent upgrade across layers)

Requirement: *no `assumed` ledger row silently covers a property a higher layer
treats as `proved`.* Result of the cross-check:

- **DLEQ:** the Alloy `CC-ASSUME-PRE-BINDING` and the Orbis recovery model rest
  on DLEQ binding, and they correctly point at the **mechanized**
  `DLEQ-FS-KNOWLEDGE-SOUNDNESS`, declaring the residual base (`POSEIDON-RO`,
  `PRIME-ORDER-GROUP`) explicitly — no upgrade of an `assumed` row to `proved`.
- **Tamarin `ProofSound`** imports exactly `dleq_fs_knowledge_soundness_strong`
  (statement-binding) plus the cited FKMV non-malleability — the symbolic
  restriction is *not* stronger than the computational proof delivers. (Tamarin is
  installed and the base `compliance-symbolic.sh` gate passes; the multi-party
  ACP↔Orbis model is still to be authored — see gap 2 below.)
- **ZK circuits:** every `decaf377_*` row marked `assumed` is annotated
  `Discharged-Circuits: consolidate2x1, transfer` with a proved bridge theorem; the
  `assumed` label is a *scope* marker (split-circuit family still open), **not** an
  undischarged obligation for the two completed circuits. The six transfer-only
  rows (`DLEQ-RELATION`, `ACK-DERIVATION`, `COMPLIANCE-CIPHERTEXT`, `POSEIDON5`,
  `DUMMY-MUX`, `THRESHOLD-REGULATED`) are `discharged` with bridge citations.

No silent layer inversion found.

## 5. Model-vs-deployed gaps (carried, not hidden)

1. **gnark frontend/backend** — Lean proves the *extracted* R1CS computes the spec
   and Picus proves no under-constraint, but the gnark **frontend** compile and the
   **backend** crypto (Groth16/Plonk, KZG, pairing, prover FS) are trusted. This is
   the halo2/Zcash-class layer; the roadmap's full-constraint gnark-frontend
   extraction targets it.
2. **ACP ↔ Orbis interaction** — the DLEQ proofs are *local* (bare relation in
   isolation). The multi-party ACP↔Orbis message flow, replay/reflection/party-
   confusion, and the `derive_*_scalar` byte-parity that makes PRE math cancel are
   **not** yet modeled. Requires authoring the multi-party Tamarin ACP↔Orbis model
   (the roadmap's top open item; Tamarin itself is installed and running).
3. **Alloy bounded scope** — `MODEL-ASSUME-BOUNDED-SCOPE` (scope 6 / 5-bit Int):
   refutation only within scope (small-scope hypothesis). All four models pass
   (`nullifier-imt`, `value-conservation`, `compliance-tiers`, `orbis-authorization`).
4. **Compliance KEM/DEM idealizations** — `CC-ASSUME-COMPRESSED-DH-MASK`,
   `CC-ASSUME-POSEIDON-STREAM`, `CC-ASSUME-DECAF377-ENCODING` remain `assumed`
   construction idealizations with removal paths.

## 6. Bottom line

- Two whole-circuit conclusions are **axiom-clean**; the DLEQ conclusion rests on
  **one** declared Lean axiom (`q_prime`) plus the documented ROM + truncation +
  non-malleability base. No `sorry`/`admit` anywhere.
- No `assumed` row is silently relied on as `proved` by a higher layer.
- The three open items (gnark boundary, ACP↔Orbis Tamarin model, raising Alloy
  scope) are tracked in the roadmap; the Tamarin ACP↔Orbis model is still to be
  authored (Tamarin itself is installed and the base gate passes).
