# Docs index — what is authoritative where

Runtime code and protocol records are authoritative here. Formal specifications,
generated evidence, and their gates live in
[`mizufinance/shieldd-formal`](https://github.com/mizufinance/shieldd-formal)
and certify one exact Shieldd commit.

| Area | Authoritative for | Checked by |
| --- | --- | --- |
| `docs/compliance/` | Bankd ownership boundary, compliance flow, enforcement/seizure plan, wire reference, constraints, and tests. | referenced tests |
| `docs/snarkpack/` | SnarkPack runtime design and verification narrative. Formal handoffs and theorem evidence live in `shieldd-formal`. | runtime tests and `scripts/check-snarkpack-runtime-invariants.sh` |
| `docs/protocol/` | Protocol background book (crypto constructions, keys, addresses). **Background only** — last synced 2026-06; it does not track every NoteReshape implementation detail. Do not cite it as evidence. | none (unpinned) |
| `docs/transfer-circuit/` | Transfer-circuit constraint checklist (referenced by `docs/compliance/`). | referenced tests |
| `docs/rustdoc/` | CI staging for rustdoc deploy (`notes.yml`), not documentation content. | CI |

The user guide lives in a separate repository:
<https://github.com/mizufinance/guide>.
