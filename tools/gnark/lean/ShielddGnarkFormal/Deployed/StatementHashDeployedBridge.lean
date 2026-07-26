import ShielddGnarkFormal.Extracted.Deployed.StatementHash470_5c3d95
import ShielddGnarkFormal.Poseidon7Bridge

/-!
Deployed-slice S-box bridge for the `note_reshape2x1` statement hash
(`StatementHash470_5c3d95`, a width-8 / rate-7 Poseidon sponge).

`p17_from_rows` reconstructs the closed degree-17 S-box `p17 x` from a deployed
five-row chain (four squarings + one multiply), generic in the argument `x` so a
folded MDS linear combination is carried symbolically without re-materialization.
-/

namespace Shieldd.GnarkFormal.Deployed.StatementHash

open Shieldd.GnarkFormal.Poseidon7Bridge

variable [Fact (Nat.Prime Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.Order)]

abbrev F := Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.F

/-- A deployed five-row S-box chain (four squarings + one multiply) reconstructs
the closed degree-17 S-box `p17 x`. -/
theorem p17_from_rows (x v0 v1 v2 v3 v4 : F)
    (h0 : x * x = v0) (h1 : v0 * v0 = v1) (h2 : v1 * v1 = v2)
    (h3 : v2 * v2 = v3) (h4 : v3 * x = v4) :
    v4 = p17 x := by
  unfold p17
  rw [← h4, ← h3, ← h2, ← h1, ← h0]

end Shieldd.GnarkFormal.Deployed.StatementHash
