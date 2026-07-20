import ShielddGnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_e622e7
import ShielddGnarkFormal.Poseidon2Bridge

namespace Shieldd.GnarkFormal.Deployed.DtkIvkPoseidon

open Shieldd.GnarkFormal.Poseidon2Bridge

variable [Fact (Nat.Prime Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_e622e7.Order)]

abbrev F := Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_e622e7.F

def ivkDomainLit : F := (9361307723838134966014044876631201920149619 : F)

theorem p17_from_rows (x v0 v1 v2 v3 v4 : F)
    (h0 : x * x = v0) (h1 : v0 * v0 = v1) (h2 : v1 * v1 = v2)
    (h3 : v2 * v2 = v3) (h4 : v3 * x = v4) :
    v4 = p17 x := by
  unfold p17
  rw [← h4, ← h3, ← h2, ← h1, ← h0]

end Shieldd.GnarkFormal.Deployed.DtkIvkPoseidon
