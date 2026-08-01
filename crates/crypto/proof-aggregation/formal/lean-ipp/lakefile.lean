import Lake
open Lake DSL

/-- SnarkPack model, implementation refinement, and adaptive shipping theorem.
    Uses an isolated Lean v4.30.0 + VCVio toolchain, separate from
    `tools/gnark/lean`. See `DESIGN.md` and the generated formal handoff. -/
package shieldd_lean_ipp where
  leanOptions := #[⟨`autoImplicit, false⟩]

-- VCVio (Apache-2.0). Pinned to the same commit as lean-dleq for reproducible
-- builds; a bump is a deliberate, reviewed change. Transitively fetches Loom,
-- PolyFun, and Mathlib.
require VCVio from git
  "https://github.com/Verified-zkEVM/VCV-io" @
  "bc5c6b34fae2acf4094b805e3b886a1381f942e2"

@[default_target]
lean_lib Ipp where
  globs := #[.submodules `Ipp]
