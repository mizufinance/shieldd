import ShielddGnarkFormal.Extracted.Deployed.NetBalancePoseidon230_6eb4e5
import ShielddGnarkFormal.Poseidon1Bridge

namespace Shieldd.GnarkFormal.Deployed.NetBalancePoseidon

open Shieldd.GnarkFormal.Poseidon1Bridge

variable [Fact (Nat.Prime Shieldd.GnarkFormal.Extracted.Deployed.NetBalancePoseidon230_6eb4e5.Order)]

abbrev F := Shieldd.GnarkFormal.Extracted.Deployed.NetBalancePoseidon230_6eb4e5.F

def netBalanceDomainLit : F := (6888358618106443442961843809729175081075858965522240584763322653509542282215 : F)

theorem p17_from_rows (x v0 v1 v2 v3 v4 : F)
    (h0 : x * x = v0) (h1 : v0 * v0 = v1) (h2 : v1 * v1 = v2)
    (h3 : v2 * v2 = v3) (h4 : v3 * x = v4) :
    v4 = p17 x := by
  unfold p17
  rw [← h4, ← h3, ← h2, ← h1, ← h0]

end Shieldd.GnarkFormal.Deployed.NetBalancePoseidon
