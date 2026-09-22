# Shared audit key, CAPK removal and native prover implementation plan

Constant-outlining disposition: retain it as isolated patch 0005 following the
[verification investigation](native-verifier-regression-investigation.md) and
user decision. Native prover/kernel/codec cleanup remains as planned.

Status: implemented and locally verified; external Orbis/PET integration remains unavailable.
See [implementation validation](key-native-implementation-validation.md).
The design below was reviewed independently by three Astra agents before implementation.
Baseline: Shieldd `1dc62a7a09480d966b29e7ecfbe8caa3c309c933` plus the
documentation corrections in the working tree, 2026-09-21.
Decision basis: [boundary assessment](key-and-commonware-boundaries.md).

## Objective and scope

Use one asset audit payload key for amount, sender, receiver and recovery
capsules; retain a separate ownership-checking key, existing RNK derivation and
issuer DK. Remove address-derived CAPK throughout Shieldd. Restore Commonware's
native prover, witness mapping, transforms, MSM and key decoding, retaining only
isolated build, introspection and correctness repairs.

This spans primitives, circuits, compliance, note construction, host seizure,
wallet/view, disclosure, protobufs, generated consumers, proof registry, tooling,
tests and documentation. Treat each milestone below as a coherent change across
its callers. No aliases, migrations, dual formats, optimized fallback, new plugin
architecture or generic provider abstraction. External Orbis implementation,
Bankd deployment, key rotation, capsule discovery/indexing and a new PET protocol
are separate work. Preserve explicit unavailable behavior at external boundaries.

## Design contract

1. Replace native and circuit `AuditKeys` fields `amount/sender/receiver/checking`
   with `payload/checking`, retaining `epoch`. The canonical bundle becomes suite
   byte + little-endian u64 epoch + two 32-byte compressed points (73 bytes).
   Validate nonzero regulated epoch, prime-subgroup/nonidentity points and sink
   exclusions; payload and checking keys must differ, and each must differ from
   both issuer `dk_pub` and RNK `ring_pk`, preserving current regulated admission.
   Provision intended role secrets independently, not as publicly known scalar
   multiples. Public inequality is an admission check,
   not proof of independent DKG provenance or committee independence.
2. All unflagged audit tiers use payload; each keeps independent randomizer,
   EPK, seed, confirmation, field selector and policy binding. Flagged transfer
   tiers and detection retain issuer DK behavior. Unflagged withdrawal sender
   encryption currently uses CAPK and must switch to payload too.
3. Capsules use payload regardless of ordinary Transfer disclosure flag. Remove
   CAPK and its SHA-512 address derivation from leaves, certificates and runtime
   APIs. Preserve RNK DH point/commitment and its existing derivation exactly.
4. Keep capsule-specific release points and DLEQ verification under payload.
   Bind suite, chain, asset, epoch/key, note, capsule, address, authority
   instruction and expiry. Never disclose a reusable ring secret. Capsule scope
   is exclusively authority-approved public disclosure of an exact note: the
   authority grants opening of that precise accepted note/capsule independently
   of a claimed-owner match. External release must check accepted-note/capsule
   provenance and that exact grant before releasing anything; its production
   integration remains unavailable. A valid DLEQ does not prove ownership or ACP
   authorization. The host seizure proof checks owner/RNK after the opening, so
   it cannot establish pre-release confidentiality.
5. Do not add capsule ownership ciphertexts. Private/address-scoped capsule
   release and collection remain unavailable. Ordinary Transfer ownership/PET
   inputs remain intact and are not advertised as covering other note types.
   The capsule remains its existing fixed six-field shape. Opening it does not
   remove the RNK, signature, freeze or unspent gates; wrong-owner seizure must
   reject even with an otherwise valid shared-key opening.
6. Key epochs are immutable under current asset policy. Do not add historical
   key lookup or rotation. Change format/state guardrails where old data could
   otherwise decode; reject stale stores and regenerate development data.

## Milestone A — preserve baseline evidence and restore native Commonware

Read the patch inventory and retain the existing benchmark evidence. Record a
semantic/API inventory of each removed change; the boundary assessment supplies
the complete delete/boundary/defer classification. No new benchmark of the old
prepared path is required unless existing evidence is insufficient for a specific
comparison.

1. Split 0001: retain missing `Domain` imports and native `Poly` API/error/trim
   repair. Retain constant-one outlining and its constraint regression as
   independent patch 0005, without restoring prepared proving or kernel changes.
