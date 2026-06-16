import Lake
open Lake DSL

/-- Computational-soundness mechanization of the compliance Chaum-Pedersen DLEQ
    proof, built on VCVio's generic Sigma-protocol / Fiat-Shamir / forking
    pipeline. This is an isolated toolchain (Lean v4.30.0 + Mathlib via VCVio),
    separate from the circuit-FV project under `tools/gnark/lean` (v4.15.0 +
    proven-zk). See `vendor/PROVENANCE.md`. -/
package shieldd_lean_dleq where
  leanOptions := #[⟨`autoImplicit, false⟩]

-- VCVio (Apache-2.0). Pinned to an explicit commit for reproducible builds; a
-- bump is a deliberate, reviewed change. Transitively fetches Loom, PolyFun,
-- and Mathlib (the forking-bound proofs sit on the Loom Hoare-triple logic).
require VCVio from git
  "https://github.com/Verified-zkEVM/VCV-io" @
  "bc5c6b34fae2acf4094b805e3b886a1381f942e2"

@[default_target]
lean_lib Dleq where
  globs := #[.submodules `Dleq]
