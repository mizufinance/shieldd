# ZK Circuit Soundness

The production circuits compress semantic public inputs into a single
`ClaimedStatementHash`. Soundness therefore rests on both the circuit
constraints and the Rust/Go agreement on the ordered statement-field vector.

The formal fixtures are in `crates/core/component/shielded-pool/formal/`.

## What Must Hold

Each accepted proof must establish no double spend, balance conservation, note
ownership, output well-formedness, ciphertext correctness where compliance
applies, and statement integrity. Several accepted-language obligations are
outside the circuit and are tracked separately: authorization signatures,
nullifier freshness, anchor freshness, timestamp freshness, withdrawal-effect
extraction, and batch proof verification.

## Rust/Go Statement Seam

Rust builds statement vectors in
`crates/core/component/shielded-pool/src/public_input_hash.rs`. Go reconstructs
the hashed vectors in `tools/gnark/internal/circuits/*.go`. The ABI historically
checked only `len(witness.StatementFields)`, which is not a correspondence
proof. This phase adds `tools/gnark/internal/abi/statement_fields.go` and
`statement_fields_test.go`, comparing reconstructed Go vectors against
Rust-emitted fixture vectors for transfer, consolidate, split, and shielded
ICS-20 withdrawal.

## Top Finding

The Rust asset-registry gadget proves both regulated membership and unregulated
non-membership by selecting exact-match vs gap. The Go transfer and shielded
ICS-20 circuits only enforce `assetRoot == AssetAnchor` when `IsRegulated` is
true. On the false branch, Go does not prove the non-membership gap. The current
phase records and gates the finding; code remediation is follow-up work.

## Withdrawal Effect Hash

The shielded ICS-20 withdrawal circuit consumes effect-hash limbs. It does not
derive them from the withdrawal action. Soundness depends on
`shielded_ics20_withdrawal_extract_public` being the sole source of verifier
public inputs, because that function derives the limbs from
`action.body.withdrawal.effect_hash()`.
