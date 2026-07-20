import ShielddGnarkFormal.Deployed.StateCommitmentPathLeaf.FullTail

set_option maxRecDepth 1000000
set_option maxHeartbeats 2000000
set_option linter.unusedVariables false
set_option linter.unreachableTactic false
set_option linter.unusedTactic false

namespace Shieldd.GnarkFormal.Deployed.StateCommitmentPathLeaf

open Shieldd.GnarkFormal.Poseidon1Bridge
open Shieldd.GnarkFormal.Deployed.Poseidon1Link

variable [Fact (Nat.Prime Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c300c3.Order)]

instance : Fact (Nat.Prime Shieldd.GnarkFormal.Extracted.PoseidonHash1.Order) :=
  inferInstanceAs (Fact (Nat.Prime Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c300c3.Order))

theorem spec38_eq_permSpec (sin0 : F) :
    (spec38 sin0)[1] = permSpec1 tctLeafDomainLit sin0 := by
  unfold permSpec1 tctLeafDomainLit
  rfl

end Shieldd.GnarkFormal.Deployed.StateCommitmentPathLeaf
