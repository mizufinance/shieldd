import ShielddGnarkFormal.Deployed.Nullifier.FullTail

set_option maxRecDepth 1000000
set_option maxHeartbeats 2000000
set_option linter.unusedVariables false
set_option linter.unreachableTactic false
set_option linter.unusedTactic false

namespace Shieldd.GnarkFormal.Deployed.Nullifier

open Shieldd.GnarkFormal.Poseidon3Bridge
open Shieldd.GnarkFormal.Deployed.Poseidon3Link

variable [Fact (Nat.Prime Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.Order)]

theorem spec38_eq_permSpec (w8 : F) (w23 : F) (w24 : F) :
    (spec38 w8 w23 w24)[1] = permSpec3 nullifierDomainLit w8 w23 w24 := by
  unfold permSpec3 nullifierDomainLit
  rfl

end Shieldd.GnarkFormal.Deployed.Nullifier
