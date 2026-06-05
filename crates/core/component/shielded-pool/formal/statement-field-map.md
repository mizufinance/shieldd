# Statement Field Map

This is the canonical ordered schema for the single-hash public input seam.
The `Rust symbol`, `Go circuit symbol`, and `Go differential symbol` columns are
machine-checked for live symbols.

| ID | Circuit family | Order | Field group | Rust symbol | Go circuit symbol | Go differential symbol | Status |
| --- | --- | --- | --- | --- | --- | --- | --- |
| `STMT-TRANSFER-ANCHOR` | transfer | 0 | witness anchor | `transfer_statement_fields` | `buildTransferStatementFields` | `ReconstructedTransferStatementFieldsFromWitnessV1` | `composed` |
| `STMT-TRANSFER-OUTPUTS` | transfer | 1-2 | output note commitments | `transfer_statement_fields` | `buildTransferStatementFields` | `ReconstructedTransferStatementFieldsFromWitnessV1` | `composed` |
| `STMT-TRANSFER-BALANCE` | transfer | 3 | balance commitment | `transfer_statement_fields` | `buildTransferStatementFields` | `ReconstructedTransferStatementFieldsFromWitnessV1` | `composed` |
| `STMT-TRANSFER-SPENDS` | transfer | 4-7 | input nullifier and RK pairs | `transfer_statement_fields` | `buildTransferStatementFields` | `ReconstructedTransferStatementFieldsFromWitnessV1` | `composed` |
| `STMT-TRANSFER-ANCHORS` | transfer | 8-9 | asset and compliance anchors | `transfer_statement_fields` | `buildTransferStatementFields` | `ReconstructedTransferStatementFieldsFromWitnessV1` | `composed` |
| `STMT-TRANSFER-CIPHERTEXT` | transfer | 10-29 | detection ciphertext and four encrypted tiers including EPK and `c2` | `transfer_statement_fields` | `buildTransferStatementFields` | `ReconstructedTransferStatementFieldsFromWitnessV1` | `composed` |
| `STMT-TRANSFER-TIMESTAMP` | transfer | 30 | target timestamp | `transfer_statement_fields` | `buildTransferStatementFields` | `ReconstructedTransferStatementFieldsFromWitnessV1` | `composed` |
| `STMT-TRANSFER-DLEQ` | transfer | 31-82 | four DLEQ metadata/proof records | `transfer_statement_fields` | `buildTransferStatementFields` | `ReconstructedTransferStatementFieldsFromWitnessV1` | `composed` |
| `STMT-CONSOLIDATE-BASE` | consolidate | 0..n | anchor, output commitment, balance commitment, input nullifier/RK pairs | `consolidate_statement_fields` | `NoteReshapeCircuit` | `ReconstructedConsolidateStatementFieldsFromWitnessV1` | `composed` |
| `STMT-SPLIT-BASE` | split | 0..n | anchor, output commitments, balance commitment, input nullifier/RK pair | `split_statement_fields` | `NoteReshapeCircuit` | `ReconstructedSplitStatementFieldsFromWitnessV1` | `composed` |
| `STMT-SHIELDED-ICS20-BASE` | shielded ICS-20 withdrawal | 0..n | anchor, change commitment, balance commitment, input nullifier/RK pairs | `shielded_ics20_withdrawal_statement_fields` | `ShieldedIcs20WithdrawalStatementHashForShape` | `ReconstructedShieldedIcs20WithdrawalStatementFieldsFromWitnessV1` | `composed` |
| `STMT-SHIELDED-ICS20-EFFECT` | shielded ICS-20 withdrawal | tail | asset/compliance anchors, target timestamp, outbound asset/amount, withdrawal effect hash limbs | `shielded_ics20_withdrawal_statement_fields` | `ShieldedIcs20WithdrawalStatementHashForShape` | `ReconstructedShieldedIcs20WithdrawalStatementFieldsFromWitnessV1` | `composed` |
