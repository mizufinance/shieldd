![Shieldd logo](docs/images/shieldd-dark.svg#gh-dark-mode-only)
![Shieldd logo](docs/images/shieldd-light-bw.svg#gh-light-mode-only)

Shieldd is a fully shielded zone for the Cosmos ecosystem, allowing anyone to securely transact,
stake, swap, or marketmake without broadcasting their personal information to the world.

## Getting involved

The primary communication hub is our [Discord]; click the link to join the
discussion there.

The guide to using the Shieldd software and interacting with the testnets is in `docs/guide`.

The evolving protocol spec source is in `docs/protocol`.

API documentation can be generated locally with `cargo doc --workspace --no-deps`.

The (evolving) protobuf documentation is rendered at [buf.build/mizufinance/shieldd][protobuf].

To participate in our test network, use Shieldd command line client `pcli`.

To join the test network as a full node, follow setup instructions for Shieldd node implementation `pd`.

## Workspace layout

The root Cargo workspace is production-oriented.

- shipped crates, including the recursive verification / SnarkPack integration, build from the repo root
- non-production runtime experiments, stage/TPS labs, and prototype tooling live under [`poc/`](/Users/antoinecyr/Documents/Source/shieldd/poc/README.md) as a separate nested workspace

Build the production workspace from the repo root:

```bash
cargo build --workspace
```

Build the POC workspace separately:

```bash
cargo build --workspace --manifest-path poc/Cargo.toml
```

## Current work and roadmap

For a high-level view of current work-in-progress and future items, check out our:

- [Tracking issues][Tracking]
- [Backlog][Backlog]

[Tracking]: https://github.com/orgs/mizufinance/projects/23/views/4
[Backlog]: https://github.com/orgs/mizufinance/projects/23/views/1
[Discord]: https://discord.gg/hKvkrqa3zC
[mdBook]: https://github.com/rust-lang/mdBook
[protobuf]: https://buf.build/mizufinance/shieldd
[tm-install]: https://github.com/tendermint/tendermint/blob/master/docs/introduction/install.md#from-source


## Security
If you believe you've found a security-related issue with Shieldd,
please disclose responsibly by contacting the Shieldd Labs team at
security@shielddlabs.xyz.

## License

By contributing to shieldd you agree that your contributions will be licensed
under the terms of both the [LICENSE-Apache-2.0](LICENSE-Apache-2.0) and the
[LICENSE-MIT](LICENSE-MIT) files in the root of this source tree.

If you're using shieldd you are free to choose one of the provided licenses:

`SPDX-License-Identifier: MIT OR Apache-2.0`
