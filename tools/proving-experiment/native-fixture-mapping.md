# Native logical fixture mapping

Candidate C reproduces these facts from checked decoded source witnesses, using
native curve/hash encodings. All six original witness hashes match the retained
cache, and all six full native Transfer proofs pass. See
`cache/native-full-transfer-checkpoint.json` for the checked evidence.

| Existing scenario | Inputs | Receiver / change amounts | Address relationship | Registry / volume |
| --- | --- | --- | --- | --- |
| `transfer` | Two real notes, 100 each | 90 / 90 | Self transfer | Regulated membership, limit `u128::MAX`, accumulator padding, ordinary context |
| `transfer_unregulated` | One real 100 note; dummy second slot | 100 / 0 | External | Populated predecessor nonmembership, predecessor limit 1, fixed unregulated sinks, accumulator padding |
| `transfer_flagged` | One real 100 note; dummy second slot | 100 / 0 | External | Regulated membership, limit 1, disclosure with accumulator padding |
| `transfer_accumulating` | One real 100 note; dummy second slot | 100 / 0 | External | Regulated membership, limit 100, origin accumulator 0 → 100 |
| `transfer_over_limit_disclosure` | One real 100 note; dummy second slot | 100 / 0 | External | Separate witness randomness for the same limit-1 disclosure branch |
| `transfer_accumulator_continuation` | One real 100 note; dummy second slot | 100 / 0 | External | Regulated membership, limit 125, authenticated prior accumulator 25 → 125 |

All builders use timestamp 1,700,000,000 and recent-spend floor zero. Standard
Transfer inserts both real notes into the same SCT; hidden-arity scenarios insert
one note and, for continuation, the prior accumulator. External regulated
transfers authenticate sender and recipient leaves against the same compliance
root. Zero change retains its complete recovery capsule. The standard action has
a nonzero net balance of 20; do not add an internal zero-net constraint.

Sources: `crates/core/component/shielded-pool/src/gnark/mod.rs` fixture selection
and export seeds, and `test_proof_helpers.rs` functions
`build_transfer_roundtrip_inputs_with_rng`,
`build_transfer_hidden_arity_roundtrip_inputs_for_asset_populated`,
`build_transfer_flagged_hidden_arity_roundtrip_inputs_with_rng`,
`build_transfer_accumulating_hidden_arity_roundtrip_inputs_with_rng`,
`build_transfer_continuing_accumulator_roundtrip_inputs_with_rng`, and their
shared `build_transfer_hidden_arity_from_base` / `split_transfer_amounts` helpers.
The intentionally invalid limit-99 accumulating witness remains a rejection case.

The Go `cmd/provingexperiment facts` exporter uses the existing checked witness
constructor and decoder. `native/src/fixtures.rs` checks the six source hashes,
then constructs consistent sparse trees and native keys, points and hashes.
Application fixture randomness is deterministic from each source witness hash;
proof randomness and committed-input openings are fresh. Routing precisions
12/18 and height 1, exact registry fields and lifecycle values are preserved.
These are proof-layer fixtures, not an executable block or wallet benchmark API.
