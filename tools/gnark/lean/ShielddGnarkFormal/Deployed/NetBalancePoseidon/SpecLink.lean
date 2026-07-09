import ShielddGnarkFormal.Deployed.NetBalancePoseidon.FullTail

set_option maxRecDepth 1000000
set_option maxHeartbeats 2000000
set_option linter.unusedVariables false
set_option linter.unreachableTactic false
set_option linter.unusedTactic false

namespace Shieldd.GnarkFormal.Deployed.NetBalancePoseidon

open Shieldd.GnarkFormal.Poseidon1Bridge
open Shieldd.GnarkFormal.Deployed.Poseidon1Link

variable [Fact (Nat.Prime Shieldd.GnarkFormal.Extracted.Deployed.NetBalancePoseidon230_980d2f.Order)]

instance : Fact (Nat.Prime Shieldd.GnarkFormal.Extracted.PoseidonHash1.Order) :=
  inferInstanceAs (Fact (Nat.Prime Shieldd.GnarkFormal.Extracted.Deployed.NetBalancePoseidon230_980d2f.Order))

theorem spec38_eq_permSpec (sin0 : F) :
    (spec38 sin0)[1] = permSpec1 netBalanceDomainLit sin0 := by
  unfold permSpec1 netBalanceDomainLit
  rfl

end Shieldd.GnarkFormal.Deployed.NetBalancePoseidon
