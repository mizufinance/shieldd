# Coordinator triage

Artifact: `57eb44e8ca..c4b8b6d28e`. Raw Opus reports are preserved separately;
claims below are checked against source, not accepted because the reviewer said them.

- Sector 01's claim that the ignored registry test runs only by hand is incorrect.
  `justfile:46-48` and `.github/workflows/rust.yml:108-109` run the ignored gate in CI.
  Sector 01b confirmed this. The test ran successfully in the preceding verification.
- Sector 01b's suggestion that registry identity is not bound in genesis is
  contradicted by `app/lifecycle.rs:13`, `registry_binding.rs`, `app/mod.rs:720`,
  and `shieldd/service.rs:172`: genesis persists it and reopening checks it.
  Sector 09 will independently follow the capability admission paths.
- Sector 01's capability-identity concern is currently unsupported: the wrapper
  constructor checks each capability's registry at `stateless_cache.rs:254`, and
  `VerifiedTxArtifact::ensure_registry` checks the wrapper against the active
  registry. Further path review is assigned to sector 09.
- Development-only setup/ceremony support is an explicit prototype limitation,
  not a newly demonstrated runtime defect.
- The vendor test `Cargo.lock` is tracked in Git but excluded from the separate
  source hash inventory. This is a provenance-coverage observation, not evidence
  that production dependency resolution is unpinned. Build/dependency review will
  assess whether it warrants a change.
- Sector 02 parameter regeneration: both widths' ARK/MDS/recipe fields match the
  generator exactly, and every committed known-answer vector matches. Width 6 is
  byte-identical. Width 3 retains 24 vectors while the current generator emits 39;
  the 15 extra cases explain the full-file mismatch and do not change parameters.
  The generator derives constants from Arkworks' fixed recipe, not from the JSON
  being checked. A continuous provenance guard is optional hardening, not a
  demonstrated bad parameter set. See `poseidon-regeneration.json`.
- Sector 02's requested Elligator comparison already exists in
  `circuits/src/map/tests.rs`: native/circuit/Arkworks outputs are compared for
  zero, ±1, a large limb value and 32 hashed inputs, with tampered-output rejection.
  That test passed in the earlier full circuit suite. Exact external fixed vectors
  could improve interoperability documentation but are not a reproduced defect.
