# Soundness-Hardening Roadmap: Tamarin, Alloy, and the FV Stack

## Context

We want assurance that the protocol, ZK circuits, DLEQ proof, and compliance
flow are *sound*, and to be current with state-of-the-art use of Tamarin and
Alloy for ZK/blockchain/cryptography work. Review finding: the repo already runs
a strong **layered refinement stack** (Tamarin + Lean + ACL2 + F*/hax + Picus),
but it has **no Alloy at all**, several system-level state machines are tested
but never model-checked, and the **DLEQ cryptographic soundness is fully
assumed**. This is strategy — no code change is implied by the document itself.

## Current stack (baseline)

| Layer | Tool | Artifact |
|---|---|---|
| Protocol / symbolic (closed-world authorization) | **Tamarin** | `crates/core/component/compliance/formal/compliance.spthy` — 7 lemmas (SECRECY, DETECTION_CORRECTNESS, DESIGNATED_DECRYPTABILITY, DLEQ_BINDING, REPLAY_RESISTANCE, NO_KEY_CONFUSION, ANCHOR_FRESHNESS) |
| Protocol / symbolic (active Dolev-Yao) | **Tamarin** | `crates/core/component/compliance/formal/compliance-active.spthy` — published transcript + attacker-driven verify, DLEQ soundness imported as `ProofSound`; 4 lemmas (DLEQ_BINDING, REPLAY_RESISTANCE, NO_KEY_CONFUSION, EXECUTABLE). Both models verified nightly via `scripts/compliance-symbolic.sh` |
| Circuit relation (R1CS⇒spec) | **Lean** + **ACL2** | `tools/gnark/lean/` whole-circuit `consolidate2x1_circuit_sound` (axiom-clean); `crates/core/component/shielded-pool/formal/acl2/` 6 certified gadgets |
| No under-constraint | **Picus** | `scripts/circuit-constraint-check.sh` (poseidon2, nullifier, imt-gap) |
| Impl ↔ spec | **F\*/hax** + parity | statement-encoding injectivity; snarkpack validation; Go↔Lean wiring transcript diff |
| DLEQ Σ-protocol + Fiat-Shamir knowledge soundness | **Lean/VCVio** | `crates/core/component/compliance/formal/lean-dleq/` (`dleq_fs_knowledge_soundness`, axiom-clean modulo two residuals) |
| Proof-system crypto (Groth16/SnarkPack/FS) | **Assumed** | `crates/core/component/compliance/formal/assumption-ledger.md` |

Bridge axioms still open: decaf377 group-law gadgets (named Lean axioms). The
DLEQ Fiat-Shamir + challenge-truncation content is now mechanized (Step 2,
below); its only residuals are `CC-ASSUME-POSEIDON-RO` and
`CC-ASSUME-DECAF377-PRIME-ORDER-GROUP`.

## State of the art (decision basis)

- **Tamarin** = adversarial message-passing soundness in the symbolic model.
  SOA lesson (Basin et al. aggregate-signatures; SANA re-analysis): the bugs
  live in *undocumented assumptions bridging symbolic↔computational*. The
  assumption ledger is the right artifact; its completeness is the risk.
- **Alloy** = bounded relational model-finder (SAT/SMT-backed). SOA uses it for
  what Tamarin is weak at: **system-level state machines, data-structure
  invariants, conservation/accounting**. Precedent: ZK-Rollup Alloy model
  (arXiv 2406.16219), Ethereum-spec model-checking (arXiv 2501.07958),
  Portus SMT finite model finding (arXiv 2411.15978).
- The two are **complementary**: Tamarin for "can the adversary break the
  protocol," Alloy for "do the state machines preserve invariants across all
  reachable states." The repo's *explicit state machines* mandate is currently
  only enforced by tests — Alloy is the missing model-checker for it.

## Recommended approach

Three workstreams.

### 1. Introduce Alloy for system-state invariants (all four targets)

