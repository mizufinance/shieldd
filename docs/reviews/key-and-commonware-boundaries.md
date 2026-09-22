# Key simplification and Commonware boundary assessment

Assessment of Shieldd `1dc62a7a09480d966b29e7ecfbe8caa3c309c933` on
2026-09-21. The designs and dispositions below are proposals; runtime code and
the patch queue were unchanged by this assessment. Subsequent implementation
and validation are recorded in [implementation validation](key-native-implementation-validation.md).

## Shared payload key and CAPK removal

The requested design uses one Orbis audit-encryption key for amount, sender and
receiver. PET retains a separate checking key. Issuer DK and regulated
nullifier derivation retain their separate purposes.

At that baseline, `AuditKeys::validate_registered` rejects every pair of equal audit keys,
and `Keys::constrain_registered` repeats that rule inside the circuit. This is
a Shieldd policy choice, not a Jubjub requirement. A clean implementation should
replace the three payload-key fields with one `payload` point, preserving
`checking` and `epoch`; allowing three redundant copies would retain obsolete
structure. Asset commitments, certificate messages, codecs, native encryption,
circuit statements, fixtures and external consumers must change together.

Each field still needs its own fresh randomizer, EPK, seed and authenticated
selection. Permission is enforced for the exact ciphertext release, rather
than by possessing a field-wide private key. Orbis must never release the ring
secret or a reusable derived secret. PET checks an owner match; ACP authorizes
the request, selected field and recipient. A match alone grants nothing.

For capsules, replace `CAPK = d(address) * ring_pk` with the shared audit payload
key. Remove CAPK from the user leaf, registration certificate, witnesses and
release request. Keep the capsule-specific DH opening and DLEQ verification,
but verify it under the authenticated payload key and bind the key epoch,
capsule, note, address, asset, authority instruction and expiry to the request.
Changing the recovery encryption key requires every note-creation path to use
the same authenticated asset policy, including change and reshape outputs.

Named-person capsule collection would need an owner binding before release.
Existing Transfer ownership ciphertexts are not a universal capsule-owner index
for all note-creation paths. The [reviewed implementation plan](key-and-native-prover-implementation-plan.md)
scopes CAPK removal to exact-note, authority-approved public disclosure and
seizure, with private/address-scoped capsule release unavailable. It defers new
capsule ownership ciphertexts and their circuit obligations. DLEQ verifies the
opening's key relation, not the capsule owner or an ACP grant; host ownership
verification after release cannot establish pre-release confidentiality.

Capsule decryption does not authorize spending. Preserve the existing RNK
commitment, RNK-based canonical nullifier proof, current freeze generation,
independent seizure-authority signature, expiry, unspent checks and atomic host
settlement. The capsule must not contain RNK or wallet spending keys.

The shared audit payload key must use independent key material from the existing
RNK ring secret, not a publicly known scalar multiple of it. With address
transmission point `P = ivk * G_d` and RNK ring secret
`s`, the wallet's shared point is `ivk * (s * G_d) = s * P`. Thus a holder of
`s` and the known address can derive the same RNK; address derivation is not
an independent authorization barrier against that holder. Separate key
material protects against disclosure of the audit key. The same committee
holding both sets of shares is not independent organizational control; the
seizure-authority signature remains a separate authorization requirement.

Evidence: [audit-key validation](../../crates/crypto/primitives/src/audit.rs),
[circuit key validation](../../crates/crypto/circuits/src/audit.rs),
[RNK derivation and registration](../../crates/core/component/compliance/src/structs.rs),
[capsule encryption](../../crates/core/component/shielded-pool/src/recovery_capsule.rs),
[seizure relation](../../crates/crypto/circuits/src/seizure.rs), and
[host checks](../../crates/core/app/src/app/host.rs).

## Orbis scope

At a high level, Orbis needs PET and a Jubjub implementation of the
Shieldd-facing operations that previously targeted Decaf377: DKG, encryption
and threshold release, signatures, and address-DH/capsule release where used.
It must use Shieldd's generators, scalar field, canonical subgroup encodings,
fingerprint map and signed transcripts. A curve-type rename is insufficient.

Upstream `develop` at `366abaf2772992bc2d8ef1946e5072fa138e17d6`
exports only BLS12-381 and Decaf377 backends, selected mutually exclusively at
build time. BLS transport of opaque openings can stay separate. A deployment
that combines that transport with Jubjub auditing needs separate services or
explicit suite dispatch. Orbis does not need a Pari prover for these operations.
The locked Shieldd runtime remains Decaf377 and is rejected before startup.

