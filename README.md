# Shieldd

Shieldd is a lightweight, fully shielded transfer chain with privacy-preserving
compliance for regulated assets. Transactions stay private by default; for
regulated assets, the issuer can scan and audit activity involving their asset
while everyone else sees nothing. Unregulated assets keep full privacy.

> **Not production ready.** Shieldd is an active prototype.

## Scope

The chain does one thing: shielded transfers with compliance visibility for
regulated assets. Heavier application logic (DEX, staking rewards, community
pool) lives on BankD, which connects over IBC.

Core actions are `Transfer` and `NoteReshape` (1→8, 2→1, 4→1, or 8→1),
alongside IBC, validator, governance, and compliance-registration actions.
Compliance data is attached only to transfers.

See [docs/compliance/chain-scope.md](docs/compliance/chain-scope.md) for the full
action surface.

## How compliance works

When a regulated asset moves, the transfer carries an encrypted compliance
bundle that only the asset's issuer can open. Access is tiered, so an issuer can
be granted just what they need:

- **detection** — which asset, and whether the transfer is flagged
- **core** — sender address and amount
- **extension** — counterparty

Issuers hold a static detection key and can always scan for and read flagged
transfers on their own. Reading the remaining tiers of an unflagged transfer
requires threshold approval through Orbis (MPC), gated by on-chain policy — no
single party can decrypt unilaterally.

For the end-to-end walkthrough and details:

- [docs/compliance/flow.md](docs/compliance/flow.md) — walkthrough from issuer setup to audit
- [docs/compliance/reference.md](docs/compliance/reference.md) — wire formats, registries, and proof details



_Building the future of institutional finance - sovereign, private, and compliant by design._
