# Opus 5.5: 18-build-dependency-removal

Artifact: `57eb44e8cae809c68974ed5d6723bdb904b2f8c1..c4b8b6d28e54b5e1d50769ee12209b56d613a60d`. Read-only, bounded sector review.

Checking how the Commonware lockfile is actually used (justfile/CI) next.

Checking artifact staging against base (dirty-tree provenance).

Now reviewing the new state-persistence CI script and feature-set checks.

# Sector 18: build and dependency removal review

**Artifact:** `57eb44e8ca..c4b8b6d28e`. Read-only static review. I didn't run any builds or tests.

## Scope and coverage

- **Read the diff and followed the runtime code:**
  - Build and CI files: `Cargo.toml`, `deny.toml`, `.github/workflows/rust.yml`, `.github/workflows/orbis-integration.yml`, `justfile`, `rust-toolchain.toml`, `.config/nextest.toml`, `.gitattributes`.
  - Scripts: `deployments/scripts/check-crate-feature-sets`, `check-wasm-compat.sh`, `rust_doc_packages.py`, `scripts/lib/common.sh`, `scripts/orbis-stack.sh`, `scripts/stage_artifacts.py` (current and base), `scripts/commonware.py`.
  - New CI pieces: `scripts/ci/check_state_persistence.sh`, `scripts/tests/test_commonware.py`.
  - Benchmarks: `crates/bench/src/bin/transfer-benchmark.rs`, and in `crates/bench-support/src/proof_txs.rs` the corpus metadata and registry binding.
  - The bench verifier in `App::verify_tx_artifacts_for_stage` (`crates/core/app/src/app/mod.rs:385-420`).
- **Manifests:** I checked the production manifests for `test-helpers` and `benchmark-helpers` exposure: `shieldd`, `proof-params`, `shielded-pool`, `circuits`, `bench-support`, `bench`, `app` and `app-tests`. I also ran a manifest-wide grep of `[dependencies]` against `[dev-dependencies]`.
- **Removed-reference review:** all the deleted Groth16, SnarkPack, gnark, LFS, proof-artifact and state-compatibility files (actions, corpora, benches, `groth16_proof.rs`, scripts and their tests). The Cargo.lock git sources now come only from `sourcenetwork/orbis-rs`, matching the trimmed `deny.toml` `allow-git`. Nothing still references a gnark library or the `bundled-proving-keys` feature.
- **Checked only lightly:** the rest of the `rust_doc_packages.py` rewrite and its tests, `check_docs.py`, `test_docs.py`, `test_state_persistence.py`, `test_stage_artifacts.py`, `test_orbis_runtime.py`, the `docs-lint.yml` and `.gitignore` diffs, and the bulk of `Cargo.lock` (only the provenance-relevant entries).

## Coordinator follow-ups

### 1. Commonware `Cargo.lock` provenance: low, no production consequence

`scripts/commonware.py:26` leaves `Cargo.lock` out of `inventory()`. So neither `check` nor `reproduce` notices edits to `third_party/commonware/Cargo.lock`. Here is what that actually affects:

- **Production is unaffected.** `third_party/commonware` is excluded from the workspace (`Cargo.toml` exclude list) and used through path dependencies. Every shipped build goes through `stage_artifacts.py:71` with `--locked` and resolves against the **root** `Cargo.lock`. The vendored Commonware lockfile plays no part in any shipped artifact.
- **Only the standalone test step uses it.** `just commonware-test` (`justfile:43-44`) runs `--manifest-path third_party/commonware/Cargo.toml --locked`. An edited lockfile can therefore change the dependency graph for the upstream `zk::pari` and `zk::circuit` tests, and nothing would flag it.
- **The two lockfiles agree today on what matters.** Spot checks show the same versions in both: `blst 0.3.17`, `rayon 1.12.0`, `commonware-cryptography 2026.7.0`.
- **Consequence:** those upstream tests could silently run against a different graph from the product. That weakens how well they stand in for the product, but the product itself is unaffected.
- **Fix (optional):** record a hash of `third_party/commonware/Cargo.lock` in `provenance.json`. Alternatively, add a parity check that the Commonware-relevant package versions match the root lockfile.

### 2. `test-helpers` / `benchmark-helpers` exposure: no exploitable external path

