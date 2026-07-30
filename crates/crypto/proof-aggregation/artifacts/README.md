# Production SnarkPack SRS

This directory intentionally contains no SRS artifact.

Production aggregation and verification fail closed until an identified
ceremony owner supplies:

- a BLS12-377 setup transcript with an independently reviewed verification
  procedure and evidence that neither KZG trapdoor is known;
- one canonical compressed `ark_ip_proofs::tipa::SRS<Bls12_377>` containing
  exactly `2 * 32768 - 1` nonzero powers in each group;
- the artifact SHA-256 digest and the domain-separated SRS identifier; and
- the artifact filename and active identifier for the compile-time registry in
  `src/srs.rs`.

The same registration must promote `deployed_srs_evidence` in
`formal/snarkpack/verification-manifest.json` with the exact artifact,
transcript, verification-evidence, registry-source, and application-source
digests. The FV publication gate remains red while that record is
`unregistered`.

Deployments may set `SHIELDD_SNARKPACK_SRS_ARTIFACT_DIR` to an absolute
distribution directory. The runtime still accepts only the filename, artifact
digest, SRS identifier, dimensions, canonical encoding, and subgroup-valid
points pinned by the compiled registry. Configuration cannot register new
bytes.

The first active-artifact load result, including failure, is cached for the
life of the process. Replacing or repairing an artifact therefore requires a
process restart; a running node never changes SRS material after its first
load attempt.
