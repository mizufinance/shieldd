# Orbis Runtime Contract

Shieldd vendors the Orbis integration runtime contract here so local and CI
flows do not depend on a manually maintained neighboring `orbis-rs` checkout or
on `cli-tool`.

Current contract line:

- Orbis source ref: pinned in [crates/util/orbis-client/Cargo.toml](../../crates/util/orbis-client/Cargo.toml) (`orbis-rs` git revs). `scripts/lib/common.sh::orbis_pinned_rev_from_cargo` extracts this and feeds it to the Docker build context, so Cargo.toml is the single source of truth.
- Crypto feature: `decaf377`
- SourceHub source ref: pinned as `SOURCEHUB_REF_DEFAULT` in [scripts/lib/common.sh](../../scripts/lib/common.sh) and passed to Orbis's `docker/Dockerfile.sourcehub-integration`. This must expose the `x/orbis` module used by the pinned Orbis client.
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

`./scripts/orbis-stack.sh up` prepares a local checkout of the pinned upstream
`orbis-rs` ref under `tmp/orbis-rs` and points Docker Compose at that local
build context. This avoids Docker BuildKit incompatibilities with remote git
contexts on older CI runners while keeping Shieldd's supported runtime pinned
in repo.