2. Retain 0002 relation-shape/public-column validation without reproducing private
   codecs in Shieldd. Retain 0004 compiler correctness repair and its regression,
   rebased onto the resulting source. Do not drop a correctness check merely
   because present Shieldd families do not exercise it.
3. Remove all of 0003: prepared API/dispatch, source digest/cache mapping,
   compiler allocation/hash changes, custom MSM, public polynomial cache,
   transform implementation, coset quotient, custom key decoding and consuming
   polynomial methods. Remove only tests specific to removed APIs; preserve
   portable malformed-key, compiler and proof acceptance/rejection coverage.
4. Change `circuits/src/proof.rs` to native `ProvingKey` and claim-bound
   `pari::prove`, with the existing transcript, envelope, commitments and fresh
   randomness. Change `proof-params/src/pari.rs` to native `Read::read_cfg` and
   cache complete native keys/relations. Preserve exact key/layout validation,
   file bounds/hashes, one-key cache, proving mutex, native worker strategy and
   successful-validation cache keyed by exact identity.
5. Update `scripts/commonware.py`, provenance, README, `just commonware-test`, CI
   and preparation-only benchmarks to the retained source. Keep source
   reproduction checks, native tests and existing real-proof benchmarks. Do not
   replace removed internals with a Shieldd copy.

Primary files: `third_party/commonware-patches/series/*`, the resulting vendored
tree, `crates/crypto/circuits/src/proof.rs`,
`crates/crypto/proof-params/src/pari.rs`, `justfile`, `.github/workflows/rust.yml`,
`scripts/commonware.py` and proof-performance documentation.

Exit: inventory/reproduction passes; retained Commonware tests pass; every native
family compiles; small native proving/verification and malformed-key contracts
pass. Do not regenerate full application proof registries yet: key/circuit
changes in subsequent milestones would invalidate them again. Milestone A is
independently reviewable but deployment waits for final registry generation.

## Milestone B — shared payload key, registration and ordinary encryption

1. Update existing regressions and add missing failing primitive/native/circuit
   cases for one shared payload key and distinct checking/RNK/issuer authorities.
   Cover wrong suite/length, zero epoch, identity/torsion/noncanonical points,
   sink keys, payload/checking equality, either audit role equaling DK or RNK
   ring key, and exact certificate/asset-commitment binding. Exercise forbidden
   equalities at actual asset admission, with an explicit unregulated sink exception.
2. Replace audit key shapes in `crypto/primitives/src/audit.rs`, circuit
   `audit.rs`/registry and compliance `audit_keys.rs`/`structs.rs`; update
   registration/state admission, certificates and development key provisioning.
3. Update Transfer encryption, circuit witnesses/selection and disclosure audit
   selection to use payload while preserving selected field/owner authorization
   metadata. Change withdrawal encryption in both native and circuit code.
4. Update protobuf sources, regenerate Rust/Go with `just proto`, and update
   wallet/storage/CLI imports and fixtures. Update all exact lengths and
   commitment layouts from the canonical implementations, not duplicated tables.

Primary paths: `crates/core/component/compliance`, `crates/crypto/{primitives,circuits}`,
`crates/disclosure`, `crates/view`, `crates/bin/pcli`, and the compliance protobuf.

Exit: native/circuit parity passes for flagged/unflagged, regulated/unregulated,
self-transfer and fee-funding contexts. An opening for field A must not open
freshly randomized field B under the shared key. Ciphertext/field/owner/epoch
substitution is rejected where this repository verifies the relevant boundary.
External PET/authorization is not claimed by local decoding fixtures.

## Milestone C — CAPK-free capsules and all note-creation paths

1. Update existing tests and add missing failing cases for capsule encryption
   under authenticated payload instead of CAPK, and no changes to RNK derivation.
   Test wrong key/asset/epoch/capsule and malformed encodings; owner substitution
   is tested at seizure admission, not claimed as a pre-release owner check.
2. Remove CAPK from native/circuit compliance leaves and certificate messages,
   registration validation, exports, protobufs and view/storage records. Delete
   `derive_compliance_scalar` and `compliance_derivation` only after enumerating
   and replacing every in-repo caller; preserve unrelated RNK helpers.
