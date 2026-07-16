# Circuit formal verification

## Guarantee

The maintained NoteReshape FV paths prove specifications of the exact deployed
R1CS segments over one global wire valuation for `note_reshape2x1`,
`note_reshape4x1`, `note_reshape8x1`, and `note_reshape1x8`. Each path composes every
discharged segment and projects the result into a protocol-readable family
Statement. Every shape covers its active notes' owner/key material, note
commitments, nullifiers, depth-24 state paths, spend authorization keys,
outputs, exact value conservation, net balance commitment, and public
statement hash. Padded shapes additionally prove their active-range,
dummy-suffix, and deterministic dummy-note obligations.

The protocol theorem intentionally reflects the optimized circuit:

- `div_gen` is compressed once from the shared on-curve point. Per-note points
  are related to it only by the circuit's Decaf cross-ratio relation; the proof
  does not invent deleted per-note compression or curve checks.
- the diversified transmission key is computed once from the shared inputs and
  every note is bound to that result;
- the 253-bit IVK decomposition proves the unused high bits are zero before the
  251-bit scalar ladder is used;
- every active input and output amount is 128-bit, the sum of active inputs
  equals the sum of active outputs, and the conservation net-balance commitment
  is the fixed blinding-generator multiplication compressed into the statement;
- each randomized verification key is tied to the authorization key and
  randomizer, not merely asserted to be on curve.

The generated capstone remains exhaustive even when the readable theorem names
only protocol facts. Review both: the capstone answers “did every deployed
segment get a proof?”; the readable statement answers “did we retain the facts
the protocol relies on?”

## Drift-proof chain

```text
Go Define source
  -> freshly compiled SR1CS, byte-equal to deployed SR1CS
  -> semantic segment manifest, byte-equal to the committed manifest
  -> typed slice IR and normalized coverage manifest
  -> exact generated row contracts
  -> generated named Wiring and exhaustive Capstone
  -> generated family role map and Statement theorem
  -> deployed PK/VK pins and a deployed-key prove/verify round trip
```

No handwritten circuit replica participates in this chain. Changing Go source,
rows, segment boundaries, operation labels, wire roles, proof-class status,
theorem names, named wiring, capstone membership, Statement membership, key
bytes, or generated output makes a gate fail. Generated Lean must be fixed
through its generator and then regenerated; never edit it directly.

Lean's theorem starts from the conjunction of exact deployed segment relations.
The Rust coverage gate is the checked bridge establishing that those relations
partition the compiled SR1CS rows. The source/SR1CS and key gates are therefore
part of the proof claim, not optional bookkeeping.

## Evidence and trust boundary

Authoritative evidence lives at:

- `tools/gnark/artifacts/{note_reshape2x1,note_reshape4x1,note_reshape8x1,note_reshape1x8}/`
  — deployed SR1CS, metadata, PK, and VK;
- `crates/core/component/shielded-pool/formal/` — coverage reports, normalized
  manifests, and stamped whole-circuit artifacts;
- `tools/gnark/lean/ShielddGnarkFormal/Deployed/Contracts/` — generated family
  bounds, capstones, wiring, and Statements;
- `tools/gnark/lean/ShielddGnarkFormal/Deployed/Templates/` — exact normalized
  template relations and their reusable semantic providers;
- `crates/core/component/compliance/formal/assumption-ledger.md` — named
  assumptions and removal paths.

The proof still trusts the gnark compiler/backend and Groth16 implementation,
the coverage/extraction tools, Lean's kernel and standard axiom baseline, the
cryptographic assumptions recorded in the ledger, and the surrounding Decaf377
representation bridges. The BLS12-377 scalar-field modulus itself is proved
prime by a kernel-checked Lucas certificate. The gate forbids project axioms and
compiler-backed certificate shortcuts, then requires the certificate, deployed
capstones, and readable Statements to expose their reviewed axiom baselines.
Each deployed Statement's exact standard-axiom baseline is recorded in its
stamped artifact and checked by the gate. Protocol handlers and
accepted-language/state-machine claims remain separate evidence.

## Editing workflow

1. Change the circuit or semantic spec.
2. Run focused Go tests and export a fresh candidate SR1CS/manifest.
3. Inspect the semantic segment diff. New or changed relations require an
   explicit proof; deleted relations require an explanation.
4. Regenerate typed IR, contracts, adapters, wiring, capstone, and Statement
   from their generators.
5. Build the narrowest changed Lean modules in dependency order.
6. Run the stamps gate, then the full gate and deployed-key round trip.
7. Update the compact stamped artifact only after every source gate is green.

Lean resource rules are load-bearing: run one Lake command at a time, set
`LEAN_NUM_THREADS=1`, build the narrowest named module, keep generated
`maxHeartbeats` finite, and monitor the process. The extractor now emits a finite
budget, and its regression gate prevents new unbounded exports. Exact contracts
whose definition payload exceeds 16 MiB are emitted as a small base, contiguous
512 KiB definition shards, and a canonical façade; every shard must remain
inside the leaf budget. Older extracted
modules remain source-hash-gated with their historical unbounded setting until a
deliberate bulk regeneration is reviewed. The complete local rules are in
`tools/gnark/lean/AGENTS.md`.

Useful commands:

```sh
scripts/check-manifest-pin.sh all
scripts/check-constraint-coverage.sh --require-full-deployed --check-typed-bindings all
LEAN_NUM_THREADS=1 bash scripts/check-lean-circuit-fv.sh stamps all
LEAN_NUM_THREADS=1 bash scripts/check-lean-circuit-fv.sh full all
bash scripts/check-soundness-invariants.sh
```
