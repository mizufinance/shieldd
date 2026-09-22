# Opus 5.5: 01b-native-provenance-followup

Artifact: `57eb44e8cae809c68974ed5d6723bdb904b2f8c1..c4b8b6d28e54b5e1d50769ee12209b56d613a60d`. Read-only, bounded sector review.

Checking how Shieldd's Envelope binds statements into the Pari transcript.

I've covered the transcript, registry, provenance tooling and CI. Writing the report now.

# Sector 01b – native provenance follow-up: review report

**Artifact:** `57eb44e8ca..c4b8b6d28e`. This was a read-only static review; nothing was built or run. It fills the gaps left by `01-native-prover-boundary.md`, which covered the runtime boundary and the four patches.

## Scope and coverage

These files were read in full or in the parts that matter:
- `crates/crypto/proof-params/src/lib.rs` (whole file: `pub mod historical; pub mod pari;`)
- `crates/crypto/proof-params/src/historical.rs:1-89` (all the non-test code)
- `crates/crypto/proof-params/src/pari.rs:1-365` (the registry: manifest, loading, verification, proving cache)
- `crates/crypto/circuits/src/proof.rs:96-222` (`Envelope`, `check_context`, `verify`, `verify_batch`)
- Upstream `third_party/commonware/cryptography/src/zk/pari/verifier.rs` (the `verify` / `verify_prebound` / `batch_verify` paths) and `mod.rs:98-126` (`transcript_challenge*`)
- `scripts/commonware.py` (whole file)
- `justfile` recipes `pari-setup`, `ci-test`, `commonware-test` and `pari-proof-tests`; `.github/workflows/rust.yml:86-110`
- Root `Cargo.toml` exclude list and path dependencies

These assigned files were **not** read line by line: `proof-params/Cargo.toml` (patch 000), `examples/pari_setup.rs` (002), `third_party/commonware-patches/README.md` (020), `provenance.json` (021, a 41 KB hash inventory), and the three Commonware `Cargo.toml` files (026, 037, 049). Their integrity is covered indirectly: CI runs `commonware.py reproduce`, which checks the whole vendored tree against the pinned upstream revision plus the patch series. The historical deletion hunks in patch 014 were not re-read; the current file was reviewed instead.

## Transcript binding check (verified, no issue)

Proofs are bound to their public statement correctly:
- **Transcript start:** `proof.rs:91-92` starts every transcript with the domain `shieldd.pari.proof.v1` and commits `[SUITE, family]`.
- **Single verify:** `Envelope::verify` (`proof.rs:180-187`) calls the non-prebound `pari::verify`.
  - `transcript_challenge` (`mod.rs:124`) commits `claim.encode()`, which contains both the public inputs and the block commitments.
  - `transcript_challenge_prebound` (`mod.rs:104-106`) then commits the marker, `verifying_key.digest()` and `t` before the evaluation challenge is drawn.
- **Batch verify:** `proof::verify_batch` uses the upstream `batch_verify`, which commits `claim.encode()` for each item (`verifier.rs:128`) before calling the prebound path. Neither Shieldd path calls `verify_prebound` directly, so the caller-binding requirement in `verifier.rs:57-61` doesn't apply.
- **Context checks:** `check_context` (`proof.rs:165-177`) requires:
  - the envelope's family to match the expected family;
  - the envelope's relation digest to match the locally selected key;
  - the claim's public inputs to equal exactly `[statement]`, with exactly one commitment.

  The statement is recomputed on the verifier side, e.g. `historical.rs:75,83` builds it from the canonical claim. The envelope's own `relation` and `family` bytes are only compared, never used to pick a key.
- **Registry loading** (`pari.rs:207-266`):
  - artifacts are size-bounded and SHA-256 checked;
  - key decoding is exact, with trailing bytes rejected;
  - the VK digest and relation digest must match the manifest;
  - every VK is checked against the freshly compiled catalogue relation (`validate_relation`);
  - lazily loaded proving keys are re-hashed and must embed the trusted VK (`pari.rs:337-346`).

## Findings

No confirmed soundness or runtime bugs in this sector. Two low-severity points:

### L1 — `scripts/commonware.py:26` leaves `Cargo.lock` out of provenance (low, static, branch-introduced)
- **Trigger:** `inventory()` skips every file named `Cargo.lock`, and every path with a `target` component.
- **Consequence:** `third_party/commonware/Cargo.lock` exists and controls dependency resolution for `just commonware-test` (`cargo test --locked --manifest-path third_party/commonware/Cargo.toml`). It is not pinned by `provenance.json`, so an edited lock can change what the upstream Pari tests compile against without `check`/`reproduce` noticing.
- **Impact on production builds:** none. The root workspace excludes `third_party/commonware` (`Cargo.toml:5-6`) and uses path dependencies resolved through the root `Cargo.lock`.
- **Proposed fix:** inventory that one lock file on purpose (exclude only `target/` at the tree root), or document that it is covered by root-lock review.

### L2 — nothing ties the network to one Pari registry (development-only by design, not a new bug)
- **What happens:** `Registry::load` accepts only `setup == "development"` (`pari.rs:220`). `just pari-setup` generates fresh random keys. The registry id (`pari.rs:254-262`) is only used by the view's historical-proof cache (`historical_proof_cache.rs:253,321,450`).
- **Consequence:** I found no genesis or chain-parameter check tying validators to one registry id. Nodes that each ran `pari-setup` would reject each other's proofs.
- **Assessment:** the repo is an explicit development prototype with no ceremony support, so this is absent ceremony support rather than a new actionable bug. Pinning the registry id in genesis is worth adding before any multi-node deployment.

## Do the registry gates run in CI?

Yes:
- `rust.yml:88-89` runs `just pari-setup`.
- `rust.yml:91-92` runs `commonware.py reproduce`.
- `rust.yml:108-109` runs `just pari-proof-tests`, which runs `--ignored` tests across `shielded-pool`, `app`, `app-tests`, `disclosure`, `view` and `proof-params`, with `SHIELDD_PARI_KEYS` set by the justfile (`justfile:6`).

So ignored tests such as `pari.rs:476` `warm_registry_load_rechecks_artifacts_and_relation_shape` are real CI gates, not dead tests. I did not check that each crate's ignore reason matches this environment variable.

## Test weaknesses

- `historical.rs` only tests claim canonicalisation. Proof checks under the real registry depend on the ignored suites in other crates; I did not confirm which ignored test exercises `verify_generation`/`verify_chunk`. **Coordinator:** grep the ignored tests in `view`/`app` for these functions.

## Cross-sector follow-ups

- Callers of `Verified::ensure_binds` and the capability registry → sector 09 (not duplicated here).
- Registry-id pinning in genesis/app state (L2) → the app/genesis sector, if one is in scope.

## Remaining / unreviewed

- Patch 000 (`proof-params/Cargo.toml`), patch 002 (`examples/pari_setup.rs`), patch 020 (patches `README.md`) and the three Commonware `Cargo.toml` files: covered only by the reproduction check and the justfile invocation, not read line by line.
- Patch 021 (`provenance.json`): not read (a hash inventory; checked by the CI reproduction).
- Needs running: `python3 scripts/commonware.py reproduce` and `just pari-proof-tests`, to confirm they pass at `c4b8b6d28e`.

**Status: COMPLETE** for runtime, transcript and CI questions. The manifest-only files above are covered through the reproduction check rather than line-by-line reading.
