# Testing Guide

## Prerequisites

Use the Nix development shell for the CI Rust, C++, and Go toolchains:

```bash
nix develop
```

## Quick Reference

| Command | Scope | When to Use |
|---------|-------|-------------|
| `cargo test --release -p <crate> --lib` | Single crate | Active development |
| `just test` | All unit tests (nextest) | Before commit |
| `just go-test` | `tools/gnark` Go tests only | Fast circuit/gadget iteration |
| `just go-check` | `tools/gnark` format/build/test/vet | Before commit on gnark changes |
| `just gnark-proof-tests` | Fast gnark inner-loop checks | During transfer/NoteReshape development |
| `just note-seizure-proof-tests` | Real daemon, compiled verifier, and host seizure state transition | Every PR and merge candidate |
| `just gnark-proof-tests-slow` | End-to-end gnark proof generation | Before PR on shielded-action changes |
| `just smoke` | End-to-end | Before PR (transaction changes) |
| `just integration-pcli` | pcli tests | Before PR (CLI changes) |

## Scanner Core

Use these when changing issuer compliance scanning:

```bash
cargo test -p shieldd-sdk-compliance --lib scanner::
cargo test -p shieldd-sdk-compliance --lib audit::
cargo test -p shieldd-sdk-compliance --lib evidence::
cargo test -p shieldd-sdk-compliance --lib audit_validation::
cargo test -p shieldd-sdk-transaction compliance_scanner_transaction_id_matches_canonical_transaction_id --lib
cargo check -p shieldd-sdk-compliance -p shieldd-sdk-transaction -p pcli -p orbis-audit -p orbis-integration
cd tools/gnark && go test ./internal/circuits ./internal/compliance
```

The transaction parity test is mandatory: the scanner-side transaction hash
helper must continue to match `Transaction::id()`.

Run the real transfer proof roundtrip with bundled proving keys:

```bash
cargo test --release -p shieldd-sdk-shielded-pool --features bundled-proving-keys transfer_proof_roundtrip --lib
```

The note-seizure recipe sets both daemon and artifact paths explicitly. Its
host test checks invalid-release rollback, successful seizure, duplicate-note
rejection, persisted audit replay, and exact-source idempotency. Running unit
tests without those environment variables skips the daemon tests and is not
proof-path verification.

Smoke the scanner CLI shape with:

```bash
pcli tx compliance scan run --node http://127.0.0.1:8080 --db /tmp/compliance-scanner.db --dk-hex <hex> --scan-asset-id <asset>
pcli tx compliance scan catch-up --node http://127.0.0.1:8080 --db /tmp/compliance-scanner.db --dk-hex <hex> --scan-asset-id <asset>
```

Only the DB-backed scanner commands above are supported. Audit-demo exports
frontend-compatible `scan`, `scanner`, `ledgerRows`, and `audits` state from the
scanner DB.

## Standard Preflight

```bash
just ci-preflight
```
