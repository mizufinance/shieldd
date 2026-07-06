# consolidate2x1 Statement-Binding Inventory

**Status:** frontier-reviewed 2026-07-06 — accepted as the evidence base for the
Phase C Alloy model (`docs/soundness/phase-c-alloy-statement-sufficiency-spec.md`).
Remains a reference document; makes no ledger claim itself.
**Scope:** the deployed `consolidate2x1` circuit slice (49/49 segments circuit-sound).
**Purpose:** evidence base for the Phase C Alloy *statement-sufficiency* model (hole
**H2**). For each field the public statement hash commits to, this records the
in-circuit binding chain down to segments/specs; for each protocol object the
consensus layer relies on, which statement field pins it; and a candid list of
things a prover can choose that no statement field constrains.

This document makes **no** soundness claim of its own and adds **no**
assumption-ledger row. Every entry cites a `file:symbol` (or `file:line`).

---

## 1. What the statement *is*

The single public input the verifier checks is `ClaimedStatementHash`
([note_reshape_circuit.go:23](../../../tools/gnark/internal/circuits/note_reshape_circuit.go#L23),
`NoteReshapeCircuit.ClaimedStatementHash frontend.Variable \`gnark:",public"\``).
The circuit recomputes a hash from named in-circuit wires and asserts equality:

- [note_reshape_circuit.go:163](../../../tools/gnark/internal/circuits/note_reshape_circuit.go#L163)
  `api.AssertIsEqual(statementHash, c.ClaimedStatementHash)`.

The hashed field vector is assembled in a fixed order at
[note_reshape_circuit.go:148-155](../../../tools/gnark/internal/circuits/note_reshape_circuit.go#L148-L155):

| # | field | source |
|---|-------|--------|
| 1 | `anchor` | `c.Anchor` (L149) |
| 2 | `output_commitments` (nOut = 1) | `verifyNoteReshapeOutput` → `commitment` (L124-126, L151) |
| 3 | `balance_commitment.fq` | `decafgnark.CompressToField(balanceCommitmentPoint)` (L142-143, L153) |
| 4 | `nullifiers_and_rks` (2·nIn = 4) | per-spend `[nullifier, rk_compressed]` (L104-106, L155) |

Field count is fixed by
[statement_hash.go:17-19](../../../tools/gnark/internal/primitives/statement_hash.go#L17-L19)
(`NoteReshapeStatementBaseFields = 2`, `…FieldsPerInput = 2`, `…FieldsPerOutput = 1`)
via [statement_hash.go:128](../../../tools/gnark/internal/primitives/statement_hash.go#L128)
`NoteReshapeStatementFieldCount`. For consolidate2x1 (nIn = 2, nOut = 1):
`2 + 2·2 + 1·1 = 7` fields, hashed by
[statement_hash.go:162](../../../tools/gnark/internal/primitives/statement_hash.go#L162)
`ConsolidateStatementHashForShape` → `transferStatementHash` →
`Poseidon377Hash7` sponge with a per-shape domain separator
([statement_hash.go:106](../../../tools/gnark/internal/primitives/statement_hash.go#L106)).

Ordered transcript (7 absorbed fields):
`[anchor, output_commitment, balance_fq, null1, rk1, null2, rk2]`.

---

## 2. The Lean deployed mirror of the statement

The deployed soundness statement is `Consolidate2x1Statement`
([Statement.lean](../../../tools/gnark/lean/ShielddGnarkFormal/Deployed/Contracts/Consolidate2x1/Statement.lean)),
a 5-way conjunction proven from `relationAll` by the theorem
`consolidate2x1_statement` (`⟨specOf60, specOf12, specOf8, specOf26, specOf59⟩`).
Each conjunct is discharged by a per-segment projection
(`specOfN`, [Capstone.lean](../../../tools/gnark/lean/ShielddGnarkFormal/Deployed/Contracts/Consolidate2x1/Capstone.lean)):

| conjunct | wire | binds | discharged by |
|----------|------|-------|---------------|
| 1 | `statementHashPublic` (wire 1) | claimed hash = LC over `statementHashOut` limbs 54128..54163 | `specOf60` → `deployedSpec60` |
| 2 | `anchor` (wire 2) | anchor = 5-term LC over 10550..10570 | `specOf12` → `deployedSpec12` |
| 3 | `spend1NoteCommitmentLeaf` (wire 23) | = 7-term LC over 1312..1342 | `specOf8` → `deployedSpec8` |
| 4 | `spend2NoteCommitmentLeaf` (wire 113) | = 7-term LC over 20012..20042 | `specOf26` → `deployedSpec26` |
| 5 | statement-hash transcript | Poseidon7 over the 7 fields | `specOf59` → `deployedSpec59` |

`deployedSpec59`
([Specs/Glue.lean:10](../../../tools/gnark/lean/ShielddGnarkFormal/Deployed/Contracts/Consolidate2x1/Specs/Glue.lean#L10))
is the load-bearing one: it binds the internal Poseidon output limbs
`statementHashOut` (54128..54163) to
`permSpec7(statementDomainLit, anchor=rho 2, outputNoteCommitment[38712..38742],
netBalance = −rho 53353 + rho 53693, spend1Nullifier[1637..1652],
rk1 = −rho 12746 + rho 13086, spend2Nullifier[20337..20352],
rk2 = −rho 31446 + rho 31786)`. `deployedSpec60` then compresses those limbs into
the single public wire 1 (`consolidate2x1_statement` conjunct 1).

Wire→name map: [Wiring.lean](../../../tools/gnark/lean/ShielddGnarkFormal/Deployed/Contracts/Consolidate2x1/Wiring.lean)
(`statementHashPublic = 1`, `anchor = 2`, `spend1NoteCommitmentLeaf = 23`,
`spend2NoteCommitmentLeaf = 113`, `spend1NullifierOut = [1637,1642,1647,1652]`,
`spend2NullifierOut = [20337,…]`, `outputNoteCommitmentOut = [38712,…,38742]`,
`netBalanceCommitmentCompressed = [53353,53693]`,
`statementHashOut = [54128,…,54163]`).

---

## 3. Per-object binding: which statement field pins each protocol object

| protocol object | pinned by statement field | binding chain (file:symbol) |
|-----------------|---------------------------|------------------------------|
| **Anchor / tree root** (spent notes are in the committed state) | field 1 `anchor`, transcript slot 2 | `deployedSpec12` (anchor = SCP root LC); SCP Merkle recovery proven by `deployedSpec11`/`deployedSpec29` ([Specs/Scp.lean:16,87](../../../tools/gnark/lean/ShielddGnarkFormal/Deployed/Contracts/Consolidate2x1/Specs/Scp.lean#L16)), each recomposing position bits + `recover24H` per-height quad-Merkle to `rho 24`/`rho 114` |
| **Spend note commitments** (the two consumed notes) | conjuncts 3 & 4 (`spend{1,2}NoteCommitmentLeaf`) | `deployedSpec8` / `deployedSpec26` ([Specs/Glue.lean:50](../../../tools/gnark/lean/ShielddGnarkFormal/Deployed/Contracts/Consolidate2x1/Specs/Glue.lean#L50)); these leaves feed the SCP path (`deployedSpec11` leaf hash `permSpec1(domain, rho 23)`) |
| **Output note commitment** | transcript slot 3 | `deployedSpec59` outputNoteCommitment LC over 38712..38742; construction `verifyNoteReshapeOutput` ([note_reshape_circuit.go:124](../../../tools/gnark/internal/circuits/note_reshape_circuit.go#L124)) |
| **Net balance** (Σin − Σout = 0 conservation) | transcript slot 4 `balance_commitment.fq` | `deployedSpec59` `−rho 53353 + rho 53693`; computed point bound by `decafgnark.AssertEquivalent` ([note_reshape_circuit.go:140-141](../../../tools/gnark/internal/circuits/note_reshape_circuit.go#L140-L141)) then compressed by `CompressToField` (L142-143). Net-balance ladder = seg52 (`deployedSpec52`, [Specs/Nb.lean]) |
| **Nullifiers** (double-spend prevention) | transcript slots 5, 7 | `deployedSpec59` spend{1,2}Nullifier LCs over 1637..1652 / 20337..20352; also standalone `deployedSpec10` binds `rho 11 = LC(1637..1652)` ([Specs/Glue.lean:52](../../../tools/gnark/lean/ShielddGnarkFormal/Deployed/Contracts/Consolidate2x1/Specs/Glue.lean#L52)) |
| **Spend authorization** (rk = randomized verification key) | transcript slots 6, 8 `rk_compressed` | `deployedSpec59` `rk1 = −rho 12746 + rho 13086`, `rk2 = −rho 31446 + rho 31786`. rk derived + compressed in `verifyNoteReshapeSpend` ([note_reshape_circuit.go:104,183](../../../tools/gnark/internal/circuits/note_reshape_circuit.go#L104)); rvk fixed-base ladder = segs 13/31 (`deployedSpec13`/`deployedSpec31`, [Specs/Rvk.lean]) |

**Every object the consensus layer relies on for a consolidate2x1 spend
(anchor membership, spent-note identity, output-note identity, value
conservation, nullifier uniqueness, spend-auth key) is transitively committed by
the single public `ClaimedStatementHash`** — either directly as a named
conjunct (anchor, spend-note leaves, the hash itself) or as a Poseidon7
transcript slot inside `deployedSpec59`.

---

## 4. Candidate gaps — reachable-but-unbound by the statement

These are prover-choosable quantities that appear in the circuit but are **not**
statement-hash fields. Each is either (a) intentionally hidden and constrained by
an internal soundness segment, or (b) a genuine question for the Alloy H2 model.
Marked accordingly.

1. **Individual spend/output amounts** — *(a) hidden by design.* Only the net
   `balance_commitment.fq` is a statement field ([note_reshape_circuit.go:153](../../../tools/gnark/internal/circuits/note_reshape_circuit.go#L153));
   the per-note `amount` wires (L105/L125) are absorbed only into the balance
   commitment via `computeTransferNetBalanceCommitment`
   ([note_reshape_circuit.go:130](../../../tools/gnark/internal/circuits/note_reshape_circuit.go#L130)).
   Amount-range enforcement is an internal segment, not a statement field. **H2
   check:** confirm the value-commitment homomorphism + range proofs make the
   compressed `balance_fq` a sound stand-in for "amounts conserve."

2. **The uncompressed balance-commitment point** — *(a).* The statement carries
   only `CompressToField(point)`; the affine point is bound to the claimed point
   by `AssertEquivalent` (L141) but never itself hashed. Soundness of using the
   fq compression rests on compress-to-field injectivity (compress segs,
   `deployedSpec*` in [Specs/Compress.lean]). **H2 check:** compression collision
   ⇒ statement collision.

3. **Shared AK / diversified generator / transmission key / asset ID** —
   *(a) shared, not per-statement.* `sharedAK`, `sharedDivGen`,
   `sharedTransmission`, `sharedAssetID` are asserted on-curve / consistent
   across spends+outputs ([note_reshape_circuit.go:80-81,89-127](../../../tools/gnark/internal/circuits/note_reshape_circuit.go#L80-L81))
   but are **not** statement fields. They are bound *indirectly*: they enter each
   note commitment (spend-leaf conjuncts 3/4, output slot 3) and each rk
   (slots 6/8). **H2 check:** is indirect binding through commitments+rk
   sufficient, or can a prover vary a shared key while keeping all 7 hash fields
   fixed? (Believed no — commitments are collision-resistant over these inputs —
   but this is exactly the sufficiency question H2 exists to settle.)

4. **`ActionBalanceBlinding`** — *(a) hidden.* Blinding for the balance
   commitment ([note_reshape_circuit.go:135](../../../tools/gnark/internal/circuits/note_reshape_circuit.go#L135));
   enters only via `balance_fq`. Expected: blinding hiding, not binding.

5. **Domain-separator / shape** — *(structural).* The statement hash is
   shape-specialized (`consolidate2x1` label →
   `Poseidon377Hash7` with a shape-specific domain constant,
   [statement_hash.go:136,162](../../../tools/gnark/internal/primitives/statement_hash.go#L136)).
   Cross-shape confusion (a consolidate2x1 proof accepted as another shape) is
   prevented by the domain constant, **not** by any wire the prover controls.
   **H2 check:** model the domain separator as binding the shape.

---

## 5. Summary for H2

- **Statement fields (7):** anchor, output-commitment, balance_fq, {null,rk}×2.
- **Directly named Lean conjuncts (5):** hash, anchor, 2 spend-leaves, transcript.
- **No object relied on by consensus is unbound** — all route to the hash.
- **The five candidate gaps** are all *hidden-by-design* internal quantities
  whose binding is *indirect* (through commitments, rk, or the balance
  commitment). The H2 Alloy model should verify that indirect binding + the
  collision-resistance / injectivity assumptions of the underlying gadgets
  (Poseidon note-commit, compress-to-field, rvk ladder) are *jointly sufficient*
  to make `ClaimedStatementHash` a total binding of the spend semantics.

---

*Citations verified read-only against the deployed slice at
`sr1cs_sha256_hex = 12bf600c30c5dac11d03784f5aa3d133ff86de5e67b8be9f7c6a79f0eda6e188`
([consolidate2x1-deployed-slice-ir.json](../../../crates/core/component/shielded-pool/formal/consolidate2x1-deployed-slice-ir.json)).
No lake build was run to produce this document.*
