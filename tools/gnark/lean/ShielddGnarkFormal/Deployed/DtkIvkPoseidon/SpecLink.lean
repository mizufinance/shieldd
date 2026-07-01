import ShielddGnarkFormal.Deployed.DtkIvkPoseidon.FullTail

set_option maxRecDepth 1000000
set_option maxHeartbeats 2000000
set_option linter.unusedVariables false
set_option linter.unreachableTactic false
set_option linter.unusedTactic false

namespace Shieldd.GnarkFormal.Deployed.DtkIvkPoseidon

open Shieldd.GnarkFormal.Poseidon2Bridge
open Shieldd.GnarkFormal.Deployed.Poseidon2Link

variable [Fact (Nat.Prime Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_e8acc1.Order)]

instance : Fact (Nat.Prime Shieldd.GnarkFormal.Extracted.Poseidon2.Order) :=
  inferInstanceAs (Fact (Nat.Prime Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_e8acc1.Order))

theorem spec38_eq_permSpec (sin0 : F) (sin1 : F) :
    (spec38 sin0 sin1)[1] = permSpec2 ivkDomainLit sin0 sin1 := by
  unfold permSpec2 ivkDomainLit
  rfl

end Shieldd.GnarkFormal.Deployed.DtkIvkPoseidon
