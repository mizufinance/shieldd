# transfer Statement-Binding Inventory

**Status:** draft — pending frontier review
**Scope:** the deployed `transfer` (2×2) circuit slice.
**Purpose:** transfer twin of the
[consolidate2x1 statement-binding inventory](consolidate2x1-statement-binding-inventory.md),
in identical format so the Phase C Alloy *statement-sufficiency* model (hole
**H2**) can be written once and instantiated on both circuits.

Same read-only, lake-free method as Task 6, with three transfer-specific twists,
each carried explicitly below:

1. **Bigger statement surface.** Transfer's statement hash absorbs **83 fields**
   (77 base + 2·nIn + 1·nOut), not consolidate's 7 — it commits the entire
   compliance surface (detection / amount / address ciphertexts, DLEQ statement
   points, regulated-threshold surface) in addition to the value fields.
2. **Conditional bindings flagged `ASSUMED`.** Wherever a binding chain routes
   through one of the 8 `functional-assumption` deployed classes, the link is
   marked **`ASSUMED[<class>@seg…]`** with a cross-reference to the
   [transfer deployed-bridge dossier](transfer-deployed-bridge-dossier.md). The
   H2 model must distinguish *proven* bindings from *conditional* ones — and
   transfer is where that distinction bites.
3. **Diff vs consolidate2x1** (§6): anything bound in one circuit but not the
   other, called out explicitly.

No assumption-ledger row. Every entry cites a `file:symbol` / `file:line`.

---

## 1. What the statement *is*

