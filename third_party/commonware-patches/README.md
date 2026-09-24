# Commonware Pari sources

`scripts/commonware.py` reproduces the pinned source subset and applies `series/`
in filename order. `check` verifies source and patch checksums against
`provenance.json`. Sources retain their upstream directory structure and licenses.
`reproduce` fetches the pinned revision, applies the patches in a temporary
directory and compares every resulting file with the vendored tree. `--source`
can supply a clean Git checkout rooted at that exact revision; modified, ignored,
and untracked files are rejected.

The patch queue contains three narrow repairs and one compiler optimization:

- 0001 completes Pari's native `Poly`/`Domain` API transition and missing imports.
- 0002 exposes exact verifying-key relation matching, including public columns,
  and retains canonical native key-decoding regressions. It does not certify a
  setup ceremony.
- 0004 materializes the opposite square when both sides of an equality are
  deferred, preserving source-circuit satisfaction and single-sided fusion.
- 0005 outlines constants into one private witness constrained to equal one,
  keeping the implicit public constant column sparse. It changes compiled
  relation identities, so keys must be generated from the exact patched compiler.

Compilation uses Commonware with the isolated 0004/0005 transformations.
Witness mapping, proving, verification, transforms, MSM and decoding use native
Commonware APIs. Shieldd owns application Jubjub/Poseidon relations and its
bounded whole-key registry/cache outside this tree. Upgrades must reproduce the
source inventory, review each retained patch against upstream, then regenerate
relation keys and run native compiler/proof and Shieldd acceptance tests.

`just commonware-test` runs pinned Pari and circuit compiler tests in the upstream
workspace with its checked-in test lockfile and release profile, sharing the root
build directory. Shieldd runtime dependencies use the root lockfile.
