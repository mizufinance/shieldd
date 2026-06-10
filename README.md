Shieldd is a lightweight, fully shielded transfer chain with privacy-preserving
compliance for regulated assets. Transactions stay private by default; for
regulated assets, the issuer can scan and audit activity involving their asset
while everyone else sees nothing. Unregulated assets keep full privacy.

> **Not production ready.** Shieldd is an active prototype.

## Scope

The chain does one thing: shielded transfers with compliance visibility for
regulated assets. Heavier application logic (DEX, staking rewards, community
pool) lives on BankD, which connects over IBC.

Core actions are `Transfer`, `Consolidate`, and `Split`, alongside IBC,
validator, governance, and compliance-registration actions. Compliance data is
attached only to transfers.

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

## Workspace layout

The root Cargo workspace is production-oriented.

- shipped crates, including the recursive verification / SnarkPack integration, build from the repo root
- non-production runtime experiments, stage/TPS labs, and prototype tooling live under [`poc/`](poc/README.md) as a separate nested workspace

```bash
cargo build --workspace                                  # production workspace
cargo build --workspace --manifest-path poc/Cargo.toml   # POC workspace
```

API docs: `cargo doc --workspace --no-deps`. The protobuf docs render at
[buf.build/mizufinance/shieldd][protobuf].

To transact, use the command line client `pcli`. To join a test network as a
full node, run the node implementation `pd`.

## Getting involved

The primary communication hub is our [Discord]; click the link to join.

## License

By contributing to shieldd you agree that your contributions will be licensed
under the terms of both the [LICENSE-APACHE](LICENSE-APACHE) and the
[LICENSE-MIT](LICENSE-MIT) files in the root of this source tree.

If you're using shieldd you are free to choose one of the provided licenses:

`SPDX-License-Identifier: MIT OR Apache-2.0`

[Discord]: https://discord.gg/hKvkrqa3zC
[protobuf]: https://buf.build/mizufinance/shieldd