3. Update `RecoveryCapsule`, its opening/commitment and circuit gadget to
   consume the authenticated payload key, retaining the existing six-field
   codec and per-note randomness construction. Preserve private-note fresh
   randomness and the explicit deterministic-public-mint exception: mint seeds
   derive from SCT position and provide no hidden-owner guarantee. Do not add
   consensus randomness or new capsule fields.
4. Thread effective asset policy keys through Transfer receiver/change,
   reshape outputs/padding, withdrawal change, deposit/note-manager construction
   and native `ShieldedNotePlan` paths. Preserve sink/unavailable semantics and
   prove the relevant key selection in each actual creation relation. Public
   mint/deposit admission keeps recipient registration and Active checks while
   fetching the registered asset key. Unregulated paths must select the fixed
   sink, never a populated predecessor asset's audit key; cover that fixture.
5. Update note commitments, public statement reconstruction, codecs, canonical
   transaction/effect/signature fixtures, wallet persistence and generated
   consumers consistently. No CAPK compatibility field remains.
6. In this same buildable cutover, modify `CapsuleReleaseRequest`, its codec,
   canonical identifier and evidence verifier to authenticate payload key/epoch
   instead of CAPK. Update host key selection, release builders and all test
   derivation callers. Verify DLEQ against the authenticated payload key and
   retain exact request binding. Do not postpone these production consumers to D.

Primary paths: `shielded-pool/src/{recovery_capsule,note,shielded_note_plan,pari}.rs`,
`component/note_manager.rs`, Transfer/reshape/withdrawal plans, circuit
`{note,recovery,compliance,transfer,reshape,withdrawal,fixtures,catalogue}.rs`,
`view/src/{client_compliance,storage,storage_planning}.rs`,
`shielded-pool/src/note_seizure.rs`, `core/app/src/app/host.rs`, and shielded-pool
protobufs.

Exit: workspace compile check passes; every note-creation route has native/circuit
or host-admission coverage;
all affected wire/effect fixtures round-trip; no executable CAPK/derived-capability
path remains; RNK test vectors match baseline exactly.

## Milestone D — seizure boundary regression coverage

1. Extend existing release, circuit and host tests for the production conversion
   completed in C; add only missing boundary cases. Never send a raw ring or RNK
   secret to the host.
2. Preserve independent authority signature, exact note/amount/destination,
   current freeze generation, asset/user roots, expiry, RNK commitment and
   nullifier derivation, history/window checks, unspent checks and atomic receipt
   semantics in `HostExecution::seize_note` and the seizure relation.
3. Cover a valid capsule opening without the correct RNK, without
   the authority signature, or against the wrong freeze cannot seize. Exercise
   wrong key/epoch/note/capsule/address/request, replay/conflict, stale window,
   malformed release and duplicate consumption. Include a valid different
   address with recomputed statement digest, and a fixture showing that DLEQ
   success alone does not attest that address owns the capsule. Distinguish
   wrong-owner host rejection from unavailable pre-release owner checking.
4. Expose only the typed data needed by the existing audit/release contract.
   Local fixtures must remain explicitly synthetic. Do not implement distributed
   PET, direct Defra delivery or generic private-release orchestration here.
   A release request is not an ACP grant; keep private/address-scoped capsule
   collection explicitly unavailable.

Exit: small release/unit tests and native circuit checks pass; release material
alone cannot satisfy seizure admission. Actual host seizure proof is included
in final release-gated verification.

## Milestone E — artifacts, guardrails and final verification

After both workstreams stabilize, compile all eight final families and census
their domains/public-column shape before full setup. Check that constant
outlining keeps the implicit public column sparse. Generation and loading
admit at most 8 MiB VKs, 512 MiB PKs and domains up to 2^21. Preserve bounded
decoding and measure the final key sizes and timings.

Make setup enforce the same VK, PK and domain admission bounds as the loader
before publishing a registry; currently only PK size is checked at generation.
Add a focused generation/loader-limit regression using small fixtures where
possible. Generate a fresh complete registry once in a new directory, and require
successful `Registry::load` of the complete staging registry before publication
plus a final destination load. Record all eight relation digests, domain sizes, PK/VK sizes and
proof-envelope identities; regenerate affected fixtures. Determine exact format,
pool, history and wallet guardrail changes from the altered layouts. Explicitly
cover application `APP_VERSION`, wallet SQL schema hash, registry identities,
detached release requests and protobuf admission. Reserve removed CAPK protobuf
tags; require new payload/epoch fields so ignoring an old field cannot silently
accept a stale request. Keep the unchanged capsule codec without claiming it
authenticates a key by itself. Do not bump unaffected formats indiscriminately;
test rejection through the guard that actually owns each changed representation.
Never overwrite user keys or populated stores.

