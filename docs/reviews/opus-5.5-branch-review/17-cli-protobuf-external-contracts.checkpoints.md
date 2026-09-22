# Opus 5.5: 17-cli-protobuf-external-contracts

Artifact: `57eb44e8cae809c68974ed5d6723bdb904b2f8c1..c4b8b6d28e54b5e1d50769ee12209b56d613a60d`. Read-only, bounded sector review.

Focus on runtime: disclosure.rs, compliance.rs, orbis client.

Checking how the prover worker environment is set up before I write the report.

# Sector 17 review: CLI, protobuf and external contracts

**Artifact:** `57eb44e8ca..c4b8b6d28e`, read-only static review. I built nothing and ran no tests.

## Scope and coverage

| Path group | How reviewed |
|---|---|
| `pcli/src/command/disclosure.rs` (008) | Read the whole diff. Traced `verify_package`, `load_registry` and `run_worker`, and how keys reach the worker (`main.rs:29`, `opt.rs:17`). Compared worker hardening against the base. |
| `pcli/src/command/compliance.rs` (007) | Read the whole diff. Checked that `GenerateDk` uses the same generator as `DetectionKey::public_key` (`issuer_keys.rs:116`), and checked the key parsers. |
| `pcli` `main.rs`, `opt.rs` | Inspected the current code. |
| `pcli` `init.rs`, `view/address.rs`, `config.rs`, `orbis.rs`, `tests/cli_surface.rs`, `Cargo.toml` | Only covered through the dependent changes above. I did not open these diffs one by one (small-patch bundle 00 was too large to read in one pass). |
| `orbis-client` `client.rs`, `pre.rs` (051, 052) | Read the diffs. `types.rs` and `Cargo.toml` were not opened. |
| `proto/src/protobuf.rs` (047) | Read the diff: the reddsa conversions and the non-identity check on the verification key. |
| `.proto` files (055–063) | Checked field numbers, `reserved` fields and type swaps with a grep of the diffs. Read `compliance.proto` in full. |
| `proto/src/gen/*` | Treated as generated. Their types follow the `.proto` changes, but I did not check them line by line. |
| `orbis-integration/src/main.rs` (005) | Read the diff. |
| `app-tests/tests/paid_wallet_withdrawal.rs` (new) | Read the current file. |
| Other app-tests, the two host builders, mock-client, `codegen.json`, `proto/src/lib.rs` | Not reviewed individually. |

## Findings

### Low: the issuer detection secret is no longer zeroized (validated statically)

- **Where:** `crates/bin/pcli/src/command/disclosure.rs:~497-511` (`IssuerCreate`).
- **What changed:** the base cleared the scalar with `key.0.zeroize()` after use. The branch deleted that line when switching to the Jubjub `Fr`.
- **Why it isn't cleared now:** `DetectionKey` is `#[derive(Clone, Copy, Debug, PartialEq, Eq)]` (`crates/core/component/compliance/src/issuer_keys.rs:33-34`). It has no `Zeroize` and no drop hook, so the parsed issuer scalar stays in memory until it is overwritten. The raw bytes are still wrapped in `Zeroizing`, so only the parsed scalar is affected.
- **Impact:** memory hygiene only. The secret could show up in a core dump or swap. There is no protocol impact.
- **Why this branch introduced it:** the base cleared the scalar, and this diff removed that.
- **Fix:** zeroize the scalar explicitly after use, if the Jubjub `Fr` supports it. Otherwise overwrite `key.0 = Fr::ZERO` before dropping it. Also consider removing `Copy` and `Debug` from `DetectionKey`.

### Hypothesis: the Orbis PRE commitment format needs a live check

- **Where:** `crates/util/orbis-client/src/pre.rs:~95`.
- **What changed:** the response check used to be "exactly 32 bytes". It now parses `xnc_cmt` as a BLS12-381 point.
- **Why I can't confirm it:** the new tests take their expected value from `document.secret.enc_cmt`, so they only prove the code agrees with itself. They say nothing about what a real Orbis node returns.
- **Consequence if the formats differ:** every PRE response would be rejected, with a clear failure rather than a silent one.
- **Same caveat applies to:** the ring key parse in `client.rs:~337` (`GroupAffine::from_bytes`, plus a rejection of the identity point).
- **Coordinator action:** run a live Orbis round-trip, or compare the format against the pinned `orbis_crypto`.

### No defects found in

- **Worker keys and cancellation:**
  - Proving requires `--pari-keys` up front (`disclosure.rs:803`).
  - The keys path reaches the worker through the `SHIELDD_PARI_KEYS` environment variable. Clap reads that variable globally (`opt.rs:17`), and the worker inherits the parent's working directory, so relative paths still resolve.
  - The rewritten cancellation test is stronger than before: it waits until the worker and its child are both running, then drops the job and checks for `ESRCH` (process gone).
  - The old test name "suppresses_dumps" never matched any code: the base had no `RLIMIT_CORE` setting either. The rename is accurate and removes nothing.
- **Verification:** `verify_package` loads the key registry only for Pari evidence, so `Openings` and `PayloadKeys` still verify without keys. A missing registry is reported as `VerificationUnavailable`.
  - Minor: `MachineResult.circuit` is an empty string when the request fails validation before the circuit is known. That's acceptable for rejected results.
- **Protobuf and domain parity:**
  - The `redjubjub_*` messages keep the same field numbers.
  - `capk` is retired with `reserved`.
  - `payload_key` and `audit_epoch` are new fields, which fits the single Orbis audit payload key design.
  - The registration and seizure authority keys stay separate fields.
  - `SpendVerificationKey` decoding now rejects the identity point (`protobuf.rs:~75`).
- **Compliance CLI:**
  - Removing `ring_pk_hex` matches the `ComplianceLeaf::registered` signature change.
  - `GenerateDk` uses the same generator as `DetectionKey::public_key`.
  - The parsers still reject the identity point, and `parse_fq` still rejects zero.

## Test notes

- **`paid_wallet_withdrawal.rs`:** a good end-to-end test. It covers splitting off the fee note, resuming, keeping the principal separate from the fee funding, the payout, and an exact balance check. One gap: it doesn't check that the resume token rejects stale state. That is a coverage limit, not a bug.
- **`orbis-integration` repo discovery test:** now uses a temporary directory, so it no longer depends on where the checkout lives. This is an improvement.
- **Orbis client:** deleting the trivial `NodeInfo` test is fine; it asserted nothing meaningful.

## Cross-sector follow-ups

- The generated proto files should be regenerated and diffed by whichever sector owns codegen reproducibility.
- The Pari registry loading and `sdk::verify` semantics belong to the disclosure SDK sector.

## Not reviewed

- The individual diffs for the host builders (000–003), `pcli` `init.rs`, `address.rs`, `config.rs`, `orbis.rs` and `cli_surface.rs` (009–015).
- The app-tests diffs 016–025 and `storage_query.rs`.
- `mock-client` (048, 049), `orbis-client` `types.rs` and `Cargo.toml` (050, 053), `codegen.json`, and `proto/src/lib.rs`.

**Verdict: PARTIAL.** The runtime and security-relevant paths are covered. The small diffs listed above were not inspected individually.