- `shieldd-sdk-compliance/test-helpers` is switched on only by dev-dependencies, by `shielded-pool`'s `benchmark-helpers`, or by crates that exist only for benchmarks or tests (`bench-support`, `bench`, `app-tests`).
- The shipped groups (`shieldd` lib, the two prover binaries, `orbis-integration`) are built with `--package` selection (`stage_artifacts.py:73-76`). Cargo therefore doesn't merge in features from `bench-support`.
- `crates/bin/shieldd/Cargo.toml` pulls `shielded-pool` with `default-features = false` and no helper features.
- `just build` (`justfile:15`, `--workspace --all-features`) does compile the helpers, but those outputs are never staged.
- `batch_verify_artifacts_for_bench` is `#[cfg(any(test, feature = "benchmark-helpers"))]` and returns verification errors to the caller.
- **Verdict:** no finding.

## Findings

No blocking or medium-severity defects found in this sector.

### Low

**L1. Dead Orbis tooling that always fails** (validated statically; cleanup)
- **Where:** `scripts/orbis-ci-cleanup.sh:13`.
- **Trigger:** running the script.
- **Cause:** `ensure_orbis_images` now calls `validate_orbis_runtime_crypto` (`scripts/lib/common.sh:240-249`). That function rejects every lock whose crypto isn't `bls12-381`, which includes the current Decaf377 image lock. The workflow's own notice says that image is unsupported.
- **Why it's branch-introduced:** the branch removed the live smoke/stop workflow steps that used this script, and no workflow references it anymore. The only remaining reference is a historical review manifest.
- **Same pattern elsewhere:** `justfile` recipes `orbis-integration-up`, `orbis-integration-setup-ring` and `orbis-integration-preflight` also always fail closed. That's safe but misleading.
- **Fix:** delete `orbis-ci-cleanup.sh`. Either drop the live-stack `just` recipes or reduce them to a clear message that live integration needs an external BLS12-381/Jubjub runtime. The policy says to delete replaced flows.

**L2. Stale MSRV metadata** (validated statically)
- **Where:** `crates/bin/shieldd/Cargo.toml:10` declares `rust-version = "1.75"`.
- **Problem:** it now depends on `shieldd-sdk-circuits`, which uses `edition = "2024"` (`crates/crypto/circuits/Cargo.toml:4`) and needs Rust 1.85 or later. The toolchain was bumped to `1.95.0`.
- **Consequence:** a downstream consumer on an older compiler gets a confusing build failure instead of a clear MSRV error. There's no effect on CI.
- **Fix:** raise `rust-version` or remove it.

**L3. Stale comment in `deny.toml`**
- **Where:** `deny.toml` around line 120.
- **Problem:** the `allow-git` comment still reads "Published Decaf source retained by the pinned Orbis crypto adapter". It now sits above the only remaining entry, `orbis-rs`.
- **Fix:** reword the comment.

## Observations (not defects)

- **Benchmark validity looks sound.**
  - `measure_proof_verification` decodes each transaction canonically and does a warm-up verification before any timing.
  - It alternates batched and per-transaction order across runs, and verification errors propagate.
  - The corpus metadata binds `registry_id`, `relation_digest` and `verifying_key_digest`, and `load_proof_tx_pool` now checks `tx_count`.
- **Accepted coverage gap: live Orbis testing is gone.** The workflow no longer runs any live Orbis PRE/PET smoke test and only checks adapter contracts. This is stated explicitly (`orbis-integration.yml` notice) and follows from the unsupported image, so it's a limitation, not a regression. Live audit-key behaviour now depends entirely on other sectors' unit and proof tests.
- **Pre-existing, not introduced:** `stage_artifacts.py:revision()` labels artifacts with `HEAD` even when the working tree is dirty. The same logic exists in base. Separately, the `suite` field in the provenance manifest is a hard-coded constant rather than a derived value. That's cosmetic, not an integrity check.
- **Removed guard, now obsolete:** `check-crate-feature-sets` dropped the `libloading` check. It was specific to the gnark FFI, and no replacement is needed because proving in `shielded-pool` sits behind a separate `prover` feature that `shieldd` doesn't enable.

## Reproductions for the coordinator

1. **wasm check:** run `just wasm-check` at HEAD. The branch added `shieldd-sdk-crypto` and `shieldd-sdk-circuits` to the wasm32 list, and these pull in `commonware-cryptography` with the `bls12381` feature, which I believe depends on the C library `blst`. Confirm the CI "Check wasm compatibility" step actually passes for them.
2. **Lockfile tamper (optional):** edit a non-Commonware version in `third_party/commonware/Cargo.lock` and confirm that `commonware.py check` still passes. That would confirm L-follow-up #1 empirically.

## Unreviewed areas

- The full `Cargo.lock` delta (only provenance-relevant entries were checked).
- The line-level details of the `rust_doc_packages.py` rewrite and its tests.
- `check_docs.py` and `test_docs.py` beyond their structure.
- An upstream audit of the Commonware sources (outside scope, per instructions).

**Status: COMPLETE** for this sector.