Run one heavy job at a time, after checking available memory, swap, disk and
other workloads. Use `CARGO_BUILD_JOBS=2`, `RAYON_NUM_THREADS=2`,
`GOMAXPROCS=2`; run expensive proofs serially. Stop this task's job on pressure,
diagnose before retrying, and never kill unrelated processes.

Verification sequence:

1. Focused unit/circuit/codec regressions after each milestone; source inventory
   and reproduction; generated protobuf checks; formatting and diff checks.
2. Collect successful A Commonware release-test evidence, including two-sided
   squares and key shape. Rerun only if relevant source, caller, features or
   environment changed. Reuse existing mutation/replay coverage throughout.
3. Workspace all-target/all-feature check and relevant workspace tests against
   the new explicit registry. Native sequential/two-worker proof parity and
   same-family batch/individual acceptance parity; tampered inputs must reject.
   Preserve native unsatisfied-witness and opening-remainder rejection and
   claim/committed-block binding. Decoder coverage includes subgroup/canonical
   points, truncation, sparse index ordering/duplicates, limits and trailing bytes.
4. `just pari-proof-tests` against that registry, including actual seizure,
   transfer, reshape, withdrawal, disclosure and history coverage. Verify
   coverage for every family rather than assuming the command covers each.
5. Bounded cold/warm native proving and registry-load time/peak-memory
   measurements; measure VK size/load/verification with isolated constant
   outlining. Publish measured regressions without reintroducing the
   prepared path. No speculative native replacement optimization.

Final documentation describes the implemented key contract and native proof
boundary once. Update compliance flow/reference/checklists, disclosure,
interoperability, proof-system/development/benchmark docs and external consumer
requirements. Live Orbis/Bankd validation stays blocked until compatible external
implementations exist; report it separately from successful local verification.

## Deferred work and implementation order

Do not add family-grouping optimization in this change: existing key caching and
native batching remain; family grouping is a separate bounded scheduling change
after measuring native behavior. Likewise defer key rotation, capsule search,
external PET/MPC and committee-policy redesign.

Order: A → B → C → D → E. Each milestone gets focused validation and review;
full setup and expensive integration proofs run after the combined final shape.
The implementation is complete only when CAPK and custom prover paths are gone,
retained patches reproduce, all required local checks pass, and external gaps
are stated accurately.

## Independent review record

Three independent reviews used `gpt-6-astra`, confirmed from read-only local
runtime metadata. Each reviewer inspected the same initial draft and relevant
source without consulting the other reviews. No builds or proof runs were used
to claim validation of this unimplemented design.

| Reviewer | Focus | Report |
| --- | --- | --- |
| Laplace (`plan_simplicity`) | Overengineering | [Simplicity review](key-native-plan-simplicity-review.md) |
| Mendel (`boundary_review`) | Security | [Security review](key-native-plan-security-review.md) |
| Nietzsche (`patch_review`) | General correctness/completeness | [General review](key-native-plan-general-review.md) |

| Finding | Disposition in this revision |
| --- | --- |
| Capsule PET adds unnecessary all-note scope; DLEQ does not establish ownership before release (simplicity P2, security P1) | Design 4–5 and C retain exact-note public disclosure only, keep private/address-scoped release unavailable, and remove the extra ciphertext/gadget. D adds explicit ownership non-attestation coverage. |
| CAPK deletion precedes its host/release consumers (simplicity/general P2) | C.6 converts every production consumer in the same buildable milestone; D is regression coverage. |
| Missing issuer/RNK audit-key separation checks (security P2) | Design 1 and B.1 preserve all existing role inequalities and independent provisioning requirements. |
| Native VK growth can exceed loader bounds while setup succeeds (general P2) | E includes size/domain census, bounded-limit reassessment, generation/loader agreement and successful staging/destination loads. |
| Duplicate verification, public mint entropy and stale protobuf admission (simplicity P3/security notes) | Reuse existing tests/results; preserve deterministic public mints; enumerate concrete stale-data guards and required new fields. |

All three reviewers reread the revised plan and appended final confirmations to
their reports: their findings are resolved, and no new planning blockers were
identified. These verdicts approve the plan, not an implementation or deployment.
Documentation links and whitespace checks passed; no prover/release-gated tests
were run during planning.
