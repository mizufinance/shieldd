# Soundness-Hardening Roadmap (forward-looking)

Open formal-verification work, plus the primitive- and implementation-level
audits that bound what the proofs assume, in priority order. Each focus area
names the tools, the concrete deliverable, and the assumptions it must retire or
audit. Status of already-landed layers lives in the assumption ledger and the
per-component `formal/` artifacts, not here.

The items below come from the 2026-06 threat-surface review (the vectors the
landed FV stack does *not* yet cover). Three are in the top (P0) priority band
because they are consensus-critical value-bridging or library-trust surfaces
where a single bug mints or burns supply: the **multi-party ACP↔Orbis model**
(Focus 1's REQUIRED item), the **gnark frontend/backend trust boundary**
(Focus 2), and the **IBC/ICS-20 value-bridge + supply accounting** (Focus 2b,
promoted from the deferred backlog after the 2026-06 review and the Zcash
June-2026 Orchard turnstile incident). The remainder are Focus 3–5.

## Focus 1 — DLEQ proof soundness + full assumption review

Tools: Lean/VCVio, Alloy, Tamarin. The DLEQ Fiat-Shamir knowledge-soundness
proof is mechanized; this focus is an end-to-end **soundness + assumption
audit** across the three layers that touch DLEQ, not new construction unless the
audit surfaces a gap.

- **Lean/VCVio:** re-confirm `dleq_fs_knowledge_soundness` `#print axioms` is
  clean modulo the two residuals (`CC-ASSUME-POSEIDON-RO`,
  `CC-ASSUME-DECAF377-PRIME-ORDER-GROUP`); confirm the `1/2^250` bound and the
  challenge embedding match `crypto.rs`.
- **Tamarin:** confirm `compliance-active.spthy` imports DLEQ soundness as
  `ProofSound` faithfully — i.e. the symbolic `ProofSound` restriction is exactly
  the property the Lean proof establishes, with no stronger symbolic assumption
  smuggled in.
- **Alloy:** confirm the designated-decryptability / committee state machine does
  not assume a DLEQ property the computational proof does not deliver.
- **Assumption review:** every DLEQ-touching row in the ledger has a status, a
  removal path, and no `assumed` row silently covers a property a higher layer
  treats as `proved`. The two residuals are the irreducible base — document them
  as such; no removal path short of a different cryptographic assumption.
- **ACP ↔ Orbis interaction model (REQUIRED, not yet done):** the current DLEQ
  proofs are *local* — they show the relation is sound in isolation. They do
  **not** model the protocol interaction where ACP and Orbis exchange/derive the
  DLEQ-bound values (and the `derive_capability_scalar` / `derive_compliance_scalar`
  byte-parity that makes the PRE math cancel — see
  `crates/core/component/compliance/src/crypto.rs`). A game-based/algebraic proof
  of the bare relation cannot see replay, reflection, or party-confusion attacks
  across the ACP/Orbis boundary. **Tamarin must model the multi-party ACP↔Orbis
  message flow** before Focus 1 is "done." Tamarin + maude are installed and the
  base `compliance-symbolic.sh` gate passes; the remaining work is authoring the
  ACP↔Orbis multi-party model, not tooling.



## Focus 2 — gnark trust boundary: compiled-constraint coverage

Motivated by the 2024–2025 halo2/Zcash library-soundness bug, which lived in the
proving *library*, not the application circuit — exactly the layer our current
proofs must not silently trust. The soundness stack proves: (1) no
under-constraint (Picus), (2) extracted gadget/circuit composition matches its
spec (Lean), and now, for the completed whole circuits, (3) the checked artifacts
are pinned to the exact compiled `.sr1cs` bytes by an independent coverage
checker rather than only a call-site wiring string diff.

- **Landed for `consolidate2x1` and `transfer`: compiled-constraint partition
  coverage.** `gnarkctl export-manifest` emits the compiled `.sr1cs` hash,
  constraint count, and segment map while the Go circuit is defined. The Rust
  `shieldd-constraint-coverage` checker parses the raw `.sr1cs` independently of
  gnark, verifies the manifest hash and row count, requires an exact contiguous
  segment partition over every row, rejects gaps/overlaps/out-of-bounds ranges,
  rejects nonzero `marker`/`unclassified`/`adapter` segments, requires non-empty
  gadget labels plus bridge-theorem name strings on gadget segments, and emits
  per-segment constraint hashes. The gate binds `.sr1cs` -> manifest -> coverage
  report -> `circuit_metadata.json` -> `verifying_key.json`.
- **What this is and is not.** It is a partition/assignment gate: every compiled
  row is assigned to exactly one declared segment and non-gadget segments are
  constraint-free. It is **not** a proof that a gadget segment's rows equal the
  named proved gadget — the checker does not re-derive a segment from the proved
  gadget, so gadget identity is trusted from the Go emitter's trace boundaries.
  **Known gap to close:** the deployed gadgets are inlined *partial evaluations*
  of their standalone proved counterparts (verified empirically: standalone
  `gadget-poseidon-hash6` is 436 constraints, the inlined note-commitment instance
  is 430 with folded round constants), so the per-gadget `*Bridge.lean` proofs do
  not directly cover the deployed rows. Closing it requires either
  deploy-granularity extraction+proof of each segment, or a checked partial
  evaluation of the standalone gadget under the manifest's declared constant
  inputs.
- **Open extension work:** close the gadget-identity gap above; every future whole
  circuit that ships a proving key must get the same manifest/report/VK gate, and
  any new non-gadget segment kind must have an explicit proof or be rejected by
  policy.
- **Pin + advisory-track gnark** and record `ZK-ASSUME-GNARK-FRONTEND-BACKEND`
  (frontend+backend trusted at the pinned version) as an explicit ledger row,
  tracking the published advisories — signature malleability (CVE-2025-57801),
  the fake-GLV DoS (GHSA-9fvj-xqr2-xwg8), and Groth16 commitment soundness
  (GHSA-q3hw-3gm4-w5cr) — against the pinned version on each bump.
- **Backend crypto (Groth16/Plonk, KZG, pairing, prover Fiat-Shamir)** stays a
  named cryptographic trust assumption — not feasibly self-proved. The Zcash
  lesson is that real exploits cluster in layers (1)–(frontend), which *are* in
  reach.

## Focus 2b — IBC/ICS-20 value-bridge + supply accounting (P0; supply + denom-trace LANDED on this branch)

The supply-conservation and denom-trace obligations below landed on
`fv/circuit-soundness-hardening`: the design-level Alloy turnstile
`alloy/ics20-supply-conservation.als` (gated by `compliance-alloy.sh`), the
denom-trace injectivity unit test `asset::id::tests::denom_trace_to_asset_id_is_injective`,
and the ledger evidence on `ZK-ASSUME-ICS20-SUPPLY-CONSERVATION` citing the
existing runtime turnstile in `transfer.rs`. The row stays `assumed` because the
**residual** is the deferred whole-circuit R1CS proof of
`shielded_ics20_withdrawal_circuit.go` (the Alloy model is design-level over the
handler abstraction), which must use the same Focus 2 manifest/checker gate when
its whole-circuit artifact lands.

Tools: Rust differential tests, Alloy, runtime invariants. ICS-20 is the only
path where shielded value crosses the chain boundary, so a mint/burn or
denom-trace bug is a direct supply break — the Zcash June-2026 Orchard turnstile
incident is the reference failure. The whole-circuit Lean proof for
`shielded_ics20_withdrawal_circuit.go` was previously deferred behind the gnark
boundary work; the **supply-accounting and denom-trace invariants around it are
promoted to P0** because they do not depend on the circuit proof landing.

- **Supply-conservation invariant.** Every shielded mint must be backed by an
  escrowed IBC deposit and every withdrawal must burn exactly the released
  amount. Model the escrow/mint/burn ledger transition in Alloy (extend the
  value-conservation model with the IBC boundary) and add a runtime turnstile
  check that the shielded supply per denom never exceeds the escrowed amount.
- **ICS-20 denom-trace handling.** Multi-hop denom traces (`transfer/channel-…`
  prefixes) must round-trip injectively; a collision lets two distinct source
  denoms map to one shielded asset id. Add a differential/parity test on the
  denom-trace ↔ asset-id derivation.
- **Ledger rows.** Record `ZK-ASSUME-ICS20-SUPPLY-CONSERVATION` (supply backed by
  escrow) as an explicit invariant row with an Alloy/runtime removal path, and
  schedule the deferred `shielded_ics20_withdrawal_circuit` whole-circuit proof
  with the same Focus 2 manifest/checker gate.

## Focus 3 — Picus assurance integrity: `.sr1cs` fidelity for the new probes (LANDED in #96)

Done — recorded here for legibility, not as open work. Per the preamble, live
status lives in the artifacts/ledger, not this roadmap. `TestPicusExportFidelityAllGadgets`
in `gadgets_axe_fidelity_test.go` now covers every Picus-probed gadget: the newer
probes (`gadget-scalar-mul-step`, `-two-step`, `gadget-ack-two-step`,
`gadget-dleq`, `gadget-net-balance-commitment2`, `-core` probes,
`gadget-poseidon-hash5`) are present in `allPicusFidelityCases` with real solved
witnesses, the test parses the written `.sr1cs` and asserts `A(W)·B(W) == C(W)`
per row, matches the constraint count, and checks `(in)/(out)` wire roles; the
earlier `Out*`-emitted-as-`(in)` mislabel was fixed in `isPicusGadgetOutput`. No
ledger row retired; `picus_status = under-constraint-evidence-only` gained a
backing fidelity guarantee for the bytes Picus consumes. See
`gadgets_axe_fidelity_test.go` for current coverage.

## Focus 4 — Cross-layer parity and field-range invariants (HIGH / MEDIUM)

Tools: Rust/Go differential tests, gnark. The two ways a *correct* proof of a
*wrong* circuit can still ship: in-circuit semantics diverging from the wallet,
and an unbounded field value the abstract proofs never see.

- **4a — In-circuit ↔ out-of-circuit parity audit (HIGH).** The wallet derives
  keys, nullifiers, diversified addresses, FROST/compliance scalars, and point
  compressions in *Rust*; the circuit re-implements them as constraints. A
  divergence yields unspendable notes or a soundness-relevant mismatch.
  Enumerate every such surface and confirm a differential/parity test pins Rust
  output == in-circuit output (canonical-identifier parity per the engineering
  rules). This concretely tests `CC-ASSUME-DECAF377-ENCODING` rather than
  assuming it.
- **4b — Explicit amount range-check + ledger row (MEDIUM).** `Note.Amount` is
  bounded `< 2^128` only as a *side effect* of `ScalarMulLE(…,128)` in the
  net-balance commitment — there is no explicit `AssertIsLessOrEqual` and no test
  guarding the width. Alloy's `BindingImpliesConservation` runs over abstract
  `Int` and would not catch field-overflow inflation. Add an explicit range
  gadget on every amount, a regression test on the bit width, and a
  `ZK-ASSUME`/property row recording the bound as an invariant rather than an
  accident.

## Focus 5 — Primitive and implementation audit track (MEDIUM)

Not whole-circuit FV, but the primitive/implementation assumptions the proofs
idealize away. Each is a documented audit deliverable, not a multi-month proof.

- **5a — Poseidon parameter security-margin provenance.** `CC-ASSUME-POSEIDON-RO`,
  `CC-ASSUME-POSEIDON-STREAM`, and `ZK-ASSUME-IMT-LEAF-COMMIT` idealize Poseidon
  (RO / PRF / collision-resistant). Document the round-count and MDS provenance
  and cite the security-margin analysis vs Gröbner-basis / interpolation attacks
  **for this field** (not a copied parameter set), recorded as
  `CC-ASSUME-POSEIDON-PARAM-PROVENANCE`. The compliance stream cipher
  is already domain-separated (`compliance_stream_block` uses
  `COMPLIANCE_STREAM_CIPHER_DOMAIN` as the Poseidon capacity); the residual is its
  pseudorandomness/parameter provenance, not domain separation.
- **5b — FROST nonce-reuse + DKG rogue-key (decaf377-frost).** Nonce reuse leaks
  the long-lived share and is currently guarded only by a doc comment + RNG
  quality (RFC 9591 makes single-use a hard requirement). Record
  `CC-ASSUME-FROST-NONCE-SINGLE-USE` as an explicit upstream-trust row. Add a
  structural single-use guard / session-lifecycle state-machine check, and
  confirm
  the DKG path enforces proof-of-possession against rogue-key. Record FROST
  concurrent-signing (ROS/Wagner) resistance as an explicit upstream-trust row.
- **5c — Constant-time / side-channel audit.** `vartime_*` compression and tier-
  byte decryption operate on secret-derived points (`s_point`, shared secrets);
  audit secret-dependent paths for timing leakage and record which are
  constant-time vs explicitly out-of-scope.
- **5d — FMD detection-ambiguity threat-model entry (decaf377-fmd).** Fuzzy
  message detection has a tunable false-positive rate; capture the
  detection-ambiguity / clue-key griefing / privacy-degradation surface in the
  compliance threat model, even if no proof is scheduled.
- **5e — Scanner DoS / unbounded-growth audit.** The wallet scanner and
  compliance decryptor process attacker-supplied ciphertexts/clues per block;
  an unbounded work item or memory-growth path is a liveness DoS. Audit the
  scanner's per-block work bounds, cap attacker-controlled growth (per the
  "bound attacker-controlled growth" engineering rule), and capture the residual
  as a threat-model entry. This is a liveness/resource bound, not a soundness
  assumption, so it stays in the threat model rather than the soundness ledger.

