import ShielddGnarkFormal.Poseidon377
import ShielddGnarkFormal.Specs
import ShielddGnarkFormal.Extracted.BoolSelect
import ShielddGnarkFormal.Extracted.IsZero
import ShielddGnarkFormal.Extracted.Nullifier
import ShielddGnarkFormal.Extracted.Poseidon2
import ShielddGnarkFormal.Extracted.PoseidonHash4
import ShielddGnarkFormal.Extracted.QuadPath1
import ShielddGnarkFormal.Extracted.QuadPath2
-- QuadPath4 (depth-4, ~9k gates) and QuadPath16 (depth-16, ~37k gates) are
-- intentionally NOT imported: the flat extracted R1CS gate-chain does not
-- elaborate in Lean. QuadPath4 pins ~11 GB RSS without converging; QuadPath16
-- is OOM-killed (exit 137). See docs/soundness/circuit-fv-benchmark.md
-- (extraction-scale wall) — the depth-16 path is exactly the whole-circuit
-- composition target, and flat extraction cannot reach it.
import ShielddGnarkFormal.ExtractedProofs