Public input: `TransferCircuit.ClaimedStatementHash`
([transfer_circuit.go:49](../../../tools/gnark/internal/circuits/transfer_circuit.go#L49),
`gnark:",public"`). The circuit recomputes the hash and asserts equality:
[transfer_circuit.go:144](../../../tools/gnark/internal/circuits/transfer_circuit.go#L144)
`api.AssertIsEqual(statementHash, c.ClaimedStatementHash)`.

Field vector assembled by `buildTransferStatementFields`
([transfer_circuit.go:953-1041](../../../tools/gnark/internal/circuits/transfer_circuit.go#L953-L1041)),
in order:

| group | fields | source line |
|-------|--------|-------------|
| A | `Anchor` | L959 |
| B | `outputCommitments` (nOut = 2) | L960 |
| C | `balanceCommitmentFq` | L961 |
| D | `nullifiersAndRKs` (2·nIn = 4: `[null,rk]×2`) | L962 |
| E | `AssetAnchor`, `ComplianceAnchor` | L963 |
| F | `Compliance.DetectionCiphertext[:]` | L964 |
| G | 4 tiers `{senderCore, senderExt, outputCore, outputExt}`, each `epkFq, C2, Ciphertext[:]` | L966-973, L1018-1021 |
| H | `TargetTimestamp` | L1022 |
| I | 4 DLEQ proof tiers, each 13 fields: `SubjectDerivation, RingIDHash, PolicyIDHash, ResourceHash, PermissionHash, Tier, TargetTimestamp, Salt, derivedPK_fq, encCmt_fq, sharedPoint_fq, Challenge, Response` | L999-1014, L1023-1034 |

Count fixed by
[statement_hash.go:14-16](../../../tools/gnark/internal/primitives/statement_hash.go#L14-L16)
(`TransferStatementBaseFields = 77`, `…FieldsPerInput = 2`,
`…FieldsPerOutput = 1`) → `77 + 2·2 + 1·2 = 83`, hashed by
[statement_hash.go:149](../../../tools/gnark/internal/primitives/statement_hash.go#L149)
`TransferStatementHashForShape` → `transferStatementHash` (Poseidon377 sponge,
7-field rate, per-shape domain separator). The exact-count assertion at
[transfer_circuit.go:1036-1038](../../../tools/gnark/internal/circuits/transfer_circuit.go#L1036-L1038)
is the in-circuit guard that no field is dropped.

Groups A–D mirror consolidate2x1 exactly (see Task 6 §1). Groups E–I are the
**transfer-only regulated/compliance surface**.

---

## 2. Deployed Lean status (why bindings are conditional)

Unlike consolidate2x1 (49/49 segments proven, capstone `Statement.lean`),
transfer's deployed tree
([Deployed/Contracts/Transfer/](../../../tools/gnark/lean/ShielddGnarkFormal/Deployed/Contracts/Transfer/))
holds the **16 extracted `functional-assumption` contracts** from Task 5
(`Seg94, Seg104-112, Seg125-128, Seg10, Seg72`) — classified and substrate-
matched, **not yet discharged**. There is no proven transfer capstone. Every
binding that routes through the compliance surface therefore terminates at an
`ASSUMED` link until the corresponding class is proven.

The 8 classes / 16 instances
([transfer-coverage-manifest.json](../../../crates/core/component/shielded-pool/formal/transfer-coverage-manifest.json),
dossier §Reuse table):

| class | segs | proven-pattern target | risk |
|-------|------|-----------------------|------|
| `threshold.flag` | 94 | lt-ladder (`stateTrace_to_ltcRec`) | low (best first) |
| `decaf.ack` | 10, 72 | rvk fixed-base + literal binding | low–med |
| `gadget.poseidon_encryption.detection` | 108 | Poseidon chain + DTK mini-ladder | med |
| `gadget.poseidon_encryption.amount` | 109, 111 | same | med |
| `gadget.poseidon_encryption.address` | 110, 112 | same | med |
| `decaf.shared_secret` A / B | 104 / 105-107 | DTK variable-base + canon-Fq-bits | **HIGH (canon-chain)** |
| `gadget.dleq` | 125-128 | uncompressed ladder | **BLOCKED** |

---

## 3. Per-object binding: value surface (proven-substrate, mirrors consolidate2x1)

| object | statement group | binding chain | status |
|--------|-----------------|---------------|--------|
| Spend-tree anchor | A `Anchor` | `state_commitment_path` per spend ([transfer_circuit.go:432](../../../tools/gnark/internal/circuits/transfer_circuit.go#L432)), `assert.eq_if cond=is_not_dummy` (L450) | proven-substrate (SCP, same as consolidate segs 11/29) |
| Output note commitments (×2) | B | `gadget.note_commitment` (L538), `assert.eq` (L551) | proven-substrate |
| Net balance | C `balanceCommitmentFq` | `net_balance_commitment` (L122) + `AssertEquivalent` + `CompressToField` (`assertTransferNetBalanceCommitment`, L123) | proven-substrate (nb ladder) |
| Nullifiers (×2) | D | `gadget.nullifier` (L424), dummy-mux (L442) | proven-substrate |
| Spend-auth rk (×2) | D `rk_compressed` | `randomized_verification_key` (L453) + `CompressToField` (L496) | proven-substrate (rvk) |

Dummy-note handling is a transfer-only wrinkle: nullifiers/anchors/rk are bound
by `assert.eq_if cond=is_not_dummy` and a real/synthetic mux
([transfer_circuit.go:437-450](../../../tools/gnark/internal/circuits/transfer_circuit.go#L437-L450)),
so a dummy input binds a synthetic nullifier. **H2 check:** confirm the mux makes
dummy inputs non-spending without opening a nullifier-collision path.

---

## 4. Per-object binding: compliance surface (all `ASSUMED`)

| object | statement group | binding gadget → deployed class | flag |
|--------|-----------------|-------------------------------|------|
| Asset-registry membership (is the asset regulated) | E `AssetAnchor` | `asset_registry_imt` ([transfer_circuit.go:280](../../../tools/gnark/internal/circuits/transfer_circuit.go#L280)) | proven-substrate (IMT/quad-path) |
| Sender/recipient compliance-tree membership | E `ComplianceAnchor` | `compliance_path` / `VerifyQuadPath` (L307, L577), `assert.eq_if cond=is_regulated` (L311, L581) | proven-substrate (quad-path); **conditional on `is_regulated`** |
| Detection ciphertext | F | `poseidon_encryption.detection` | **`ASSUMED[gadget.poseidon_encryption.detection@108]`** |
| Amount ciphertexts (tier `Ciphertext`, `C2`) | G | `poseidon_encryption.amount` | **`ASSUMED[…amount@109,111]`** |
| Address ciphertexts (tier `Ciphertext`) | G | `poseidon_encryption.address` | **`ASSUMED[…address@110,112]`** |
| Ephemeral pubkeys `epkFq` / shared secret | G `epkFq` | `decaf.shared_secret` (variable-base ladder) | **`ASSUMED[decaf.shared_secret@104-107]` — HIGH (canon-chain)** |
| Receiver ACK | (via shared ctx, into output collect L110) | `decaf.ack` | **`ASSUMED[decaf.ack@10,72]`** |
| DLEQ statement + proof (`derivedPK_fq, encCmt_fq, sharedPoint_fq, Challenge, Response`, + statement scalars) | I | `gadget.dleq` | **`ASSUMED[gadget.dleq@125-128]` — BLOCKED** |
| Regulated threshold / flag surface (tier `Tier`, threshold gate) | I `Tier` + gate | `threshold.flag` | **`ASSUMED[threshold.flag@94]`** |
| Policy/ring/resource/permission binding (`RingIDHash, PolicyIDHash, ResourceHash, PermissionHash, SubjectDerivation, Salt`) | I | hashed as literal statement scalars (no gadget) — directly bound | proven (direct field) |

**Every compliance object that a regulator relies on is a statement field** — so
the *transcript* binding is total. What is **conditional** is whether the
in-circuit gadget that produced each ciphertext / DLEQ point / threshold flag is
*sound*: those soundness links are the 7 `ASSUMED` rows above, each gated on
proving its dossier class.

---

## 5. Candidate gaps — reachable-but-unbound

1. **`is_regulated` branch selection** — `IsRegulated` is a private witness; the
   compliance-root equality is gated `cond=is_regulated`
   ([transfer_circuit.go:311,581](../../../tools/gnark/internal/circuits/transfer_circuit.go#L311)),
   and unregulated keys are substituted by `select.point`
   ([transfer_circuit.go:264-266](../../../tools/gnark/internal/circuits/transfer_circuit.go#L264-L266)).
   `is_regulated` itself is **not** a statement field. **H2 check:** can a prover
   flip `is_regulated` to skip compliance while keeping all 83 hash fields
   consistent? (The asset-registry IMT proof over `AssetAnchor` should force the
   branch — model this as the binding.)
2. **Individual amounts / blinding** — hidden, same as consolidate2x1 §4.1/4.4;
   only `balanceCommitmentFq` and the amount *ciphertexts* are bound.
3. **Uncompressed points** — DLEQ `derivedPK/encCmt/sharedPoint` and balance
   point are bound only via `CompressToField`
   ([transfer_circuit.go:976,984,992](../../../tools/gnark/internal/circuits/transfer_circuit.go#L976));
   rests on compress injectivity (compress segs).
4. **`TargetTimestamp`** — appears twice (group H and inside each DLEQ tier,
   L1007); a statement field, but H2 should confirm the two occurrences are
   constrained equal (freshness binding).
5. **All `ASSUMED` links (§4)** — until the 8 classes are proven, the compliance
   surface is *transcript-bound but not gadget-sound*. This is the load-bearing
   conditional the H2 model must carry as an explicit assumption per class.

---

## 6. Diff against consolidate2x1

**Bound in transfer but NOT in consolidate2x1:**
- `AssetAnchor`, `ComplianceAnchor` (regulated membership) — consolidate has no
  compliance tree at all.
- Entire compliance surface F/G/H/I (detection/amount/address ciphertexts, 4 DLEQ
  proofs, threshold/tier, EPKs, ACK). Consolidate2x1's statement is value-only.
- Dummy-note machinery (`is_dummy` mux, synthetic nullifier) — consolidate spends
  are all real.
- Second output commitment (transfer nOut = 2 vs consolidate nOut = 1).

**Bound in consolidate2x1 but NOT in transfer:**
- Nothing structural — consolidate's 4 value groups (anchor, output-commitments,
  balance_fq, nullifiers+rks) are a strict subset of transfer's groups A–D.
  (Consolidate binds 1 output commitment; transfer binds 2.)

**Asymmetry worth flagging to H2:** consolidate2x1 carries **no regulated /
compliance binding whatsoever**. If the protocol assumes consolidate operations
are exempt from the compliance surface that transfer enforces, that exemption is
an *unstated statement-level assumption* — a consolidate proof cannot attest to
asset-registry membership, sender/recipient compliance, detection, or threshold.
Whether that is intended (same-owner note reshaping is out of scope for
detection) or a gap is exactly an H2 question. It is cheap to note now and
exactly the kind of asymmetry that hides a real gap.

---

## 7. Summary for H2

- **Transfer statement = 83 fields**; value surface (A–D) mirrors consolidate and
  rests on proven substrate; compliance surface (E–I) is fully transcript-bound
  but gadget-soundness is **conditional on 8 unproven `functional-assumption`
  classes** (dossier).
- The Alloy model should carry each `ASSUMED[…@seg]` as a named per-class
  assumption predicate, so instantiating H2 on transfer vs consolidate differs
  only in *which assumption predicates are live* — the model text is shared.
- **Two live gaps for H2 to settle:** (i) does `AssetAnchor` membership force
  `is_regulated`, closing candidate-gap §5.1; (ii) is consolidate's total
  absence of a compliance surface (§6) an intended exemption or an unstated
  assumption.

---

*Read-only. No lake build was run to produce this document. Class/segment facts
cross-referenced against
[transfer-deployed-bridge-dossier.md](transfer-deployed-bridge-dossier.md) and
[transfer-coverage-manifest.json](../../../crates/core/component/shielded-pool/formal/transfer-coverage-manifest.json).*