Add a new `formal/alloy/` tree (proposed location:
`crates/core/component/.../formal/alloy/`, mirroring the existing `formal/`
layout) with four bounded models, each with `check` assertions and a stamped
artifact gated the same way as Tamarin (nightly `provers` job in
`.github/workflows/soundness-formal.yml`). Model the **design-level state
machine**, not the crypto — crypto stays idealized and is delegated to the
assumption ledger, exactly as `compliance.spthy` does.

- **Nullifier + IMT invariants** — double-spend impossibility across blocks;
  indexed-Merkle-tree insert / non-membership (gap) global invariants. Ties to
  Lean `imtGapSpec` and ACL2 `asset-registry-gap` (those prove the *gadget*;
  Alloy proves the *system* invariant the gadget is trusted to enforce).
- **Orbis threshold committee** — key designation → quorum → terminal decrypt;
  no decryption without designated key (system-level mirror of Tamarin
  `DESIGNATED_DECRYPTABILITY`).
- **Value conservation** — whole-transaction net-balance across a tx graph;
  ties to the P5 net-balance blueprint (Lean proves the commitment gadget;
  Alloy proves graph-level conservation).
- **Compliance tier state machine** — regulated/unregulated routing, tier
  transitions, evidence lifecycle.

For each: document the abstraction boundary and add the idealization rows to the
assumption ledger so Alloy idealizations are tracked like Tamarin's.

### 2. Mechanize DLEQ cryptographic soundness (Lean/VCVio)

**Status (done):** all five DLEQ obligations are machine-checked in
**Lean 4 + VCVio** under `crates/core/component/compliance/formal/lean-dleq/`,
with the two-tier harness `scripts/compliance-lean-dleq.sh` (`stamps`/`full`),
nightly CI wiring, a stamped `lean-dleq-artifact.txt`, and the ledger flipped to
`proved-computational`.

- `Dleq/Group.lean` — decaf377 scalar field as `ZMod q` with `Fact (Nat.Prime q)`
  and the keystone `pow_keepBits_lt_q : 2^250 < q`; the single residual axiom is
  `Dleq.q_prime` (`CC-ASSUME-DECAF377-PRIME-ORDER-GROUP`).
- `Dleq/Challenge.lean` — the 250-bit truncated challenge `Fin (2^250) ↪ ZMod q`
  with `emb_injective` (`DLEQ-CHALLENGE-TRUNCATION`), valid precisely because
  `2^250 < q`.
- `Dleq/Sigma.lean` — the Chaum-Pedersen DLEQ `SigmaProtocol`; `sigma_complete`,
  `sigma_speciallySound` (extractor `(s−s')·(c−c')⁻¹`), and `sigma_hvzk`.
- `Dleq/FiatShamir.lean` — `dleq_fs_knowledge_soundness`, obtained by applying
  VCVio's `euf_nma_bound` (forking lemma + special soundness) to the DLEQ Σ,
  with challenge space `Fin (2^250)` so the bound's `1/|Ω|` is `1/2^250`,
  matching `crypto.rs`. `#print axioms` is clean modulo `propext`,
  `Classical.choice`, `Quot.sound`, and the residual `Dleq.q_prime`.

