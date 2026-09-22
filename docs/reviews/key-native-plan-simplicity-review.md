# Independent simplicity and scope review

Reviewed the draft implementation plan against `AGENTS.md`, `docs/README.md`, the recovery and seizure implementations, prover integration, and Commonware patches. Planning review only: no implementation changes or heavy verification. Other reviewers' reports and the boundary assessment were not consulted.

Verdict: the native-prover direction is appropriately subtractive, and the key-change impact assessment is broadly proportional. Finalize the plan after removing capsule ownership PET from this scope and making the CAPK consumer cutover atomic. The principal unnecessary expansion is a new ciphertext and proof obligation on every recoverable note.

## Findings

### [P2] Defer ownership ciphertext on every capsule; exact-note seizure already binds the owner

**Plan:** `docs/reviews/key-and-native-prover-implementation-plan.md:45` and `:131` propose checking-key ownership ciphertext, independent randomness, and a changed recovery commitment on every recoverable capsule.

**Evidence:** `crates/crypto/circuits/src/seizure.rs:101` checks the recovered plaintext, then `:107` reconstructs the note commitment from the recovery commitment, asset, amount, blinding, and public address. Lines 109–118 independently constrain the RNK commitment, nullifier, and note inclusion. `crates/core/app/src/app/host.rs:735` obtains the leaf for that exact authorized address and asset; `:753` binds its RNK commitment. The host checks the authority signature at `:733`, current freeze at `:740`, and unspent state at `:800`. The request binds the address and exact note/capsule to its release identifier (`crates/core/component/shielded-pool/src/note_seizure.rs:184`, `:246`, `:335`). The existing capsule has six fields and no ownership-search ciphertext (`crates/core/component/shielded-pool/src/recovery_capsule.rs:73`).

**Impact:** Adding ownership PET to every capsule serves owner matching before release or discovery of unknown notes. The stated scope is an exact-note public seizure path, with discovery and external PET deferred. An extra ownership ciphertext does not replace independent RNK possession or authority approval, and it is not necessary to keep those admission gates effective when payload replaces CAPK. It imposes persistent bytes, additional curve constraints, randomness derivation, codecs, and fixture changes across every creation path without an in-scope consumer requiring that capability.

**Minimal remedy:** Resolve the draft's explicit question by deferring capsule ownership ciphertext and deleting the conditional branches in C. Preserve the existing note/address binding and test substitution using a valid different address under the recomputed statement digest. Retain the existing checking key and ordinary ownership ciphertexts. State the narrow boundary: this change does not provide private owner matching before capsule release. If that privacy property is required, specify it as a separate requirement with its external consumer before choosing an all-capsule format change. This finding is about seizure admission, not a claim that a release service can privately identify owners without PET.

### [P2] Move seizure's CAPK consumer updates into the CAPK deletion milestone

**Plan:** C.2 (`:127`) deletes `capk` from leaves and messages; D.1 (`:155`) later replaces it in release requests and evidence. The plan also says each milestone is coherent across callers and has focused validation.

**Evidence:** `crates/core/app/src/app/host.rs:784` directly reads `leaf.capk` while constructing `CapsuleReleaseRequest`. The request owns `capk` at `crates/core/component/shielded-pool/src/note_seizure.rs:193`, and DLEQ verification consumes it at `:356`. Removing the leaf field before changing these consumers leaves the intervening application uncompilable. Maintaining a temporary field or conversion would conflict with the requested deletion policy.

**Impact:** The milestone boundary invites either an intentionally broken intermediate state or unnecessary transitional code. Neither is needed for this prototype refactor.

**Minimal remedy:** Make C include D.1 and the corresponding host policy lookup and payload/epoch binding. Alternatively combine C and D as one implementation milestone. D may remain as a focused seizure-verification/review checklist, but all production CAPK consumers must switch in the same coherent cutover. Keep full registry generation after that cutover.

### [P3] Reuse existing regression coverage and completed native checks explicitly

**Plan:** A's exit (`:91`) runs retained Commonware tests; E.2 (`:191`) lists them again. C/D repeatedly say to add negative tests for conditions with existing coverage.

**Evidence:** `crates/crypto/circuits/src/seizure/tests.rs:71` already mutates RNK, note membership, recovery components, amount, nullifier, asset, and statement binding. `crates/core/component/shielded-pool/src/note_seizure.rs:868` already tests release-context substitutions; `crates/core/app/src/app/host.rs:1509` exercises capsule-release verification and replay/duplicate behavior. `AGENTS.md` explicitly requires reusing completed verification and avoiding unrelated repeats.

**Minimal remedy:** Say "update existing tests and add missing cases"; require new tests for the changed shared-key property and missing valid-address substitution, rather than another parallel matrix. E should collect successful A evidence and rerun it only if the retained vendor source, relevant callers, features, or environment changed. Preserve final application proofs and focused native/circuit tests; those validate different boundaries and are justified.

## Scope choices to keep

- Delete the complete prepared-prover patch, including optimizations independent of its public API. Its patch contains custom MSM, source mapping, FFT, quotient, decoding, and consuming-polynomial paths; replacing any of those with a Shieldd copy would defeat the stated objective.
- Retain the small native `Poly`/`Domain` repair, public relation-shape inspection, and two-sided-square correctness fix. Splitting patch 0001 is necessary; dropping its imports/API fixes together with constant outlining would not restore a buildable native implementation.
- Preserve the existing one-key cache and proving mutex (`crates/crypto/proof-params/src/pari.rs:323`). These are bounded application resource management, not a new proving engine. Deferring family-group scheduling is appropriate.
- Keep A before the key-circuit work and generate the complete application registry once at the end. Baseline performance evidence plus bounded final native measurements is sufficient; no new old-path benchmark campaign is needed.
- Keep RNK derivation unchanged, authenticated payload selection across all creation paths, and all host seizure admission checks. Those are required cross-layer work, not overengineering.
- Keep rotation, migrations, historical key lookup, private-release orchestration, generic providers, and distributed PET outside this task. No additional abstraction is needed for the requested change.

Verification performed: static source and patch inspection only. No tests, prover runs, release-gated checks, builds, or external integration checks were run.

## Final revision confirmation

Reviewed the revised plan on 2026-09-21 without consulting other review reports. All three findings above are resolved: design 4–5 removes the all-capsule ownership extension and explicitly limits release to exact-note public disclosure; C.6 includes host/release consumers in the buildable CAPK cutover; D and E reuse existing regressions and completed verification. The added valid-address and DLEQ non-attestation cases directly test the narrowed boundary.

No new overengineering or scope blocker remains. The added key-inequality checks preserve existing regulated admission (`compliance/src/structs.rs:759`); deterministic mint handling preserves existing behavior (`shielded-pool/src/component/note_manager.rs:148`); and registry generation/loader agreement addresses the existing asymmetric size limits (`proof-params/src/pari.rs:25`, `:229`, `:401`) exposed by removing constant outlining. These are necessary integration details, not new subsystems. The staging/final registry loads are bounded publication checks. Rotation, discovery, private release, extra ciphertexts, generic abstractions, and replacement optimizations remain deferred.

Plan approved from the simplicity/scope perspective. Implementation and its required verification remain future work; this confirmation used static reading only and ran no builds, tests, or proofs.
