Shieldd is a lightweight, fully shielded transfer chain with privacy-preserving
compliance for regulated assets. Issuers can scan and audit transactions
involving their assets; unregulated assets retain full vanilla privacy. Built on
threshold MPC (Orbis), tiered encryption, in-circuit DLEQ proofs, and
zero-knowledge membership proofs.

## Scope

This chain's sole purpose is a shielded transfer layer with compliance
visibility. Heavy application logic (DEX, staking rewards, community pool) lives
on BankD; this chain connects via IBC.

**Supported:** `Transfer`, `Consolidate`, `Split`, `IbcRelay`,
`ShieldedIcs20Withdrawal`, `ValidatorDefinition`, `ProposalSubmit`,
`ValidatorVote`, `ComplianceRegisterAsset`, `ComplianceRegisterUser`,
`AggregateBundle`.

**Removed:** legacy `Spend` / `Output` (replaced by a single `Transfer`
action), DEX, delegation, community pool, delegator votes, proposal withdraw /
deposit-claim.

**Compliance binding:** carried on `Transfer` only. `Split` and `Consolidate`
carry no compliance ciphertext.

See [docs/compliance/chain-scope.md](docs/compliance/chain-scope.md).

## Compliance

A unified compliance ciphertext rides the receiver leg of each regulated
`Transfer`, bundling per-tier ElGamal envelopes plus a detection tag encrypted
to the issuer's static `DK`. Access is tiered:

- **detection** → asset id + flag + salt (issuer decrypts directly, no Orbis)
- **core** → amount
- **extension** → counterparty address (independent sender / receiver views)

The issuer's ring key is produced by DKG with Orbis (`sk_ring` stays
threshold-shared); the per-`(address, asset)` access key `ACK = d × ring_pk` is
never stored on-chain. Unflagged tiers are recovered via Orbis PRE, gated by
SourceHub ACP grants; notes at or above threshold flag and encrypt every tier
directly to `DK` so the issuer needs no Orbis to audit them.

Two on-chain registries, both emitting per-block historical anchors so in-flight
proofs survive new registrations:

- **Asset Registry (IMT):** sorted linked list; membership and gap proofs share
  one circuit shape, so validators cannot distinguish them. Leaf carries
  `AssetPolicy {dk_pub, ring_pk, threshold, allowed_channels, policy_id}`.
- **User Registry (QuadTree):** arity-4, depth-16, Poseidon377. Leaf commits
  `(address, asset_id)`.

End-to-end walkthrough (DKG → registration → transfer → scan → PRE) and wire
formats:

- [docs/compliance/flow.md](docs/compliance/flow.md) — end-to-end walkthrough
- [docs/compliance/reference.md](docs/compliance/reference.md) — wire formats, registry specs, DLEQ math
- [docs/compliance/testing.md](docs/compliance/testing.md) — test commands and CI parity

## IBC

`IbcRelay` and `ShieldedIcs20Withdrawal` are supported. The per-asset channel
whitelist is enforced first-hop only at withdrawal time and is immutable after
registration (empty = IBC blocked). Outbound withdrawals embed a reduced
single-tier compliance ciphertext in the ICS-20 memo, decryptable directly by
the issuer's `DK`.

## Validators & aggregation

Permissionless `ValidatorDefinition`, no staking rewards. A validator-side
`AggregateBundle` action carries proofs aggregated across the block via SnarkPack
(internal, not user-facing).

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

## To do (before production)

- **Real POA** — permissioned validator set; current `ValidatorDefinition` is a permissionless placeholder with no rewards.
- **New protocol** — rebuild mempool, sequencing, block building, execution, and consensus around this chain's narrower action surface and aggregation model.
- **Smarter note management** — planner-side note selection / change strategy beyond today's up-to-2-in / up-to-2-out `Transfer` shape; auto-integrate `Split` / `Consolidate`.
- **Governance / ACP integration** — wire on-chain governance to SourceHub ACP grants so unflagged-tier PRE access is gated by real proposals.

## Getting involved

The primary communication hub is our [Discord]; click the link to join.

## Security

If you believe you've found a security-related issue with Shieldd, please
disclose responsibly by contacting the Shieldd Labs team at
security@shielddlabs.xyz.

## License

By contributing to shieldd you agree that your contributions will be licensed
under the terms of both the [LICENSE-APACHE](LICENSE-APACHE) and the
[LICENSE-MIT](LICENSE-MIT) files in the root of this source tree.

If you're using shieldd you are free to choose one of the provided licenses:

`SPDX-License-Identifier: MIT OR Apache-2.0`

[Discord]: https://discord.gg/hKvkrqa3zC
[protobuf]: https://buf.build/mizufinance/shieldd
