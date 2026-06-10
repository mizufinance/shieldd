# Formal Verification Assessment — 2026

Honest assessment of the shieldd formal-verification effort against the 2026
frontier. Companion to the two roadmap docs it references:
[full-protocol-soundness-roadmap.md](full-protocol-soundness-roadmap.md) and
[circuit-fv-benchmark.md](circuit-fv-benchmark.md).

## Verdict

Right instinct, mis-weighted effort. Every tool in the stack maps to a real
layer, and the protocol and aggregation layers that most ZK projects skip are
covered. But effort is concentrated on deep gadget proofs in a tool that has not
composed to a whole circuit, while the two highest-risk layers — whole-circuit
soundness and ledger/supply soundness — are unproved or unmodeled.

## Current coverage by track

Status vocabulary matches the ledgers: `proved` (certified theorem over real
artifacts), `proved-symbolic` (Tamarin lemma modulo cited assumptions),
`composed`/`refined` (evidence assembled, not a single theorem), `assumed`
(standing assumption, owner + removal path recorded).

**Circuits — ACL2/Axe + Lean.**
Source of truth:
[circuit-gadget-proofs.md](../../crates/core/component/shielded-pool/formal/circuit-gadget-proofs.md),
[circuit-soundness-properties.md](../../crates/core/component/shielded-pool/formal/circuit-soundness-properties.md).
- ACL2: six gadgets `proved` over byte-identical gnark exports — bool-select,
  iszero, poseidon2, poseidon-hash4, nullifier, imt-gap (AssetRegistryGap, 5568
  constraints). Parity-tested against the compiled circuit.
- Lean (`proven-zk`): three gadgets extracted (bool-select, iszero, nullifier),
  light implication proofs, Poseidon opaque. Corroboration only; no property row
  cites a Lean artifact.
- Whole circuits (transfer, consolidate2x1, split1x4, shielded_ics20_withdrawal):
  **every property row is `composed` or `refined`. None `proved`.**

**Compliance protocol — Tamarin.**
Source of truth:
[soundness-properties.md](../../crates/core/component/compliance/formal/soundness-properties.md),
[assumption-ledger.md](../../crates/core/component/compliance/formal/assumption-ledger.md).
- Seven lemmas `proved-symbolic-modulo-assumptions`: SECRECY,
  DETECTION_CORRECTNESS, DESIGNATED_DECRYPTABILITY, DLEQ_BINDING,
  REPLAY_RESISTANCE, NO_KEY_CONFUSION, ANCHOR_FRESHNESS.
- Five standing `assumed` rows: compressed-DH mask hiding, Poseidon-stream PRF,
  decaf377 cross-language encoding, DLEQ Fiat-Shamir, challenge truncation.
  Computational ciphertext security and Rust/Go circuit correspondence are
  explicitly out of the symbolic model.

**SnarkPack — F\*/hax.**
Source of truth:
[formal-handoff.md](../../crates/crypto/proof-aggregation/formal/snarkpack/formal-handoff.md),
[verification.md](../snarkpack/verification.md).
- Encoding/binding injectivity `proved` over hax-extracted Rust (statement
  encoding, digest preimage binding, validation, wrapper framing, FS challenge
  preimage, family routing, preflight gate).
- Algebraic soundness (Groth16, RIPP/GIPA/TIPA/SnarkPack) is `assumed` from the
  paper + Filecoin, probabilistically cross-checked by the Lean conformance
  oracle. Stated explicitly as out of scope, not an open gap.

## Gaps, ranked by risk

1. **Whole-circuit soundness is unproved (highest risk).** No production circuit
   has a `proved` whole-circuit property. ACL2 reached gadget scope and then hit
   a hard wall on composition: `quad-path` depth-2 failed with control-stack
   overflow
   ([QUAD-PATH-HANDOFF.md](../../crates/core/component/shielded-pool/formal/QUAD-PATH-HANDOFF.md),
   Stage 3 = OPEN). The 16-deep Merkle/IMT path that real soundness depends on is
   not composed. The proofs that exist are the parts; the assembly that maps to
   an exploit is missing.
2. **Whole-circuit under-constraint is `undischarged-by-design`.** Picus runs at
   gadget scope only; whole-circuit families time out and are recorded as
   undischarged
   ([constraint-system-assurance.md](constraint-system-assurance.md)). This is
   precisely the Zcash Orchard failure class — a whole-circuit `halo2_gadgets`
   under-constraint that survived from 2022 until May 2026 and four years of
   audits.
3. **No ledger/supply state-machine model.** Nothing models double-spend or
   supply conservation at the ledger level. The compliance anchor-freshness
   lemmas are the closest analog and are scoped to the compliance registry, not
   global supply. This is the layer Alloy (design-time) and turnstile accounting
   (runtime) address.
4. **No cross-track composition.** The three tracks are self-contained, each with
   its own assumption ledger. They share only an informal `STMT-TRANSFER-*` field
   map, not a single theorem binding compliance ciphertext, the circuit
   constraint, and the snarkpack aggregation to the same statement.

Honesty signal recorded in the strategy doc: every real finding to date
(including the High-severity `ZK-FIND-GO-UNREGULATED-NONMEMBERSHIP`) came from
differential/metamorphic/review work, not from the ACL2 theorems. The proofs'
value is regression prevention on the spine, not discovery — which matches public
ZK practice where under-constraint bugs dominate.

## The 2026 frontier, for comparison

- **Ethereum Foundation — Verified zkEVM**: Lean-centric, targeting
  formally-verified zkVMs by 2027. Nethermind + Succinct verified SP1 ALU chips
  in Lean; a Sail→Lean backend specifies RISC-V.
- **Veridise — LLZK + Picus**: LLZK (EF-funded MLIR IR for circuits) as the
  shared analysis input; Picus for under-constraint. The ecosystem is
  consolidating circuit work on Lean + Picus/LLZK.
- **Zcash — Orchard + turnstile**: the May 2026 Orchard under-constraint bug
  triggered plans to formally verify the circuit and adopt turnstile accounting
  for independent supply verification. Direct evidence that whole-circuit
  under-constraint is the proven-dangerous gap and that a runtime supply backstop
  is the chosen mitigation when proofs cannot be assumed complete.

Direction of the frontier: fewer tools, deeper Lean coverage, and explicit
closure of the under-constraint gap.

## Recommended rebalance

- **Find the tool that composes.** Run a Lean-first single-circuit benchmark on
  consolidate2x1 to test whether `proven-zk` clears the composition wall ACL2 hit.
  Keep ACL2 as the current `proved` spine until Lean demonstrably reaches full
  single-circuit coverage. Detail in
  [circuit-fv-benchmark.md](circuit-fv-benchmark.md).
- **Own the cross-track and ledger gaps explicitly.** Add a ledger state-machine
  layer (Alloy) and document the path to binding the tracks together (Tamarin
  extension), so the highest-risk layers stop being implicit. Detail in
  [full-protocol-soundness-roadmap.md](full-protocol-soundness-roadmap.md).
- **Do not chase what is correctly assumed.** SnarkPack/Groth16 algebraic
  soundness stays assumed-from-paper. The effort belongs on composition and the
  ledger layer, not on re-proving the cryptography.

## Note on the index disclaimer

[index.md](index.md) still describes this as a fixtures phase that "does not run a
symbolic prover or claim R1CS-level formal verification." That framing predates
the wired-in Tamarin (symbolic prover) and ACL2/Picus (R1CS-level) work in the
`provers` job of `soundness-formal.yml`. The accurate statement is: symbolic and
R1CS-level proofs run at gadget/protocol scope; whole-circuit and cross-track
composition remain open.
