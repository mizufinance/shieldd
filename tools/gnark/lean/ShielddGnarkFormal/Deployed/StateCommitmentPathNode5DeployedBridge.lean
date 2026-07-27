import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_de57b1
import ShielddGnarkFormal.Deployed.StateCommitmentPath.Keystone

namespace Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode5

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod
open Shieldd.GnarkFormal.Poseidon4Bridge

variable [Fact (Nat.Prime Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_de57b1.Order)]

abbrev F := Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_de57b1.F

def tctNode6DomainLit : F := (545001158149490383238005163525397553024965043366546261617421270984613353342 : F)

theorem p17_from_rows (x v0 v1 v2 v3 v4 : F)
    (h0 : x * x = v0) (h1 : v0 * v0 = v1) (h2 : v1 * v1 = v2)
    (h3 : v2 * v2 = v3) (h4 : v3 * x = v4) :
    v4 = p17 x := by
  unfold p17
  rw [← h4, ← h3, ← h2, ← h1, ← h0]

end Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode5
