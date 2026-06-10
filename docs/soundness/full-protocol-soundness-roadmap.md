# Full Protocol Soundness — Roadmap

How the three self-contained verification tracks extend toward end-to-end
protocol soundness, and the two layers not yet covered: the ledger state machine
(Alloy) and cross-track composition (Tamarin extension). This is a roadmap, not a
commitment to a mechanized end-to-end proof. See
[assessment-2026.md](assessment-2026.md) for why these are the priority gaps.

## Layer map

Soundness risk lives at five layers. Each tool owns the layer whose
representation it can ingest; nothing reaches across layers today.

| Layer | What it asserts | Tool | State |
| --- | --- | --- | --- |
| R1CS constraints | each gadget's constraints imply its spec; no under-constrained signals | ACL2/Axe, Picus, Lean | gadget scope proved; whole-circuit open |
| Statement encoding | Rust field encoders are injective / well-formed | F\*/hax | partial (field-count seam) |
| Protocol messages | secrecy, replay, designated decryptability under a network attacker | Tamarin | seven lemmas proved-symbolic |
| Ledger state machine | no double-spend, supply conservation, nullifier/anchor lifecycle | **Alloy (new)** | **not modeled** |
| Runtime accounting | supply auditable / bounded if a proof was incomplete | turnstile (consensus design) | **not designed** |

The two bottom rows are the gap. Alloy is a design-time finder; turnstile is a
runtime backstop. They are complementary, not alternatives, and neither replaces
the circuit-level proofs above them.

## Alloy — ledger state-machine layer (new)

Bounded model-finding over the global ledger transition system. Alloy searches
for a reachable action sequence that violates an invariant, within a bounded
scope. It proves nothing at runtime and nothing about the R1CS — it finds design
errors in how transitions mutate ledger state, the class that sits above the
per-gadget proofs and below the protocol model.

**Model scope.** Notes, the nullifier set, the note-commitment tree, total
supply, and the action transitions: transfer, consolidate, split,
shielded_ics20_withdrawal.

**Invariants to check.**
- No double-spend: a nullifier cannot be consumed by two committed actions.
- Supply conservation: no transition increases total supply without a matching
  deposit/mint; consolidate/split preserve value.
- No nullifier reuse: nullifiers are append-only; no transition removes or
  rewrites an existing entry.
- Anchor lifecycle: actions verify against a previously-live anchor (the
  ledger-level analog of the compliance ANCHOR_FRESHNESS lemma).

**Where it lives.** `crates/core/component/shielded-pool/formal/alloy/` alongside
the existing `acl2/` fixtures, with a threat-model and scope file mirroring the
per-track convention.

**CI wiring.** The cheap structural check (model parses, assertions named) joins
the `gate` job in `soundness-formal.yml`; the bounded `check`/`run` solving joins
the `provers` job next to Tamarin and Picus. Like the other tracks, an artifact +
sha256 stamp records the checked scope so drift is detected.

**Relationship to turnstile.** Turnstile is a consensus/protocol design decision:
value crossing pool boundaries must balance, making supply independently
auditable on-chain so an exploited soundness bug is bounded and visible. It is the
runtime backstop for exactly the failure Alloy explores at design time and the
circuit proofs try to rule out. Adopting it is a protocol change, out of scope
for this verification roadmap; it is referenced here as the runtime layer the
ledger-soundness story should eventually include. The Zcash Orchard incident is
the precedent: the bug was a whole-circuit under-constraint, and turnstile
accounting is what bounds/exposes that class in production.

**Limits.** Bounded scope — Alloy finds bugs, it does not prove their absence
beyond the bound. It models an abstraction of the transitions, not the compiled
circuit; an Alloy-clean model with a buggy R1CS is still exploitable. Alloy
complements the circuit proofs, it does not substitute for them.

## Tamarin — toward cross-track binding

The compliance model
([compliance.spthy](../../crates/core/component/compliance/formal/compliance.spthy))
is self-contained: it proves protocol-message properties with crypto idealized,
and it does not reach the circuit or the aggregation layer.

**Candidate extension.** Bind the compliance ciphertext to the same statement
digest that the shielded-pool circuit constrains and that snarkpack aggregates —
i.e. model that the value a transfer detects/encrypts is the value the circuit
proves and the aggregator commits to. Today this binding is asserted only by the
shared `STMT-TRANSFER-*` field map, not proved.

**What blocks a single composed theorem.** Tamarin's symbolic abstraction cannot
see the byte-level statement encoding (that is F\*/hax) or the R1CS (that is
ACL2/Lean). A cross-track theorem therefore is not "one Tamarin model" but a
composition argument across tools, gated on the standing assumptions below. The
honest near-term target is to make the binding explicit and assumption-tracked,
not to mechanize it end-to-end.

## Cross-track composition gap

A single end-to-end soundness theorem would need to discharge the union of the
standing assumptions currently held independently per track. Aggregated from the
three assumption ledgers:

- **Compliance**: compressed-DH mask hiding, Poseidon-stream PRF, decaf377
  cross-language canonical encoding, DLEQ Fiat-Shamir special-soundness/HVZK,
  challenge-truncation injectivity, and the deferred R1CS/circuit correspondence.
- **SnarkPack**: SHA-256 collision/preimage resistance, domain-separation by
  prefix, abstract Groth16 soundness, abstract RIPP/GIPA/TIPA/SnarkPack algebraic
  soundness, arkworks field/group/pairing/MSM/serialization correctness, hax
  semantic preservation, decaf377 backend behavior.
- **Circuits**: full Rust/Go statement correspondence (currently `composed`),
  lower-level `to_field_elements`/decaf377/shape-validator injectivity, and the
  open whole-circuit composition (the quad-path Stage 3 / Merkle-path blocker).
- **Cross-track**: the binding that the compliance ciphertext, the circuit
  constraint, and the snarkpack aggregation all reference the same statement —
  asserted via the shared field map, not proved.

This list is the definition of done for "full protocol soundness." Most rows are
deliberately `assumed` (paper-backed cryptography, arkworks correctness) and are
not targets. The reachable near-term work is the ledger layer (Alloy) and the
whole-circuit composition that unblocks the circuit-side rows — tracked in
[circuit-fv-benchmark.md](circuit-fv-benchmark.md).
