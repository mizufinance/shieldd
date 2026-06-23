import ShielddGnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c
import ShielddGnarkFormal.Poseidon3Bridge

set_option maxRecDepth 100000
set_option maxHeartbeats 1000000
set_option linter.unusedSectionVars false

/-! Deployed-row reconstruction for the exact 310-row nullifier slice (width-4 /
rate-3 Poseidon). Each segment lemma reconstructs one deployed five-row S-box
chain into the closed `Poseidon3Bridge.p17` expression and threads the segment
output into the continuation, mirroring `NoteCommitmentDeployedBridge` at width 4.
The remaining semantic step composes these up to `Poseidon3Bridge.permSpec3`. -/

namespace Shieldd.GnarkFormal.Deployed.Nullifier

open Shieldd.GnarkFormal.Poseidon3Bridge

variable [Fact (Nat.Prime Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.Order)]

abbrev F := Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.F

/-- A deployed five-row S-box chain (four squarings + one multiply) reconstructs
the closed degree-17 S-box `p17 x`. -/
theorem p17_from_rows (x v0 v1 v2 v3 v4 : F)
    (h0 : x * x = v0) (h1 : v0 * v0 = v1) (h2 : v1 * v1 = v2)
    (h3 : v2 * v2 = v3) (h4 : v3 * x = v4) :
    v4 = p17 x := by
  unfold p17
  rw [← h4, ← h3, ← h2, ← h1, ← h0]

end Shieldd.GnarkFormal.Deployed.Nullifier
