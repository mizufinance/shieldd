# Orbis Runtime Contract

Shieldd pins the Orbis integration runtime here so local and CI flows pull
prebuilt images instead of building `orbis-rs` from a checkout.

Current contract line:

- Orbis node image: pulled from `ghcr.io/sourcenetwork/orbis-rs`, tagged with the
  same `orbis-rs` git rev pinned in [crates/util/orbis-client/Cargo.toml](../../crates/util/orbis-client/Cargo.toml) plus the crypto feature. `scripts/lib/common.sh::ensure_orbis_images` derives `ORBIS_IMAGE` from `orbis_pinned_rev_from_cargo`, so Cargo.toml is the single source of truth. The tag is a multi-arch (amd64+arm64) manifest.
- Crypto feature: `decaf377`
- SourceHub image: `ghcr.io/sourcenetwork/sourcehub:dev` (rolling tag, no ref pin), pulled directly. Override `SOURCEHUB_IMAGE` / `SOURCEHUB_PLATFORM` (a locally-built `linux/arm64` image on Apple Silicon avoids the blst SIGILL). The published image is amd64-only.
- The published orbis images are production builds (no self-funding); `orbis-funder` funds each node's SourceHub account from the genesis `test` account so the nodes can register and serve gRPC.
- Node controller key: each `orbis-node` must start with `--node-controller-key`.
  The default in [docker-compose.yml](docker-compose.yml) is the compressed
  public key for Orbis's `TEST_ACCOUNT_HEX_KEY`, matching the signer used by
  `orbis-integration` to call `UpdateNodePeerId` / `AddNodeToWhitelist`.

Runtime flow:

1. Each Orbis node creates a SourceHub `x/orbis` `NodeInfo` keyed by its
   `node_key`.
2. `orbis-integration` creates the ACP policy, registers the policy as a
   `ring_policy` object for `create_ring`, rewrites each peer route for the
   Docker network, and updates each node's `NodeInfo` with that peer route and
   policy whitelist.
3. `orbis-integration` creates a blank SourceHub `x/orbis` ring from node keys
   and starts DKG by passing only the resulting `ring_id` to Orbis.
4. Orbis finalizes the SourceHub ring with `ring_pk`; Shieldd reads the ring by
   `ring_id`.

The previous Shieldd-facing bulletin namespace setup is not part of this
runtime contract. Orbis still uses a bulletin abstraction internally, but the
SourceHub backend maps document, key-derivation, node-info, and ring records to
`x/orbis` state.

`./scripts/orbis-stack.sh up` resolves the pinned image tags via
`ensure_orbis_images` and brings the stack up with `docker compose up -d
--pull missing` — no `orbis-rs`/`sourcehub` source build. This keeps CI fast
(nothing to compile) while the runtime stays pinned in repo via Cargo.toml.
