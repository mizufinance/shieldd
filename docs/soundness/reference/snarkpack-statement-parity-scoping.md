# SnarkPack Statement-Parity Scoping (hole S5)

**Status:** draft — pending frontier review
**Scope:** the statement axis of the SnarkPack aggregation layer
(`crates/crypto/proof-aggregation`) as it meets the gnark family circuits
(`tools/gnark`) and their committed artifacts (`tools/gnark/artifacts`).
**Purpose:** record which cross-tool statement-parity facts are now *pinned by
test* versus still *assumed*, so the frontier picking up S5 proper has a written
handle on what is closed and what remains. Analogous to what the Task 6/7
binding inventories did for H2.

This document makes **no** soundness claim of its own and adds **no**
assumption-ledger row. Every entry cites a `file:symbol` (or `file:line`).

---

## 1. The parity question

The aggregation layer verifies *N* Groth16 proofs against *one* aggregated
statement. For that to mean what it says, three surfaces must agree on the shape
of a per-proof statement:

- **Circuit side** — how many public inputs each family circuit exposes, and
  what they are.
- **Artifact side** — the committed verifying key's `gamma_abc_g1` vector, from
  which the runtime derives the per-proof arity.
- **Aggregation side** — the arity the SnarkPack encoder pads/validates each row
  to before folding.

If any two disagree, a proof can verify individually while the aggregated
statement binds a different surface — the classic aggregation statement-parity
gap. S5 is the obligation that these three agree for every shieldd family.

## 2. The three surfaces, concretely

**Circuit side — one public wire, the statement hash.** Every family exposes a
single `gnark:",public"` input, `ClaimedStatementHash`
([note_reshape_circuit.go:23](../../../tools/gnark/internal/circuits/note_reshape_circuit.go#L23),
[transfer_circuit.go:49](../../../tools/gnark/internal/circuits/transfer_circuit.go#L49)),
asserted equal to the in-circuit recomputed statement hash
([note_reshape_circuit.go:163](../../../tools/gnark/internal/circuits/note_reshape_circuit.go#L163)).
The full per-field content behind that hash is inventoried in
[consolidate2x1-statement-binding-inventory.md](consolidate2x1-statement-binding-inventory.md)
and [transfer-statement-binding-inventory.md](transfer-statement-binding-inventory.md).

**Artifact side — `gamma_abc_g1.len() - 1`.** Groth16 lays out `gamma_abc_g1`
as `[gamma_abc_0, ..one commitment per public input..]`, so the public-input
arity is `len() - 1`. The runtime parses this vector from the committed
`verifying_key.json`
([artifacts.rs:122](../../../crates/core/component/shielded-pool/src/gnark/artifacts.rs#L122)).
`circuit_metadata.json.nb_public_variables` independently records the same count
(the implicit constant `1` wire plus each declared public input, i.e.
`gamma_abc_g1.len()`).

**Aggregation side — VK-derived expected arity.** The encoder computes
`expected_arity = pvk.vk.gamma_abc_g1.len() - 1`
([statement.rs:212](../../../crates/crypto/proof-aggregation/src/statement.rs#L212))
and validates every `padded_public_inputs` row against it
([statement.rs:219](../../../crates/crypto/proof-aggregation/src/statement.rs#L219)).
`lemma_encode_statement_injective` (F\*/hax) proves the encoding is injective
*given* that arity.

## 3. What is now pinned by test

`crates/core/component/shielded-pool/src/gnark/artifacts.rs`,
`mod statement_parity_tests` (commit landing this memo):

- **`family_vks_expose_single_statement_hash_public_input`** — for all 7
  committed families (consolidate2x1/4x1/8x1, split1x4/1x8,
  shielded_ics20_withdrawal, transfer): `gamma_abc_g1.len() - 1 == 1`, and
  `circuit_metadata.nb_public_variables == gamma_abc_g1.len()`. This nails the
  **artifact side to the value `1`** and cross-checks the VK against the
  metadata so a partial regen that drifts them apart fails closed.
- **`committed_family_artifacts_carry_verified_hashes`** — both
  `verifying_key_sha256_hex` and `proving_key_sha256_hex` are present and match
  the committed bytes, and each VK parses end-to-end (on-curve + subgroup). This
  keeps the pinned arity attached to the *actual committed key*, not a stale
  metadata stub.

Net: **artifact side == 1, and artifact side == metadata side, are checked.**
Combined with the aggregation side deriving arity *from* the VK
([statement.rs:212](../../../crates/crypto/proof-aggregation/src/statement.rs#L212)),
the artifact→aggregation link is now consistent by construction and pinned.

## 4. What remains assumed (open for S5 proper)

1. **Circuit → artifact link is not machine-checked.** The tests pin the *VK* to
   arity 1; they do not prove the committed VK was generated from the circuit
   that actually exposes exactly one public wire. Today this holds because the
   gnark setup derives the VK from the circuit, but nothing in-repo re-derives
   `gamma_abc_g1.len()` from the circuit source and compares. A circuit edit
   plus a matching (wrong) VK regen would pass §3. **Discharge candidate:** a
   gnark-side conformance step emitting the compiled circuit's public-variable
   count into `circuit_metadata.json`, checked here — or the existing
   soundness-fixture proof path asserting it.
2. **Statement-hash *content* parity is inventoried, not proven equal across
   circuits.** §6 of the two binding inventories flags that consolidate has zero
   compliance surface where transfer has a large one. Whether the aggregated
   statement is allowed to mix families with different hash preimages is an H2 /
   aggregation-semantics question, not closed here.
3. **RIPP / inner-product argument (S1)** remains `refined`/`assumed` per
   `crates/crypto/proof-aggregation/formal/snarkpack/formal-handoff.md`;
   untouched by this memo (do-not-touch tree).

## 5. Boundary note

The tests and this memo live in the shielded-pool crate and the soundness
reference docs, against committed artifacts. Nothing here touches
`crates/crypto/proof-aggregation/formal/snarkpack/`, any gate/manifest/ledger
semantics, or the F\* proofs. See
[full-verification-plan](../full-verification-plan.md),
[consolidate2x1-statement-binding-inventory.md](consolidate2x1-statement-binding-inventory.md),
[transfer-statement-binding-inventory.md](transfer-statement-binding-inventory.md).
