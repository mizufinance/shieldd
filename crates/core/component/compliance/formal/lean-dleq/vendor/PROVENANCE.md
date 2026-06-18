# Vendored / external proof dependencies — lean-dleq

This project depends on VCVio for the generic Sigma-protocol, Fiat-Shamir, and
forking-lemma infrastructure used to discharge the DLEQ computational-soundness
obligations. The dependency is fetched by Lake (not copied into the tree); this
file records its provenance and license.

## VCVio

- Source: https://github.com/Verified-zkEVM/VCV-io
- Pinned commit: `bc5c6b34fae2acf4094b805e3b886a1381f942e2` (2026-06-16)
- License: Apache-2.0
- Lean toolchain: `leanprover/lean4:v4.30.0`

### Why `require` (not a vendored subset)

The forking-path import closure was measured at **111 VCVio modules** and
transitively requires the external libraries **Loom** (the loom2 Hoare-triple /
weakest-precondition program logic that the rewinding-bound proofs are built on)
and **PolyFun** (foundational at the `OracleComp` core), plus Batteries and
Mathlib. A "Mathlib-only vendored subset" is therefore not achievable: it would
amount to re-hosting most of VCVio together with two further external forks.
`require`-ing the pinned package is both lighter to maintain and reproducible.

Transitive external dependencies pulled by Lake (via VCVio's own lakefile and
manifest): Loom, PolyFun, Batteries, Mathlib, and Hax (fetched for manifest
resolution; its modules are outside this project's compile closure). The
libsodium FFI / `csrc` native target is not in this project's import closure and
is not built.