Evidence: [upstream backend selection](https://github.com/sourcenetwork/orbis-rs/blob/366abaf2772992bc2d8ef1946e5072fa138e17d6/crates/crypto/src/lib.rs),
[Shieldd external contract](../jubjub-external-contract.md), and
[runtime lock](../../deployments/orbis/images.lock.json).

## Disposition rules

- **Delete:** remove a low-value local change; no replacement optimization is proposed.
- **Boundary:** retain application-owned work through native APIs, or a narrowly
  isolated build/correctness/introspection repair, plus the explicitly accepted
  constant-outlining transformation. Vendor patches require upgrade review
  until upstream absorbs them; they are not zero-maintenance add-ons.
- **Defer:** remove the active local optimization and retain the measurements
  and rationale for upstream work. Do not keep a dormant implementation or flag.

A new module or prepared object is not sufficient evidence of a clean boundary.
An add-on must call the native implementation through supported APIs without
reimplementing its private compiler mapping, prover algebra, codec or kernels.

## Complete patch disposition

The inventory contains four patches, 2,432 lines including tests/context.
Patch 0003 accounts for 2,118 lines across 11 files. Rows below split mixed
patches into their distinct implementation changes; tests follow their feature.

| Patch and change | Category | Reason and resulting boundary |
| --- | --- | --- |
| 0001: missing `Domain` imports and obsolete polynomial API calls | Boundary | Minimal build repair for the pinned draft. Keep only the calls needed to use upstream `Poly`/`Domain`, including trimming/error semantics. Drop when upstream builds directly. |
| Constant-one outlining (isolated as 0005) | Boundary | Explicitly retained compiler optimization: one private witness constrained to one keeps the implicit public column sparse. Native proving, verification, FFT, MSM and decoding stay intact. Review this private compiler dependency on every upgrade; remove it if upstream provides equivalent behavior. |
| 0002: `VerifyingKey::matches_relation`, including public-column comparison | Boundary | Small read-only validation API used by Shieldd's registry. Retain exact shape/column checks without copying private key codecs into Shieldd. It does not change proving or verification equations or establish setup trust. |
| 0003: cached source digest and value-source witness mapping | Defer | Replaces native recompilation/consistency checking inside `compile_valued`. It depends on private circuit representation. Restore the native path, retaining its full consistency checks. |
| 0003: early compiler-state drops and consuming sparse-row conversion | Delete | No isolated latency or peak-memory benefit was established. These alter upstream compiler internals. |
| 0003: fixed-size scalar encoding during compiler hashing | Delete | Encoding parity is tested, but no isolated operational benefit was established. Remove this micro-optimization with the compiler fork. |
| 0003: `PreparedProver`, prepared entry point and ordinary/prepared dispatch | Defer | The object owns private key fields and switches the algorithm inside `prove_inner`; it is not a wrapper around native `prove`. Restore native `ProvingKey` and `pari::prove` in Shieldd. |
| 0003: prepared affine MSM bases and combining MSM segments | Defer | Uses private BLST representation and private Commonware MSM entry points. Native `G1::msm` improvements need not reach this path. |
| 0003: consuming projective proving bases into affine preparation | Defer | Coupled to the custom key representation and MSM path. No isolated peak-RSS benefit was measured. Keep whole native keys in the bounded application cache instead. |
| 0003: precomputed public-column polynomials | Defer | Reads private sparse relation rows and bypasses the native prover's interpolation path. |
| 0003: prepared FFT tables, consuming transforms, butterfly scheduling and fused inverse normalization | Defer | Implements a second transform kernel. Being in `commonware_math` does not make it upstream-owned; native `Domain` optimizations do not automatically apply. |
| 0003: coset quotient, row satisfaction check, and algebraic mask expansion | Defer | Replaces native polynomial multiplication/division and changes where satisfaction is established. Keep correctness guards with the algorithm until the entire path is removed. |
| 0003: parallel proving-key decoding and sparse-entry staging | Defer | Useful cold-start improvement, but changes the native private key parser. It cannot be maintained externally without codec duplication. Use native decoding; adopt bounded parallel decoding when upstream exposes it. |
| 0003: consuming masking and linear-division polynomial buffers | Delete | Recorded paired measurements show no measurable warm-latency or process-peak improvement. Remove the methods and prepared-only callers. |
| 0003: portable native contract tests and benchmark evidence | Boundary | Preserve applicable native encoding, invalid-input and proof-parity checks outside removed implementation details. |
| 0003: optimization-only tests and formatting-only hunks | Delete | Remove tests exclusively exercising removed APIs and incidental vendor formatting. Do not preserve dead optimization code to keep its tests. |
| 0004: materialize the opposite deferred square in equality assertions | Boundary | Narrow compiler correctness repair with regression coverage. Preserve until upstream fixes it; the eight current Shieldd families do not exercise the defect. |

The evaluated patches are preserved in baseline commit `1dc62a7` under
`third_party/commonware-patches/series/`. The [current source policy](../../third_party/commonware-patches/README.md)
identifies the reduced queue after implementation.

## Shieldd-owned work outside the vendor tree

| Change | Category | Boundary |
| --- | --- | --- |
| Jubjub/Poseidon gadgets, application statements and eight relations | Boundary | Construct circuits using Commonware's public circuit API; native compilation and proving remain downstream. |
| Family/suite framing, trusted key registry, artifact hashes and genesis binding | Boundary | Application acceptance rules around native proof/key codecs and verification. |
| One native proving key/relation cached per registry; proving mutex | Boundary | Cache complete native objects and bound memory/concurrency. Do not inspect or extract private precomputations. |
| Exact-key successful relation-validation cache and immutable parameter caches | Boundary | Cache only immutable validated facts, preserving key identity and current state checks. |
| Bounded native worker strategy | Boundary | Pass Commonware's public strategy into its operations. Keep resource limits outside cryptographic kernels. |
| Same-family batch verification and bounded failure fallback | Boundary | Schedule calls to native `batch_verify`/`verify`; preserve exact action binding and canonical transaction execution. |
| Group proof jobs by family | Boundary | Candidate, not implemented. Schedule independent jobs to reuse the whole-key cache; restore results to original positions and preserve transaction dependencies/order. |
| Prepared-key imports, custom decode calls and preparation-only benchmarks in Shieldd | Defer | Remove with 0003. Keep native proof benchmarks; archive historical measurements as evidence. |

## Benefit and upgrade consequences

The recorded native/prepared warm Transfer means are 6.193 s and 2.592 s.
That is a substantial aggregate benefit, not evidence that each sub-change is
useful. These are historical measurements, not a fresh paired rollback test or
a prediction of restored-native latency. Parallel decoding reduced the recorded
first proving call from 46.034 s to 25.867 s. Consuming polynomial buffers gave
2.597 s versus 2.599 s and 3.47 versus 3.48 GiB process peak, establishing no
measurable improvement. See [benchmark evidence](../benchmarks.md).

The pin `1a56762927a8ad3300e0594886c28c59d9801769` is the head of
[open draft Commonware PR 4523](https://github.com/commonwarexyz/monorepo/pull/4523),
not `main`. This was checked through GitHub. The intended retained vendor delta
is build repair, relation introspection, the correctness fix and constant
outlining, each isolated. The [verification investigation](native-verifier-regression-investigation.md)
establishes why constant outlining is retained.

Switching only `prove_prepared` to `prove` would leave patched witness mapping
and decoding active. Remove all of 0003 and update its Shieldd callers together;
rebase 0004 because its patch context follows 0003. Split the build repair and constant outlining into independent patches. Reproduce the source inventory afterward.

Changing constant outlining changes compiled relations. Recompile all eight
families, regenerate affected keys/manifests, and update fixtures and measured
artifact sizes. Existing populated stores bind their registry ID and must reject
the changed registry; there is no compatibility or migration promise. Combined
key-schema/CAPK changes also require new commitments and relation fixtures.

Before implementing that broader change, verification must cover native/compiler
regressions, all circuit families, exact key validation, actual native proofs,
batch parity and release-gated end-to-end tests, followed by bounded cold/warm
time and memory measurements. Live Orbis remains an external prerequisite.

## Verification of this assessment

Read all four patch files and their affected implementation paths, the Shieldd
registry/proof adapter, audit native/circuit validation, RNK derivation, capsule
encryption, seizure circuit and host checks. Reviewed saved performance results.
Vendor inventory, Orbis source hashes, the runtime rejection regression, local
documentation links and diff whitespace checks passed in this pass.
This assessment does not claim execution of prover or release-gated
tests, a completed key redesign, or removal of any runtime optimization.
