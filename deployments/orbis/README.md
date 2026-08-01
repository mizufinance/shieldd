# Orbis Runtime Contract

Shieldd pins the Orbis integration runtime here so local and CI flows pull
prebuilt images instead of building `orbis-rs` from a checkout.

Current contract line:

- [images.lock.json](images.lock.json) is the single source for both external
  image references. Both references use OCI index digests.
- The locked Orbis source revision must match all three `orbis-rs` git
  dependencies in
  [crates/util/orbis-client/Cargo.toml](../../crates/util/orbis-client/Cargo.toml).
- The Orbis crypto feature is `decaf377`.
- `ORBIS_IMAGE` and `SOURCEHUB_IMAGE` may override the lock for explicit local
  testing. CI rejects either override. `SOURCEHUB_PLATFORM` may select a local
  platform and defaults to `linux/amd64`.
- The published Orbis images do not self-fund. `orbis-funder` uses a dedicated
  genesis account to fund all three nodes before the host flow starts.
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

`./scripts/orbis-stack.sh up` loads the pinned image digests via
`ensure_orbis_images` and brings the stack up with `docker compose up -d
--pull missing`; it does not build `orbis-rs` or SourceHub. Docker assigns the
loopback host ports atomically, and the launcher writes their typed endpoint
record to `$COMPLIANCE_TMP/orbis-runtime.json`. Readiness requires the funder
to exit successfully after all restarted nodes serve gRPC.

To refresh an image:

1. Inspect the candidate tag or digest with `docker buildx imagetools inspect`
   and confirm its OCI index includes `linux/amd64`.
2. For Orbis, confirm the image was built from the same revision used by all
   three Cargo dependencies. Update the three Cargo pins and the lock revision
   together when advancing that source revision.
3. Record the OCI index digest, not a platform-specific child digest, in
   `images.lock.json`.
4. Run `CI=true scripts/orbis-stack.sh pull`, inspect
   `docker compose -f deployments/orbis/docker-compose.yml config --images`,
   and run the full Orbis integration workflow.
5. Dispatch the workflow on two refs within ten seconds and confirm the flow
   jobs serialize, both summaries pass, and no project remains afterward.

CI serializes the flow because Shieldd still launches host processes on a
reserved port set. Orbis uses Docker-assigned ports and does not publish its
P2P or metrics listeners. Before each run, `scripts/orbis-ci-cleanup.sh`
removes only Compose projects and Shieldd processes whose labels, executable,
and command line prove they belong to this workflow. Cleanup also runs after
the flow regardless of its result.
