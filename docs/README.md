# Docs index — what is authoritative where

One rule: **ledgers and gate-checked files are truth; narrative docs are
background.** When a narrative doc disagrees with a ledger, stamp, or gate,
the ledger wins and the narrative is stale.

| Area | Authoritative for | Checked by |
| --- | --- | --- |
| `docs/soundness/` | FV plan, claim tree (`assurance-case.md`), optimization loop, release gating. Entry point: `soundness/README.md`. | `scripts/check-soundness-invariants.sh` (ledgers/mirrors), `scripts/check-constraint-coverage.sh` (Lean coverage), CI `formal.yml` |
| `crates/*/formal/` | Typed evidence: assumption ledgers, property ledgers, proof specs, stamped artifacts. These outrank everything under `docs/`. | per-ledger invariant scripts + `*.sha256` stamps |
| `docs/compliance/` | Compliance design: flow walkthrough, wire/reference, chain scope, constraint checklist, testing map. | referenced tests |
| `docs/snarkpack/` | SnarkPack design + verification narrative. Assumption rows live in `crates/crypto/proof-aggregation/formal/snarkpack/formal-handoff.md`, not here. | `scripts/check-snarkpack-invariants.sh` |
| `docs/protocol/` | Protocol background book (crypto constructions, keys, addresses). **Background only** — last synced 2026-06; it does not track every NoteReshape implementation detail. Do not cite it as evidence. | none (unpinned) |
| `docs/transfer-circuit/` | Transfer-circuit constraint checklist (referenced by `docs/compliance/`). | referenced tests |
| `docs/rustdoc/` | CI staging for rustdoc deploy (`notes.yml`), not documentation content. | CI |

The user guide lives in a separate repository:
<https://github.com/mizufinance/guide>.