- The configured (8 full, 57 partial) rounds satisfy the inequalities in the
  [Poseidon round-selection functions](https://github.com/HorizenLabs/poseidon2/blob/main/poseidon2_rust_params.sage).
  Running those functions recommends (8,56) for width 3 and (8,57) for width 6
  with their margin; our configuration is at least those counts. This is a
  bounded check of published inequalities, not a proof of cryptographic security.
  Source identity and results are in `poseidon-round-check.json`.
- All square minors of both committed MDS matrices were independently evaluated
  modulo the scalar-field prime: 19 minors for width 3 and 923 for width 6, all
  nonsingular. A determinant-only test suggested in 03b would be weaker than this
  MDS property; no parameter defect was reproduced (`mds-minors.json`).
- Sector 05's seizure/RNK hypothesis is rejected on the host path: `host.rs:739-747`
  requires a regulated policy and its seizure authority signature; `host.rs:750-768`
  loads the leaf by the authorized address/asset, checks the freeze generation,
  and explicitly matches that leaf's RNK commitment. Host sector 10 will follow
  the complete call path independently.
- Sector 05's claim that overflowing totals fail even when totals are disabled is
  incorrect: `circuits/disclosure.rs:290` multiplies the sum by `enabled` before
  range checking. The existing `prefix_padding_reveals_and_optional_total_preserve_full_u128_amounts`
  test explicitly accepts two maximal amounts without a total and rejects the
  overflowing enabled total. It passed in the preceding circuit suite.
  Enabled totals are u128 by the unchanged pre-branch `disclosure/claims.rs`
  contract (`checked_add`), so that limit is not a branch regression.
- Sector 06's shared registration/seizure signing-key observation is not an
  introduced defect and conflates those configured authority roles with issuer
  screening (the detection key). The requested separation is that Orbis audit
  decryption must not grant RNK seizure authority. No universal requirement that
  the two configured signing authorities have distinct public keys was supplied;
  do not add that restriction based on this observation alone.

- Sector09 independently confirms capability registry binding at construction,
  cache identity and execution. Sector10 independently confirms seizure RNK,
  authorization signature, freeze generation, current window and anchor checks.
  Those earlier hypotheses are dismissed.
- Sector10's missing explicit `storage.release()` observation does not establish
  a permanent DB-lock leak: cnidarium 0.83.0 `storage.rs:203-225` exits the
  dispatcher when its sender drops, explicitly documenting this drop behavior.
  Explicit release additionally waits for teardown; a same-instant retry race
  remains untested. Do not call the resource leak reproduced.
- Sector10's TCT padding concern requires a preimage for commitment 0 or 1.
  Arbitrary commitment insertion alone grants no note opening or spend witness;
  this is not a demonstrated soundness defect. Circuit public commitments and
  their openings remain part of the adapter follow-up.
- Sector07's proposed old WAL-size test did not hold a long-lived reader or
  cross a meaningful checkpoint threshold: five tiny writes below 1 MiB do not
  establish bounded WAL growth. Its deletion is not evidence that a current
  requirement lost meaningful failure detection. Do not restore that weak test
  solely on the reviewer recommendation.
- Sector09's negative-cache JoinError hypothesis requires an actual reachable
  transient verifier panic. No such trigger was supplied; runtime residual
  review compares the baseline and failure handling before any acceptance.

- **Accepted medium liveness finding (sector11):** a pending external history
  witness blocks `SyncWorker::new` indefinitely; the same inline await is on the
  post-commit scan path (`worker.rs:101,375`). A temporary bounded reproduction
  first proves an immediate source error allows construction, then verifies that
  a pending source is reached and construction remains incomplete for two seconds.
  The focused Rust test passed, confirming the undesirable stall, and all source
  edits were restored byte-for-byte. See `history-stall-reproduction.rs`, `.log`
  and `.json`. The witness source has no internal timeout; the await chain proves
  the indefinite case. This test reproduces startup; scan impact is statically
  traced rather than independently exercised. Separate deferred history work
  from scanning and bound external waits/work per pass. No fix was applied.
- Sector11's bad-row scan abort predates the branch, and malformed storage needs
  corruption despite validated writes. Its untrusted-source repeated-backfill
  concern is a liveness/design limitation rather than proof acceptance bypass;
  handle retry/backoff alongside the accepted scheduling issue, not a new
  unauthenticated-history protocol redesign without further requirements.
- Sector12's registry-dependent ordinary tests follow the documented workspace
  workflow (`docs/development.md:12,22` and `justfile:38` require explicit keys).
  A bare Cargo invocation without that prerequisite is not a demonstrated test
  defect or reason to hide ordinary verification behind ignored prover gates.

- Sector13's hypothetical regulated-base double-volume transition is contradicted
  by the current completion path: fee completion passes `disclose_to_issuer=true`
  (`client_compliance.rs:241`), causing `select_volume_accumulator` to select
  padding; `successor_state` is None for padding. Fee context also requires its
  canonical zero payload. The pending test follow-up will independently check it.

- Sector10's remaining seizure circuit question is closed by direct source:
  `seizure.rs:109-118` hashes the same private RNK into the public RNK commitment
  and note nullifier; `:126-128` equates `history_required` to position below the
  recent floor. Sector05 reviewed the relation; sector10 independently checked
  the host authorization binding.
- Sector14's randomized-key boundary follow-up is closed in current action
  handlers: transfer and withdrawal call the shared `verify_auth_sigs`, and
  `note_reshape.rs:48` applies `ensure_nonidentity_spend_auth_key` before signature
  verification. That helper rejects both identity and non-subgroup points.
- Sector15's FVK-identity panic hypothesis is dismissed: byte/protobuf decode
  calls `FullViewingKey::from_components`, which validates the subgroup and then
  rejects identity in the private constructor (`keys/fvk.rs:91-97,192`). An
  existing identity-rejection test covers this. The threshold import cannot
  construct the hypothesized invalid FVK through that public path.
- Sector15's misplaced `spent_nullifier_count` doc comment is confirmed at
  `transaction.rs:591`: it currently attaches to `volume_nullifiers`. This is
  minor documentation cleanup, with no runtime effect.

- Sector16's observation that real-proof tests are ignored does not imply they
  are absent from verification: all 19 explicit proof gates, including Disclosure,
  passed before commit and run in mandatory PR CI (`just pari-proof-tests`).
  Ordinary relation tests and proof-gate runtime tests deliberately have separate
  execution costs. Suggested additional cases are coverage proposals, not bugs.
- Sector16 independently confirms disclosure acceptance is explicitly NotChecked
  until candidate transaction membership is checked; both CLI verification paths
  invoke that check. It also confirms verifier-derived zero defaults for inactive
  total fields, closing the raw-circuit total_asset canonicalization hypothesis.
- **Accepted low memory-hygiene regression (sector17):** the CLI issuer-disclosure
  path removed its explicit parsed-scalar zeroization when moving from Decaf to
  Jubjub. The serialized byte buffers are still Zeroizing, but `DetectionKey(Fr)`
  remains Copy/Debug with no clearing drop implementation. This is a lost cleanup
  guarantee, not a demonstrated key extraction attack. A plain `Fr::ZERO`
  assignment, suggested by the reviewer, is not a sufficient secure fix because
  the compiler may remove it; use an audited non-elidable clearing mechanism and
  reduce unnecessary secret copies if implementing the correction.
- Sector18's MSRV metadata concern is confirmed: `shieldd/Cargo.toml:10` still
  declares Rust 1.75 while the new circuit dependency uses edition2024. This is
  stale package metadata; the pinned1.95 toolchain works. The stale Decaf comment
  above `orbis-rs` in `deny.toml` is likewise documentation cleanup.
- Sector18's unsupported Orbis-tooling observation is valid for the current
  checked-in Decaf image lock. The validation intentionally fails closed and
  names the required crypto; scripts can work with a compatible replacement lock.
  “Always fails” is therefore too broad. The unused CI cleanup script can be
  deleted as obsolete; restoring the unsupported live stack is not an appropriate
  fix. No live Orbis round-trip was performed.
- The standalone vendor Cargo.lock is tracked and its local source-inventory
  exclusion is already documented in triage. Sector18 confirmed shipped builds
  use the root locked graph. Adding its hash is optional test-provenance hardening,
  not an unpinned production dependency vulnerability.
- **WebAssembly follow-up passed:** `CARGO_BUILD_JOBS=2 RAYON_NUM_THREADS=2
  GOMAXPROCS=2 just wasm-check` completed successfully across all 12 configured
  crates, including crypto/circuits. Sector18's possible blst/C incompatibility
  did not reproduce on the installed wasm32-unknown-unknown target. Full command
  output is saved in `wasm-check.log`. No runtime source changed.
- **Prior verification identity confirmed:** all 1405 file hashes captured after
  the earlier edits match committed `c4b8b6d`, with zero mismatches. All 204 final
  test-audit file identities also match. This closes sector19's question about
  whether the dirty-tree verification corresponds to the reviewed commit. Saved
  result: `prior-verification-identity-check.json`.
- Sector19's Claude auto-discovery note does not justify restoring CLAUDE.md,
  which the user explicitly asked to remove. This review harness passes the full
  AGENTS.md and review skill text explicitly to every Opus invocation. No claim
  that a generic fresh Claude checkout automatically discovers Codex skills is
  made; that harness-support choice is outside the requested cleanup.
- Sector08b checked the adapter/capsule runtime paths without a new defect.
  Its proposed direct seizure-digest assertion could localize future adapter
  drift, but a real proof round-trip already self-verifies and is gated in CI;
  the missing duplicate unit assertion is a coverage opportunity, not a bug.
- Sector06b independently confirms separate randomness and seeds per transfer tier,
  with selected epk/confirmation binding; one shared Orbis payload key does not
  require shared ephemeral randomness. Release-side binding is checked in16.
  Deliberate sender randomness reuse exposes its own data and is not an acceptance
  bypass requiring a new distinctness constraint.
- Sector06b's genesis error-text claim is not a reproduced lost boundary: the
  registrar fixture contains only one identity key and no native assets, and the
  authority fixture contains only the one identity authority being tested.
  Replacing role-specific string matches with the shared identity error does not
  allow the proposed “other identity field” to explain those rejections. A valid
  control can improve a future rewrite, but no failing guard was shown to survive.
- `DetectionKeyPublic` has no non-test runtime callers in this checkout. It is
  optional dead-surface cleanup, not an exploitable identity-key admission route;
  actual genesis/registration admission validates nonidentity keys.
- Sector14b's upstream assumptions were checked directly in the pinned local
  dependencies: reddsa 0.5.2 FROST `JubjubGroup::Element` is `SubgroupPoint`, and
  its decoder rejects identity (`redjubjub.rs:80-123`). frost-core 3.0.0 rejects
  minimum signer counts below 2 (`keys.rs:840`) and verifies the aggregate signature
  before returning (`lib.rs:660-687`), inspecting individual shares on failure.
  These were source checks, not a new upstream audit or cryptographic proof.
- The FROST local integration test indeed signs with all 3 participants after a
  2-of-3 DKG. Exercising an actual2-of-3 subset and wire round-trips within that
  existing flow would improve its distinct coverage. No runtime failure was
  reproduced. Threshold config negative cases already exist in the custody tests;
  their absence from this one wrapper crate is not a repository-wide absence.
- Sector08e finished the remaining statement/encoding paths without a new runtime
  defect. The suspected nullifier argument-order mismatch is closed directly:
  `sct/nullifier.rs:83-85` hashes `[nk, commitment, position]`, matching the circuit.
  Recovery capsule EPK generation uses SPEND_AUTH at `recovery_capsule.rs:109,161`,
  matching the release DLEQ generator.
- Sector08e's deleted transfer-metadata mutation tests are an unresolved test
  coverage proposal, not a demonstrated acceptance bug. Current circuit tests
  do mutate epoch and audit keys and reject inconsistent witnesses; typed statement
  fields remove the retired duplicated encoder. The pending transaction-circuit
  test review should assess what distinct adapter omission can still pass before
  restoring a broad per-field hash-sensitivity loop. No test was added or restored.
