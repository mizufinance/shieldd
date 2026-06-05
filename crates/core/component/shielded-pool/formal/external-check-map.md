# External Check Map

These obligations are part of the accepted language but are enforced outside
the arithmetic circuit.

| ID | Obligation | Rust symbol | Go symbol | Status |
| --- | --- | --- | --- | --- |
| `EXT-AUTH-SIGNATURES` | Spend authorization signatures verify against each action effect hash. | `verify_auth_sigs` | `n/a` | `composed` |
| `EXT-NULLIFIER-FRESHNESS` | Real input nullifiers are checked unspent before execution and then persisted spent. | `check_nullifier_unspent` | `n/a` | `composed` |
| `EXT-ANCHOR-FRESHNESS` | Compliance and asset anchors must be present in state and inside the validation window. | `validate_compliance_anchors` | `n/a` | `composed` |
| `EXT-TARGET-TIMESTAMP-FRESHNESS` | Transfer target timestamps must be within the allowed block-time drift. | `check_timestamp_freshness` | `n/a` | `composed` |
| `EXT-WITHDRAWAL-EFFECT-HASH` | Shielded ICS-20 public inputs derive withdrawal effect hash limbs from the action body. | `shielded_ics20_withdrawal_extract_public` | `n/a` | `composed` |
| `EXT-BATCH-PROOF-VERIFY` | Action handlers submit extracted public inputs to batch proof verification. | `batch_verify` | `groth16.Verify` | `composed` |
