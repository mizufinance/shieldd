# Commonware Pari sources

`scripts/commonware.py` reproduces the pinned source subset and applies `series/`
in filename order. `check` verifies source and patch checksums against
`provenance.json`. Sources retain their upstream directory structure and licenses.
`reproduce` fetches the pinned revision, applies the patches in a temporary
directory and compares every resulting file with the vendored tree. `--source`
can supply a clean Git checkout rooted at that exact revision; modified, ignored,
and untracked files are rejected.

The first patch completes Pari's transition to `commonware_math::poly::Poly` and
`ntt::Domain`, and outlines constant one after circuit compilation and input
linking. The second exposes verifying-key relation-shape matching, including
public columns, for local key registries. It does not certify a setup ceremony.
The third prepares exact-source witness mappings, key-owned MSM bases, public
polynomials and bounded consuming FFT transforms in Commonware math, with
checked coset quotient arithmetic. Prepared keys consume projective bases, and
bounded parallel key decoding preserves canonical and subgroup validation.
Prepared masking and opening division consume polynomial coefficient buffers.
Compiler finalization consumes sparse rows and hashes fixed-size canonical scalar
encodings without per-scalar buffers.
Deterministic tests compare optimized proofs against the ordinary upstream API.
The fourth materializes the opposite square when both sides of an equality are
deferred, preserving source-circuit satisfaction and single-sided fusion.
Domains remain the upstream power-of-two domains. Application-specific
Jubjub/Poseidon gadgets and compliance relations live outside this source tree.

`just commonware-test` runs the pinned Pari, prepared math, MSM and circuit compiler tests in the
upstream workspace with its checked-in test lockfile and release profile, sharing
the root build directory. Shieldd runtime dependencies use the root lockfile.
