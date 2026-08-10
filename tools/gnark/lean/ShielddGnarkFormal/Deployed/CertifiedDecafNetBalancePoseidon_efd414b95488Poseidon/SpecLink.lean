import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Poseidon1Link
import ShielddGnarkFormal.Extracted.PoseidonHash1
import ShielddGnarkFormal.Poseidon1Bridge
import ShielddGnarkFormal.ChoiceFreeZModCast
import ShielddGnarkFormal.Deployed.CertifiedDecafNetBalancePoseidon_efd414b95488Poseidon.FullTail

set_option maxRecDepth 1000000
set_option maxHeartbeats 2000000
set_option linter.unusedVariables false
set_option linter.unreachableTactic false
set_option linter.unusedTactic false

namespace Shieldd.GnarkFormal.Deployed.CertifiedDecafNetBalancePoseidon_efd414b95488Poseidon

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal.Poseidon1Bridge
open Shieldd.GnarkFormal.Deployed.Poseidon1Link

variable [Fact (Nat.Prime Shieldd.GnarkFormal.Extracted.Deployed.CertifiedDecafNetBalancePoseidon_efd414b95488PoseidonRows230.Order)]

instance : Fact (Nat.Prime Shieldd.GnarkFormal.Extracted.PoseidonHash1.Order) :=
  inferInstanceAs (Fact (Nat.Prime Shieldd.GnarkFormal.Extracted.Deployed.CertifiedDecafNetBalancePoseidon_efd414b95488PoseidonRows230.Order))

theorem spec38_eq_permSpec (sin0 : F) :
    (spec38 sin0)[1] = permSpec1 domainLit sin0 := by
  unfold permSpec1 domainLit
  rfl

end Shieldd.GnarkFormal.Deployed.CertifiedDecafNetBalancePoseidon_efd414b95488Poseidon
