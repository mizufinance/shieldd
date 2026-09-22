# Orbis Runtime Contract

The pinned image is **not compatible with the current Shieldd suite**.
`images.lock.json` selects Decaf377, and startup rejects it before launching
containers. CI verifies local adapter contracts and this rejection, not live
BLS PRE or Jubjub PET. See the [external contract](../../docs/jubjub-external-contract.md)
for required capabilities and the boundary between PRE delivery and audit keys.

The configuration below describes the deployment path once a compatible runtime
is available and validated. It is not evidence that the locked image supports it.

Runtime configuration:

- [images.lock.json](images.lock.json) is the single source for the Orbis image
  digest and Vera source revision.
- A replacement image must have a verified source revision, supported crypto
  feature and matching digest; a newer source revision alone is insufficient.
- The locked Orbis source revision must match all three `orbis-rs` git
  dependencies in
  [crates/util/orbis-client/Cargo.toml](../../crates/util/orbis-client/Cargo.toml).
- The Orbis PRE delivery feature is `bls12-381`; Shieldd audit openings use Jubjub.
- `ORBIS_IMAGE`, `VERA_IMAGE`, and `VERA_REF` may be overridden for explicit
  local testing. CI rejects runtime revision overrides.
- The published Orbis images do not self-fund. `orbis-funder` uses a dedicated
  genesis account to fund all three nodes before the host flow starts.
- Node controller key: each `orbis-node` must start with `--node-controller-key`.
  The default in [docker-compose.yml](docker-compose.yml) is the compressed
  public key for Orbis's `TEST_ACCOUNT_HEX_KEY`, matching the signer used by
  `orbis-integration` to call `UpdateNodePeerId` / `AddNodeToWhitelist`.

Flow requiring a compatible runtime:

1. Each Orbis node creates a Vera `x/orbis` `NodeInfo` keyed by its
   `node_key`.
2. `orbis-integration` creates the ACP policy, registers the policy as a
   `ring_policy` object for `create_ring`, rewrites each peer route for the
   Docker network, and updates each node's `NodeInfo` with that peer route and
   policy whitelist.
3. `orbis-integration` creates a blank Vera `x/orbis` ring from node keys
   and starts DKG by passing only the resulting `ring_id` to Orbis.
4. Orbis finalizes the Vera ring with `ring_pk`; Shieldd reads the ring by
   `ring_id`.

The Vera backend maps document, key-derivation, node-info, and ring records to
`x/orbis` state.

After the crypto compatibility check passes, `./scripts/orbis-stack.sh up` loads the pinned runtime via
`ensure_orbis_images`, builds Vera from its pinned revision, and brings the
stack up with `docker compose up -d --pull missing`. It does not build
`orbis-rs`. Docker assigns one
available loopback port from each service's reserved range, and the launcher
writes a typed endpoint record to `$COMPLIANCE_TMP/orbis-runtime.json`.
Readiness requires the funder to exit successfully and each pinned node image
to report its production server. The launcher then probes each published node
endpoint. On a native Docker bridge where loopback publication is unavailable,
it records the exact reachable container endpoint instead.

To validate and adopt a compatible image:

1. Inspect the candidate tag or digest with `docker buildx imagetools inspect`
   and confirm its OCI index includes `linux/amd64`.
2. For Orbis, confirm the image was built from the same revision used by all
   three Cargo dependencies. Update the three Cargo pins and the lock revision
   together when advancing that source revision.
3. Verify the image implements the required BLS12-381 PRE feature and identify
   separately whether Jubjub audit/PET support is present. Record the crypto
   feature, OCI index digest and compatible Vera source revision in `images.lock.json`.
4. Run `scripts/orbis-stack.sh pull`, inspect
   `docker compose -f deployments/orbis/docker-compose.yml config --images`,
   then run `scripts/orbis-stack.sh up` and create a ring with
   `just orbis-integration-setup-ring <output-json>`.
5. Run the Orbis client, audit CLI, integration, and compliance contract tests
   used by `.github/workflows/orbis-integration.yml`.