## Deferred (not in current focus)

- `shielded_ics20_withdrawal_circuit.go` whole-circuit proof — same whole-circuit
  Lean pattern as the landed circuits, with the same manifest/checker gate.
  Its **supply-accounting and denom-trace invariants** are *not* deferred — they
  are promoted to Focus 2b (P0).
- Proof-system crypto (Groth16 / SnarkPack backend soundness) stays assumed in the
  ledger; see Focus 2 for the compiled-constraint frontend-fidelity gate.

## Verification bar (per scheduled item)

- Lean: `lake build` green; `#print axioms` shows no new kernel axioms beyond any
  named residual being retired; no `sorry` / `admit` / `axiom`.
- New artifacts stamped (source + artifact SHA-256) and wired into the nightly
  `provers` job.
- Every retired/added assumption-ledger row has a status and a removal path.

## Tool roles

- **Lean / proven-zk** — semantic circuit composition against extracted gnark call
  graphs and gadget relations (the whole-circuit `*_circuit_sound` theorems) and
  the DLEQ Fiat-Shamir knowledge-soundness proof (`lean-dleq`, VCVio).
- **Picus** — under-constraint / determinacy evidence on decomposed constraint
  systems; a bug finder and drift check, not a semantic proof.
- **ACL2/Axe** — independent R1CS/gadget constraint proofs over exported systems.
- **F\*/hax** — Rust statement, serialization, padding, and transcript-seam
  injectivity at executable boundaries.