Residuals are exactly two: `CC-ASSUME-POSEIDON-RO` (the FS hash idealized
structurally as VCVio's `M × Commit →ₒ Chal` random oracle — no Lean `axiom`) and
`CC-ASSUME-DECAF377-PRIME-ORDER-GROUP` (axiom `Dleq.q_prime`). The deleted
`CC-ASSUME-DLEQ-FS` and `CC-ASSUME-CHALLENGE-TRUNCATION` assumptions are now
discharged.

**Why Lean/VCVio, not EasyCrypt:** the original plan targeted EasyCrypt, but the
only license-clean, maintained packaged forking lemma is in **VCVio**
(`Verified-zkEVM/VCV-io`, Apache-2.0): a generic `SigmaProtocol → Fiat-Shamir →
Fork` pipeline whose Schnorr extractor `(z₁−z₂)·(c₁−c₂)⁻¹` is the exact shape of
the DLEQ extractor. Every EasyCrypt forking implementation surveyed was unlicensed
and pinned to an older EC release. Consolidating on Lean also gives a
single-prover story. Cost: a second Lean toolchain (`v4.30.0` + Mathlib, isolated
lake project, nightly-only `full`). The EC DLEQ track that previously served as a
cross-check has been deleted (`delete replaced flows`); its algebra survives in
git history as the port blueprint.

### 3. Cross-layer faithfulness audit (assumption-ledger integrity)

The ledger is the spine of the whole argument. As a standing doc task:

- Verify each Tamarin/Alloy idealization genuinely *refines* the real
  circuit/Rust primitive, and that every gap has a ledger row with a removal
  path. The Tamarin abstraction points are the `dem/2` term (DEM/Poseidon
  stream), the action facts `DleqBound`/`MetadataBound` (DLEQ + metadata
  binding), and the persistent fact `!KeyInIMT` (IMT membership); IMT gap and
  value conservation are abstracted in the Alloy models.
- Confirm no `assumed` row silently covers a property a higher layer believes is
  `proved` (the symbolic↔computational seam where SOA bugs hide).
- **Resolved (2026-06):** the closed-world/active-adversary gap was closed by
  *adding* a second model rather than narrowing claims. `compliance.spthy` stays
  the closed-world authorization model (SECRECY, DETECTION_CORRECTNESS,
  DESIGNATED_DECRYPTABILITY correspondence). `compliance-active.spthy` adds a
  scoped active Dolev-Yao adversary: the full published transcript
  (epk, s_point, proof, metadata) goes to the attacker via `Out`, the attacker
  drives verification via `In`, and DLEQ knowledge soundness is imported as the
  restriction `ProofSound` (the Lean `DLEQ-FS-KNOWLEDGE-SOUNDNESS` result) rather
  than re-derived. It proves binding/replay/key-separation under that adversary
  (DLEQ_BINDING, REPLAY_RESISTANCE, NO_KEY_CONFUSION, EXECUTABLE), all verified
  with zero wellformedness warnings. Confidentiality is explicitly out of scope
  there — `s_point = r*ACK` is published (crypto.rs:195), so seed secrecy rests on
  the DH mask + Poseidon keystream (`CC-ASSUME-POSEIDON-STREAM`), a computational
  obligation, not a symbolic secrecy lemma. Both models are proved and stamped by
  `scripts/compliance-symbolic.sh`.

## Files this roadmap touches (when executed)

- New: `**/formal/alloy/*.als` (4 models) + artifacts/stamps
- New: `**/formal/lean-dleq/` (Lean/VCVio DLEQ mechanization) + stamped artifact
- Edit: `crates/core/component/compliance/formal/assumption-ledger.md` (add
  Alloy idealization rows; flip DLEQ rows on success)
- Edit: `.github/workflows/soundness-formal.yml` (add Alloy + Lean/VCVio DLEQ jobs
  to nightly `provers`)
- Edit: `scripts/` (new `compliance-alloy.sh`, `compliance-lean-dleq.sh` mirroring
  `compliance-symbolic.sh` stamp/verify pattern)
- Edit: `docs/compliance/reference.md` (link the new layers into the soundness
  story)

## Verification (of eventual execution)

- Alloy: `check` assertions report **no counterexample within bounds**; stamped
  artifact SHA-256 matches; nightly `provers` job green.
- Lean/VCVio DLEQ: `lake build` succeeds with a clean `#print axioms` baseline
  (modulo the two residual assumptions); ledger DLEQ rows are
  `proved-computational`; artifact stamped.
- Ledger audit: `scripts/check-soundness-invariants.sh` still green; every
  idealization has a row + removal path; no status-kind contradictions.

## Out of scope (flagged)

- Decaf377 group-law axiom removal (separate, known removal path via extraction).
- Whole-circuit Picus (undischarged-by-design — SMT capacity).
