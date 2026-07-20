import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_727593
import ShielddGnarkFormal.Deployed.StateCommitmentPath.Keystone

namespace Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode17

open Shieldd.GnarkFormal.Poseidon4Bridge

variable [Fact (Nat.Prime Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_727593.Order)]

abbrev F := Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_727593.F

def tctNode18DomainLit : F := (545001158149490383238005163525397553024965043366546261617421270984613353354 : F)

theorem p17_from_rows (x v0 v1 v2 v3 v4 : F)
    (h0 : x * x = v0) (h1 : v0 * v0 = v1) (h2 : v1 * v1 = v2)
    (h3 : v2 * v2 = v3) (h4 : v3 * x = v4) :
    v4 = p17 x := by
  unfold p17
  rw [← h4, ← h3, ← h2, ← h1, ← h0]

end Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode17
