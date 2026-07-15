# Circuit formal verification

## Guarantee

The `consolidate2x1` FV path proves specifications of the exact deployed R1CS
segments over one global wire valuation, composes every discharged segment, and
projects the result into a protocol-readable statement. It covers the shared
note owner/key material, note commitments, nullifiers, two depth-24 state paths,
spend authorization keys, the output note, exact value conservation, the net
balance commitment, and the public statement hash.

The protocol theorem intentionally reflects the optimized circuit:

- `div_gen` is compressed once from the shared on-curve point. Per-note points
  are related to it only by the circuit's Decaf cross-ratio relation; the proof
  does not invent deleted per-note compression or curve checks.
- the diversified transmission key is computed once from the shared inputs and
  every note is bound to that result;
- the 253-bit IVK decomposition proves the unused high bits are zero before the
  251-bit scalar ladder is used;
- all three amounts are 128-bit, their two-input/one-output sum is conserved,
  and the conservation net-balance commitment is the fixed blinding-generator
  multiplication compressed into the statement;
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
  -> generated 43-fact protocol role map and Statement theorem
  -> deployed PK/VK pins and a deployed-key prove/verify round trip
```

No handwritten circuit replica participates in this chain. Changing Go source,
rows, segment boundaries, operation labels, wire roles, proof-class status,
theorem names, named wiring, capstone membership, Statement membership, key
bytes, or generated output makes a gate fail. The gate regenerates and
byte-compares the 617 DTK adapters, 942 RVK adapters, 442 SCP adapters, and the
Statement's exact 43 semantic plus 11 structural segment partition. Generated
Lean must be fixed through its generator and then regenerated; never edit it
directly.

Lean's theorem starts from the conjunction of exact deployed segment relations.
The Rust coverage gate is the checked bridge establishing that those relations
partition the compiled SR1CS rows. The source/SR1CS and key gates are therefore
part of the proof claim, not optional bookkeeping.

## Evidence and trust boundary

Authoritative evidence lives at:

- `tools/gnark/artifacts/consolidate2x1/` — deployed SR1CS, metadata, PK, VK;
- `crates/core/component/shielded-pool/formal/` — coverage reports and stamped
  whole-circuit artifacts;
- `tools/gnark/lean/ShielddGnarkFormal/Deployed/Contracts/Consolidate2x1/` —
  generated contracts, specs, adapters, capstone, wiring, and statement;
- `crates/core/component/compliance/formal/assumption-ledger.md` — named
  assumptions and removal paths.

The proof still trusts the gnark compiler/backend and Groth16 implementation,
the coverage/extraction tools, Lean's kernel and standard axiom baseline, the
cryptographic assumptions recorded in the ledger, and the surrounding Decaf377
representation bridges. The BLS12-377 scalar-field modulus itself is proved
prime by a kernel-checked Lucas certificate. The gate forbids project axioms and
compiler-backed certificate shortcuts, then requires the certificate, deployed
capstone, and readable statement to expose exactly `propext`,
`Classical.choice`, and `Quot.sound`. Protocol handlers and
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
scripts/check-manifest-pin.sh consolidate2x1
scripts/check-constraint-coverage.sh --lean-theorem-checks consolidate2x1
LEAN_NUM_THREADS=1 scripts/check-lean-circuit-fv.sh stamps --circuit consolidate2x1
LEAN_NUM_THREADS=1 scripts/check-lean-circuit-fv.sh full --circuit consolidate2x1
scripts/check-vk-derivation.sh consolidate2x1 --prove
```