- **Tamarin** — symbolic protocol properties under explicit crypto idealizations
  (installed; base `compliance-symbolic.sh` gate passes — see Focus 1 for the
  ACP↔Orbis model still to author).
- **Alloy** — bounded ledger/state-machine search for double-spend, supply, anchor,
  and nullifier-lifecycle violations (installed; four models pass).

## Promotion rules

- A property row reaches `proved` only when a stamped artifact proves the exact
  property scope the row cites.
- Gadget proofs, Picus reports, differential tests, and symbolic proofs are
  evidence for their own layer; they do not promote another layer by implication.
- Assumptions retire only when a new artifact proves the same obligation over the
  shipping code or a strictly stronger boundary.
- Every heavy prover artifact has a reproducible command and a SHA-256 stamp
  checked by CI.

## Long-range phase backlog

Beyond the active Focus areas, the full assurance arc (not all scheduled):

| Phase | Goal | Exit / ledger effect |
| --- | --- | --- |
| All consolidate/split circuits | Whole-circuit Lean proof per note-reshape family, no circuit-local decaf assumptions. | Retire `ZK-ASSUME-DECAF377-*` for those families. |
| All circuit families | Extend the artifact pattern to split + shielded ICS-20 withdrawal. | Circuit property rows move toward `proved` where artifacts cover the full property. |
| ACL2/Axe complementary R1CS | Keep independent constraint-level proofs for high-risk gadgets. | Independent regression protection; no whole-circuit promotion by itself. |
| Statement & SnarkPack seams | Bind Rust statement bytes, aggregation transcript, and Lean/F\* models to one statement. | Retire statement/aggregation seam assumptions as boundary proofs land. |
| Alloy ledger audit | Model global ledger transitions (note tree, nullifiers, anchors, balances, deposits/withdrawals). | Bounded counterexample search + reviewed invariants for supply risks. |
| Tamarin cross-track audit | Bind ciphertext, circuit statements, and aggregation to one accepted statement; model ACP↔Orbis (Focus 1). | Retires informal statement-map assumptions where covered. |
| Turnstile feasibility | Decide whether to add Zcash-style runtime supply accounting. | Runtime backstop for supply bugs; not a replacement for circuit FV. |
